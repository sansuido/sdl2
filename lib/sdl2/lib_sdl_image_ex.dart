// ignore_for_file: non_constant_identifier_names
import 'dart:ffi';
import './generated/const_sdl_image.dart';
import './generated/lib_sdl_error.dart';
import './generated/struct_sdl.dart';
import 'lib_sdl_ex.dart';

/// ```c
/// const SDL_IMAGE_VERSION = (X) \{ \ (X)->major = SDL_IMAGE_MAJOR_VERSION; \ (X)->minor = SDL_IMAGE_MINOR_VERSION; \ (X)->patch = SDL_IMAGE_PATCHLEVEL; \};
/// ```
void sdlImageVersion(Pointer<SdlVersion> x) {
  x.ref.major = SDL_IMAGE_MAJOR_VERSION;
  x.ref.minor = SDL_IMAGE_MINOR_VERSION;
  x.ref.patch = SDL_IMAGE_PATCHLEVEL;
}

/// ```c
/// const SDL_IMAGE_COMPILEDVERSION = \ SDL_VERSIONNUM(SDL_IMAGE_MAJOR_VERSION, SDL_IMAGE_MINOR_VERSION, SDL_IMAGE_PATCHLEVEL);
/// ```
final SDL_IMAGE_COMPILEDVERSION = sdlVersionnum(
    SDL_IMAGE_MAJOR_VERSION, SDL_IMAGE_MINOR_VERSION, SDL_IMAGE_PATCHLEVEL);

/// ```c
/// const SDL_IMAGE_VERSION_ATLEAST = (X, Y, Z) \ (SDL_IMAGE_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
/// ```
bool sdlImageVersionAtleast(int x, int y, int z) {
  return SDL_IMAGE_COMPILEDVERSION >= sdlVersionnum(x, y, z);
}

/// ```c
/// const IMG_SetError = SDL_SetError;
/// ```
int imgSetError(String fmt, Pointer<NativeType> arg1) {
  return sdlSetError(fmt, arg1);
}

/// ```c
/// const IMG_GetError = SDL_GetError;
/// ```
String? imgGetError() {
  return sdlGetError();
}
