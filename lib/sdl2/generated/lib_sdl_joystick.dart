// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Locking for multi-threaded access to the joystick API
/// 
/// If you are using the joystick API or handling events from multiple threads
/// you should use these locking functions to protect access to the joysticks.
/// 
/// In particular, you are guaranteed that the joystick list won't change, so
/// the API functions that take a joystick index will be valid, and joystick
/// and game controller events will not be delivered.
/// 
/// \since This function is available since SDL 2.0.7.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockJoysticks(void)
/// ```
void SDL_LockJoysticks() {
  final _SDL_LockJoysticks = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LockJoysticks');
  return _SDL_LockJoysticks();
}

/// 
/// Unlocking for multi-threaded access to the joystick API
/// 
/// If you are using the joystick API or handling events from multiple threads
/// you should use these locking functions to protect access to the joysticks.
/// 
/// In particular, you are guaranteed that the joystick list won't change, so
/// the API functions that take a joystick index will be valid, and joystick
/// and game controller events will not be delivered.
/// 
/// \since This function is available since SDL 2.0.7.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockJoysticks(void)
/// ```
void SDL_UnlockJoysticks() {
  final _SDL_UnlockJoysticks = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnlockJoysticks');
  return _SDL_UnlockJoysticks();
}

/// 
/// Count the number of joysticks attached to the system.
/// 
/// \returns the number of attached joysticks on success or a negative error
/// code on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickName
/// \sa SDL_JoystickOpen
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
/// 
/// This can be called before any joysticks are opened.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system)
/// \returns the name of the selected joystick. If no name can be found, this
/// function returns NULL; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickName
/// \sa SDL_JoystickOpen
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
/// Get the player index of a joystick, or -1 if it's not available This can be
/// called before any joysticks are opened.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickGetDevicePlayerIndex(int device_index)
/// ```
int SDL_JoystickGetDevicePlayerIndex(int device_index) {
  final _SDL_JoystickGetDevicePlayerIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickGetDevicePlayerIndex');
  return _SDL_JoystickGetDevicePlayerIndex(device_index);
}

/// 
/// Get the implementation-dependent GUID for the joystick at a given device
/// index.
/// 
/// This function can be called before any joysticks are opened.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the GUID of the selected joystick. If called on an invalid index,
/// this function returns a zero GUID
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetGUID
/// \sa SDL_JoystickGetGUIDString
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
/// Get the USB vendor ID of a joystick, if available.
/// 
/// This can be called before any joysticks are opened. If the vendor ID isn't
/// available this function returns 0.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the USB vendor ID of the selected joystick. If called on an
/// invalid index, this function returns zero
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetDeviceVendor(int device_index)
/// ```
int SDL_JoystickGetDeviceVendor(int device_index) {
  final _SDL_JoystickGetDeviceVendor = DLL_SDL2.lookupFunction<
      Uint16 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickGetDeviceVendor');
  return _SDL_JoystickGetDeviceVendor(device_index);
}

/// 
/// Get the USB product ID of a joystick, if available.
/// 
/// This can be called before any joysticks are opened. If the product ID isn't
/// available this function returns 0.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the USB product ID of the selected joystick. If called on an
/// invalid index, this function returns zero
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetDeviceProduct(int device_index)
/// ```
int SDL_JoystickGetDeviceProduct(int device_index) {
  final _SDL_JoystickGetDeviceProduct = DLL_SDL2.lookupFunction<
      Uint16 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickGetDeviceProduct');
  return _SDL_JoystickGetDeviceProduct(device_index);
}

/// 
/// Get the product version of a joystick, if available.
/// 
/// This can be called before any joysticks are opened. If the product version
/// isn't available this function returns 0.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the product version of the selected joystick. If called on an
/// invalid index, this function returns zero
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetDeviceProductVersion(int device_index)
/// ```
int SDL_JoystickGetDeviceProductVersion(int device_index) {
  final _SDL_JoystickGetDeviceProductVersion = DLL_SDL2.lookupFunction<
      Uint16 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickGetDeviceProductVersion');
  return _SDL_JoystickGetDeviceProductVersion(device_index);
}

