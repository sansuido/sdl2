// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Begin Recording a gesture on the specified touch, or all touches (-1)
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RecordGesture(SDL_TouchID touchId)
/// ```
int SDL_RecordGesture(int touchId) {
  final _SDL_RecordGesture = DLL_SDL2.lookupFunction<
      Int32 Function(Int64 touchId),
      int Function(int touchId)>('SDL_RecordGesture');
  return _SDL_RecordGesture(touchId);
}

/// 
/// \brief Save all currently loaded Dollar Gesture templates
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveAllDollarTemplates(SDL_RWops *src)
/// ```
int SDL_SaveAllDollarTemplates(Pointer<SDL_RWops>? src) {
  final _SDL_SaveAllDollarTemplates = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_SaveAllDollarTemplates');
  return _SDL_SaveAllDollarTemplates(src);
}

/// 
/// \brief Save a currently loaded Dollar Gesture template
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveDollarTemplate(SDL_GestureID gestureId,SDL_RWops *src)
/// ```
int SDL_SaveDollarTemplate(int gestureId, Pointer<SDL_RWops>? src) {
  final _SDL_SaveDollarTemplate = DLL_SDL2.lookupFunction<
      Int32 Function(Int64 gestureId, Pointer<SDL_RWops>? src),
      int Function(int gestureId, Pointer<SDL_RWops>? src)>('SDL_SaveDollarTemplate');
  return _SDL_SaveDollarTemplate(gestureId, src);
}

/// 
/// \brief Load Dollar Gesture templates from a file
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LoadDollarTemplates(SDL_TouchID touchId, SDL_RWops *src)
/// ```
int SDL_LoadDollarTemplates(int touchId, Pointer<SDL_RWops>? src) {
  final _SDL_LoadDollarTemplates = DLL_SDL2.lookupFunction<
      Int32 Function(Int64 touchId, Pointer<SDL_RWops>? src),
      int Function(int touchId, Pointer<SDL_RWops>? src)>('SDL_LoadDollarTemplates');
  return _SDL_LoadDollarTemplates(touchId, src);
}

