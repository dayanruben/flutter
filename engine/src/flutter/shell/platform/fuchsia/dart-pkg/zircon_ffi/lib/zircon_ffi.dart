// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings for `dart:zircon_ffi`.
class ZirconFFIBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ZirconFFIBindings(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ZirconFFIBindings.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  ffi.Pointer<zircon_dart_byte_array_t> zircon_dart_byte_array_create(int size) {
    return _zircon_dart_byte_array_create(size);
  }

  late final _zircon_dart_byte_array_create_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_byte_array_create>>(
        'zircon_dart_byte_array_create',
      );
  late final _dart_zircon_dart_byte_array_create _zircon_dart_byte_array_create =
      _zircon_dart_byte_array_create_ptr.asFunction<_dart_zircon_dart_byte_array_create>();

  void zircon_dart_byte_array_set_value(
    ffi.Pointer<zircon_dart_byte_array_t> arr,
    int index,
    int value,
  ) {
    return _zircon_dart_byte_array_set_value(arr, index, value);
  }

  late final _zircon_dart_byte_array_set_value_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_byte_array_set_value>>(
        'zircon_dart_byte_array_set_value',
      );
  late final _dart_zircon_dart_byte_array_set_value _zircon_dart_byte_array_set_value =
      _zircon_dart_byte_array_set_value_ptr.asFunction<_dart_zircon_dart_byte_array_set_value>();

  void zircon_dart_byte_array_free(ffi.Pointer<zircon_dart_byte_array_t> arr) {
    return _zircon_dart_byte_array_free(arr);
  }

  late final _zircon_dart_byte_array_free_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_byte_array_free>>('zircon_dart_byte_array_free');
  late final _dart_zircon_dart_byte_array_free _zircon_dart_byte_array_free =
      _zircon_dart_byte_array_free_ptr.asFunction<_dart_zircon_dart_byte_array_free>();

  ffi.Pointer<zircon_dart_handle_list_t> zircon_dart_handle_list_create() {
    return _zircon_dart_handle_list_create();
  }

  late final _zircon_dart_handle_list_create_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_list_create>>(
        'zircon_dart_handle_list_create',
      );
  late final _dart_zircon_dart_handle_list_create _zircon_dart_handle_list_create =
      _zircon_dart_handle_list_create_ptr.asFunction<_dart_zircon_dart_handle_list_create>();

  void zircon_dart_handle_list_append(
    ffi.Pointer<zircon_dart_handle_list_t> list,
    ffi.Pointer<zircon_dart_handle_t> handle,
  ) {
    return _zircon_dart_handle_list_append(list, handle);
  }

  late final _zircon_dart_handle_list_append_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_list_append>>(
        'zircon_dart_handle_list_append',
      );
  late final _dart_zircon_dart_handle_list_append _zircon_dart_handle_list_append =
      _zircon_dart_handle_list_append_ptr.asFunction<_dart_zircon_dart_handle_list_append>();

  void zircon_dart_handle_list_free(ffi.Pointer<zircon_dart_handle_list_t> list) {
    return _zircon_dart_handle_list_free(list);
  }

  late final _zircon_dart_handle_list_free_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_list_free>>('zircon_dart_handle_list_free');
  late final _dart_zircon_dart_handle_list_free _zircon_dart_handle_list_free =
      _zircon_dart_handle_list_free_ptr.asFunction<_dart_zircon_dart_handle_list_free>();

  int zircon_dart_handle_is_valid(ffi.Pointer<zircon_dart_handle_t> handle) {
    return _zircon_dart_handle_is_valid(handle);
  }

  late final _zircon_dart_handle_is_valid_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_is_valid>>('zircon_dart_handle_is_valid');
  late final _dart_zircon_dart_handle_is_valid _zircon_dart_handle_is_valid =
      _zircon_dart_handle_is_valid_ptr.asFunction<_dart_zircon_dart_handle_is_valid>();

  int zircon_dart_handle_close(ffi.Pointer<zircon_dart_handle_t> handle) {
    return _zircon_dart_handle_close(handle);
  }

  late final _zircon_dart_handle_close_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_close>>('zircon_dart_handle_close');
  late final _dart_zircon_dart_handle_close _zircon_dart_handle_close =
      _zircon_dart_handle_close_ptr.asFunction<_dart_zircon_dart_handle_close>();

  void zircon_dart_handle_free(ffi.Pointer<zircon_dart_handle_t> handle) {
    return _zircon_dart_handle_free(handle);
  }

  late final _zircon_dart_handle_free_ptr = _lookup<ffi.NativeFunction<_c_zircon_dart_handle_free>>(
    'zircon_dart_handle_free',
  );
  late final _dart_zircon_dart_handle_free _zircon_dart_handle_free = _zircon_dart_handle_free_ptr
      .asFunction<_dart_zircon_dart_handle_free>();

  int zircon_dart_handle_pair_attach_finalizer(
    Object object,
    ffi.Pointer<ffi.Void> pointer,
    int external_allocation_size,
  ) {
    return _zircon_dart_handle_pair_attach_finalizer(object, pointer, external_allocation_size);
  }

  late final _zircon_dart_handle_pair_attach_finalizer_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_pair_attach_finalizer>>(
        'zircon_dart_handle_pair_attach_finalizer',
      );
  late final _dart_zircon_dart_handle_pair_attach_finalizer
  _zircon_dart_handle_pair_attach_finalizer = _zircon_dart_handle_pair_attach_finalizer_ptr
      .asFunction<_dart_zircon_dart_handle_pair_attach_finalizer>();

  int zircon_dart_handle_attach_finalizer(
    Object object,
    ffi.Pointer<ffi.Void> pointer,
    int external_allocation_size,
  ) {
    return _zircon_dart_handle_attach_finalizer(object, pointer, external_allocation_size);
  }

  late final _zircon_dart_handle_attach_finalizer_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_handle_attach_finalizer>>(
        'zircon_dart_handle_attach_finalizer',
      );
  late final _dart_zircon_dart_handle_attach_finalizer _zircon_dart_handle_attach_finalizer =
      _zircon_dart_handle_attach_finalizer_ptr
          .asFunction<_dart_zircon_dart_handle_attach_finalizer>();

  ffi.Pointer<zircon_dart_handle_pair_t> zircon_dart_channel_create(int options) {
    return _zircon_dart_channel_create(options);
  }

  late final _zircon_dart_channel_create_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_channel_create>>('zircon_dart_channel_create');
  late final _dart_zircon_dart_channel_create _zircon_dart_channel_create =
      _zircon_dart_channel_create_ptr.asFunction<_dart_zircon_dart_channel_create>();

  int zircon_dart_channel_write(
    ffi.Pointer<zircon_dart_handle_t> handle,
    ffi.Pointer<zircon_dart_byte_array_t> bytes,
    ffi.Pointer<zircon_dart_handle_list_t> handles,
  ) {
    return _zircon_dart_channel_write(handle, bytes, handles);
  }

  late final _zircon_dart_channel_write_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_channel_write>>('zircon_dart_channel_write');
  late final _dart_zircon_dart_channel_write _zircon_dart_channel_write =
      _zircon_dart_channel_write_ptr.asFunction<_dart_zircon_dart_channel_write>();

  int zircon_dart_clock_get_monotonic() {
    return _zircon_dart_clock_get_monotonic();
  }

  late final _zircon_dart_clock_get_monotonic_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_clock_get_monotonic>>(
        'zircon_dart_clock_get_monotonic',
      );
  late final _dart_zircon_dart_clock_get_monotonic _zircon_dart_clock_get_monotonic =
      _zircon_dart_clock_get_monotonic_ptr.asFunction<_dart_zircon_dart_clock_get_monotonic>();

  int zircon_dart_dl_initialize(ffi.Pointer<ffi.Void> initialize_api_dl_data) {
    return _zircon_dart_dl_initialize(initialize_api_dl_data);
  }

  late final _zircon_dart_dl_initialize_ptr =
      _lookup<ffi.NativeFunction<_c_zircon_dart_dl_initialize>>('zircon_dart_dl_initialize');
  late final _dart_zircon_dart_dl_initialize _zircon_dart_dl_initialize =
      _zircon_dart_dl_initialize_ptr.asFunction<_dart_zircon_dart_dl_initialize>();
}

