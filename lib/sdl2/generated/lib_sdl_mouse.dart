// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Get the window which currently has mouse focus.
/// 
/// \returns the window with mouse focus.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Retrieve the current state of the mouse.
/// 
/// The current button state is returned as a button bitmask, which can be
/// tested using the `SDL_BUTTON(X)` macros (where `X` is generally 1 for the
/// left, 2 for middle, 3 for the right button), and `x` and `y` are set to the
/// mouse cursor position relative to the focus window. You can pass NULL for
/// either `x` or `y`.
/// 
/// \param x the x coordinate of the mouse cursor position relative to the
/// focus window
/// \param y the y coordinate of the mouse cursor position relative to the
/// focus window
/// \returns a 32-bit button bitmask of the current button state.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetGlobalMouseState
/// \sa SDL_GetRelativeMouseState
/// \sa SDL_PumpEvents
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
/// Get the current state of the mouse in relation to the desktop.
/// 
/// This works similarly to SDL_GetMouseState(), but the coordinates will be
/// reported relative to the top-left of the desktop. This can be useful if you
/// need to track the mouse outside of a specific window and SDL_CaptureMouse()
/// doesn't fit your needs. For example, it could be useful if you need to
/// track the mouse while dragging a window, where coordinates relative to a
/// window might not be in sync at all times.
/// 
/// Note: SDL_GetMouseState() returns the mouse position as SDL understands it
/// from the last pump of the event queue. This function, however, queries the
/// OS for the current mouse position, and as such, might be a slightly less
/// efficient function. Unless you know what you're doing and have a good
/// reason to use this function, you probably want SDL_GetMouseState() instead.
/// 
/// \param x filled in with the current X coord relative to the desktop; can be
/// NULL
/// \param y filled in with the current Y coord relative to the desktop; can be
/// NULL
/// \returns the current button state as a bitmask which can be tested using
/// the SDL_BUTTON(X) macros.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_CaptureMouse
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetGlobalMouseState(int *x, int *y)
/// ```
int SDL_GetGlobalMouseState(Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetGlobalMouseState = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32>? x, Pointer<Int32>? y),
      int Function(Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetGlobalMouseState');
  return _SDL_GetGlobalMouseState(x, y);
}

/// 
/// Retrieve the relative state of the mouse.
/// 
/// The current button state is returned as a button bitmask, which can be
/// tested using the `SDL_BUTTON(X)` macros (where `X` is generally 1 for the
/// left, 2 for middle, 3 for the right button), and `x` and `y` are set to the
/// mouse deltas since the last call to SDL_GetRelativeMouseState() or since
/// event initialization. You can pass NULL for either `x` or `y`.
/// 
/// \param x a pointer filled with the last recorded x coordinate of the mouse
/// \param y a pointer filled with the last recorded y coordinate of the mouse
/// \returns a 32-bit button bitmask of the relative button state.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetMouseState
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
/// Move the mouse cursor to the given position within the window.
/// 
/// This function generates a mouse motion event.
/// 
/// Note that this function will appear to succeed, but not actually move the
/// mouse when used over Microsoft Remote Desktop.
/// 
/// \param window the window to move the mouse into, or NULL for the current
/// mouse focus
/// \param x the x coordinate within the window
/// \param y the y coordinate within the window
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_WarpMouseGlobal
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
/// Move the mouse to the given position in global screen space.
/// 
/// This function generates a mouse motion event.
/// 
/// A failure of this function usually means that it is unsupported by a
/// platform.
/// 
/// Note that this function will appear to succeed, but not actually move the
/// mouse when used over Microsoft Remote Desktop.
/// 
/// \param x the x coordinate
/// \param y the y coordinate
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_WarpMouseInWindow
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_WarpMouseGlobal(int x, int y)
/// ```
int SDL_WarpMouseGlobal(int x, int y) {
  final _SDL_WarpMouseGlobal = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x, Int32 y),
      int Function(int x, int y)>('SDL_WarpMouseGlobal');
  return _SDL_WarpMouseGlobal(x, y);
}

/// 
/// Set relative mouse mode.
/// 
/// While the mouse is in relative mode, the cursor is hidden, and the driver
/// will try to report continuous motion in the current window. Only relative
/// motion events will be delivered, the mouse position will not change.
/// 
/// Note that this function will not be able to provide continuous relative
/// motion when used over Microsoft Remote Desktop, instead motion is limited
/// to the bounds of the screen.
/// 
/// This function will flush any pending mouse motion.
/// 
/// \param enabled SDL_TRUE to enable relative mode, SDL_FALSE to disable.
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// If relative mode is not supported, this returns -1.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRelativeMouseMode
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
/// Capture the mouse and to track input outside an SDL window.
/// 
/// Capturing enables your app to obtain mouse events globally, instead of just
/// within your window. Not all video targets support this function. When
/// capturing is enabled, the current window will get all mouse events, but
/// unlike relative mode, no change is made to the cursor and it is not
/// restrained to your window.
/// 
/// This function may also deny mouse input to other windows--both those in
/// your application and others on the system--so you should use this function
/// sparingly, and in small bursts. For example, you might want to track the
/// mouse while the user is dragging something, until the user releases a mouse
/// button. It is not recommended that you capture the mouse for long periods
/// of time, such as the entire time your app is running. For that, you should
/// probably use SDL_SetRelativeMouseMode() or SDL_SetWindowGrab(), depending
/// on your goals.
/// 
/// While captured, mouse events still report coordinates relative to the
/// current (foreground) window, but those coordinates may be outside the
/// bounds of the window (including negative values). Capturing is only allowed
/// for the foreground window. If the window loses focus while capturing, the
/// capture will be disabled automatically.
/// 
/// While capturing is enabled, the current window will have the
/// `SDL_WINDOW_MOUSE_CAPTURE` flag set.
/// 
/// \param enabled SDL_TRUE to enable capturing, SDL_FALSE to disable.
/// \returns 0 on success or -1 if not supported; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_GetGlobalMouseState
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CaptureMouse(SDL_bool enabled)
/// ```
int SDL_CaptureMouse(int enabled) {
  final _SDL_CaptureMouse = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 enabled),
      int Function(int enabled)>('SDL_CaptureMouse');
  return _SDL_CaptureMouse(enabled);
}

