// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// Dynamically load a shared object.
/// 
/// \param sofile a system-dependent name of the object file
/// \returns an opaque pointer to the object handle or NULL if there was an
/// error; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LoadFunction
/// \sa SDL_UnloadObject
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
/// Look up the address of the named function in a shared object.
/// 
/// This function pointer is no longer valid after calling SDL_UnloadObject().
/// 
/// This function can only look up C function names. Other languages may have
/// name mangling and intrinsic language support that varies from compiler to
/// compiler.
/// 
/// Make sure you declare your function pointers with the same calling
/// convention as the actual library function. Your code will crash
/// mysteriously if you do not do this.
/// 
/// If the requested function doesn't exist, NULL is returned.
/// 
/// \param handle a valid shared object handle returned by SDL_LoadObject()
/// \param name the name of the function to look up
/// \returns a pointer to the function or NULL if there was an error; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LoadObject
/// \sa SDL_UnloadObject
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
/// \param handle a valid shared object handle returned by SDL_LoadObject()
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LoadFunction
/// \sa SDL_LoadObject
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