final class zircon_dart_byte_array_t extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> data;

  @ffi.Uint32()
  external int length;
}

final class zircon_dart_handle_t extends ffi.Struct {
  @ffi.Uint32()
  external int handle;
}

final class zircon_dart_handle_pair_t extends ffi.Struct {
  external ffi.Pointer<zircon_dart_handle_t> left;

  external ffi.Pointer<zircon_dart_handle_t> right;
}

final class zircon_dart_handle_list_t extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @ffi.Uint32()
  external int size;
}

final class _Dart_Handle extends ffi.Opaque {}

typedef _c_zircon_dart_byte_array_create =
    ffi.Pointer<zircon_dart_byte_array_t> Function(ffi.Uint32 size);

typedef _dart_zircon_dart_byte_array_create =
    ffi.Pointer<zircon_dart_byte_array_t> Function(int size);

typedef _c_zircon_dart_byte_array_set_value =
    ffi.Void Function(ffi.Pointer<zircon_dart_byte_array_t> arr, ffi.Uint32 index, ffi.Uint8 value);

typedef _dart_zircon_dart_byte_array_set_value =
    void Function(ffi.Pointer<zircon_dart_byte_array_t> arr, int index, int value);

typedef _c_zircon_dart_byte_array_free =
    ffi.Void Function(ffi.Pointer<zircon_dart_byte_array_t> arr);