/// 
/// Get the type of a joystick, if available.
/// 
/// This can be called before any joysticks are opened.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the SDL_JoystickType of the selected joystick. If called on an
/// invalid index, this function returns `SDL_JOYSTICK_TYPE_UNKNOWN`
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickType SDLCALL SDL_JoystickGetDeviceType(int device_index)
/// ```
int SDL_JoystickGetDeviceType(int device_index) {
  final _SDL_JoystickGetDeviceType = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickGetDeviceType');
  return _SDL_JoystickGetDeviceType(device_index);
}

/// 
/// Get the instance ID of a joystick.
/// 
/// This can be called before any joysticks are opened. If the index is out of
/// range, this function will return -1.
/// 
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the instance id of the selected joystick. If called on an invalid
/// index, this function returns zero
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickID SDLCALL SDL_JoystickGetDeviceInstanceID(int device_index)
/// ```
int SDL_JoystickGetDeviceInstanceID(int device_index) {
  final _SDL_JoystickGetDeviceInstanceID = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickGetDeviceInstanceID');
  return _SDL_JoystickGetDeviceInstanceID(device_index);
}

/// 
/// Open a joystick for use.
/// 
/// The `device_index` argument refers to the N'th joystick presently
/// recognized by SDL on the system. It is **NOT** the same as the instance ID
/// used to identify the joystick in future events. See
/// SDL_JoystickInstanceID() for more details about instance IDs.
/// 
/// The joystick subsystem must be initialized before a joystick can be opened
/// for use.
/// 
/// \param device_index the index of the joystick to query
/// \returns a joystick identifier or NULL if an error occurred; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickClose
/// \sa SDL_JoystickInstanceID
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
/// Get the SDL_Joystick associated with an instance id.
/// 
/// \param instance_id the instance id to get the SDL_Joystick for
/// \returns an SDL_Joystick on success or NULL on failure; call SDL_GetError()
/// for more information.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_JoystickFromInstanceID(SDL_JoystickID instance_id)
/// ```
Pointer<SDL_Joystick>? SDL_JoystickFromInstanceID(int instance_id) {
  final _SDL_JoystickFromInstanceID = DLL_SDL2.lookupFunction<
      Pointer<SDL_Joystick>? Function(Int32 instance_id),
      Pointer<SDL_Joystick>? Function(int instance_id)>('SDL_JoystickFromInstanceID');
  return _SDL_JoystickFromInstanceID(instance_id);
}

/// 
/// Get the SDL_Joystick associated with a player index.
/// 
/// \param player_index the player index to get the SDL_Joystick for
/// \returns an SDL_Joystick on success or NULL on failure; call SDL_GetError()
/// for more information.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_JoystickFromPlayerIndex(int player_index)
/// ```
Pointer<SDL_Joystick>? SDL_JoystickFromPlayerIndex(int player_index) {
  final _SDL_JoystickFromPlayerIndex = DLL_SDL2.lookupFunction<
      Pointer<SDL_Joystick>? Function(Int32 player_index),
      Pointer<SDL_Joystick>? Function(int player_index)>('SDL_JoystickFromPlayerIndex');
  return _SDL_JoystickFromPlayerIndex(player_index);
}

/// 
/// Attach a new virtual joystick.
/// 
/// \returns the joystick's device index, or -1 if an error occurred.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickAttachVirtual(SDL_JoystickType type, int naxes, int nbuttons, int nhats)
/// ```
int SDL_JoystickAttachVirtual(int type, int naxes, int nbuttons, int nhats) {
  final _SDL_JoystickAttachVirtual = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 type, Int32 naxes, Int32 nbuttons, Int32 nhats),
      int Function(int type, int naxes, int nbuttons, int nhats)>('SDL_JoystickAttachVirtual');
  return _SDL_JoystickAttachVirtual(type, naxes, nbuttons, nhats);
}

/// 
/// Detach a virtual joystick.
/// 
/// \param device_index a value previously returned from
/// SDL_JoystickAttachVirtual()
/// \returns 0 on success, or -1 if an error occurred.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickDetachVirtual(int device_index)
/// ```
int SDL_JoystickDetachVirtual(int device_index) {
  final _SDL_JoystickDetachVirtual = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickDetachVirtual');
  return _SDL_JoystickDetachVirtual(device_index);
}

/// 
/// Query whether or not the joystick at a given device index is virtual.
/// 
/// \param device_index a joystick device index.
/// \returns SDL_TRUE if the joystick is virtual, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickIsVirtual(int device_index)
/// ```
int SDL_JoystickIsVirtual(int device_index) {
  final _SDL_JoystickIsVirtual = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_JoystickIsVirtual');
  return _SDL_JoystickIsVirtual(device_index);
}

