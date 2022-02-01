// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Query the window which currently has keyboard focus.
/// 
/// \returns the window with keyboard focus.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetKeyboardFocus(void)
/// ```
Pointer<SDL_Window>? SDL_GetKeyboardFocus() {
  final _SDL_GetKeyboardFocus = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GetKeyboardFocus');
  return _SDL_GetKeyboardFocus();
}

/// 
/// Get a snapshot of the current state of the keyboard.
/// 
/// The pointer returned is a pointer to an internal SDL array. It will be
/// valid for the whole lifetime of the application and should not be freed by
/// the caller.
/// 
/// A array element with a value of 1 means that the key is pressed and a value
/// of 0 means that it is not. Indexes into this array are obtained by using
/// SDL_Scancode values.
/// 
/// Use SDL_PumpEvents() to update the state array.
/// 
/// This function gives you the current state after all events have been
/// processed, so if a key or button has been pressed and released before you
/// process events, then the pressed state will never show up in the
/// SDL_GetKeyboardState() calls.
/// 
/// Note: This function doesn't take into account whether shift has been
/// pressed or not.
/// 
/// \param numkeys if non-NULL, receives the length of the returned array
/// \returns a pointer to an array of key states.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_PumpEvents
/// 
/// ```c
/// extern DECLSPEC const Uint8 *SDLCALL SDL_GetKeyboardState(int *numkeys)
/// ```
Pointer<Uint8>? SDL_GetKeyboardState(Pointer<Int32>? numkeys) {
  final _SDL_GetKeyboardState = DLL_SDL2.lookupFunction<
      Pointer<Uint8>? Function(Pointer<Int32>? numkeys),
      Pointer<Uint8>? Function(Pointer<Int32>? numkeys)>('SDL_GetKeyboardState');
  return _SDL_GetKeyboardState(numkeys);
}

/// 
/// Get the current key modifier state for the keyboard.
/// 
/// \returns an OR'd combination of the modifier keys for the keyboard. See
/// SDL_Keymod for details.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetKeyboardState
/// \sa SDL_SetModState
/// 
/// ```c
/// extern DECLSPEC SDL_Keymod SDLCALL SDL_GetModState(void)
/// ```
int SDL_GetModState() {
  final _SDL_GetModState = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetModState');
  return _SDL_GetModState();
}

/// 
/// Set the current key modifier state for the keyboard.
/// 
/// The inverse of SDL_GetModState(), SDL_SetModState() allows you to impose
/// modifier key states on your application. Simply pass your desired modifier
/// states into `modstate`. This value may be a bitwise, OR'd combination of
/// SDL_Keymod values.
/// 
/// This does not change the keyboard state, only the key modifier flags that
/// SDL reports.
/// 
/// \param modstate the desired SDL_Keymod for the keyboard
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetModState
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetModState(SDL_Keymod modstate)
/// ```
void SDL_SetModState(int modstate) {
  final _SDL_SetModState = DLL_SDL2.lookupFunction<
      Void Function(Int32 modstate),
      void Function(int modstate)>('SDL_SetModState');
  return _SDL_SetModState(modstate);
}

/// 
/// Get the key code corresponding to the given scancode according to the
/// current keyboard layout.
/// 
/// See SDL_Keycode for details.
/// 
/// \param scancode the desired SDL_Scancode to query
/// \returns the SDL_Keycode that corresponds to the given SDL_Scancode.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetKeyName
/// \sa SDL_GetScancodeFromKey
/// 
/// ```c
/// extern DECLSPEC SDL_Keycode SDLCALL SDL_GetKeyFromScancode(SDL_Scancode scancode)
/// ```
int SDL_GetKeyFromScancode(int scancode) {
  final _SDL_GetKeyFromScancode = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 scancode),
      int Function(int scancode)>('SDL_GetKeyFromScancode');
  return _SDL_GetKeyFromScancode(scancode);
}

/// 
/// Get the scancode corresponding to the given key code according to the
/// current keyboard layout.
/// 
/// See SDL_Scancode for details.
/// 
/// \param key the desired SDL_Keycode to query
/// \returns the SDL_Scancode that corresponds to the given SDL_Keycode.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetKeyFromScancode
/// \sa SDL_GetScancodeName
/// 
/// ```c
/// extern DECLSPEC SDL_Scancode SDLCALL SDL_GetScancodeFromKey(SDL_Keycode key)
/// ```
int SDL_GetScancodeFromKey(int key) {
  final _SDL_GetScancodeFromKey = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 key),
      int Function(int key)>('SDL_GetScancodeFromKey');
  return _SDL_GetScancodeFromKey(key);
}

/// 
/// Get a human-readable name for a scancode.
/// 
/// See SDL_Scancode for details.
/// 
/// **Warning**: The returned name is by design not stable across platforms,
/// e.g. the name for `SDL_SCANCODE_LGUI` is "Left GUI" under Linux but "Left
/// Windows" under Microsoft Windows, and some scancodes like
/// `SDL_SCANCODE_NONUSBACKSLASH` don't have any name at all. There are even
/// scancodes that share names, e.g. `SDL_SCANCODE_RETURN` and
/// `SDL_SCANCODE_RETURN2` (both called "Return"). This function is therefore
/// unsuitable for creating a stable cross-platform two-way mapping between
/// strings and scancodes.
/// 
/// \param scancode the desired SDL_Scancode to query
/// \returns a pointer to the name for the scancode. If the scancode doesn't
/// have a name this function returns an empty string ("").
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetScancodeFromKey
/// \sa SDL_GetScancodeFromName
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetScancodeName(SDL_Scancode scancode)
/// ```
String SDL_GetScancodeName(int scancode) {
  final _SDL_GetScancodeName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 scancode),
      Pointer<Utf8>? Function(int scancode)>('SDL_GetScancodeName');
  return _SDL_GetScancodeName(scancode)!.toDartString();
}

