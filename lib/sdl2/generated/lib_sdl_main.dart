// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// This is called by the real SDL main function to let the rest of the
/// library know that initialization was done properly.
/// 
/// Calling this yourself without knowing what you're doing can cause
/// crashes and hard to diagnose problems with your application.
/// /
/// ```c
/// extern DECLSPEC void SDL_SetMainReady(void)
/// ```
void SDL_SetMainReady() {
  final _SDL_SetMainReady = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_SetMainReady');
  return _SDL_SetMainReady();
}

/// 
/// This can be called to set the application class at startup
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RegisterApp(char *name, Uint32 style, void *hInst)
/// ```
int SDL_RegisterApp(Pointer<Int8>? name, int style, Pointer<Void>? hInst) {
  final _SDL_RegisterApp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int8>? name, Uint32 style, Pointer<Void>? hInst),
      int Function(Pointer<Int8>? name, int style, Pointer<Void>? hInst)>('SDL_RegisterApp');
  return _SDL_RegisterApp(name, style, hInst);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnregisterApp(void)
/// ```
void SDL_UnregisterApp() {
  final _SDL_UnregisterApp = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnregisterApp');
  return _SDL_UnregisterApp();
}

