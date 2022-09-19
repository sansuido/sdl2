// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Get driver-specific information about a window.
/// 
/// You must include SDL_syswm.h for the declaration of SDL_SysWMinfo.
/// 
/// The caller must initialize the `info` structure's version by using
/// `SDL_VERSION(&info.version)`, and then this function will fill in the rest
/// of the structure with information about the given window.
/// 
/// \param window the window about which information is being requested
/// \param info an SDL_SysWMinfo structure filled in with window information
/// \returns SDL_TRUE if the function is implemented and the `version` member
/// of the `info` struct is valid, or SDL_FALSE if the information
/// could not be retrieved; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowWMInfo(SDL_Window * window, SDL_SysWMinfo * info)
/// ```
int sdlGetWindowWmInfo(Pointer<SdlWindow>? window, Pointer<SdlSysWMinfo>? info) {
  final sdlGetWindowWmInfoLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow>? window, Pointer<SdlSysWMinfo>? info),
      int Function(Pointer<SdlWindow>? window, Pointer<SdlSysWMinfo>? info)>('SDL_GetWindowWMInfo');
  return sdlGetWindowWmInfoLookupFunction(window, info);
}

