// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the window which currently has mouse focus.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetMouseFocus(void)
/// ```
Pointer<SDL_Window>? SDL_GetMouseFocus() {
  final _SDL_GetMouseFocus = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GetMouseFocus');
  return _SDL_GetMouseFocus();
}

/// 
/// \brief Retrieve the current state of the mouse.
/// 
/// The current button state is returned as a button bitmask, which can
/// be tested using the SDL_BUTTON(X) macros, and x and y are set to the
/// mouse cursor position relative to the focus window for the currently
/// selected mouse.  You can pass NULL for either x or y.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetMouseState(int *x, int *y)
/// ```
int SDL_GetMouseState(Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetMouseState = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32>? x, Pointer<Int32>? y),
      int Function(Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetMouseState');
  return _SDL_GetMouseState(x, y);
}

/// 
/// \brief Retrieve the relative state of the mouse.
/// 
/// The current button state is returned as a button bitmask, which can
/// be tested using the SDL_BUTTON(X) macros, and x and y are set to the
/// mouse deltas since the last call to SDL_GetRelativeMouseState().
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetRelativeMouseState(int *x, int *y)
/// ```
int SDL_GetRelativeMouseState(Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetRelativeMouseState = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32>? x, Pointer<Int32>? y),
      int Function(Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetRelativeMouseState');
  return _SDL_GetRelativeMouseState(x, y);
}

/// 
/// \brief Moves the mouse to the given position within the window.
/// 
/// \param window The window to move the mouse into, or NULL for the current mouse focus
/// \param x The x coordinate within the window
/// \param y The y coordinate within the window
/// 
/// \note This function generates a mouse motion event
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_WarpMouseInWindow(SDL_Window * window, int x, int y)
/// ```
void SDL_WarpMouseInWindow(Pointer<SDL_Window>? window, int x, int y) {
  final _SDL_WarpMouseInWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 x, Int32 y),
      void Function(Pointer<SDL_Window>? window, int x, int y)>('SDL_WarpMouseInWindow');
  return _SDL_WarpMouseInWindow(window, x, y);
}

/// 
/// \brief Set relative mouse mode.
/// 
/// \param enabled Whether or not to enable relative mode
/// 
/// \return 0 on success, or -1 if relative mode is not supported.
/// 
/// While the mouse is in relative mode, the cursor is hidden, and the
/// driver will try to report continuous motion in the current window.
/// Only relative motion events will be delivered, the mouse position
/// will not change.
/// 
/// \note This function will flush any pending mouse motion.
/// 
/// \sa SDL_GetRelativeMouseMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRelativeMouseMode(SDL_bool enabled)
/// ```
int SDL_SetRelativeMouseMode(int enabled) {
  final _SDL_SetRelativeMouseMode = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 enabled),
      int Function(int enabled)>('SDL_SetRelativeMouseMode');
  return _SDL_SetRelativeMouseMode(enabled);
}

/// 
/// \brief Query whether relative mouse mode is enabled.
/// 
/// \sa SDL_SetRelativeMouseMode()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetRelativeMouseMode(void)
/// ```
int SDL_GetRelativeMouseMode() {
  final _SDL_GetRelativeMouseMode = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetRelativeMouseMode');
  return _SDL_GetRelativeMouseMode();
}

/// 
/// \brief Create a cursor, using the specified bitmap data and
/// mask (in MSB format).
/// 
/// The cursor width must be a multiple of 8 bits.
/// 
/// The cursor is created in black and white according to the following:
/// <table>
/// <tr><td> data </td><td> mask </td><td> resulting pixel on screen </td></tr>
/// <tr><td>  0   </td><td>  1   </td><td> White </td></tr>
/// <tr><td>  1   </td><td>  1   </td><td> Black </td></tr>
/// <tr><td>  0   </td><td>  0   </td><td> Transparent </td></tr>
/// <tr><td>  1   </td><td>  0   </td><td> Inverted color if possible, black
/// if not. </td></tr>
/// </table>
/// 
/// \sa SDL_FreeCursor()
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateCursor(const Uint8 * data, const Uint8 * mask, int w, int h, int hot_x, int hot_y)
/// ```
Pointer<SDL_Cursor>? SDL_CreateCursor(Pointer<Uint8>? data, Pointer<Uint8>? mask, int w, int h, int hot_x, int hot_y) {
  final _SDL_CreateCursor = DLL_SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(Pointer<Uint8>? data, Pointer<Uint8>? mask, Int32 w, Int32 h, Int32 hot_x, Int32 hot_y),
      Pointer<SDL_Cursor>? Function(Pointer<Uint8>? data, Pointer<Uint8>? mask, int w, int h, int hot_x, int hot_y)>('SDL_CreateCursor');
  return _SDL_CreateCursor(data, mask, w, h, hot_x, hot_y);
}