/// 
/// Query whether relative mouse mode is enabled.
/// 
/// \returns SDL_TRUE if relative mode is enabled or SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetRelativeMouseMode
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
/// Create a cursor using the specified bitmap data and mask (in MSB format).
/// 
/// `mask` has to be in MSB (Most Significant Bit) format.
/// 
/// The cursor width (`w`) must be a multiple of 8 bits.
/// 
/// The cursor is created in black and white according to the following:
/// 
/// - data=0, mask=1: white
/// - data=1, mask=1: black
/// - data=0, mask=0: transparent
/// - data=1, mask=0: inverted color if possible, black if not.
/// 
/// Cursors created with this function must be freed with SDL_FreeCursor().
/// 
/// If you want to have a color cursor, or create your cursor from an
/// SDL_Surface, you should use SDL_CreateColorCursor(). Alternately, you can
/// hide the cursor and draw your own as part of your game's rendering, but it
/// will be bound to the framerate.
/// 
/// Also, since SDL 2.0.0, SDL_CreateSystemCursor() is available, which
/// provides twelve readily available system cursors to pick from.
/// 
/// \param data the color value for each pixel of the cursor
/// \param mask the mask value for each pixel of the cursor
/// \param w the width of the cursor
/// \param h the height of the cursor
/// \param hot_x the X-axis location of the upper left corner of the cursor
/// relative to the actual mouse position
/// \param hot_y the Y-axis location of the upper left corner of the cursor
/// relative to the actual mouse position
/// \returns a new cursor with the specified parameters on success or NULL on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FreeCursor
/// \sa SDL_SetCursor
/// \sa SDL_ShowCursor
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
/// Create a color cursor.
/// 
/// \param surface an SDL_Surface structure representing the cursor image
/// \param hot_x the x position of the cursor hot spot
/// \param hot_y the y position of the cursor hot spot
/// \returns the new cursor on success or NULL on failure; call SDL_GetError()
/// for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateCursor
/// \sa SDL_FreeCursor
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
/// Create a system cursor.
/// 
/// \param id an SDL_SystemCursor enum value
/// \returns a cursor on success or NULL on failure; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FreeCursor
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
/// Set the active cursor.
/// 
/// This function sets the currently active cursor to the specified one. If the
/// cursor is currently visible, the change will be immediately represented on
/// the display. SDL_SetCursor(NULL) can be used to force cursor redraw, if
/// this is desired for any reason.
/// 
/// \param cursor a cursor to make active
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateCursor
/// \sa SDL_GetCursor
/// \sa SDL_ShowCursor
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
/// Get the active cursor.
/// 
/// This function returns a pointer to the current cursor which is owned by the
/// library. It is not necessary to free the cursor with SDL_FreeCursor().
/// 
/// \returns the active cursor or NULL if there is no mouse.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetCursor
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
/// Get the default cursor.
/// 
/// \returns the default cursor on success or NULL on failure.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateSystemCursor
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
/// Free a previously-created cursor.
/// 
/// Use this function to free cursor resources created with SDL_CreateCursor(),
/// SDL_CreateColorCursor() or SDL_CreateSystemCursor().
/// 
/// \param cursor the cursor to free
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateColorCursor
/// \sa SDL_CreateCursor
/// \sa SDL_CreateSystemCursor
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
/// Toggle whether or not the cursor is shown.
/// 
/// The cursor starts off displayed but can be turned off. Passing `SDL_ENABLE`
/// displays the cursor and passing `SDL_DISABLE` hides it.
/// 
/// The current state of the mouse cursor can be queried by passing
/// `SDL_QUERY`; either `SDL_DISABLE` or `SDL_ENABLE` will be returned.
/// 
/// \param toggle `SDL_ENABLE` to show the cursor, `SDL_DISABLE` to hide it,
/// `SDL_QUERY` to query the current state without changing it.
/// \returns `SDL_ENABLE` if the cursor is shown, or `SDL_DISABLE` if the
/// cursor is hidden, or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateCursor
/// \sa SDL_SetCursor
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

