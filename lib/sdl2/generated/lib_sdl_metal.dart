// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Create a CAMetalLayer-backed NSView/UIView and attach it to the specified
/// window.
/// 
/// On macOS, this does *not* associate a MTLDevice with the CAMetalLayer on
/// its own. It is up to user code to do that.
/// 
/// The returned handle can be casted directly to a NSView or UIView. To access
/// the backing CAMetalLayer, call SDL_Metal_GetLayer().
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// \sa SDL_Metal_DestroyView
/// \sa SDL_Metal_GetLayer
/// 
/// ```c
/// extern DECLSPEC SDL_MetalView SDLCALL SDL_Metal_CreateView(SDL_Window * window)
/// ```
Pointer<Void>? SDL_Metal_CreateView(Pointer<SDL_Window>? window) {
  final _SDL_Metal_CreateView = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window),
      Pointer<Void>? Function(Pointer<SDL_Window>? window)>('SDL_Metal_CreateView');
  return _SDL_Metal_CreateView(window);
}

/// 
/// Destroy an existing SDL_MetalView object.
/// 
/// This should be called before SDL_DestroyWindow, if SDL_Metal_CreateView was
/// called after SDL_CreateWindow.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// \sa SDL_Metal_CreateView
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Metal_DestroyView(SDL_MetalView view)
/// ```
void SDL_Metal_DestroyView(Pointer<Void>? view) {
  final _SDL_Metal_DestroyView = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? view),
      void Function(Pointer<Void>? view)>('SDL_Metal_DestroyView');
  return _SDL_Metal_DestroyView(view);
}

/// 
/// Get a pointer to the backing CAMetalLayer for the given view.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// \sa SDL_MetalCreateView
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_Metal_GetLayer(SDL_MetalView view)
/// ```
Pointer<Void>? SDL_Metal_GetLayer(Pointer<Void>? view) {
  final _SDL_Metal_GetLayer = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? view),
      Pointer<Void>? Function(Pointer<Void>? view)>('SDL_Metal_GetLayer');
  return _SDL_Metal_GetLayer(view);
}

/// 
/// Get the size of a window's underlying drawable in pixels (for use with
/// setting viewport, scissor & etc).
/// 
/// \param window SDL_Window from which the drawable size should be queried
/// \param w Pointer to variable for storing the width in pixels, may be NULL
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// \sa SDL_GetWindowSize
/// \sa SDL_CreateWindow
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Metal_GetDrawableSize(SDL_Window* window, int *w, int *h)
/// ```
void SDL_Metal_GetDrawableSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_Metal_GetDrawableSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_Metal_GetDrawableSize');
  return _SDL_Metal_GetDrawableSize(window, w, h);
}