/// 
/// Set values on an opened, virtual-joystick's axis.
/// 
/// Please note that values set here will not be applied until the next call to
/// SDL_JoystickUpdate, which can either be called directly, or can be called
/// indirectly through various other SDL APIs, including, but not limited to
/// the following: SDL_PollEvent, SDL_PumpEvents, SDL_WaitEventTimeout,
/// SDL_WaitEvent.
/// 
/// \param joystick the virtual joystick on which to set state.
/// \param axis the specific axis on the virtual joystick to set.
/// \param value the new value for the specified axis.
/// \returns 0 on success, -1 on error.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickSetVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value)
/// ```
int SDL_JoystickSetVirtualAxis(Pointer<SDL_Joystick>? joystick, int axis, int value) {
  final _SDL_JoystickSetVirtualAxis = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Int32 axis, Int16 value),
      int Function(Pointer<SDL_Joystick>? joystick, int axis, int value)>('SDL_JoystickSetVirtualAxis');
  return _SDL_JoystickSetVirtualAxis(joystick, axis, value);
}

/// 
/// Set values on an opened, virtual-joystick's button.
/// 
/// Please note that values set here will not be applied until the next call to
/// SDL_JoystickUpdate, which can either be called directly, or can be called
/// indirectly through various other SDL APIs, including, but not limited to
/// the following: SDL_PollEvent, SDL_PumpEvents, SDL_WaitEventTimeout,
/// SDL_WaitEvent.
/// 
/// \param joystick the virtual joystick on which to set state.
/// \param button the specific button on the virtual joystick to set.
/// \param value the new value for the specified button.
/// \returns 0 on success, -1 on error.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickSetVirtualButton(SDL_Joystick *joystick, int button, Uint8 value)
/// ```
int SDL_JoystickSetVirtualButton(Pointer<SDL_Joystick>? joystick, int button, int value) {
  final _SDL_JoystickSetVirtualButton = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Int32 button, Uint8 value),
      int Function(Pointer<SDL_Joystick>? joystick, int button, int value)>('SDL_JoystickSetVirtualButton');
  return _SDL_JoystickSetVirtualButton(joystick, button, value);
}

/// 
/// Set values on an opened, virtual-joystick's hat.
/// 
/// Please note that values set here will not be applied until the next call to
/// SDL_JoystickUpdate, which can either be called directly, or can be called
/// indirectly through various other SDL APIs, including, but not limited to
/// the following: SDL_PollEvent, SDL_PumpEvents, SDL_WaitEventTimeout,
/// SDL_WaitEvent.
/// 
/// \param joystick the virtual joystick on which to set state.
/// \param hat the specific hat on the virtual joystick to set.
/// \param value the new value for the specified hat.
/// \returns 0 on success, -1 on error.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickSetVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value)
/// ```
int SDL_JoystickSetVirtualHat(Pointer<SDL_Joystick>? joystick, int hat, int value) {
  final _SDL_JoystickSetVirtualHat = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Int32 hat, Uint8 value),
      int Function(Pointer<SDL_Joystick>? joystick, int hat, int value)>('SDL_JoystickSetVirtualHat');
  return _SDL_JoystickSetVirtualHat(joystick, hat, value);
}

/// 
/// Get the implementation dependent name of a joystick.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the name of the selected joystick. If no name can be found, this
/// function returns NULL; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickNameForIndex
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickName(SDL_Joystick *joystick)
/// ```
String SDL_JoystickName(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickName');
  return _SDL_JoystickName(joystick)!.toDartString();
}

/// 
/// Get the player index of an opened joystick.
/// 
/// For XInput controllers this returns the XInput user index. Many joysticks
/// will not be able to supply this information.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the player index, or -1 if it's not available.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickGetPlayerIndex(SDL_Joystick *joystick)
/// ```
int SDL_JoystickGetPlayerIndex(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetPlayerIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetPlayerIndex');
  return _SDL_JoystickGetPlayerIndex(joystick);
}

