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
int sdlSetHintWithPriority(String name, String value, int priority) {
  final sdlSetHintWithPriorityLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value, Int32 priority),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value, int priority)>('SDL_SetHintWithPriority');
  final namePointer = name.toNativeUtf8();
  final valuePointer = value.toNativeUtf8();
  final result = sdlSetHintWithPriorityLookupFunction(namePointer, valuePointer, priority);
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
int sdlSetHint(String name, String value) {
  final sdlSetHintLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value)>('SDL_SetHint');
  final namePointer = name.toNativeUtf8();
  final valuePointer = value.toNativeUtf8();
  final result = sdlSetHintLookupFunction(namePointer, valuePointer);
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
int sdlResetHint(String name) {
  final sdlResetHintLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('SDL_ResetHint');
  final namePointer = name.toNativeUtf8();
  final result = sdlResetHintLookupFunction(namePointer);
  calloc.free(namePointer);
  return result;
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
String sdlGetHint(String name) {
  final sdlGetHintLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Utf8>? name),
      Pointer<Utf8>? Function(Pointer<Utf8>? name)>('SDL_GetHint');
  final namePointer = name.toNativeUtf8();
  final result = sdlGetHintLookupFunction(namePointer)!.toDartString();
  calloc.free(namePointer);
  return result;
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
int sdlGetHintBoolean(String name, int defaultValue) {
  final sdlGetHintBooleanLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Int32 defaultValue),
      int Function(Pointer<Utf8>? name, int defaultValue)>('SDL_GetHintBoolean');
  final namePointer = name.toNativeUtf8();
  final result = sdlGetHintBooleanLookupFunction(namePointer, defaultValue);
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
void sdlAddHintCallback(String name, Pointer<Void>? callback, Pointer<Void>? userdata) {
  final sdlAddHintCallbackLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_AddHintCallback');
  final namePointer = name.toNativeUtf8();
  final result = sdlAddHintCallbackLookupFunction(namePointer, callback, userdata);
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
void sdlDelHintCallback(String name, Pointer<Void>? callback, Pointer<Void>? userdata) {
  final sdlDelHintCallbackLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_DelHintCallback');
  final namePointer = name.toNativeUtf8();
  final result = sdlDelHintCallbackLookupFunction(namePointer, callback, userdata);
  calloc.free(namePointer);
  return result;
}

/// 
/// Clear all hints.
/// 
/// This function is automatically called during SDL_Quit().
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearHints(void)
/// ```
void sdlClearHints() {
  final sdlClearHintsLookupFunction = libSdl2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearHints');
  return sdlClearHintsLookupFunction();
}

