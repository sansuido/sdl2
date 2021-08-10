// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// \brief Set a hint with a specific priority
/// 
/// The priority controls the behavior when setting a hint that already
/// has a value.  Hints will replace existing hints of their priority and
/// lower.  Environment variables are considered to have override priority.
/// 
/// \return SDL_TRUE if the hint was set, SDL_FALSE otherwise
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
/// \brief Set a hint with normal priority
/// 
/// \return SDL_TRUE if the hint was set, SDL_FALSE otherwise
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
/// \brief Get a hint
/// 
/// \return The string value of a hint variable.
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
/// \brief Remove a function watching a particular hint
/// 
/// \param name The hint being watched
/// \param callback The function being called when the hint value changes
/// \param userdata A pointer being passed to the callback function
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
/// \brief  Clear all hints
/// 
/// This function is called during SDL_Quit() to free stored hints.
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