/// 
/// Set the player index of an opened joystick.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \param player_index the player index to set.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickSetPlayerIndex(SDL_Joystick *joystick, int player_index)
/// ```
void SDL_JoystickSetPlayerIndex(Pointer<SDL_Joystick>? joystick, int player_index) {
  final _SDL_JoystickSetPlayerIndex = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Joystick>? joystick, Int32 player_index),
      void Function(Pointer<SDL_Joystick>? joystick, int player_index)>('SDL_JoystickSetPlayerIndex');
  return _SDL_JoystickSetPlayerIndex(joystick, player_index);
}

/// 
/// Get the implementation-dependent GUID for the joystick.
/// 
/// This function requires an open joystick.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the GUID of the given joystick. If called on an invalid index,
/// this function returns a zero GUID; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetDeviceGUID
/// \sa SDL_JoystickGetGUIDString
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUID(SDL_Joystick *joystick)
/// ```
Pointer<Void>? SDL_JoystickGetGUID(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetGUID = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Void>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetGUID');
  return _SDL_JoystickGetGUID(joystick);
}

/// 
/// Get the USB vendor ID of an opened joystick, if available.
/// 
/// If the vendor ID isn't available this function returns 0.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the USB vendor ID of the selected joystick, or 0 if unavailable.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetVendor(SDL_Joystick *joystick)
/// ```
int SDL_JoystickGetVendor(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetVendor = DLL_SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetVendor');
  return _SDL_JoystickGetVendor(joystick);
}

/// 
/// Get the USB product ID of an opened joystick, if available.
/// 
/// If the product ID isn't available this function returns 0.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the USB product ID of the selected joystick, or 0 if unavailable.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetProduct(SDL_Joystick *joystick)
/// ```
int SDL_JoystickGetProduct(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetProduct = DLL_SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetProduct');
  return _SDL_JoystickGetProduct(joystick);
}

/// 
/// Get the product version of an opened joystick, if available.
/// 
/// If the product version isn't available this function returns 0.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the product version of the selected joystick, or 0 if unavailable.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetProductVersion(SDL_Joystick *joystick)
/// ```
int SDL_JoystickGetProductVersion(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetProductVersion = DLL_SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetProductVersion');
  return _SDL_JoystickGetProductVersion(joystick);
}

/// 
/// Get the serial number of an opened joystick, if available.
/// 
/// Returns the serial number of the joystick, or NULL if it is not available.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the serial number of the selected joystick, or NULL if
/// unavailable.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_JoystickGetSerial(SDL_Joystick *joystick)
/// ```
String SDL_JoystickGetSerial(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetSerial = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetSerial');
  return _SDL_JoystickGetSerial(joystick)!.toDartString();
}

/// 
/// Get the type of an opened joystick.
/// 
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the SDL_JoystickType of the selected joystick.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickType SDLCALL SDL_JoystickGetType(SDL_Joystick *joystick)
/// ```
int SDL_JoystickGetType(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetType = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetType');
  return _SDL_JoystickGetType(joystick);
}

/// 
/// Get an ASCII string representation for a given SDL_JoystickGUID.
/// 
/// You should supply at least 33 bytes for pszGUID.
/// 
/// \param guid the SDL_JoystickGUID you wish to convert to string
/// \param pszGUID buffer in which to write the ASCII string
/// \param cbGUID the size of pszGUID
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetDeviceGUID
/// \sa SDL_JoystickGetGUID
/// \sa SDL_JoystickGetGUIDFromString
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickGetGUIDString(SDL_JoystickGUID guid, char *pszGUID, int cbGUID)
/// ```
void SDL_JoystickGetGUIDString(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID) {
  final _SDL_JoystickGetGUIDString = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, Int32 cbGUID),
      void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID)>('SDL_JoystickGetGUIDString');
  return _SDL_JoystickGetGUIDString(guid, pszGUID, cbGUID);
}

/// 
/// Convert a GUID string into a SDL_JoystickGUID structure.
/// 
/// Performs no error checking. If this function is given a string containing
/// an invalid GUID, the function will silently succeed, but the GUID generated
/// will not be useful.
/// 
/// \param pchGUID string containing an ASCII representation of a GUID
/// \returns a SDL_JoystickGUID structure.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetGUIDString
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
/// Get the status of a specified joystick.
/// 
/// \param joystick the joystick to query
/// \returns SDL_TRUE if the joystick has been opened, SDL_FALSE if it has not;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickClose
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickGetAttached(SDL_Joystick *joystick)
/// ```
int SDL_JoystickGetAttached(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetAttached = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetAttached');
  return _SDL_JoystickGetAttached(joystick);
}