typedef _dart_zircon_dart_byte_array_free =
    void Function(ffi.Pointer<zircon_dart_byte_array_t> arr);

typedef _c_zircon_dart_handle_list_create = ffi.Pointer<zircon_dart_handle_list_t> Function();

typedef _dart_zircon_dart_handle_list_create = ffi.Pointer<zircon_dart_handle_list_t> Function();

typedef _c_zircon_dart_handle_list_append =
    ffi.Void Function(
      ffi.Pointer<zircon_dart_handle_list_t> list,
      ffi.Pointer<zircon_dart_handle_t> handle,
    );

typedef _dart_zircon_dart_handle_list_append =
    void Function(
      ffi.Pointer<zircon_dart_handle_list_t> list,
      ffi.Pointer<zircon_dart_handle_t> handle,
    );

typedef _c_zircon_dart_handle_list_free =
    ffi.Void Function(ffi.Pointer<zircon_dart_handle_list_t> list);

typedef _dart_zircon_dart_handle_list_free =
    void Function(ffi.Pointer<zircon_dart_handle_list_t> list);

typedef _c_zircon_dart_handle_is_valid =
    ffi.Int32 Function(ffi.Pointer<zircon_dart_handle_t> handle);

typedef _dart_zircon_dart_handle_is_valid = int Function(ffi.Pointer<zircon_dart_handle_t> handle);

typedef _c_zircon_dart_handle_close = ffi.Int32 Function(ffi.Pointer<zircon_dart_handle_t> handle);

typedef _dart_zircon_dart_handle_close = int Function(ffi.Pointer<zircon_dart_handle_t> handle);

typedef _c_zircon_dart_handle_free = ffi.Void Function(ffi.Pointer<zircon_dart_handle_t> handle);

typedef _dart_zircon_dart_handle_free = void Function(ffi.Pointer<zircon_dart_handle_t> handle);

typedef _c_zircon_dart_handle_pair_attach_finalizer =
    ffi.Int32 Function(
      ffi.Handle object,
      ffi.Pointer<ffi.Void> pointer,
      ffi.IntPtr external_allocation_size,
    );

typedef _dart_zircon_dart_handle_pair_attach_finalizer =
    int Function(Object object, ffi.Pointer<ffi.Void> pointer, int external_allocation_size);

typedef _c_zircon_dart_handle_attach_finalizer =
    ffi.Int32 Function(
      ffi.Handle object,
      ffi.Pointer<ffi.Void> pointer,
      ffi.IntPtr external_allocation_size,
    );

typedef _dart_zircon_dart_handle_attach_finalizer =
    int Function(Object object, ffi.Pointer<ffi.Void> pointer, int external_allocation_size);

typedef _c_zircon_dart_channel_create =
    ffi.Pointer<zircon_dart_handle_pair_t> Function(ffi.Uint32 options);

typedef _dart_zircon_dart_channel_create =
    ffi.Pointer<zircon_dart_handle_pair_t> Function(int options);

typedef _c_zircon_dart_channel_write =
    ffi.Int32 Function(
      ffi.Pointer<zircon_dart_handle_t> handle,
      ffi.Pointer<zircon_dart_byte_array_t> bytes,
      ffi.Pointer<zircon_dart_handle_list_t> handles,
    );

typedef _dart_zircon_dart_channel_write =
    int Function(
      ffi.Pointer<zircon_dart_handle_t> handle,
      ffi.Pointer<zircon_dart_byte_array_t> bytes,
      ffi.Pointer<zircon_dart_handle_list_t> handles,
    );

typedef _c_zircon_dart_clock_get_monotonic = ffi.Uint64 Function();

typedef _dart_zircon_dart_clock_get_monotonic = int Function();

typedef _c_zircon_dart_dl_initialize =
    ffi.Int32 Function(ffi.Pointer<ffi.Void> initialize_api_dl_data);

typedef _dart_zircon_dart_dl_initialize =
    int Function(ffi.Pointer<ffi.Void> initialize_api_dl_data);