/// 
/// \brief Create a color cursor.
/// 
/// \sa SDL_FreeCursor()
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y)
/// ```
Pointer<SDL_Cursor>? SDL_CreateColorCursor(Pointer<SDL_Surface>? surface, int hot_x, int hot_y) {
  final _SDL_CreateColorCursor = DLL_SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(Pointer<SDL_Surface>? surface, Int32 hot_x, Int32 hot_y),
      Pointer<SDL_Cursor>? Function(Pointer<SDL_Surface>? surface, int hot_x, int hot_y)>('SDL_CreateColorCursor');
  return _SDL_CreateColorCursor(surface, hot_x, hot_y);
}

/// 
/// \brief Create a system cursor.
/// 
/// \sa SDL_FreeCursor()
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateSystemCursor(SDL_SystemCursor id)
/// ```
Pointer<SDL_Cursor>? SDL_CreateSystemCursor(int id) {
  final _SDL_CreateSystemCursor = DLL_SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(Int32 id),
      Pointer<SDL_Cursor>? Function(int id)>('SDL_CreateSystemCursor');
  return _SDL_CreateSystemCursor(id);
}

/// 
/// \brief Set the active cursor.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetCursor(SDL_Cursor * cursor)
/// ```
void SDL_SetCursor(Pointer<SDL_Cursor>? cursor) {
  final _SDL_SetCursor = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Cursor>? cursor),
      void Function(Pointer<SDL_Cursor>? cursor)>('SDL_SetCursor');
  return _SDL_SetCursor(cursor);
}

/// 
/// \brief Return the active cursor.
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_GetCursor(void)
/// ```
Pointer<SDL_Cursor>? SDL_GetCursor() {
  final _SDL_GetCursor = DLL_SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(),
      Pointer<SDL_Cursor>? Function()>('SDL_GetCursor');
  return _SDL_GetCursor();
}

/// 
/// \brief Return the default cursor.
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_GetDefaultCursor(void)
/// ```
Pointer<SDL_Cursor>? SDL_GetDefaultCursor() {
  final _SDL_GetDefaultCursor = DLL_SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(),
      Pointer<SDL_Cursor>? Function()>('SDL_GetDefaultCursor');
  return _SDL_GetDefaultCursor();
}

/// 
/// \brief Frees a cursor created with SDL_CreateCursor().
/// 
/// \sa SDL_CreateCursor()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeCursor(SDL_Cursor * cursor)
/// ```
void SDL_FreeCursor(Pointer<SDL_Cursor>? cursor) {
  final _SDL_FreeCursor = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Cursor>? cursor),
      void Function(Pointer<SDL_Cursor>? cursor)>('SDL_FreeCursor');
  return _SDL_FreeCursor(cursor);
}

/// 
/// \brief Toggle whether or not the cursor is shown.
/// 
/// \param toggle 1 to show the cursor, 0 to hide it, -1 to query the current
/// state.
/// 
/// \return 1 if the cursor is shown, or 0 if the cursor is hidden.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ShowCursor(int toggle)
/// ```
int SDL_ShowCursor(int toggle) {
  final _SDL_ShowCursor = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 toggle),
      int Function(int toggle)>('SDL_ShowCursor');
  return _SDL_ShowCursor(toggle);
}

