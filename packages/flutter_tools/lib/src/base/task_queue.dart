// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:collection';

import '../globals.dart' as globals;

/// A closure type used by the [TaskQueue].
typedef TaskQueueClosure<T> = Future<T> Function();

/// A task queue of Futures to be completed in parallel, throttling
/// the number of simultaneous tasks.
///
/// The tasks return results of type T.
class TaskQueue<T> {
  /// Creates a task queue with a maximum number of simultaneous jobs.
  /// The [maxJobs] parameter defaults to the number of CPU cores on the
  /// system.
  TaskQueue({int? maxJobs}) : maxJobs = maxJobs ?? globals.platform.numberOfProcessors;

  /// The maximum number of jobs that this queue will run simultaneously.
  final int maxJobs;

  final _pendingTasks = Queue<_TaskQueueItem<T>>();
  final _activeTasks = <_TaskQueueItem<T>>{};
  final _completeListeners = <Completer<void>>{};

  /// Returns a future that completes when all tasks in the [TaskQueue] are
  /// complete.
  Future<void> get tasksComplete {
    // In case this is called when there are no tasks, we want it to
    // signal complete immediately.
    if (_activeTasks.isEmpty && _pendingTasks.isEmpty) {
      return Future<void>.value();
    }
    final completer = Completer<void>();
    _completeListeners.add(completer);
    return completer.future;
  }

  /// Adds a single closure to the task queue, returning a future that
  /// completes when the task completes.
  Future<T> add(TaskQueueClosure<T> task) {
    final completer = Completer<T>();
    _pendingTasks.add(_TaskQueueItem<T>(task, completer));
    if (_activeTasks.length < maxJobs) {
      _processTask();
    }
    return completer.future;
  }

  // Process a single task.
  void _processTask() {
    if (_pendingTasks.isNotEmpty && _activeTasks.length <= maxJobs) {
      final _TaskQueueItem<T> item = _pendingTasks.removeFirst();
      _activeTasks.add(item);
      item.onComplete = () {
        _activeTasks.remove(item);
        _processTask();
      };
      item.run();
    } else {
      _checkForCompletion();
    }
  }

  void _checkForCompletion() {
    if (_activeTasks.isEmpty && _pendingTasks.isEmpty) {
      for (final Completer<void> completer in _completeListeners) {
        if (!completer.isCompleted) {
          completer.complete();
        }
      }
      _completeListeners.clear();
    }
  }
}

class _TaskQueueItem<T> {
  _TaskQueueItem(this._closure, this._completer, {this.onComplete});

  final TaskQueueClosure<T> _closure;
  final Completer<T> _completer;
  void Function()? onComplete;

  Future<void> run() async {
    try {
      _completer.complete(await _closure());
    } catch (e) {
      _completer.completeError(e);
    } finally {
      onComplete?.call();
    }
  }
}
