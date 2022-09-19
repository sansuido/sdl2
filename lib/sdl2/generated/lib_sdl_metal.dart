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
Pointer<Void>? sdlMetalCreateView(Pointer<SdlWindow>? window) {
  final sdlMetalCreateViewLookupFunction = libSdl2.lookupFunction<
      Pointer<Void>? Function(Pointer<SdlWindow>? window),
      Pointer<Void>? Function(Pointer<SdlWindow>? window)>('SDL_Metal_CreateView');
  return sdlMetalCreateViewLookupFunction(window);
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
void sdlMetalDestroyView(Pointer<Void>? view) {
  final sdlMetalDestroyViewLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Void>? view),
      void Function(Pointer<Void>? view)>('SDL_Metal_DestroyView');
  return sdlMetalDestroyViewLookupFunction(view);
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
Pointer<Void>? sdlMetalGetLayer(Pointer<Void>? view) {
  final sdlMetalGetLayerLookupFunction = libSdl2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? view),
      Pointer<Void>? Function(Pointer<Void>? view)>('SDL_Metal_GetLayer');
  return sdlMetalGetLayerLookupFunction(view);
}

/// 
/// Get the size of a window's underlying drawable in pixels (for use with
/// setting viewport, scissor & etc).
/// 
/// \param window SDL_Window from which the drawable size should be queried
/// \param w Pointer to variable for storing the width in pixels, may be NULL
/// \param h Pointer to variable for storing the height in pixels, may be NULL
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// \sa SDL_GetWindowSize
/// \sa SDL_CreateWindow
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Metal_GetDrawableSize(SDL_Window* window, int *w, int *h)
/// ```
void sdlMetalGetDrawableSize(Pointer<SdlWindow>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final sdlMetalGetDrawableSizeLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlWindow>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SdlWindow>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_Metal_GetDrawableSize');
  return sdlMetalGetDrawableSizeLookupFunction(window, w, h);
}

