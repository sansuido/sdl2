// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';

final DLL_SDL2 = DynamicLibrary.open(Platform.isWindows ? 'SDL2.dll' : 'libSDL2.so');

/// 
/// This function initializes  the subsystems specified by \c flags
/// Unless the ::SDL_INIT_NOPARACHUTE flag is set, it will install cleanup
/// signal handlers for some commonly ignored fatal signals (like SIGSEGV).
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Init(Uint32 flags)
/// ```
int SDL_Init(int flags) {
  final _SDL_Init = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_Init');
  return _SDL_Init(flags);
}

/// 
/// This function initializes specific SDL subsystems
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_InitSubSystem(Uint32 flags)
/// ```
int SDL_InitSubSystem(int flags) {
  final _SDL_InitSubSystem = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_InitSubSystem');
  return _SDL_InitSubSystem(flags);
}

/// 
/// This function cleans up specific SDL subsystems
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_QuitSubSystem(Uint32 flags)
/// ```
void SDL_QuitSubSystem(int flags) {
  final _SDL_QuitSubSystem = DLL_SDL2.lookupFunction<
      Void Function(Uint32 flags),
      void Function(int flags)>('SDL_QuitSubSystem');
  return _SDL_QuitSubSystem(flags);
}

/// 
/// This function returns a mask of the specified subsystems which have
/// previously been initialized.
/// 
/// If \c flags is 0, it returns a mask of all initialized subsystems.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_WasInit(Uint32 flags)
/// ```
int SDL_WasInit(int flags) {
  final _SDL_WasInit = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 flags),
      int Function(int flags)>('SDL_WasInit');
  return _SDL_WasInit(flags);
}

/// 
/// This function cleans up all initialized subsystems. You should
/// call it upon all exit conditions.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Quit(void)
/// ```
void SDL_Quit() {
  final _SDL_Quit = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_Quit');
  return _SDL_Quit();
}

