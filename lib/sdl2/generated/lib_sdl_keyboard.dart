// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the window which currently has keyboard focus.
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
/// \brief Get a snapshot of the current state of the keyboard.
/// 
/// \param numkeys if non-NULL, receives the length of the returned array.
/// 
/// \return An array of key states. Indexes into this array are obtained by using ::SDL_Scancode values.
/// 
/// \b Example:
/// \code
/// const Uint8 *state = SDL_GetKeyboardState(NULL);
/// if ( state[SDL_SCANCODE_RETURN] )   {
/// printf("<RETURN> is pressed.\n");
/// }
/// \endcode
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
/// \brief Get the current key modifier state for the keyboard.
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
/// \brief Set the current key modifier state for the keyboard.
/// 
/// \note This does not change the keyboard state, only the key modifier flags.
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
/// \brief Get the key code corresponding to the given scancode according
/// to the current keyboard layout.
/// 
/// See ::SDL_Keycode for details.
/// 
/// \sa SDL_GetKeyName()
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
/// \brief Get the scancode corresponding to the given key code according to the
/// current keyboard layout.
/// 
/// See ::SDL_Scancode for details.
/// 
/// \sa SDL_GetScancodeName()
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
/// \brief Get a human-readable name for a scancode.
/// 
/// \return A pointer to the name for the scancode.
/// If the scancode doesn't have a name, this function returns
/// an empty string ("").
/// 
/// \sa SDL_Scancode
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
/// \brief Get a scancode from a human-readable name
/// 
/// \return scancode, or SDL_SCANCODE_UNKNOWN if the name wasn't recognized
/// 
/// \sa SDL_Scancode
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
/// \brief Get a human-readable name for a key.
/// 
/// \return A pointer to a UTF-8 string that stays valid at least until the next
/// call to this function. If you need it around any longer, you must
/// copy it.  If the key doesn't have a name, this function returns an
/// empty string ("").
/// 
/// \sa SDL_Key
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
/// \brief Get a key code from a human-readable name
/// 
/// \return key code, or SDLK_UNKNOWN if the name wasn't recognized
/// 
/// \sa SDL_Keycode
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
/// \brief Start accepting Unicode text input events.
/// This function will show the on-screen keyboard if supported.
/// 
/// \sa SDL_StopTextInput()
/// \sa SDL_SetTextInputRect()
/// \sa SDL_HasScreenKeyboardSupport()
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
/// \brief Return whether or not Unicode text input events are enabled.
/// 
/// \sa SDL_StartTextInput()
/// \sa SDL_StopTextInput()
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
/// \brief Stop receiving any text input events.
/// This function will hide the on-screen keyboard if supported.
/// 
/// \sa SDL_StartTextInput()
/// \sa SDL_HasScreenKeyboardSupport()
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
/// \brief Set the rectangle used to type Unicode text inputs.
/// This is used as a hint for IME and on-screen keyboard placement.
/// 
/// \sa SDL_StartTextInput()
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
/// \brief Returns whether the platform has some screen keyboard support.
/// 
/// \return SDL_TRUE if some keyboard support is available else SDL_FALSE.
/// 
/// \note Not all screen keyboard functions are supported on all platforms.
/// 
/// \sa SDL_IsScreenKeyboardShown()
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
/// \brief Returns whether the screen keyboard is shown for given window.
/// 
/// \param window The window for which screen keyboard should be queried.
/// 
/// \return SDL_TRUE if screen keyboard is shown else SDL_FALSE.
/// 
/// \sa SDL_HasScreenKeyboardSupport()
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

