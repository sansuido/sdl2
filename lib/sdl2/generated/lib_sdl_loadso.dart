// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// This function dynamically loads a shared object and returns a pointer
/// to the object handle (or NULL if there was an error).
/// The 'sofile' parameter is a system dependent name of the object file.
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_LoadObject(const char *sofile)
/// ```
Pointer<Void>? SDL_LoadObject(String sofile) {
  final _SDL_LoadObject = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? sofile),
      Pointer<Void>? Function(Pointer<Utf8>? sofile)>('SDL_LoadObject');
  final _sofilePointer = sofile.toNativeUtf8();
  final _result = _SDL_LoadObject(_sofilePointer);
  calloc.free(_sofilePointer);
  return _result;
}

/// 
/// Given an object handle, this function looks up the address of the
/// named function in the shared object and returns it.  This address
/// is no longer valid after calling SDL_UnloadObject().
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_LoadFunction(void *handle, const char *name)
/// ```
Pointer<Void>? SDL_LoadFunction(Pointer<Void>? handle, String name) {
  final _SDL_LoadFunction = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? handle, Pointer<Utf8>? name),
      Pointer<Void>? Function(Pointer<Void>? handle, Pointer<Utf8>? name)>('SDL_LoadFunction');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_LoadFunction(handle, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Unload a shared object from memory.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnloadObject(void *handle)
/// ```
void SDL_UnloadObject(Pointer<Void>? handle) {
  final _SDL_UnloadObject = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? handle),
      void Function(Pointer<Void>? handle)>('SDL_UnloadObject');
  return _SDL_UnloadObject(handle);
}

