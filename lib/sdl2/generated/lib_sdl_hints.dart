// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

///
/// Set a hint with a specific priority.
///
/// The priority controls the behavior when setting a hint that already has a
/// value. Hints will replace existing hints of their priority and lower.
/// Environment variables are considered to have override priority.
///
/// \param name the hint to set
/// \param value the value of the hint variable
/// \param priority the SDL_HintPriority level for the hint
/// \returns SDL_TRUE if the hint was set, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetHint
/// \sa SDL_SetHint
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority)
/// ```
bool sdlSetHintWithPriority(String? name, String? value, int priority) {
  final sdlSetHintWithPriorityLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> name, Pointer<Utf8> value, Int32 priority),
      int Function(Pointer<Utf8> name, Pointer<Utf8> value,
          int priority)>('SDL_SetHintWithPriority');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final valuePointer = value != null ? value.toNativeUtf8() : nullptr;
  final result = sdlSetHintWithPriorityLookupFunction(
          namePointer, valuePointer, priority) ==
      1;
  calloc.free(namePointer);
  calloc.free(valuePointer);
  return result;
}

///
/// Set a hint with normal priority.
///
/// Hints will not be set if there is an existing override hint or environment
/// variable that takes precedence. You can use SDL_SetHintWithPriority() to
/// set the hint with override priority instead.
///
/// \param name the hint to set
/// \param value the value of the hint variable
/// \returns SDL_TRUE if the hint was set, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetHint
/// \sa SDL_SetHintWithPriority
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_SetHint(const char *name, const char *value)
/// ```
bool sdlSetHint(String? name, String? value) {
  final sdlSetHintLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> name, Pointer<Utf8> value),
      int Function(Pointer<Utf8> name, Pointer<Utf8> value)>('SDL_SetHint');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final valuePointer = value != null ? value.toNativeUtf8() : nullptr;
  final result = sdlSetHintLookupFunction(namePointer, valuePointer) == 1;
  calloc.free(namePointer);
  calloc.free(valuePointer);
  return result;
}

///
/// Reset a hint to the default value.
///
/// This will reset a hint to the value of the environment variable, or NULL if
/// the environment isn't set. Callbacks will be called normally with this
/// change.
///
/// \param name the hint to set
/// \returns SDL_TRUE if the hint was set, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_GetHint
/// \sa SDL_SetHint
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_ResetHint(const char *name)
/// ```
bool sdlResetHint(String? name) {
  final sdlResetHintLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> name),
      int Function(Pointer<Utf8> name)>('SDL_ResetHint');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result = sdlResetHintLookupFunction(namePointer) == 1;
  calloc.free(namePointer);
  return result;
}

///
/// Reset all hints to the default values.
///
/// This will reset all hints to the value of the associated environment
/// variable, or NULL if the environment isn't set. Callbacks will be called
/// normally with this change.
///
/// \since This function is available since SDL 2.26.0.
///
/// \sa SDL_GetHint
/// \sa SDL_SetHint
/// \sa SDL_ResetHint
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ResetHints(void)
/// ```
void sdlResetHints() {
  final sdlResetHintsLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_ResetHints');
  return sdlResetHintsLookupFunction();
}

///
/// Get the value of a hint.
///
/// \param name the hint to query
/// \returns the string value of a hint or NULL if the hint isn't set.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_SetHint
/// \sa SDL_SetHintWithPriority
///
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetHint(const char *name)
/// ```
String? sdlGetHint(String? name) {
  final sdlGetHintLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<Utf8> name),
      Pointer<Utf8> Function(Pointer<Utf8> name)>('SDL_GetHint');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result = sdlGetHintLookupFunction(namePointer);
  calloc.free(namePointer);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Get the boolean value of a hint variable.
///
/// \param name the name of the hint to get the boolean value from
/// \param default_value the value to return if the hint does not exist
/// \returns the boolean value of a hint or the provided default value if the
/// hint does not exist.
///
/// \since This function is available since SDL 2.0.5.
///
/// \sa SDL_GetHint
/// \sa SDL_SetHint
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetHintBoolean(const char *name, SDL_bool default_value)
/// ```
bool sdlGetHintBoolean(String? name, bool defaultValue) {
  final sdlGetHintBooleanLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> name, Int32 defaultValue),
      int Function(Pointer<Utf8> name, int defaultValue)>('SDL_GetHintBoolean');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result =
      sdlGetHintBooleanLookupFunction(namePointer, defaultValue ? 1 : 0) == 1;
  calloc.free(namePointer);
  return result;
}

///
/// Add a function to watch a particular hint.
///
/// \param name the hint to watch
/// \param callback An SDL_HintCallback function that will be called when the
/// hint value changes
/// \param userdata a pointer to pass to the callback function
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_DelHintCallback
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata)
/// ```
void sdlAddHintCallback(
    String? name,
    Pointer<NativeFunction<SdlHintCallback>> callback,
    Pointer<NativeType> userdata) {
  final sdlAddHintCallbackLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<Utf8> name,
          Pointer<NativeFunction<SdlHintCallback>> callback,
          Pointer<NativeType> userdata),
      void Function(
          Pointer<Utf8> name,
          Pointer<NativeFunction<SdlHintCallback>> callback,
          Pointer<NativeType> userdata)>('SDL_AddHintCallback');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result =
      sdlAddHintCallbackLookupFunction(namePointer, callback, userdata);
  calloc.free(namePointer);
  return result;
}

///
/// Remove a function watching a particular hint.
///
/// \param name the hint being watched
/// \param callback An SDL_HintCallback function that will be called when the
/// hint value changes
/// \param userdata a pointer being passed to the callback function
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AddHintCallback
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DelHintCallback(const char *name, SDL_HintCallback callback, void *userdata)
/// ```
void sdlDelHintCallback(
    String? name,
    Pointer<NativeFunction<SdlHintCallback>> callback,
    Pointer<NativeType> userdata) {
  final sdlDelHintCallbackLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<Utf8> name,
          Pointer<NativeFunction<SdlHintCallback>> callback,
          Pointer<NativeType> userdata),
      void Function(
          Pointer<Utf8> name,
          Pointer<NativeFunction<SdlHintCallback>> callback,
          Pointer<NativeType> userdata)>('SDL_DelHintCallback');
  final namePointer = name != null ? name.toNativeUtf8() : nullptr;
  final result =
      sdlDelHintCallbackLookupFunction(namePointer, callback, userdata);
  calloc.free(namePointer);
  return result;
}

///
/// Clear all hints.
///
/// This function is automatically called during SDL_Quit(), and deletes all
/// callbacks without calling them and frees all memory associated with hints.
/// If you're calling this from application code you probably want to call
/// SDL_ResetHints() instead.
///
/// This function will be removed from the API the next time we rev the ABI.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ResetHints
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearHints(void)
/// ```
void sdlClearHints() {
  final sdlClearHintsLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_ClearHints');
  return sdlClearHintsLookupFunction();
}
