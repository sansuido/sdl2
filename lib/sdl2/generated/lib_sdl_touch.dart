// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the number of registered touch devices.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumTouchDevices(void)
/// ```
int SDL_GetNumTouchDevices() {
  final _SDL_GetNumTouchDevices = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumTouchDevices');
  return _SDL_GetNumTouchDevices();
}

/// 
/// \brief Get the touch ID with the given index, or 0 if the index is invalid.
/// 
/// ```c
/// extern DECLSPEC SDL_TouchID SDLCALL SDL_GetTouchDevice(int index)
/// ```
int SDL_GetTouchDevice(int index) {
  final _SDL_GetTouchDevice = DLL_SDL2.lookupFunction<
      Int64 Function(Int32 index),
      int Function(int index)>('SDL_GetTouchDevice');
  return _SDL_GetTouchDevice(index);
}

/// 
/// \brief Get the number of active fingers for a given touch device.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumTouchFingers(SDL_TouchID touchID)
/// ```
int SDL_GetNumTouchFingers(int touchID) {
  final _SDL_GetNumTouchFingers = DLL_SDL2.lookupFunction<
      Int32 Function(Int64 touchID),
      int Function(int touchID)>('SDL_GetNumTouchFingers');
  return _SDL_GetNumTouchFingers(touchID);
}

/// 
/// \brief Get the finger object of the given touch, with the given index.
/// 
/// ```c
/// extern DECLSPEC SDL_Finger * SDLCALL SDL_GetTouchFinger(SDL_TouchID touchID, int index)
/// ```
Pointer<SDL_Finger>? SDL_GetTouchFinger(int touchID, int index) {
  final _SDL_GetTouchFinger = DLL_SDL2.lookupFunction<
      Pointer<SDL_Finger>? Function(Int64 touchID, Int32 index),
      Pointer<SDL_Finger>? Function(int touchID, int index)>('SDL_GetTouchFinger');
  return _SDL_GetTouchFinger(touchID, index);
}

