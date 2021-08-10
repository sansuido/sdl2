// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Create a window that can be shaped with the specified position, dimensions, and flags.
/// 
/// \param title The title of the window, in UTF-8 encoding.
/// \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param w     The width of the window.
/// \param h     The height of the window.
/// \param flags The flags for the window, a mask of SDL_WINDOW_BORDERLESS with any of the following:
/// ::SDL_WINDOW_OPENGL,     ::SDL_WINDOW_INPUT_GRABBED,
/// ::SDL_WINDOW_HIDDEN,     ::SDL_WINDOW_RESIZABLE,
/// ::SDL_WINDOW_MAXIMIZED,  ::SDL_WINDOW_MINIMIZED,
/// ::SDL_WINDOW_BORDERLESS is always set, and ::SDL_WINDOW_FULLSCREEN is always unset.
/// 
/// \return The window created, or NULL if window creation failed.
/// 
/// \sa SDL_DestroyWindow()
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateShapedWindow(const char *title,unsigned int x,unsigned int y,unsigned int w,unsigned int h,Uint32 flags)
/// ```
Pointer<SDL_Window>? SDL_CreateShapedWindow(String title, int x, int y, int w, int h, int flags) {
  final _SDL_CreateShapedWindow = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, Uint32 x, Uint32 y, Uint32 w, Uint32 h, Uint32 flags),
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, int x, int y, int w, int h, int flags)>('SDL_CreateShapedWindow');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_CreateShapedWindow(_titlePointer, x, y, w, h, flags);
  calloc.free(_titlePointer);
  return _result;
}

/// 
/// \brief Return whether the given window is a shaped window.
/// 
/// \param window The window to query for being shaped.
/// 
/// \return SDL_TRUE if the window is a window that can be shaped, SDL_FALSE if the window is unshaped or NULL.
/// \sa SDL_CreateShapedWindow
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsShapedWindow(const SDL_Window *window)
/// ```
int SDL_IsShapedWindow(Pointer<SDL_Window>? window) {
  final _SDL_IsShapedWindow = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_IsShapedWindow');
  return _SDL_IsShapedWindow(window);
}

/// 
/// \brief Set the shape and parameters of a shaped window.
/// 
/// \param window The shaped window whose parameters should be set.
/// \param shape A surface encoding the desired shape for the window.
/// \param shape_mode The parameters to set for the shaped window.
/// 
/// \return 0 on success, SDL_INVALID_SHAPE_ARGUMENT on invalid an invalid shape argument, or SDL_NONSHAPEABLE_WINDOW
/// if the SDL_Window* given does not reference a valid shaped window.
/// 
/// \sa SDL_WindowShapeMode
/// \sa SDL_GetShapedWindowMode.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowShape(SDL_Window *window,SDL_Surface *shape,SDL_WindowShapeMode *shape_mode)
/// ```
int SDL_SetWindowShape(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? shape, Pointer<SDL_WindowShapeMode>? shape_mode) {
  final _SDL_SetWindowShape = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? shape, Pointer<SDL_WindowShapeMode>? shape_mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? shape, Pointer<SDL_WindowShapeMode>? shape_mode)>('SDL_SetWindowShape');
  return _SDL_SetWindowShape(window, shape, shape_mode);
}

/// 
/// \brief Get the shape parameters of a shaped window.
/// 
/// \param window The shaped window whose parameters should be retrieved.
/// \param shape_mode An empty shape-mode structure to fill, or NULL to check whether the window has a shape.
/// 
/// \return 0 if the window has a shape and, provided shape_mode was not NULL, shape_mode has been filled with the mode
/// data, SDL_NONSHAPEABLE_WINDOW if the SDL_Window given is not a shaped window, or SDL_WINDOW_LACKS_SHAPE if
/// the SDL_Window* given is a shapeable window currently lacking a shape.
/// 
/// \sa SDL_WindowShapeMode
/// \sa SDL_SetWindowShape
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetShapedWindowMode(SDL_Window *window,SDL_WindowShapeMode *shape_mode)
/// ```
int SDL_GetShapedWindowMode(Pointer<SDL_Window>? window, Pointer<SDL_WindowShapeMode>? shape_mode) {
  final _SDL_GetShapedWindowMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_WindowShapeMode>? shape_mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_WindowShapeMode>? shape_mode)>('SDL_GetShapedWindowMode');
  return _SDL_GetShapedWindowMode(window, shape_mode);
}

