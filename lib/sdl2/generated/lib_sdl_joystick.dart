// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Count the number of joysticks attached to the system right now
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumJoysticks(void)
/// ```
int SDL_NumJoysticks() {
  final _SDL_NumJoysticks = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumJoysticks');
  return _SDL_NumJoysticks();
}

/// 
/// Get the implementation dependent name of a joystick.
/// This can be called before any joysticks are opened.
/// If no name can be found, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickNameForIndex(int device_index)
/// ```
String SDL_JoystickNameForIndex(int device_index) {
  final _SDL_JoystickNameForIndex = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 device_index),
      Pointer<Utf8>? Function(int device_index)>('SDL_JoystickNameForIndex');
  return _SDL_JoystickNameForIndex(device_index)!.toDartString();
}

/// 
/// Open a joystick for use.
/// The index passed as an argument refers tothe N'th joystick on the system.
/// This index is the value which will identify this joystick in future joystick
/// events.
/// 
/// \return A joystick identifier, or NULL if an error occurred.
/// 
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_JoystickOpen(int device_index)
/// ```
Pointer<SDL_Joystick>? SDL_JoystickOpen(int device_index) {
  final _SDL_JoystickOpen = DLL_SDL2.lookupFunction<
      Pointer<SDL_Joystick>? Function(Int32 device_index),
      Pointer<SDL_Joystick>? Function(int device_index)>('SDL_JoystickOpen');
  return _SDL_JoystickOpen(device_index);
}

/// 
/// Return the name for this currently opened joystick.
/// If no name can be found, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickName(SDL_Joystick * joystick)
/// ```
String SDL_JoystickName(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickName');
  return _SDL_JoystickName(joystick)!.toDartString();
}

/// 
/// Return the GUID for the joystick at this index
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetDeviceGUID(int device_index)
/// ```
Pointer<Void>? SDL_JoystickGetDeviceGUID(int device_index) {
  final _SDL_JoystickGetDeviceGUID = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Int32 device_index),
      Pointer<Void>? Function(int device_index)>('SDL_JoystickGetDeviceGUID');
  return _SDL_JoystickGetDeviceGUID(device_index);
}

/// 
/// Return the GUID for this opened joystick
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUID(SDL_Joystick * joystick)
/// ```
Pointer<Void>? SDL_JoystickGetGUID(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetGUID = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Void>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetGUID');
  return _SDL_JoystickGetGUID(joystick);
}

/// 
/// Return a string representation for this guid. pszGUID must point to at least 33 bytes
/// (32 for the string plus a NULL terminator).
/// 
/// ```c
/// extern DECLSPEC void SDL_JoystickGetGUIDString(SDL_JoystickGUID guid, char *pszGUID, int cbGUID)
/// ```
void SDL_JoystickGetGUIDString(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID) {
  final _SDL_JoystickGetGUIDString = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, Int32 cbGUID),
      void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID)>('SDL_JoystickGetGUIDString');
  return _SDL_JoystickGetGUIDString(guid, pszGUID, cbGUID);
}

/// 
/// convert a string into a joystick formatted guid
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUIDFromString(const char *pchGUID)
/// ```
Pointer<Void>? SDL_JoystickGetGUIDFromString(String pchGUID) {
  final _SDL_JoystickGetGUIDFromString = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? pchGUID),
      Pointer<Void>? Function(Pointer<Utf8>? pchGUID)>('SDL_JoystickGetGUIDFromString');
  final _pchGUIDPointer = pchGUID.toNativeUtf8();
  final _result = _SDL_JoystickGetGUIDFromString(_pchGUIDPointer);
  calloc.free(_pchGUIDPointer);
  return _result;
}

/// 
/// Returns SDL_TRUE if the joystick has been opened and currently connected, or SDL_FALSE if it has not.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickGetAttached(SDL_Joystick * joystick)
/// ```
int SDL_JoystickGetAttached(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetAttached = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetAttached');
  return _SDL_JoystickGetAttached(joystick);
}

/// 
/// Get the instance ID of an opened joystick or -1 if the joystick is invalid.
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickID SDLCALL SDL_JoystickInstanceID(SDL_Joystick * joystick)
/// ```
int SDL_JoystickInstanceID(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickInstanceID = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickInstanceID');
  return _SDL_JoystickInstanceID(joystick);
}

/// 
/// Get the number of general axis controls on a joystick.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumAxes(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumAxes(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumAxes = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumAxes');
  return _SDL_JoystickNumAxes(joystick);
}

