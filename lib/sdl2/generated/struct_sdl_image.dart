// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'struct_sdl.dart';
class IMG_Animation extends Struct {
  // [0]+(4)
  @Int32()
  external int w;
  // [4]+(4)
  @Int32()
  external int h;
  // [8]+(4)
  @Int32()
  external int count;
  // [12]+(8)
  external Pointer<Pointer<SDL_Surface>>? frames;
  // [20]+(8)
  external Pointer<Int32>? delays;
}

