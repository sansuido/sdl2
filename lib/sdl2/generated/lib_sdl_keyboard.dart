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
Pointer<SdlWindow> sdlGetKeyboardFocus() {
  final sdlGetKeyboardFocusLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlWindow> Function(),
      Pointer<SdlWindow> Function()>('SDL_GetKeyboardFocus');
  return sdlGetKeyboardFocusLookupFunction();
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
/// \sa SDL_ResetKeyboard
///
/// ```c
/// extern DECLSPEC const Uint8 *SDLCALL SDL_GetKeyboardState(int *numkeys)
/// ```
Pointer<Uint8> sdlGetKeyboardState(Pointer<Int32> numkeys) {
  final sdlGetKeyboardStateLookupFunction = libSdl2.lookupFunction<
      Pointer<Uint8> Function(Pointer<Int32> numkeys),
      Pointer<Uint8> Function(Pointer<Int32> numkeys)>('SDL_GetKeyboardState');
  return sdlGetKeyboardStateLookupFunction(numkeys);
}

///
/// Clear the state of the keyboard
///
/// This function will generate key up events for all pressed keys.
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_GetKeyboardState
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ResetKeyboard(void)
/// ```
void sdlResetKeyboard() {
  final sdlResetKeyboardLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_ResetKeyboard');
  return sdlResetKeyboardLookupFunction();
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
int sdlGetModState() {
  final sdlGetModStateLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_GetModState');
  return sdlGetModStateLookupFunction();
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
void sdlSetModState(int modstate) {
  final sdlSetModStateLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 modstate),
      void Function(int modstate)>('SDL_SetModState');
  return sdlSetModStateLookupFunction(modstate);
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
int sdlGetKeyFromScancode(int scancode) {
  final sdlGetKeyFromScancodeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 scancode),
      int Function(int scancode)>('SDL_GetKeyFromScancode');
  return sdlGetKeyFromScancodeLookupFunction(scancode);
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
int sdlGetScancodeFromKey(int key) {
  final sdlGetScancodeFromKeyLookupFunction =
      libSdl2.lookupFunction<Int32 Function(Int32 key), int Function(int key)>(
          'SDL_GetScancodeFromKey');
  return sdlGetScancodeFromKeyLookupFunction(key);
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
String? sdlGetScancodeName(int scancode) {
  final sdlGetScancodeNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 scancode),
      Pointer<Utf8> Function(int scancode)>('SDL_GetScancodeName');
  final result = sdlGetScancodeNameLookupFunction(scancode);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlGetScancodeFromName(String? name) {
  final sdlGetScancodeFromNameLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> name),
      int Function(Pointer<Utf8> name)>('SDL_GetScancodeFromName');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result = sdlGetScancodeFromNameLookupFunction(namePointer);
  calloc.free(namePointer);
  return result;
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
String? sdlGetKeyName(int key) {
  final sdlGetKeyNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 key),
      Pointer<Utf8> Function(int key)>('SDL_GetKeyName');
  final result = sdlGetKeyNameLookupFunction(key);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlGetKeyFromName(String? name) {
  final sdlGetKeyFromNameLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> name),
      int Function(Pointer<Utf8> name)>('SDL_GetKeyFromName');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result = sdlGetKeyFromNameLookupFunction(namePointer);
  calloc.free(namePointer);
  return result;
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
void sdlStartTextInput() {
  final sdlStartTextInputLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_StartTextInput');
  return sdlStartTextInputLookupFunction();
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
int sdlIsTextInputActive() {
  final sdlIsTextInputActiveLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_IsTextInputActive');
  return sdlIsTextInputActiveLookupFunction();
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
void sdlStopTextInput() {
  final sdlStopTextInputLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_StopTextInput');
  return sdlStopTextInputLookupFunction();
}

///
/// Dismiss the composition window/IME without disabling the subsystem.
///
/// \since This function is available since SDL 2.0.22.
///
/// \sa SDL_StartTextInput
/// \sa SDL_StopTextInput
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearComposition(void)
/// ```
void sdlClearComposition() {
  final sdlClearCompositionLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_ClearComposition');
  return sdlClearCompositionLookupFunction();
}

///
/// Returns if an IME Composite or Candidate window is currently shown.
///
/// \since This function is available since SDL 2.0.22.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsTextInputShown(void)
/// ```
int sdlIsTextInputShown() {
  final sdlIsTextInputShownLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_IsTextInputShown');
  return sdlIsTextInputShownLookupFunction();
}

///
/// Set the rectangle used to type Unicode text inputs.
///
/// To start text input in a given location, this function is intended to be
/// called before SDL_StartTextInput, although some platforms support moving
/// the rectangle even while text input (and a composition) is active.
///
/// Note: If you want to use the system native IME window, try setting hint
/// **SDL_HINT_IME_SHOW_UI** to **1**, otherwise this function won't give you
/// any feedback.
///
/// \param rect the SDL_Rect structure representing the rectangle to receive
/// text (ignored if NULL)
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_StartTextInput
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetTextInputRect(const SDL_Rect *rect)
/// ```
void sdlSetTextInputRect(Pointer<SdlRect> rect) {
  final sdlSetTextInputRectLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlRect> rect),
      void Function(Pointer<SdlRect> rect)>('SDL_SetTextInputRect');
  return sdlSetTextInputRectLookupFunction(rect);
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
int sdlHasScreenKeyboardSupport() {
  final sdlHasScreenKeyboardSupportLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_HasScreenKeyboardSupport');
  return sdlHasScreenKeyboardSupportLookupFunction();
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
int sdlIsScreenKeyboardShown(Pointer<SdlWindow> window) {
  final sdlIsScreenKeyboardShownLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow> window),
      int Function(Pointer<SdlWindow> window)>('SDL_IsScreenKeyboardShown');
  return sdlIsScreenKeyboardShownLookupFunction(window);
}
