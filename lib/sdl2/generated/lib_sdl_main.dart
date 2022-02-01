// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// Circumvent failure of SDL_Init() when not using SDL_main() as an entry
/// point.
/// 
/// This function is defined in SDL_main.h, along with the preprocessor rule to
/// redefine main() as SDL_main(). Thus to ensure that your main() function
/// will not be changed it is necessary to define SDL_MAIN_HANDLED before
/// including SDL.h.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Init
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetMainReady(void)
/// ```
void SDL_SetMainReady() {
  final _SDL_SetMainReady = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_SetMainReady');
  return _SDL_SetMainReady();
}

/// 
/// Register a win32 window class for SDL's use.
/// 
/// This can be called to set the application window class at startup. It is
/// safe to call this multiple times, as long as every call is eventually
/// paired with a call to SDL_UnregisterApp, but a second registration attempt
/// while a previous registration is still active will be ignored, other than
/// to increment a counter.
/// 
/// Most applications do not need to, and should not, call this directly; SDL
/// will call it when initializing the video subsystem.
/// 
/// \param name the window class name, in UTF-8 encoding. If NULL, SDL
/// currently uses "SDL_app" but this isn't guaranteed.
/// \param style the value to use in WNDCLASSEX::style. If `name` is NULL, SDL
/// currently uses `(CS_BYTEALIGNCLIENT | CS_OWNDC)` regardless of
/// what is specified here.
/// \param hInst the HINSTANCE to use in WNDCLASSEX::hInstance. If zero, SDL
/// will use `GetModuleHandle(NULL)` instead.
/// \returns 0 on success, -1 on error. SDL_GetError() may have details.
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RegisterApp(const char *name, Uint32 style, void *hInst)
/// ```
int SDL_RegisterApp(String name, int style, Pointer<Void>? hInst) {
  final _SDL_RegisterApp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Uint32 style, Pointer<Void>? hInst),
      int Function(Pointer<Utf8>? name, int style, Pointer<Void>? hInst)>('SDL_RegisterApp');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_RegisterApp(_namePointer, style, hInst);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Deregister the win32 window class from an SDL_RegisterApp call.
/// 
/// This can be called to undo the effects of SDL_RegisterApp.
/// 
/// Most applications do not need to, and should not, call this directly; SDL
/// will call it when deinitializing the video subsystem.
/// 
/// It is safe to call this multiple times, as long as every call is eventually
/// paired with a prior call to SDL_RegisterApp. The window class will only be
/// deregistered when the registration counter in SDL_RegisterApp decrements to
/// zero through calls to this function.
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnregisterApp(void)
/// ```
void SDL_UnregisterApp() {
  final _SDL_UnregisterApp = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnregisterApp');
  return _SDL_UnregisterApp();
}

/// 
/// Initialize and launch an SDL/WinRT application.
/// 
/// \param mainFunction the SDL app's C-style main(), an SDL_main_func
/// \param reserved reserved for future use; should be NULL
/// \returns 0 on success or -1 on failure; call SDL_GetError() to retrieve
/// more information on the failure.
/// 
/// \since This function is available since SDL 2.0.3.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_WinRTRunApp(SDL_main_func mainFunction, void * reserved)
/// ```
int SDL_WinRTRunApp(Pointer<Void>? mainFunction, Pointer<Void>? reserved) {
  final _SDL_WinRTRunApp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? mainFunction, Pointer<Void>? reserved),
      int Function(Pointer<Void>? mainFunction, Pointer<Void>? reserved)>('SDL_WinRTRunApp');
  return _SDL_WinRTRunApp(mainFunction, reserved);
}

/// 
/// Initializes and launches an SDL application.
/// 
/// \param argc The argc parameter from the application's main() function
/// \param argv The argv parameter from the application's main() function
/// \param mainFunction The SDL app's C-style main(), an SDL_main_func
/// \return the return value from mainFunction
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UIKitRunApp(int argc, char *argv[], SDL_main_func mainFunction)
/// ```
int SDL_UIKitRunApp(int argc, Pointer<Int8>? argv, Pointer<Void>? mainFunction) {
  final _SDL_UIKitRunApp = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 argc, Pointer<Int8>? argv, Pointer<Void>? mainFunction),
      int Function(int argc, Pointer<Int8>? argv, Pointer<Void>? mainFunction)>('SDL_UIKitRunApp');
  return _SDL_UIKitRunApp(argc, argv, mainFunction);
}

