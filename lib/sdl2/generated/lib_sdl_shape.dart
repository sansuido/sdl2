// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Create a window that can be shaped with the specified position, dimensions,
/// and flags.
///
/// \param title The title of the window, in UTF-8 encoding.
/// \param x The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param w The width of the window.
/// \param h The height of the window.
/// \param flags The flags for the window, a mask of SDL_WINDOW_BORDERLESS with
/// any of the following: ::SDL_WINDOW_OPENGL,
/// ::SDL_WINDOW_INPUT_GRABBED, ::SDL_WINDOW_HIDDEN,
/// ::SDL_WINDOW_RESIZABLE, ::SDL_WINDOW_MAXIMIZED,
/// ::SDL_WINDOW_MINIMIZED, ::SDL_WINDOW_BORDERLESS is always set,
/// and ::SDL_WINDOW_FULLSCREEN is always unset.
/// \return the window created, or NULL if window creation failed.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_DestroyWindow
///
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateShapedWindow(const char *title,unsigned int x,unsigned int y,unsigned int w,unsigned int h,Uint32 flags)
/// ```
Pointer<SdlWindow> sdlCreateShapedWindow(
    String? title, int x, int y, int w, int h, int flags) {
  final sdlCreateShapedWindowLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlWindow> Function(Pointer<Utf8> title, Uint32 x, Uint32 y,
          Uint32 w, Uint32 h, Uint32 flags),
      Pointer<SdlWindow> Function(Pointer<Utf8> title, int x, int y, int w,
          int h, int flags)>('SDL_CreateShapedWindow');
  final titlePointer = title != null ? title.toNativeUtf8() : nullptr;
  final result =
      sdlCreateShapedWindowLookupFunction(titlePointer, x, y, w, h, flags);
  calloc.free(titlePointer);
  return result;
}

///
/// Return whether the given window is a shaped window.
///
/// \param window The window to query for being shaped.
/// \return SDL_TRUE if the window is a window that can be shaped, SDL_FALSE if
/// the window is unshaped or NULL.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateShapedWindow
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsShapedWindow(const SDL_Window *window)
/// ```
int sdlIsShapedWindow(Pointer<SdlWindow> window) {
  final sdlIsShapedWindowLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow> window),
      int Function(Pointer<SdlWindow> window)>('SDL_IsShapedWindow');
  return sdlIsShapedWindowLookupFunction(window);
}

///
/// Set the shape and parameters of a shaped window.
///
/// \param window The shaped window whose parameters should be set.
/// \param shape A surface encoding the desired shape for the window.
/// \param shape_mode The parameters to set for the shaped window.
/// \return 0 on success, SDL_INVALID_SHAPE_ARGUMENT on an invalid shape
/// argument, or SDL_NONSHAPEABLE_WINDOW if the SDL_Window given does
/// not reference a valid shaped window.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WindowShapeMode
/// \sa SDL_GetShapedWindowMode
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowShape(SDL_Window *window,SDL_Surface *shape,SDL_WindowShapeMode *shape_mode)
/// ```
int sdlSetWindowShape(Pointer<SdlWindow> window, Pointer<SdlSurface> shape,
    Pointer<SdlWindowShapeMode> shapeMode) {
  final sdlSetWindowShapeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow> window, Pointer<SdlSurface> shape,
          Pointer<SdlWindowShapeMode> shapeMode),
      int Function(Pointer<SdlWindow> window, Pointer<SdlSurface> shape,
          Pointer<SdlWindowShapeMode> shapeMode)>('SDL_SetWindowShape');
  return sdlSetWindowShapeLookupFunction(window, shape, shapeMode);
}

///
/// Get the shape parameters of a shaped window.
///
/// \param window The shaped window whose parameters should be retrieved.
/// \param shape_mode An empty shape-mode structure to fill, or NULL to check
/// whether the window has a shape.
/// \return 0 if the window has a shape and, provided shape_mode was not NULL,
/// shape_mode has been filled with the mode data,
/// SDL_NONSHAPEABLE_WINDOW if the SDL_Window given is not a shaped
/// window, or SDL_WINDOW_LACKS_SHAPE if the SDL_Window given is a
/// shapeable window currently lacking a shape.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WindowShapeMode
/// \sa SDL_SetWindowShape
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetShapedWindowMode(SDL_Window *window,SDL_WindowShapeMode *shape_mode)
/// ```
int sdlGetShapedWindowMode(
    Pointer<SdlWindow> window, Pointer<SdlWindowShapeMode> shapeMode) {
  final sdlGetShapedWindowModeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlWindow> window, Pointer<SdlWindowShapeMode> shapeMode),
      int Function(Pointer<SdlWindow> window,
          Pointer<SdlWindowShapeMode> shapeMode)>('SDL_GetShapedWindowMode');
  return sdlGetShapedWindowModeLookupFunction(window, shapeMode);
}
