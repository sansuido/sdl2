import 'dart:ffi';
import '../../generated/const_sdl.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/lib_sdl_mouse.dart';

extension SdlCursorEx on SdlCursor {
  // lib_sdl_mouse.dart
  static Pointer<SdlCursor> create(Pointer<Uint8> data, Pointer<Uint8> mask,
      int w, int h, int hotX, int hotY) {
    // 330
    return sdlCreateCursor(data, mask, w, h, hotX, hotY);
  }

  static Pointer<SdlCursor> createColor(
      Pointer<SdlSurface> surface, int hotX, int hotY) {
    // 357
    return sdlCreateColorCursor(surface, hotX, hotY);
  }

  static Pointer<SdlCursor> createSystem(int id) {
    // 381
    return sdlCreateSystemCursor(id);
  }

  static Pointer<SdlCursor> get() {
    // 429
    return sdlGetCursor();
  }

  static Pointer<SdlCursor> getDefault() {
    // 448
    return sdlGetDefaultCursor();
  }

  static int show(bool toggle) {
    // 502
    return sdlShowCursor(toggle ? SDL_ENABLE : SDL_DISABLE);
  }
}

extension SdlCursorPointerEx on Pointer<SdlCursor> {
  // lib_sdl_mouse.dart

  void set() {
    // 407
    sdlSetCursor(this);
  }

  void free() {
    // 472
    sdlFreeCursor(this);
  }
}
