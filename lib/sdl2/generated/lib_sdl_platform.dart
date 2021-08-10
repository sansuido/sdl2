// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// \brief Gets the name of the platform.
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetPlatform (void)
/// ```
String SDL_GetPlatform() {
  final _SDL_GetPlatform = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetPlatform');
  return _SDL_GetPlatform()!.toDartString();
}

