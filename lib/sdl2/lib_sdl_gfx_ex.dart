import 'dart:ffi';
import 'gfx/const.dart' as gfx;
import 'generated/struct_sdl.dart';

void sdlGfxVersion(Pointer<SdlVersion> x) {
  x.ref.major = gfx.SDL2_GFXPRIMITIVES_MAJOR;
  x.ref.minor = gfx.SDL2_GFXPRIMITIVES_MINOR;
  x.ref.patch = gfx.SDL2_GFXPRIMITIVES_MICRO;
}
