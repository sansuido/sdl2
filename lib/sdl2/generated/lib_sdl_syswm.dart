// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief This function allows access to driver-dependent window information.
/// 
/// \param window The window about which information is being requested
/// \param info This structure must be initialized with the SDL version, and is
/// then filled in with information about the given window.
/// 
/// \return SDL_TRUE if the function is implemented and the version member of
/// the \c info struct is valid, SDL_FALSE otherwise.
/// 
/// You typically use this function like this:
/// \code
/// SDL_SysWMinfo info;
/// SDL_VERSION(&info.version);
/// if ( SDL_GetWindowWMInfo(window, &info) ) { ... }
/// \endcode
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowWMInfo(SDL_Window * window, SDL_SysWMinfo * info)
/// ```
int SDL_GetWindowWMInfo(Pointer<SDL_Window>? window, Pointer<SDL_SysWMinfo>? info) {
  final _SDL_GetWindowWMInfo = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_SysWMinfo>? info),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_SysWMinfo>? info)>('SDL_GetWindowWMInfo');
  return _SDL_GetWindowWMInfo(window, info);
}