/// 
/// Get the instance ID of an opened joystick.
/// 
/// \param joystick an SDL_Joystick structure containing joystick information
/// \returns the instance ID of the specified joystick on success or a negative
/// error code on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickID SDLCALL SDL_JoystickInstanceID(SDL_Joystick *joystick)
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
/// Often, the directional pad on a game controller will either look like 4
/// separate buttons or a POV hat, and not axes, but all of this is up to the
/// device and platform.
/// 
/// \param joystick an SDL_Joystick structure containing joystick information
/// \returns the number of axis controls/number of axes on success or a
/// negative error code on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetAxis
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumAxes(SDL_Joystick *joystick)
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
/// Joystick trackballs have only relative motion events associated with them
/// and their state cannot be polled.
/// 
/// Most joysticks do not have trackballs.
/// 
/// \param joystick an SDL_Joystick structure containing joystick information
/// \returns the number of trackballs on success or a negative error code on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetBall
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumBalls(SDL_Joystick *joystick)
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
/// \param joystick an SDL_Joystick structure containing joystick information
/// \returns the number of POV hats on success or a negative error code on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetHat
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumHats(SDL_Joystick *joystick)
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
/// \param joystick an SDL_Joystick structure containing joystick information
/// \returns the number of buttons on success or a negative error code on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickGetButton
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumButtons(SDL_Joystick *joystick)
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
/// This is called automatically by the event loop if any joystick events are
/// enabled.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickEventState
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
/// yourself and manually check the state of the joystick when you want
/// joystick information.
/// 
/// It is recommended that you leave joystick event handling enabled.
/// 
/// **WARNING**: Calling this function may delete all events currently in SDL's
/// event queue.
/// 
/// \param state can be one of `SDL_QUERY`, `SDL_IGNORE`, or `SDL_ENABLE`
/// \returns 1 if enabled, 0 if disabled, or a negative error code on failure;
/// call SDL_GetError() for more information.
/// 
/// If `state` is `SDL_QUERY` then the current state is returned,
/// otherwise the new processing state is returned.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GameControllerEventState
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
/// SDL makes no promises about what part of the joystick any given axis refers
/// to. Your game should have some sort of configuration UI to let users
/// specify what each axis should be bound to. Alternately, SDL's higher-level
/// Game Controller API makes a great effort to apply order to this lower-level
/// interface, so you know that a specific axis is the "left thumb stick," etc.
/// 
/// The value returned by SDL_JoystickGetAxis() is a signed integer (-32768 to
/// 32767) representing the current position of the axis. It may be necessary
/// to impose certain tolerances on these values to account for jitter.
/// 
/// \param joystick an SDL_Joystick structure containing joystick information
/// \param axis the axis to query; the axis indices start at index 0
/// \returns a 16-bit signed integer representing the current position of the
/// axis or 0 on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickNumAxes
/// 
/// ```c
/// extern DECLSPEC Sint16 SDLCALL SDL_JoystickGetAxis(SDL_Joystick *joystick, int axis)
/// ```
int SDL_JoystickGetAxis(Pointer<SDL_Joystick>? joystick, int axis) {
  final _SDL_JoystickGetAxis = DLL_SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_Joystick>? joystick, Int32 axis),
      int Function(Pointer<SDL_Joystick>? joystick, int axis)>('SDL_JoystickGetAxis');
  return _SDL_JoystickGetAxis(joystick, axis);
}

/// 
/// Get the initial state of an axis control on a joystick.
/// 
/// The state is a value ranging from -32768 to 32767.
/// 
/// The axis indices start at index 0.
/// 
/// \param joystick an SDL_Joystick structure containing joystick information
/// \param axis the axis to query; the axis indices start at index 0
/// \param state Upon return, the initial value is supplied here.
/// \return SDL_TRUE if this axis has any initial value, or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickGetAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state)
/// ```
int SDL_JoystickGetAxisInitialState(Pointer<SDL_Joystick>? joystick, int axis, Pointer<Int16>? state) {
  final _SDL_JoystickGetAxisInitialState = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Int32 axis, Pointer<Int16>? state),
      int Function(Pointer<SDL_Joystick>? joystick, int axis, Pointer<Int16>? state)>('SDL_JoystickGetAxisInitialState');
  return _SDL_JoystickGetAxisInitialState(joystick, axis, state);
}

