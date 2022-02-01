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
int SDL_SetHintWithPriority(String name, String value, int priority) {
  final _SDL_SetHintWithPriority = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value, Int32 priority),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value, int priority)>('SDL_SetHintWithPriority');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_SetHintWithPriority(_namePointer, _valuePointer, priority);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
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
int SDL_SetHint(String name, String value) {
  final _SDL_SetHint = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value)>('SDL_SetHint');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_SetHint(_namePointer, _valuePointer);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
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
String SDL_GetHint(String name) {
  final _SDL_GetHint = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Utf8>? name),
      Pointer<Utf8>? Function(Pointer<Utf8>? name)>('SDL_GetHint');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetHint(_namePointer)!.toDartString();
  calloc.free(_namePointer);
  return _result;
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
int SDL_GetHintBoolean(String name, int default_value) {
  final _SDL_GetHintBoolean = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Int32 default_value),
      int Function(Pointer<Utf8>? name, int default_value)>('SDL_GetHintBoolean');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetHintBoolean(_namePointer, default_value);
  calloc.free(_namePointer);
  return _result;
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
void SDL_AddHintCallback(String name, Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_AddHintCallback = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_AddHintCallback');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_AddHintCallback(_namePointer, callback, userdata);
  calloc.free(_namePointer);
  return _result;
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
void SDL_DelHintCallback(String name, Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_DelHintCallback = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_DelHintCallback');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_DelHintCallback(_namePointer, callback, userdata);
  calloc.free(_namePointer);
  return _result;
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
void SDL_ClearHints() {
  final _SDL_ClearHints = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearHints');
  return _SDL_ClearHints();
}