/// 
/// Get a scancode from a human-readable name.
/// 
/// \param name the human-readable scancode name
/// \returns the SDL_Scancode, or `SDL_SCANCODE_UNKNOWN` if the name wasn't
/// recognized; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetKeyFromName
/// \sa SDL_GetScancodeFromKey
/// \sa SDL_GetScancodeName
/// 
/// ```c
/// extern DECLSPEC SDL_Scancode SDLCALL SDL_GetScancodeFromName(const char *name)
/// ```
int SDL_GetScancodeFromName(String name) {
  final _SDL_GetScancodeFromName = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('SDL_GetScancodeFromName');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetScancodeFromName(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Get a human-readable name for a key.
/// 
/// See SDL_Scancode and SDL_Keycode for details.
/// 
/// \param key the desired SDL_Keycode to query
/// \returns a pointer to a UTF-8 string that stays valid at least until the
/// next call to this function. If you need it around any longer, you
/// must copy it. If the key doesn't have a name, this function
/// returns an empty string ("").
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetKeyFromName
/// \sa SDL_GetKeyFromScancode
/// \sa SDL_GetScancodeFromKey
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetKeyName(SDL_Keycode key)
/// ```
String SDL_GetKeyName(int key) {
  final _SDL_GetKeyName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 key),
      Pointer<Utf8>? Function(int key)>('SDL_GetKeyName');
  return _SDL_GetKeyName(key)!.toDartString();
}

/// 
/// Get a key code from a human-readable name.
/// 
/// \param name the human-readable key name
/// \returns key code, or `SDLK_UNKNOWN` if the name wasn't recognized; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetKeyFromScancode
/// \sa SDL_GetKeyName
/// \sa SDL_GetScancodeFromName
/// 
/// ```c
/// extern DECLSPEC SDL_Keycode SDLCALL SDL_GetKeyFromName(const char *name)
/// ```
int SDL_GetKeyFromName(String name) {
  final _SDL_GetKeyFromName = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('SDL_GetKeyFromName');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetKeyFromName(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Start accepting Unicode text input events.
/// 
/// This function will start accepting Unicode text input events in the focused
/// SDL window, and start emitting SDL_TextInputEvent (SDL_TEXTINPUT) and
/// SDL_TextEditingEvent (SDL_TEXTEDITING) events. Please use this function in
/// pair with SDL_StopTextInput().
/// 
/// On some platforms using this function activates the screen keyboard.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetTextInputRect
/// \sa SDL_StopTextInput
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_StartTextInput(void)
/// ```
void SDL_StartTextInput() {
  final _SDL_StartTextInput = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_StartTextInput');
  return _SDL_StartTextInput();
}

/// 
/// Check whether or not Unicode text input events are enabled.
/// 
/// \returns SDL_TRUE if text input events are enabled else SDL_FALSE.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_StartTextInput
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsTextInputActive(void)
/// ```
int SDL_IsTextInputActive() {
  final _SDL_IsTextInputActive = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsTextInputActive');
  return _SDL_IsTextInputActive();
}

/// 
/// Stop receiving any text input events.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_StartTextInput
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_StopTextInput(void)
/// ```
void SDL_StopTextInput() {
  final _SDL_StopTextInput = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_StopTextInput');
  return _SDL_StopTextInput();
}

/// 
/// Set the rectangle used to type Unicode text inputs.
/// 
/// \param rect the SDL_Rect structure representing the rectangle to receive
/// text (ignored if NULL)
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_StartTextInput
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetTextInputRect(SDL_Rect *rect)
/// ```
void SDL_SetTextInputRect(Pointer<SDL_Rect>? rect) {
  final _SDL_SetTextInputRect = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Rect>? rect)>('SDL_SetTextInputRect');
  return _SDL_SetTextInputRect(rect);
}

/// 
/// Check whether the platform has screen keyboard support.
/// 
/// \returns SDL_TRUE if the platform has some screen keyboard support or
/// SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_StartTextInput
/// \sa SDL_IsScreenKeyboardShown
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasScreenKeyboardSupport(void)
/// ```
int SDL_HasScreenKeyboardSupport() {
  final _SDL_HasScreenKeyboardSupport = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasScreenKeyboardSupport');
  return _SDL_HasScreenKeyboardSupport();
}

/// 
/// Check whether the screen keyboard is shown for given window.
/// 
/// \param window the window for which screen keyboard should be queried
/// \returns SDL_TRUE if screen keyboard is shown or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HasScreenKeyboardSupport
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsScreenKeyboardShown(SDL_Window *window)
/// ```
int SDL_IsScreenKeyboardShown(Pointer<SDL_Window>? window) {
  final _SDL_IsScreenKeyboardShown = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_IsScreenKeyboardShown');
  return _SDL_IsScreenKeyboardShown(window);
}

