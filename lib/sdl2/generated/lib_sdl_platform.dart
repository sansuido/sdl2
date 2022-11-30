// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

///
/// Get the name of the platform.
///
/// Here are the names returned for some (but not all) supported platforms:
///
/// - "Windows"
/// - "Mac OS X"
/// - "Linux"
/// - "iOS"
/// - "Android"
///
/// \returns the name of the platform. If the correct platform name is not
/// available, returns a string beginning with the text "Unknown".
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetPlatform (void)
/// ```
String? sdlGetPlatform() {
  final sdlGetPlatformLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(), Pointer<Utf8> Function()>('SDL_GetPlatform');
  return sdlGetPlatformLookupFunction().toDartString();
}