/// 
/// Get the current state of a POV hat on a joystick.
/// 
/// The returned value will be one of the following positions:
/// 
/// - `SDL_HAT_CENTERED`
/// - `SDL_HAT_UP`
/// - `SDL_HAT_RIGHT`
/// - `SDL_HAT_DOWN`
/// - `SDL_HAT_LEFT`
/// - `SDL_HAT_RIGHTUP`
/// - `SDL_HAT_RIGHTDOWN`
/// - `SDL_HAT_LEFTUP`
/// - `SDL_HAT_LEFTDOWN`
/// 
/// \param joystick an SDL_Joystick structure containing joystick information
/// \param hat the hat index to get the state from; indices start at index 0
/// \returns the current hat position.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickNumHats
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetHat(SDL_Joystick *joystick, int hat)
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
/// Trackballs can only return relative motion since the last call to
/// SDL_JoystickGetBall(), these motion deltas are placed into `dx` and `dy`.
/// 
/// Most joysticks do not have trackballs.
/// 
/// \param joystick the SDL_Joystick to query
/// \param ball the ball index to query; ball indices start at index 0
/// \param dx stores the difference in the x axis position since the last poll
/// \param dy stores the difference in the y axis position since the last poll
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickNumBalls
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickGetBall(SDL_Joystick *joystick, int ball, int *dx, int *dy)
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
/// \param joystick an SDL_Joystick structure containing joystick information
/// \param button the button index to get the state from; indices start at
/// index 0
/// \returns 1 if the specified button is pressed, 0 otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickNumButtons
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetButton(SDL_Joystick *joystick, int button)
/// ```
int SDL_JoystickGetButton(Pointer<SDL_Joystick>? joystick, int button) {
  final _SDL_JoystickGetButton = DLL_SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick>? joystick, Int32 button),
      int Function(Pointer<SDL_Joystick>? joystick, int button)>('SDL_JoystickGetButton');
  return _SDL_JoystickGetButton(joystick, button);
}

/// 
/// Start a rumble effect.
/// 
/// Each call to this function cancels any previous rumble effect, and calling
/// it with 0 intensity stops any rumbling.
/// 
/// \param joystick The joystick to vibrate
/// \param low_frequency_rumble The intensity of the low frequency (left)
/// rumble motor, from 0 to 0xFFFF
/// \param high_frequency_rumble The intensity of the high frequency (right)
/// rumble motor, from 0 to 0xFFFF
/// \param duration_ms The duration of the rumble effect, in milliseconds
/// \returns 0, or -1 if rumble isn't supported on this joystick
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// \sa SDL_JoystickHasRumble
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickRumble(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms)
/// ```
int SDL_JoystickRumble(Pointer<SDL_Joystick>? joystick, int low_frequency_rumble, int high_frequency_rumble, int duration_ms) {
  final _SDL_JoystickRumble = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms),
      int Function(Pointer<SDL_Joystick>? joystick, int low_frequency_rumble, int high_frequency_rumble, int duration_ms)>('SDL_JoystickRumble');
  return _SDL_JoystickRumble(joystick, low_frequency_rumble, high_frequency_rumble, duration_ms);
}

/// 
/// Start a rumble effect in the joystick's triggers
/// 
/// Each call to this function cancels any previous trigger rumble effect, and
/// calling it with 0 intensity stops any rumbling.
/// 
/// Note that this function is for _trigger_ rumble; the first joystick to
/// support this was the PlayStation 5's DualShock 5 controller. If you want
/// the (more common) whole-controller rumble, use SDL_JoystickRumble()
/// instead.
/// 
/// \param joystick The joystick to vibrate
/// \param left_rumble The intensity of the left trigger rumble motor, from 0
/// to 0xFFFF
/// \param right_rumble The intensity of the right trigger rumble motor, from 0
/// to 0xFFFF
/// \param duration_ms The duration of the rumble effect, in milliseconds
/// \returns 0, or -1 if trigger rumble isn't supported on this joystick
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// \sa SDL_JoystickHasRumbleTriggers
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickRumbleTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms)
/// ```
int SDL_JoystickRumbleTriggers(Pointer<SDL_Joystick>? joystick, int left_rumble, int right_rumble, int duration_ms) {
  final _SDL_JoystickRumbleTriggers = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms),
      int Function(Pointer<SDL_Joystick>? joystick, int left_rumble, int right_rumble, int duration_ms)>('SDL_JoystickRumbleTriggers');
  return _SDL_JoystickRumbleTriggers(joystick, left_rumble, right_rumble, duration_ms);
}

