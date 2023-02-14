// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Get the number of registered touch devices.
///
/// On some platforms SDL first sees the touch device if it was actually used.
/// Therefore SDL_GetNumTouchDevices() may return 0 although devices are
/// available. After using all devices at least once the number will be
/// correct.
///
/// This was fixed for Android in SDL 2.0.1.
///
/// \returns the number of registered touch devices.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetTouchDevice
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumTouchDevices(void)
/// ```
int sdlGetNumTouchDevices() {
  final sdlGetNumTouchDevicesLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_GetNumTouchDevices');
  return sdlGetNumTouchDevicesLookupFunction();
}

///
/// Get the touch ID with the given index.
///
/// \param index the touch device index
/// \returns the touch ID with the given index on success or 0 if the index is
/// invalid; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetNumTouchDevices
///
/// ```c
/// extern DECLSPEC SDL_TouchID SDLCALL SDL_GetTouchDevice(int index)
/// ```
int sdlGetTouchDevice(int index) {
  final sdlGetTouchDeviceLookupFunction = libSdl2.lookupFunction<
      Int64 Function(Int32 index),
      int Function(int index)>('SDL_GetTouchDevice');
  return sdlGetTouchDeviceLookupFunction(index);
}

///
/// Get the touch device name as reported from the driver or NULL if the index
/// is invalid.
///
/// \since This function is available since SDL 2.0.22.
///
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GetTouchName(int index)
/// ```
String? sdlGetTouchName(int index) {
  final sdlGetTouchNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 index),
      Pointer<Utf8> Function(int index)>('SDL_GetTouchName');
  final result = sdlGetTouchNameLookupFunction(index);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Get the type of the given touch device.
///
/// \since This function is available since SDL 2.0.10.
///
/// ```c
/// extern DECLSPEC SDL_TouchDeviceType SDLCALL SDL_GetTouchDeviceType(SDL_TouchID touchID)
/// ```
int sdlGetTouchDeviceType(int touchId) {
  final sdlGetTouchDeviceTypeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int64 touchId),
      int Function(int touchId)>('SDL_GetTouchDeviceType');
  return sdlGetTouchDeviceTypeLookupFunction(touchId);
}

///
/// Get the number of active fingers for a given touch device.
///
/// \param touchID the ID of a touch device
/// \returns the number of active fingers for a given touch device on success
/// or 0 on failure; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetTouchFinger
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumTouchFingers(SDL_TouchID touchID)
/// ```
int sdlGetNumTouchFingers(int touchId) {
  final sdlGetNumTouchFingersLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int64 touchId),
      int Function(int touchId)>('SDL_GetNumTouchFingers');
  return sdlGetNumTouchFingersLookupFunction(touchId);
}

///
/// Get the finger object for specified touch device ID and finger index.
///
/// The returned resource is owned by SDL and should not be deallocated.
///
/// \param touchID the ID of the requested touch device
/// \param index the index of the requested finger
/// \returns a pointer to the SDL_Finger object or NULL if no object at the
/// given ID and index could be found.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_RecordGesture
///
/// ```c
/// extern DECLSPEC SDL_Finger * SDLCALL SDL_GetTouchFinger(SDL_TouchID touchID, int index)
/// ```
Pointer<SdlFinger> sdlGetTouchFinger(int touchId, int index) {
  final sdlGetTouchFingerLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlFinger> Function(Int64 touchId, Int32 index),
      Pointer<SdlFinger> Function(
          int touchId, int index)>('SDL_GetTouchFinger');
  return sdlGetTouchFingerLookupFunction(touchId, index);
}
