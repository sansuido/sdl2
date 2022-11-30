import 'dart:ffi';
import 'generated/const_sdl_gfx.dart';
import 'generated/struct_sdl.dart';

void sdlGfxVersion(Pointer<SdlVersion> x) {
  x.ref.major = SDL2_GFXPRIMITIVES_MAJOR;
  x.ref.minor = SDL2_GFXPRIMITIVES_MINOR;
  x.ref.patch = SDL2_GFXPRIMITIVES_MICRO;
}
