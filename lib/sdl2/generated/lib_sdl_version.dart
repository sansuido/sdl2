// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Get the version of SDL that is linked against your program.
/// 
/// If you are linking to SDL dynamically, then it is possible that the current
/// version will be different than the version you compiled against. This
/// function returns the current version, while SDL_VERSION() is a macro that
/// tells you what version you compiled with.
/// 
/// This function may be called safely at any time, even before SDL_Init().
/// 
/// \param ver the SDL_version structure that contains the version information
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRevision
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetVersion(SDL_version * ver)
/// ```
void SDL_GetVersion(Pointer<SDL_version>? ver) {
  final _SDL_GetVersion = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_version>? ver),
      void Function(Pointer<SDL_version>? ver)>('SDL_GetVersion');
  return _SDL_GetVersion(ver);
}

/// 
/// Get the code revision of SDL that is linked against your program.
/// 
/// This value is the revision of the code you are linked with and may be
/// different from the code you are compiling with, which is found in the
/// constant SDL_REVISION.
/// 
/// The revision is arbitrary string (a hash value) uniquely identifying the
/// exact revision of the SDL library in use, and is only useful in comparing
/// against other revisions. It is NOT an incrementing number.
/// 
/// If SDL wasn't built from a git repository with the appropriate tools, this
/// will return an empty string.
/// 
/// Prior to SDL 2.0.16, before development moved to GitHub, this returned a
/// hash for a Mercurial repository.
/// 
/// You shouldn't use this function for anything but logging it for debugging
/// purposes. The string is not intended to be reliable in any way.
/// 
/// \returns an arbitrary string, uniquely identifying the exact revision of
/// the SDL library in use.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetVersion
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetRevision(void)
/// ```
String SDL_GetRevision() {
  final _SDL_GetRevision = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetRevision');
  return _SDL_GetRevision()!.toDartString();
}

