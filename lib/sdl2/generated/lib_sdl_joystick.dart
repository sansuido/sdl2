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
/// As of SDL 2.26.0, you can take the joystick lock around reinitializing the
/// joystick subsystem, to prevent other threads from seeing joysticks in an
/// uninitialized state. However, all open joysticks will be closed and SDL
/// functions called with them will fail.
///
/// \since This function is available since SDL 2.0.7.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockJoysticks(void) SDL_ACQUIRE(SDL_joystick_lock)
/// ```
void sdlLockJoysticks(Pointer<NativeType> arg0) {
  final sdlLockJoysticksLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<NativeType> arg0),
      void Function(Pointer<NativeType> arg0)>('SDL_LockJoysticks');
  return sdlLockJoysticksLookupFunction(arg0);
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
/// extern DECLSPEC void SDLCALL SDL_UnlockJoysticks(void) SDL_RELEASE(SDL_joystick_lock)
/// ```
void sdlUnlockJoysticks(Pointer<NativeType> arg0) {
  final sdlUnlockJoysticksLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<NativeType> arg0),
      void Function(Pointer<NativeType> arg0)>('SDL_UnlockJoysticks');
  return sdlUnlockJoysticksLookupFunction(arg0);
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
/// \sa SDL_JoystickPath
/// \sa SDL_JoystickOpen
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumJoysticks(void)
/// ```
int sdlNumJoysticks() {
  final sdlNumJoysticksLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_NumJoysticks');
  return sdlNumJoysticksLookupFunction();
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
String? sdlJoystickNameForIndex(int deviceIndex) {
  final sdlJoystickNameForIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 deviceIndex),
      Pointer<Utf8> Function(int deviceIndex)>('SDL_JoystickNameForIndex');
  final result = sdlJoystickNameForIndexLookupFunction(deviceIndex);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Get the implementation dependent path of a joystick.
///
/// This can be called before any joysticks are opened.
///
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system)
/// \returns the path of the selected joystick. If no path can be found, this
/// function returns NULL; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_JoystickPath
/// \sa SDL_JoystickOpen
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickPathForIndex(int device_index)
/// ```
String? sdlJoystickPathForIndex(int deviceIndex) {
  final sdlJoystickPathForIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 deviceIndex),
      Pointer<Utf8> Function(int deviceIndex)>('SDL_JoystickPathForIndex');
  final result = sdlJoystickPathForIndexLookupFunction(deviceIndex);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlJoystickGetDevicePlayerIndex(int deviceIndex) {
  final sdlJoystickGetDevicePlayerIndexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickGetDevicePlayerIndex');
  return sdlJoystickGetDevicePlayerIndexLookupFunction(deviceIndex);
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
SdlGuid sdlJoystickGetDeviceGuid(int deviceIndex) {
  final sdlJoystickGetDeviceGuidLookupFunction = libSdl2.lookupFunction<
      SdlGuid Function(Int32 deviceIndex),
      SdlGuid Function(int deviceIndex)>('SDL_JoystickGetDeviceGUID');
  return sdlJoystickGetDeviceGuidLookupFunction(deviceIndex);
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
int sdlJoystickGetDeviceVendor(int deviceIndex) {
  final sdlJoystickGetDeviceVendorLookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickGetDeviceVendor');
  return sdlJoystickGetDeviceVendorLookupFunction(deviceIndex);
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
int sdlJoystickGetDeviceProduct(int deviceIndex) {
  final sdlJoystickGetDeviceProductLookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickGetDeviceProduct');
  return sdlJoystickGetDeviceProductLookupFunction(deviceIndex);
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
int sdlJoystickGetDeviceProductVersion(int deviceIndex) {
  final sdlJoystickGetDeviceProductVersionLookupFunction =
      libSdl2.lookupFunction<Uint16 Function(Int32 deviceIndex),
          int Function(int deviceIndex)>('SDL_JoystickGetDeviceProductVersion');
  return sdlJoystickGetDeviceProductVersionLookupFunction(deviceIndex);
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
int sdlJoystickGetDeviceType(int deviceIndex) {
  final sdlJoystickGetDeviceTypeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickGetDeviceType');
  return sdlJoystickGetDeviceTypeLookupFunction(deviceIndex);
}

///
/// Get the instance ID of a joystick.
///
/// This can be called before any joysticks are opened.
///
/// \param device_index the index of the joystick to query (the N'th joystick
/// on the system
/// \returns the instance id of the selected joystick. If called on an invalid
/// index, this function returns -1.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC SDL_JoystickID SDLCALL SDL_JoystickGetDeviceInstanceID(int device_index)
/// ```
int sdlJoystickGetDeviceInstanceId(int deviceIndex) {
  final sdlJoystickGetDeviceInstanceIdLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickGetDeviceInstanceID');
  return sdlJoystickGetDeviceInstanceIdLookupFunction(deviceIndex);
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
Pointer<SdlJoystick> sdlJoystickOpen(int deviceIndex) {
  final sdlJoystickOpenLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlJoystick> Function(Int32 deviceIndex),
      Pointer<SdlJoystick> Function(int deviceIndex)>('SDL_JoystickOpen');
  return sdlJoystickOpenLookupFunction(deviceIndex);
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
Pointer<SdlJoystick> sdlJoystickFromInstanceId(int instanceId) {
  final sdlJoystickFromInstanceIdLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlJoystick> Function(Int32 instanceId),
      Pointer<SdlJoystick> Function(
          int instanceId)>('SDL_JoystickFromInstanceID');
  return sdlJoystickFromInstanceIdLookupFunction(instanceId);
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
Pointer<SdlJoystick> sdlJoystickFromPlayerIndex(int playerIndex) {
  final sdlJoystickFromPlayerIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlJoystick> Function(Int32 playerIndex),
      Pointer<SdlJoystick> Function(
          int playerIndex)>('SDL_JoystickFromPlayerIndex');
  return sdlJoystickFromPlayerIndexLookupFunction(playerIndex);
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
int sdlJoystickAttachVirtual(int type, int naxes, int nbuttons, int nhats) {
  final sdlJoystickAttachVirtualLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 type, Int32 naxes, Int32 nbuttons, Int32 nhats),
      int Function(int type, int naxes, int nbuttons,
          int nhats)>('SDL_JoystickAttachVirtual');
  return sdlJoystickAttachVirtualLookupFunction(type, naxes, nbuttons, nhats);
}

///
/// Attach a new virtual joystick with extended properties.
///
/// \returns the joystick's device index, or -1 if an error occurred.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickAttachVirtualEx(const SDL_VirtualJoystickDesc *desc)
/// ```
int sdlJoystickAttachVirtualEx(Pointer<SdlVirtualJoystickDesc> desc) {
  final sdlJoystickAttachVirtualExLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlVirtualJoystickDesc> desc),
      int Function(
          Pointer<SdlVirtualJoystickDesc> desc)>('SDL_JoystickAttachVirtualEx');
  return sdlJoystickAttachVirtualExLookupFunction(desc);
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
int sdlJoystickDetachVirtual(int deviceIndex) {
  final sdlJoystickDetachVirtualLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickDetachVirtual');
  return sdlJoystickDetachVirtualLookupFunction(deviceIndex);
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
bool sdlJoystickIsVirtual(int deviceIndex) {
  final sdlJoystickIsVirtualLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_JoystickIsVirtual');
  return sdlJoystickIsVirtualLookupFunction(deviceIndex) == 1;
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
/// Note that when sending trigger axes, you should scale the value to the full
/// range of Sint16. For example, a trigger at rest would have the value of
/// `SDL_JOYSTICK_AXIS_MIN`.
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
int sdlJoystickSetVirtualAxis(
    Pointer<SdlJoystick> joystick, int axis, int value) {
  final sdlJoystickSetVirtualAxisLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick, Int32 axis, Int16 value),
      int Function(Pointer<SdlJoystick> joystick, int axis,
          int value)>('SDL_JoystickSetVirtualAxis');
  return sdlJoystickSetVirtualAxisLookupFunction(joystick, axis, value);
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
int sdlJoystickSetVirtualButton(
    Pointer<SdlJoystick> joystick, int button, int value) {
  final sdlJoystickSetVirtualButtonLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick, Int32 button, Uint8 value),
      int Function(Pointer<SdlJoystick> joystick, int button,
          int value)>('SDL_JoystickSetVirtualButton');
  return sdlJoystickSetVirtualButtonLookupFunction(joystick, button, value);
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
int sdlJoystickSetVirtualHat(
    Pointer<SdlJoystick> joystick, int hat, int value) {
  final sdlJoystickSetVirtualHatLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick, Int32 hat, Uint8 value),
      int Function(Pointer<SdlJoystick> joystick, int hat,
          int value)>('SDL_JoystickSetVirtualHat');
  return sdlJoystickSetVirtualHatLookupFunction(joystick, hat, value);
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
String? sdlJoystickName(Pointer<SdlJoystick> joystick) {
  final sdlJoystickNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SdlJoystick> joystick),
      Pointer<Utf8> Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickName');
  final result = sdlJoystickNameLookupFunction(joystick);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Get the implementation dependent path of a joystick.
///
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the path of the selected joystick. If no path can be found, this
/// function returns NULL; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_JoystickPathForIndex
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickPath(SDL_Joystick *joystick)
/// ```
String? sdlJoystickPath(Pointer<SdlJoystick> joystick) {
  final sdlJoystickPathLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SdlJoystick> joystick),
      Pointer<Utf8> Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickPath');
  final result = sdlJoystickPathLookupFunction(joystick);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlJoystickGetPlayerIndex(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetPlayerIndexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickGetPlayerIndex');
  return sdlJoystickGetPlayerIndexLookupFunction(joystick);
}

///
/// Set the player index of an opened joystick.
///
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \param player_index Player index to assign to this joystick, or -1 to clear
/// the player index and turn off player LEDs.
///
/// \since This function is available since SDL 2.0.12.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickSetPlayerIndex(SDL_Joystick *joystick, int player_index)
/// ```
void sdlJoystickSetPlayerIndex(Pointer<SdlJoystick> joystick, int playerIndex) {
  final sdlJoystickSetPlayerIndexLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlJoystick> joystick, Int32 playerIndex),
      void Function(Pointer<SdlJoystick> joystick,
          int playerIndex)>('SDL_JoystickSetPlayerIndex');
  return sdlJoystickSetPlayerIndexLookupFunction(joystick, playerIndex);
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
SdlGuid sdlJoystickGetGuid(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetGuidLookupFunction = libSdl2.lookupFunction<
      SdlGuid Function(Pointer<SdlJoystick> joystick),
      SdlGuid Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickGetGUID');
  return sdlJoystickGetGuidLookupFunction(joystick);
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
int sdlJoystickGetVendor(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetVendorLookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickGetVendor');
  return sdlJoystickGetVendorLookupFunction(joystick);
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
int sdlJoystickGetProduct(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetProductLookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickGetProduct');
  return sdlJoystickGetProductLookupFunction(joystick);
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
int sdlJoystickGetProductVersion(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetProductVersionLookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Pointer<SdlJoystick> joystick),
      int Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickGetProductVersion');
  return sdlJoystickGetProductVersionLookupFunction(joystick);
}

///
/// Get the firmware version of an opened joystick, if available.
///
/// If the firmware version isn't available this function returns 0.
///
/// \param joystick the SDL_Joystick obtained from SDL_JoystickOpen()
/// \returns the firmware version of the selected joystick, or 0 if
/// unavailable.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_JoystickGetFirmwareVersion(SDL_Joystick *joystick)
/// ```
int sdlJoystickGetFirmwareVersion(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetFirmwareVersionLookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Pointer<SdlJoystick> joystick),
      int Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickGetFirmwareVersion');
  return sdlJoystickGetFirmwareVersionLookupFunction(joystick);
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
String? sdlJoystickGetSerial(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetSerialLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SdlJoystick> joystick),
      Pointer<Utf8> Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickGetSerial');
  final result = sdlJoystickGetSerialLookupFunction(joystick);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlJoystickGetType(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetTypeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickGetType');
  return sdlJoystickGetTypeLookupFunction(joystick);
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
void sdlJoystickGetGuidString(SdlGuid guid, Pointer<Int8> pszGuid, int cbGuid) {
  final sdlJoystickGetGuidStringLookupFunction = libSdl2.lookupFunction<
      Void Function(SdlGuid guid, Pointer<Int8> pszGuid, Int32 cbGuid),
      void Function(SdlGuid guid, Pointer<Int8> pszGuid,
          int cbGuid)>('SDL_JoystickGetGUIDString');
  return sdlJoystickGetGuidStringLookupFunction(guid, pszGuid, cbGuid);
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
SdlGuid sdlJoystickGetGuidFromString(String? pchGuid) {
  final sdlJoystickGetGuidFromStringLookupFunction = libSdl2.lookupFunction<
      SdlGuid Function(Pointer<Utf8> pchGuid),
      SdlGuid Function(Pointer<Utf8> pchGuid)>('SDL_JoystickGetGUIDFromString');
  final pchGuidPointer = pchGuid != null ? pchGuid.toNativeUtf8() : nullptr;
  final result = sdlJoystickGetGuidFromStringLookupFunction(pchGuidPointer);
  calloc.free(pchGuidPointer);
  return result;
}

///
/// Get the device information encoded in a SDL_JoystickGUID structure
///
/// \param guid the SDL_JoystickGUID you wish to get info about
/// \param vendor A pointer filled in with the device VID, or 0 if not
/// available
/// \param product A pointer filled in with the device PID, or 0 if not
/// available
/// \param version A pointer filled in with the device version, or 0 if not
/// available
/// \param crc16 A pointer filled in with a CRC used to distinguish different
/// products with the same VID/PID, or 0 if not available
///
/// \since This function is available since SDL 2.26.0.
///
/// \sa SDL_JoystickGetDeviceGUID
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetJoystickGUIDInfo(SDL_JoystickGUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16)
/// ```
void sdlGetJoystickGuidInfo(SdlGuid guid, Pointer<Uint16> vendor,
    Pointer<Uint16> product, Pointer<Uint16> version, Pointer<Uint16> crc16) {
  final sdlGetJoystickGuidInfoLookupFunction = libSdl2.lookupFunction<
      Void Function(
          SdlGuid guid,
          Pointer<Uint16> vendor,
          Pointer<Uint16> product,
          Pointer<Uint16> version,
          Pointer<Uint16> crc16),
      void Function(
          SdlGuid guid,
          Pointer<Uint16> vendor,
          Pointer<Uint16> product,
          Pointer<Uint16> version,
          Pointer<Uint16> crc16)>('SDL_GetJoystickGUIDInfo');
  return sdlGetJoystickGuidInfoLookupFunction(
      guid, vendor, product, version, crc16);
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
bool sdlJoystickGetAttached(Pointer<SdlJoystick> joystick) {
  final sdlJoystickGetAttachedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickGetAttached');
  return sdlJoystickGetAttachedLookupFunction(joystick) == 1;
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
int sdlJoystickInstanceId(Pointer<SdlJoystick> joystick) {
  final sdlJoystickInstanceIdLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickInstanceID');
  return sdlJoystickInstanceIdLookupFunction(joystick);
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
int sdlJoystickNumAxes(Pointer<SdlJoystick> joystick) {
  final sdlJoystickNumAxesLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickNumAxes');
  return sdlJoystickNumAxesLookupFunction(joystick);
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
int sdlJoystickNumBalls(Pointer<SdlJoystick> joystick) {
  final sdlJoystickNumBallsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickNumBalls');
  return sdlJoystickNumBallsLookupFunction(joystick);
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
int sdlJoystickNumHats(Pointer<SdlJoystick> joystick) {
  final sdlJoystickNumHatsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickNumHats');
  return sdlJoystickNumHatsLookupFunction(joystick);
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
int sdlJoystickNumButtons(Pointer<SdlJoystick> joystick) {
  final sdlJoystickNumButtonsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickNumButtons');
  return sdlJoystickNumButtonsLookupFunction(joystick);
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
void sdlJoystickUpdate() {
  final sdlJoystickUpdateLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_JoystickUpdate');
  return sdlJoystickUpdateLookupFunction();
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
int sdlJoystickEventState(int state) {
  final sdlJoystickEventStateLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_JoystickEventState');
  return sdlJoystickEventStateLookupFunction(state);
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
int sdlJoystickGetAxis(Pointer<SdlJoystick> joystick, int axis) {
  final sdlJoystickGetAxisLookupFunction = libSdl2.lookupFunction<
      Int16 Function(Pointer<SdlJoystick> joystick, Int32 axis),
      int Function(
          Pointer<SdlJoystick> joystick, int axis)>('SDL_JoystickGetAxis');
  return sdlJoystickGetAxisLookupFunction(joystick, axis);
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
bool sdlJoystickGetAxisInitialState(
    Pointer<SdlJoystick> joystick, int axis, Pointer<Int16> state) {
  final sdlJoystickGetAxisInitialStateLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlJoystick> joystick, Int32 axis, Pointer<Int16> state),
      int Function(Pointer<SdlJoystick> joystick, int axis,
          Pointer<Int16> state)>('SDL_JoystickGetAxisInitialState');
  return sdlJoystickGetAxisInitialStateLookupFunction(joystick, axis, state) ==
      1;
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
int sdlJoystickGetHat(Pointer<SdlJoystick> joystick, int hat) {
  final sdlJoystickGetHatLookupFunction = libSdl2.lookupFunction<
      Uint8 Function(Pointer<SdlJoystick> joystick, Int32 hat),
      int Function(
          Pointer<SdlJoystick> joystick, int hat)>('SDL_JoystickGetHat');
  return sdlJoystickGetHatLookupFunction(joystick, hat);
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
int sdlJoystickGetBall(Pointer<SdlJoystick> joystick, int ball,
    Pointer<Int32> dx, Pointer<Int32> dy) {
  final sdlJoystickGetBallLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick, Int32 ball,
          Pointer<Int32> dx, Pointer<Int32> dy),
      int Function(Pointer<SdlJoystick> joystick, int ball, Pointer<Int32> dx,
          Pointer<Int32> dy)>('SDL_JoystickGetBall');
  return sdlJoystickGetBallLookupFunction(joystick, ball, dx, dy);
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
int sdlJoystickGetButton(Pointer<SdlJoystick> joystick, int button) {
  final sdlJoystickGetButtonLookupFunction = libSdl2.lookupFunction<
      Uint8 Function(Pointer<SdlJoystick> joystick, Int32 button),
      int Function(
          Pointer<SdlJoystick> joystick, int button)>('SDL_JoystickGetButton');
  return sdlJoystickGetButtonLookupFunction(joystick, button);
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
int sdlJoystickRumble(Pointer<SdlJoystick> joystick, int lowFrequencyRumble,
    int highFrequencyRumble, int durationMs) {
  final sdlJoystickRumbleLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick, Uint16 lowFrequencyRumble,
          Uint16 highFrequencyRumble, Uint32 durationMs),
      int Function(Pointer<SdlJoystick> joystick, int lowFrequencyRumble,
          int highFrequencyRumble, int durationMs)>('SDL_JoystickRumble');
  return sdlJoystickRumbleLookupFunction(
      joystick, lowFrequencyRumble, highFrequencyRumble, durationMs);
}

///
/// Start a rumble effect in the joystick's triggers
///
/// Each call to this function cancels any previous trigger rumble effect, and
/// calling it with 0 intensity stops any rumbling.
///
/// Note that this is rumbling of the _triggers_ and not the game controller as
/// a whole. This is currently only supported on Xbox One controllers. If you
/// want the (more common) whole-controller rumble, use SDL_JoystickRumble()
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
int sdlJoystickRumbleTriggers(Pointer<SdlJoystick> joystick, int leftRumble,
    int rightRumble, int durationMs) {
  final sdlJoystickRumbleTriggersLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick, Uint16 leftRumble,
          Uint16 rightRumble, Uint32 durationMs),
      int Function(Pointer<SdlJoystick> joystick, int leftRumble,
          int rightRumble, int durationMs)>('SDL_JoystickRumbleTriggers');
  return sdlJoystickRumbleTriggersLookupFunction(
      joystick, leftRumble, rightRumble, durationMs);
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
bool sdlJoystickHasLed(Pointer<SdlJoystick> joystick) {
  final sdlJoystickHasLedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickHasLED');
  return sdlJoystickHasLedLookupFunction(joystick) == 1;
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
bool sdlJoystickHasRumble(Pointer<SdlJoystick> joystick) {
  final sdlJoystickHasRumbleLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickHasRumble');
  return sdlJoystickHasRumbleLookupFunction(joystick) == 1;
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
bool sdlJoystickHasRumbleTriggers(Pointer<SdlJoystick> joystick) {
  final sdlJoystickHasRumbleTriggersLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickHasRumbleTriggers');
  return sdlJoystickHasRumbleTriggersLookupFunction(joystick) == 1;
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
int sdlJoystickSetLed(
    Pointer<SdlJoystick> joystick, int red, int green, int blue) {
  final sdlJoystickSetLedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlJoystick> joystick, Uint8 red, Uint8 green, Uint8 blue),
      int Function(Pointer<SdlJoystick> joystick, int red, int green,
          int blue)>('SDL_JoystickSetLED');
  return sdlJoystickSetLedLookupFunction(joystick, red, green, blue);
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
int sdlJoystickSendEffect(
    Pointer<SdlJoystick> joystick, Pointer<NativeType> data, int size) {
  final sdlJoystickSendEffectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlJoystick> joystick, Pointer<NativeType> data, Int32 size),
      int Function(Pointer<SdlJoystick> joystick, Pointer<NativeType> data,
          int size)>('SDL_JoystickSendEffect');
  return sdlJoystickSendEffectLookupFunction(joystick, data, size);
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
void sdlJoystickClose(Pointer<SdlJoystick> joystick) {
  final sdlJoystickCloseLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlJoystick> joystick),
      void Function(Pointer<SdlJoystick> joystick)>('SDL_JoystickClose');
  return sdlJoystickCloseLookupFunction(joystick);
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
int sdlJoystickCurrentPowerLevel(Pointer<SdlJoystick> joystick) {
  final sdlJoystickCurrentPowerLevelLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick> joystick),
      int Function(
          Pointer<SdlJoystick> joystick)>('SDL_JoystickCurrentPowerLevel');
  return sdlJoystickCurrentPowerLevelLookupFunction(joystick);
}
