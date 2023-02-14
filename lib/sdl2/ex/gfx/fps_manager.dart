import 'dart:ffi';
import '../../generated/lib_sdl_gfx.dart';
import '../../generated/struct_sdl_gfx.dart';

extension FpsManageerPointerEx on Pointer<FPSmanager> {
  // lib_sdl_gfx.dart
  void init() {
    // 14
    sdlInitFramerate(this);
  }

  int setFramerate(int rate) {
    // 24
    return sdlSetFramerate(this, rate);
  }

  int getFramerate() {
    // 34
    return sdlGetFramerate(this);
  }

  int getFramecount() {
    // 44
    return sdlGetFramecount(this);
  }

  int delay() {
    // 54
    return sdlFramerateDelay(this);
  }
}