/// 
/// Get the number of trackballs on a joystick.
/// 
/// Joystick trackballs have only relative motion events associated
/// with them and their state cannot be polled.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumBalls(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumBalls(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumBalls = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumBalls');
  return _SDL_JoystickNumBalls(joystick);
}

/// 
/// Get the number of POV hats on a joystick.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumHats(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumHats(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumHats = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumHats');
  return _SDL_JoystickNumHats(joystick);
}

/// 
/// Get the number of buttons on a joystick.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumButtons(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumButtons(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumButtons = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumButtons');
  return _SDL_JoystickNumButtons(joystick);
}

/// 
/// Update the current state of the open joysticks.
/// 
/// This is called automatically by the event loop if any joystick
/// events are enabled.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickUpdate(void)
/// ```
void SDL_JoystickUpdate() {
  final _SDL_JoystickUpdate = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_JoystickUpdate');
  return _SDL_JoystickUpdate();
}

/// 
/// Enable/disable joystick event polling.
/// 
/// If joystick events are disabled, you must call SDL_JoystickUpdate()
/// yourself and check the state of the joystick when you want joystick
/// information.
/// 
/// The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickEventState(int state)
/// ```
int SDL_JoystickEventState(int state) {
  final _SDL_JoystickEventState = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_JoystickEventState');
  return _SDL_JoystickEventState(state);
}

/// 
/// Get the current state of an axis control on a joystick.
/// 
/// The state is a value ranging from -32768 to 32767.
/// 
/// The axis indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Sint16 SDLCALL SDL_JoystickGetAxis(SDL_Joystick * joystick, int axis)
/// ```
int SDL_JoystickGetAxis(Pointer<SDL_Joystick>? joystick, int axis) {
  final _SDL_JoystickGetAxis = DLL_SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_Joystick>? joystick, Int32 axis),
      int Function(Pointer<SDL_Joystick>? joystick, int axis)>('SDL_JoystickGetAxis');
  return _SDL_JoystickGetAxis(joystick, axis);
}

/// 
/// Get the current state of a POV hat on a joystick.
/// 
/// The hat indices start at index 0.
/// 
/// \return The return value is one of the following positions:
/// - ::SDL_HAT_CENTERED
/// - ::SDL_HAT_UP
/// - ::SDL_HAT_RIGHT
/// - ::SDL_HAT_DOWN
/// - ::SDL_HAT_LEFT
/// - ::SDL_HAT_RIGHTUP
/// - ::SDL_HAT_RIGHTDOWN
/// - ::SDL_HAT_LEFTUP
/// - ::SDL_HAT_LEFTDOWN
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetHat(SDL_Joystick * joystick, int hat)
/// ```
int SDL_JoystickGetHat(Pointer<SDL_Joystick>? joystick, int hat) {
  final _SDL_JoystickGetHat = DLL_SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick>? joystick, Int32 hat),
      int Function(Pointer<SDL_Joystick>? joystick, int hat)>('SDL_JoystickGetHat');
  return _SDL_JoystickGetHat(joystick, hat);
}

/// 
/// Get the ball axis change since the last poll.
/// 
/// \return 0, or -1 if you passed it invalid parameters.
/// 
/// The ball indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickGetBall(SDL_Joystick * joystick, int ball, int *dx, int *dy)
/// ```
int SDL_JoystickGetBall(Pointer<SDL_Joystick>? joystick, int ball, Pointer<Int32>? dx, Pointer<Int32>? dy) {
  final _SDL_JoystickGetBall = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Int32 ball, Pointer<Int32>? dx, Pointer<Int32>? dy),
      int Function(Pointer<SDL_Joystick>? joystick, int ball, Pointer<Int32>? dx, Pointer<Int32>? dy)>('SDL_JoystickGetBall');
  return _SDL_JoystickGetBall(joystick, ball, dx, dy);
}

/// 
/// Get the current state of a button on a joystick.
/// 
/// The button indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetButton(SDL_Joystick * joystick, int button)
/// ```
int SDL_JoystickGetButton(Pointer<SDL_Joystick>? joystick, int button) {
  final _SDL_JoystickGetButton = DLL_SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick>? joystick, Int32 button),
      int Function(Pointer<SDL_Joystick>? joystick, int button)>('SDL_JoystickGetButton');
  return _SDL_JoystickGetButton(joystick, button);
}

/// 
/// Close a joystick previously opened with SDL_JoystickOpen().
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickClose(SDL_Joystick * joystick)
/// ```
void SDL_JoystickClose(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickClose = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Joystick>? joystick),
      void Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickClose');
  return _SDL_JoystickClose(joystick);
}

