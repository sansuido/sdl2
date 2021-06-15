import 'dart:ffi';
import './generated/const_sdl2_image.dart';
import './generated/lib_sdl2.dart';
import './generated/struct_sdl2.dart';
import './sdl2_handwritten.dart';

/// ```c
/// const SDL_IMAGE_VERSION = (X) \{ \ (X)->major = SDL_IMAGE_MAJOR_VERSION; \ (X)->minor = SDL_IMAGE_MINOR_VERSION; \ (X)->patch = SDL_IMAGE_PATCHLEVEL; \};
/// ```
void SDL_IMAGE_VERSION(Pointer<SDL_version>? x) {
  if (x != null) {
    x.ref.major = SDL_IMAGE_MAJOR_VERSION;
    x.ref.minor = SDL_IMAGE_MINOR_VERSION;
    x.ref.patch = SDL_IMAGE_PATCHLEVEL;
  }
}

/// ```c
/// const SDL_IMAGE_COMPILEDVERSION = \ SDL_VERSIONNUM(SDL_IMAGE_MAJOR_VERSION, SDL_IMAGE_MINOR_VERSION, SDL_IMAGE_PATCHLEVEL);
/// ```
final SDL_IMAGE_COMPILEDVERSION = SDL_VERSIONNUM(SDL_IMAGE_MAJOR_VERSION, SDL_IMAGE_MINOR_VERSION, SDL_IMAGE_PATCHLEVEL);

/// ```c
/// const SDL_IMAGE_VERSION_ATLEAST = (X, Y, Z) \ (SDL_IMAGE_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
/// ```
bool SDL_IMAGE_VERSION_ATLEAST(int x, int y, int z) {
  return SDL_IMAGE_COMPILEDVERSION >= SDL_VERSIONNUM(x, y, z);
}

/// ```c
/// const IMG_SetError = SDL_SetError;
/// ```
int IMG_SetError(String fmt, Pointer<Void>? arg1) {
  return SDL_SetError(fmt, arg1);
}

/// ```c
/// const IMG_GetError = SDL_GetError;
/// ```
String IMG_GetError() {
  return SDL_GetError();
}