/// 
/// Query whether a joystick has an LED.
/// 
/// An example of a joystick LED is the light on the back of a PlayStation 4's
/// DualShock 4 controller.
/// 
/// \param joystick The joystick to query
/// \return SDL_TRUE if the joystick has a modifiable LED, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickHasLED(SDL_Joystick *joystick)
/// ```
int SDL_JoystickHasLED(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickHasLED = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickHasLED');
  return _SDL_JoystickHasLED(joystick);
}

/// 
/// Query whether a joystick has rumble support.
/// 
/// \param joystick The joystick to query
/// \return SDL_TRUE if the joystick has rumble, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_JoystickRumble
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickHasRumble(SDL_Joystick *joystick)
/// ```
int SDL_JoystickHasRumble(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickHasRumble = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickHasRumble');
  return _SDL_JoystickHasRumble(joystick);
}

/// 
/// Query whether a joystick has rumble support on triggers.
/// 
/// \param joystick The joystick to query
/// \return SDL_TRUE if the joystick has trigger rumble, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_JoystickRumbleTriggers
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickHasRumbleTriggers(SDL_Joystick *joystick)
/// ```
int SDL_JoystickHasRumbleTriggers(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickHasRumbleTriggers = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickHasRumbleTriggers');
  return _SDL_JoystickHasRumbleTriggers(joystick);
}

/// 
/// Update a joystick's LED color.
/// 
/// An example of a joystick LED is the light on the back of a PlayStation 4's
/// DualShock 4 controller.
/// 
/// \param joystick The joystick to update
/// \param red The intensity of the red LED
/// \param green The intensity of the green LED
/// \param blue The intensity of the blue LED
/// \returns 0 on success, -1 if this joystick does not have a modifiable LED
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickSetLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue)
/// ```
int SDL_JoystickSetLED(Pointer<SDL_Joystick>? joystick, int red, int green, int blue) {
  final _SDL_JoystickSetLED = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Uint8 red, Uint8 green, Uint8 blue),
      int Function(Pointer<SDL_Joystick>? joystick, int red, int green, int blue)>('SDL_JoystickSetLED');
  return _SDL_JoystickSetLED(joystick, red, green, blue);
}

/// 
/// Send a joystick specific effect packet
/// 
/// \param joystick The joystick to affect
/// \param data The data to send to the joystick
/// \param size The size of the data to send to the joystick
/// \returns 0, or -1 if this joystick or driver doesn't support effect packets
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickSendEffect(SDL_Joystick *joystick, const void *data, int size)
/// ```
int SDL_JoystickSendEffect(Pointer<SDL_Joystick>? joystick, Pointer<Void>? data, int size) {
  final _SDL_JoystickSendEffect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Pointer<Void>? data, Int32 size),
      int Function(Pointer<SDL_Joystick>? joystick, Pointer<Void>? data, int size)>('SDL_JoystickSendEffect');
  return _SDL_JoystickSendEffect(joystick, data, size);
}

/// 
/// Close a joystick previously opened with SDL_JoystickOpen().
/// 
/// \param joystick The joystick device to close
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_JoystickOpen
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickClose(SDL_Joystick *joystick)
/// ```
void SDL_JoystickClose(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickClose = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Joystick>? joystick),
      void Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickClose');
  return _SDL_JoystickClose(joystick);
}

/// 
/// Get the battery level of a joystick as SDL_JoystickPowerLevel.
/// 
/// \param joystick the SDL_Joystick to query
/// \returns the current battery level as SDL_JoystickPowerLevel on success or
/// `SDL_JOYSTICK_POWER_UNKNOWN` if it is unknown
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickPowerLevel SDLCALL SDL_JoystickCurrentPowerLevel(SDL_Joystick *joystick)
/// ```
int SDL_JoystickCurrentPowerLevel(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickCurrentPowerLevel = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickCurrentPowerLevel');
  return _SDL_JoystickCurrentPowerLevel(joystick);
}

