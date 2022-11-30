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
void sdlSetMainReady() {
  final sdlSetMainReadyLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_SetMainReady');
  return sdlSetMainReadyLookupFunction();
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
int sdlRegisterApp(String? name, int style, Pointer<NativeType> hInst) {
  final sdlRegisterAppLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<Utf8> name, Uint32 style, Pointer<NativeType> hInst),
      int Function(Pointer<Utf8> name, int style,
          Pointer<NativeType> hInst)>('SDL_RegisterApp');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result = sdlRegisterAppLookupFunction(namePointer, style, hInst);
  calloc.free(namePointer);
  return result;
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
void sdlUnregisterApp() {
  final sdlUnregisterAppLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_UnregisterApp');
  return sdlUnregisterAppLookupFunction();
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
int sdlWinRtRunApp(SdlMainFunc mainFunction, Pointer<NativeType> reserved) {
  final sdlWinRtRunAppLookupFunction = libSdl2.lookupFunction<
      Int32 Function(SdlMainFunc mainFunction, Pointer<NativeType> reserved),
      int Function(SdlMainFunc mainFunction,
          Pointer<NativeType> reserved)>('SDL_WinRTRunApp');
  return sdlWinRtRunAppLookupFunction(mainFunction, reserved);
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
int sdlUiKitRunApp(
    int argc, Pointer<Pointer<Int8>> argv, SdlMainFunc mainFunction) {
  final sdlUiKitRunAppLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Int32 argc, Pointer<Pointer<Int8>> argv, SdlMainFunc mainFunction),
      int Function(int argc, Pointer<Pointer<Int8>> argv,
          SdlMainFunc mainFunction)>('SDL_UIKitRunApp');
  return sdlUiKitRunAppLookupFunction(argc, argv, mainFunction);
}

///
/// Initialize and launch an SDL GDK application.
///
/// \param mainFunction the SDL app's C-style main(), an SDL_main_func
/// \param reserved reserved for future use; should be NULL
/// \returns 0 on success or -1 on failure; call SDL_GetError() to retrieve
/// more information on the failure.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GDKRunApp(SDL_main_func mainFunction, void *reserved)
/// ```
int sdlGdkRunApp(SdlMainFunc mainFunction, Pointer<NativeType> reserved) {
  final sdlGdkRunAppLookupFunction = libSdl2.lookupFunction<
      Int32 Function(SdlMainFunc mainFunction, Pointer<NativeType> reserved),
      int Function(SdlMainFunc mainFunction,
          Pointer<NativeType> reserved)>('SDL_GDKRunApp');
  return sdlGdkRunAppLookupFunction(mainFunction, reserved);
}
