// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the version of SDL that is linked against your program.
/// 
/// If you are linking to SDL dynamically, then it is possible that the
/// current version will be different than the version you compiled against.
/// This function returns the current version, while SDL_VERSION() is a
/// macro that tells you what version you compiled with.
/// 
/// \code
/// SDL_version compiled;
/// SDL_version linked;
/// 
/// SDL_VERSION(&compiled);
/// SDL_GetVersion(&linked);
/// printf("We compiled against SDL version %d.%d.%d ...\n",
/// compiled.major, compiled.minor, compiled.patch);
/// printf("But we linked against SDL version %d.%d.%d.\n",
/// linked.major, linked.minor, linked.patch);
/// \endcode
/// 
/// This function may be called safely at any time, even before SDL_Init().
/// 
/// \sa SDL_VERSION
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
/// \brief Get the code revision of SDL that is linked against your program.
/// 
/// Returns an arbitrary string (a hash value) uniquely identifying the
/// exact revision of the SDL library in use, and is only useful in comparing
/// against other revisions. It is NOT an incrementing number.
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

/// 
/// \brief Get the revision number of SDL that is linked against your program.
/// 
/// Returns a number uniquely identifying the exact revision of the SDL
/// library in use. It is an incrementing number based on commits to
/// hg.libsdl.org.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRevisionNumber(void)
/// ```
int SDL_GetRevisionNumber() {
  final _SDL_GetRevisionNumber = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetRevisionNumber');
  return _SDL_GetRevisionNumber();
}

