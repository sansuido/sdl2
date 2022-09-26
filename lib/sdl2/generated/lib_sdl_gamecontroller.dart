// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Load a set of Game Controller mappings from a seekable SDL data stream.
///
/// You can call this function several times, if needed, to load different
/// database files.
///
/// If a new mapping is loaded for an already known controller GUID, the later
/// version will overwrite the one currently loaded.
///
/// Mappings not belonging to the current platform or with no platform field
/// specified will be ignored (i.e. mappings for Linux will be ignored in
/// Windows, etc).
///
/// This function will load the text database entirely in memory before
/// processing it, so take this into consideration if you are in a memory
/// constrained environment.
///
/// \param rw the data stream for the mappings to be added
/// \param freerw non-zero to close the stream after being read
/// \returns the number of mappings added or -1 on error; call SDL_GetError()
/// for more information.
///
/// \since This function is available since SDL 2.0.2.
///
/// \sa SDL_GameControllerAddMapping
/// \sa SDL_GameControllerAddMappingsFromFile
/// \sa SDL_GameControllerMappingForGUID
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerAddMappingsFromRW(SDL_RWops * rw, int freerw)
/// ```
int sdlGameControllerAddMappingsFromRw(Pointer<SdlRWops> rw, int freerw) {
  final sdlGameControllerAddMappingsFromRwLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlRWops> rw, Int32 freerw),
          int Function(Pointer<SdlRWops> rw,
              int freerw)>('SDL_GameControllerAddMappingsFromRW');
  return sdlGameControllerAddMappingsFromRwLookupFunction(rw, freerw);
}

///
/// Add support for controllers that SDL is unaware of or to cause an existing
/// controller to have a different binding.
///
/// The mapping string has the format "GUID,name,mapping", where GUID is the
/// string value from SDL_JoystickGetGUIDString(), name is the human readable
/// string for the device and mappings are controller mappings to joystick
/// ones. Under Windows there is a reserved GUID of "xinput" that covers all
/// XInput devices. The mapping format for joystick is: {| |bX |a joystick
/// button, index X |- |hX.Y |hat X with value Y |- |aX |axis X of the joystick
/// |} Buttons can be used as a controller axes and vice versa.
///
/// This string shows an example of a valid mapping for a controller:
///
/// ```c
/// "341a3608000000000000504944564944,Afterglow PS3 Controller,a:b1,b:b2,y:b3,x:b0,start:b9,guide:b12,back:b8,dpup:h0.1,dpleft:h0.8,dpdown:h0.4,dpright:h0.2,leftshoulder:b4,rightshoulder:b5,leftstick:b10,rightstick:b11,leftx:a0,lefty:a1,rightx:a2,righty:a3,lefttrigger:b6,righttrigger:b7"
/// ```
///
/// \param mappingString the mapping string
/// \returns 1 if a new mapping is added, 0 if an existing mapping is updated,
/// -1 on error; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerMapping
/// \sa SDL_GameControllerMappingForGUID
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerAddMapping(const char* mappingString)
/// ```
int sdlGameControllerAddMapping(String mappingString) {
  final sdlGameControllerAddMappingLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> mappingString),
      int Function(
          Pointer<Utf8> mappingString)>('SDL_GameControllerAddMapping');
  final mappingStringPointer = mappingString.toNativeUtf8();
  final result =
      sdlGameControllerAddMappingLookupFunction(mappingStringPointer);
  calloc.free(mappingStringPointer);
  return result;
}

///
/// Get the number of mappings installed.
///
/// \returns the number of mappings.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerNumMappings(void)
/// ```
int sdlGameControllerNumMappings() {
  final sdlGameControllerNumMappingsLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_GameControllerNumMappings');
  return sdlGameControllerNumMappingsLookupFunction();
}

///
/// Get the mapping at a particular index.
///
/// \returns the mapping string. Must be freed with SDL_free(). Returns NULL if
/// the index is out of range.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMappingForIndex(int mapping_index)
/// ```
Pointer<Int8> sdlGameControllerMappingForIndex(int mappingIndex) {
  final sdlGameControllerMappingForIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<Int8> Function(Int32 mappingIndex),
      Pointer<Int8> Function(
          int mappingIndex)>('SDL_GameControllerMappingForIndex');
  return sdlGameControllerMappingForIndexLookupFunction(mappingIndex);
}

///
/// Get the game controller mapping string for a given GUID.
///
/// The returned string must be freed with SDL_free().
///
/// \param guid a structure containing the GUID for which a mapping is desired
/// \returns a mapping string or NULL on error; call SDL_GetError() for more
/// information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_JoystickGetDeviceGUID
/// \sa SDL_JoystickGetGUID
///
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMappingForGUID(SDL_JoystickGUID guid)
/// ```
Pointer<Int8> sdlGameControllerMappingForGuid(Pointer<Void> guid) {
  final sdlGameControllerMappingForGuidLookupFunction = libSdl2.lookupFunction<
      Pointer<Int8> Function(Pointer<Void> guid),
      Pointer<Int8> Function(
          Pointer<Void> guid)>('SDL_GameControllerMappingForGUID');
  return sdlGameControllerMappingForGuidLookupFunction(guid);
}

///
/// Get the current mapping of a Game Controller.
///
/// The returned string must be freed with SDL_free().
///
/// Details about mappings are discussed with SDL_GameControllerAddMapping().
///
/// \param gamecontroller the game controller you want to get the current
/// mapping for
/// \returns a string that has the controller's mapping or NULL if no mapping
/// is available; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerAddMapping
/// \sa SDL_GameControllerMappingForGUID
///
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMapping(SDL_GameController *gamecontroller)
/// ```
Pointer<Int8> sdlGameControllerMapping(
    Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerMappingLookupFunction = libSdl2.lookupFunction<
          Pointer<Int8> Function(Pointer<SdlGameController> gamecontroller),
          Pointer<Int8> Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerMapping');
  return sdlGameControllerMappingLookupFunction(gamecontroller);
}

///
/// Check if the given joystick is supported by the game controller interface.
///
/// `joystick_index` is the same as the `device_index` passed to
/// SDL_JoystickOpen().
///
/// \param joystick_index the device_index of a device, up to
/// SDL_NumJoysticks()
/// \returns SDL_TRUE if the given joystick is supported by the game controller
/// interface, SDL_FALSE if it isn't or it's an invalid index.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerNameForIndex
/// \sa SDL_GameControllerOpen
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsGameController(int joystick_index)
/// ```
int sdlIsGameController(int joystickIndex) {
  final sdlIsGameControllerLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 joystickIndex),
      int Function(int joystickIndex)>('SDL_IsGameController');
  return sdlIsGameControllerLookupFunction(joystickIndex);
}

///
/// Get the implementation dependent name for the game controller.
///
/// This function can be called before any controllers are opened.
///
/// `joystick_index` is the same as the `device_index` passed to
/// SDL_JoystickOpen().
///
/// \param joystick_index the device_index of a device, from zero to
/// SDL_NumJoysticks()-1
/// \returns the implementation-dependent name for the game controller, or NULL
/// if there is no name or the index is invalid.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerName
/// \sa SDL_GameControllerOpen
/// \sa SDL_IsGameController
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerNameForIndex(int joystick_index)
/// ```
String sdlGameControllerNameForIndex(int joystickIndex) {
  final sdlGameControllerNameForIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 joystickIndex),
      Pointer<Utf8> Function(
          int joystickIndex)>('SDL_GameControllerNameForIndex');
  return sdlGameControllerNameForIndexLookupFunction(joystickIndex)
      .toDartString();
}

///
/// Get the implementation dependent path for the game controller.
///
/// This function can be called before any controllers are opened.
///
/// `joystick_index` is the same as the `device_index` passed to
/// SDL_JoystickOpen().
///
/// \param joystick_index the device_index of a device, from zero to
/// SDL_NumJoysticks()-1
/// \returns the implementation-dependent path for the game controller, or NULL
/// if there is no path or the index is invalid.
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_GameControllerPath
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerPathForIndex(int joystick_index)
/// ```
String sdlGameControllerPathForIndex(int joystickIndex) {
  final sdlGameControllerPathForIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 joystickIndex),
      Pointer<Utf8> Function(
          int joystickIndex)>('SDL_GameControllerPathForIndex');
  return sdlGameControllerPathForIndexLookupFunction(joystickIndex)
      .toDartString();
}

///
/// Get the type of a game controller.
///
/// This can be called before any controllers are opened.
///
/// \param joystick_index the device_index of a device, from zero to
/// SDL_NumJoysticks()-1
/// \returns the controller type.
///
/// \since This function is available since SDL 2.0.12.
///
/// ```c
/// extern DECLSPEC SDL_GameControllerType SDLCALL SDL_GameControllerTypeForIndex(int joystick_index)
/// ```
int sdlGameControllerTypeForIndex(int joystickIndex) {
  final sdlGameControllerTypeForIndexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 joystickIndex),
      int Function(int joystickIndex)>('SDL_GameControllerTypeForIndex');
  return sdlGameControllerTypeForIndexLookupFunction(joystickIndex);
}

///
/// Get the mapping of a game controller.
///
/// This can be called before any controllers are opened.
///
/// \param joystick_index the device_index of a device, from zero to
/// SDL_NumJoysticks()-1
/// \returns the mapping string. Must be freed with SDL_free(). Returns NULL if
/// no mapping is available.
///
/// \since This function is available since SDL 2.0.9.
///
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_GameControllerMappingForDeviceIndex(int joystick_index)
/// ```
Pointer<Int8> sdlGameControllerMappingForDeviceIndex(int joystickIndex) {
  final sdlGameControllerMappingForDeviceIndexLookupFunction =
      libSdl2.lookupFunction<
          Pointer<Int8> Function(Int32 joystickIndex),
          Pointer<Int8> Function(
              int joystickIndex)>('SDL_GameControllerMappingForDeviceIndex');
  return sdlGameControllerMappingForDeviceIndexLookupFunction(joystickIndex);
}

///
/// Open a game controller for use.
///
/// `joystick_index` is the same as the `device_index` passed to
/// SDL_JoystickOpen().
///
/// The index passed as an argument refers to the N'th game controller on the
/// system. This index is not the value which will identify this controller in
/// future controller events. The joystick's instance id (SDL_JoystickID) will
/// be used there instead.
///
/// \param joystick_index the device_index of a device, up to
/// SDL_NumJoysticks()
/// \returns a gamecontroller identifier or NULL if an error occurred; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerClose
/// \sa SDL_GameControllerNameForIndex
/// \sa SDL_IsGameController
///
/// ```c
/// extern DECLSPEC SDL_GameController *SDLCALL SDL_GameControllerOpen(int joystick_index)
/// ```
Pointer<SdlGameController> sdlGameControllerOpen(int joystickIndex) {
  final sdlGameControllerOpenLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlGameController> Function(Int32 joystickIndex),
      Pointer<SdlGameController> Function(
          int joystickIndex)>('SDL_GameControllerOpen');
  return sdlGameControllerOpenLookupFunction(joystickIndex);
}

///
/// Get the SDL_GameController associated with an instance id.
///
/// \param joyid the instance id to get the SDL_GameController for
/// \returns an SDL_GameController on success or NULL on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.4.
///
/// ```c
/// extern DECLSPEC SDL_GameController *SDLCALL SDL_GameControllerFromInstanceID(SDL_JoystickID joyid)
/// ```
Pointer<SdlGameController> sdlGameControllerFromInstanceId(int joyid) {
  final sdlGameControllerFromInstanceIdLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlGameController> Function(Int32 joyid),
      Pointer<SdlGameController> Function(
          int joyid)>('SDL_GameControllerFromInstanceID');
  return sdlGameControllerFromInstanceIdLookupFunction(joyid);
}

///
/// Get the SDL_GameController associated with a player index.
///
/// Please note that the player index is _not_ the device index, nor is it the
/// instance id!
///
/// \param player_index the player index, which is not the device index or the
/// instance id!
/// \returns the SDL_GameController associated with a player index.
///
/// \since This function is available since SDL 2.0.12.
///
/// \sa SDL_GameControllerGetPlayerIndex
/// \sa SDL_GameControllerSetPlayerIndex
///
/// ```c
/// extern DECLSPEC SDL_GameController *SDLCALL SDL_GameControllerFromPlayerIndex(int player_index)
/// ```
Pointer<SdlGameController> sdlGameControllerFromPlayerIndex(int playerIndex) {
  final sdlGameControllerFromPlayerIndexLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlGameController> Function(Int32 playerIndex),
      Pointer<SdlGameController> Function(
          int playerIndex)>('SDL_GameControllerFromPlayerIndex');
  return sdlGameControllerFromPlayerIndexLookupFunction(playerIndex);
}

///
/// Get the implementation-dependent name for an opened game controller.
///
/// This is the same name as returned by SDL_GameControllerNameForIndex(), but
/// it takes a controller identifier instead of the (unstable) device index.
///
/// \param gamecontroller a game controller identifier previously returned by
/// SDL_GameControllerOpen()
/// \returns the implementation dependent name for the game controller, or NULL
/// if there is no name or the identifier passed is invalid.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerNameForIndex
/// \sa SDL_GameControllerOpen
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerName(SDL_GameController *gamecontroller)
/// ```
String sdlGameControllerName(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SdlGameController> gamecontroller),
      Pointer<Utf8> Function(
          Pointer<SdlGameController> gamecontroller)>('SDL_GameControllerName');
  return sdlGameControllerNameLookupFunction(gamecontroller).toDartString();
}

///
/// Get the implementation-dependent path for an opened game controller.
///
/// This is the same path as returned by SDL_GameControllerNameForIndex(), but
/// it takes a controller identifier instead of the (unstable) device index.
///
/// \param gamecontroller a game controller identifier previously returned by
/// SDL_GameControllerOpen()
/// \returns the implementation dependent path for the game controller, or NULL
/// if there is no path or the identifier passed is invalid.
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_GameControllerPathForIndex
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerPath(SDL_GameController *gamecontroller)
/// ```
String sdlGameControllerPath(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerPathLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SdlGameController> gamecontroller),
      Pointer<Utf8> Function(
          Pointer<SdlGameController> gamecontroller)>('SDL_GameControllerPath');
  return sdlGameControllerPathLookupFunction(gamecontroller).toDartString();
}

///
/// Get the type of this currently opened controller
///
/// This is the same name as returned by SDL_GameControllerTypeForIndex(), but
/// it takes a controller identifier instead of the (unstable) device index.
///
/// \param gamecontroller the game controller object to query.
/// \returns the controller type.
///
/// \since This function is available since SDL 2.0.12.
///
/// ```c
/// extern DECLSPEC SDL_GameControllerType SDLCALL SDL_GameControllerGetType(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetType(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetTypeLookupFunction = libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetType');
  return sdlGameControllerGetTypeLookupFunction(gamecontroller);
}

///
/// Get the player index of an opened game controller.
///
/// For XInput controllers this returns the XInput user index.
///
/// \param gamecontroller the game controller object to query.
/// \returns the player index for controller, or -1 if it's not available.
///
/// \since This function is available since SDL 2.0.9.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerGetPlayerIndex(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetPlayerIndex(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetPlayerIndexLookupFunction = libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetPlayerIndex');
  return sdlGameControllerGetPlayerIndexLookupFunction(gamecontroller);
}

///
/// Set the player index of an opened game controller.
///
/// \param gamecontroller the game controller object to adjust.
/// \param player_index Player index to assign to this controller, or -1 to
/// clear the player index and turn off player LEDs.
///
/// \since This function is available since SDL 2.0.12.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerSetPlayerIndex(SDL_GameController *gamecontroller, int player_index)
/// ```
void sdlGameControllerSetPlayerIndex(
    Pointer<SdlGameController> gamecontroller, int playerIndex) {
  final sdlGameControllerSetPlayerIndexLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<SdlGameController> gamecontroller, Int32 playerIndex),
      void Function(Pointer<SdlGameController> gamecontroller,
          int playerIndex)>('SDL_GameControllerSetPlayerIndex');
  return sdlGameControllerSetPlayerIndexLookupFunction(
      gamecontroller, playerIndex);
}

///
/// Get the USB vendor ID of an opened controller, if available.
///
/// If the vendor ID isn't available this function returns 0.
///
/// \param gamecontroller the game controller object to query.
/// \return the USB vendor ID, or zero if unavailable.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_GameControllerGetVendor(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetVendor(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetVendorLookupFunction = libSdl2.lookupFunction<
          Uint16 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetVendor');
  return sdlGameControllerGetVendorLookupFunction(gamecontroller);
}

///
/// Get the USB product ID of an opened controller, if available.
///
/// If the product ID isn't available this function returns 0.
///
/// \param gamecontroller the game controller object to query.
/// \return the USB product ID, or zero if unavailable.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_GameControllerGetProduct(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetProduct(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetProductLookupFunction = libSdl2.lookupFunction<
          Uint16 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetProduct');
  return sdlGameControllerGetProductLookupFunction(gamecontroller);
}

///
/// Get the product version of an opened controller, if available.
///
/// If the product version isn't available this function returns 0.
///
/// \param gamecontroller the game controller object to query.
/// \return the USB product version, or zero if unavailable.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_GameControllerGetProductVersion(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetProductVersion(
    Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetProductVersionLookupFunction =
      libSdl2.lookupFunction<
              Uint16 Function(Pointer<SdlGameController> gamecontroller),
              int Function(Pointer<SdlGameController> gamecontroller)>(
          'SDL_GameControllerGetProductVersion');
  return sdlGameControllerGetProductVersionLookupFunction(gamecontroller);
}

///
/// Get the firmware version of an opened controller, if available.
///
/// If the firmware version isn't available this function returns 0.
///
/// \param gamecontroller the game controller object to query.
/// \return the controller firmware version, or zero if unavailable.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_GameControllerGetFirmwareVersion(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetFirmwareVersion(
    Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetFirmwareVersionLookupFunction =
      libSdl2.lookupFunction<
              Uint16 Function(Pointer<SdlGameController> gamecontroller),
              int Function(Pointer<SdlGameController> gamecontroller)>(
          'SDL_GameControllerGetFirmwareVersion');
  return sdlGameControllerGetFirmwareVersionLookupFunction(gamecontroller);
}

///
/// Get the serial number of an opened controller, if available.
///
/// Returns the serial number of the controller, or NULL if it is not
/// available.
///
/// \param gamecontroller the game controller object to query.
/// \return the serial number, or NULL if unavailable.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GameControllerGetSerial(SDL_GameController *gamecontroller)
/// ```
String sdlGameControllerGetSerial(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetSerialLookupFunction = libSdl2.lookupFunction<
          Pointer<Utf8> Function(Pointer<SdlGameController> gamecontroller),
          Pointer<Utf8> Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetSerial');
  return sdlGameControllerGetSerialLookupFunction(gamecontroller)
      .toDartString();
}

///
/// Check if a controller has been opened and is currently connected.
///
/// \param gamecontroller a game controller identifier previously returned by
/// SDL_GameControllerOpen()
/// \returns SDL_TRUE if the controller has been opened and is currently
/// connected, or SDL_FALSE if not.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerClose
/// \sa SDL_GameControllerOpen
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerGetAttached(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetAttached(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetAttachedLookupFunction = libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetAttached');
  return sdlGameControllerGetAttachedLookupFunction(gamecontroller);
}

///
/// Get the Joystick ID from a Game Controller.
///
/// This function will give you a SDL_Joystick object, which allows you to use
/// the SDL_Joystick functions with a SDL_GameController object. This would be
/// useful for getting a joystick's position at any given time, even if it
/// hasn't moved (moving it would produce an event, which would have the axis'
/// value).
///
/// The pointer returned is owned by the SDL_GameController. You should not
/// call SDL_JoystickClose() on it, for example, since doing so will likely
/// cause SDL to crash.
///
/// \param gamecontroller the game controller object that you want to get a
/// joystick from
/// \returns a SDL_Joystick object; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_GameControllerGetJoystick(SDL_GameController *gamecontroller)
/// ```
Pointer<SdlJoystick> sdlGameControllerGetJoystick(
    Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetJoystickLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlJoystick> Function(Pointer<SdlGameController> gamecontroller),
      Pointer<SdlJoystick> Function(
          Pointer<SdlGameController>
              gamecontroller)>('SDL_GameControllerGetJoystick');
  return sdlGameControllerGetJoystickLookupFunction(gamecontroller);
}

///
/// Query or change current state of Game Controller events.
///
/// If controller events are disabled, you must call SDL_GameControllerUpdate()
/// yourself and check the state of the controller when you want controller
/// information.
///
/// Any number can be passed to SDL_GameControllerEventState(), but only -1, 0,
/// and 1 will have any effect. Other numbers will just be returned.
///
/// \param state can be one of `SDL_QUERY`, `SDL_IGNORE`, or `SDL_ENABLE`
/// \returns the same value passed to the function, with exception to -1
/// (SDL_QUERY), which will return the current state.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_JoystickEventState
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerEventState(int state)
/// ```
int sdlGameControllerEventState(int state) {
  final sdlGameControllerEventStateLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_GameControllerEventState');
  return sdlGameControllerEventStateLookupFunction(state);
}

///
/// Manually pump game controller updates if not using the loop.
///
/// This function is called automatically by the event loop if events are
/// enabled. Under such circumstances, it will not be necessary to call this
/// function.
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerUpdate(void)
/// ```
void sdlGameControllerUpdate() {
  final sdlGameControllerUpdateLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_GameControllerUpdate');
  return sdlGameControllerUpdateLookupFunction();
}

///
/// Convert a string into SDL_GameControllerAxis enum.
///
/// This function is called internally to translate SDL_GameController mapping
/// strings for the underlying joystick device into the consistent
/// SDL_GameController mapping. You do not normally need to call this function
/// unless you are parsing SDL_GameController mappings in your own code.
///
/// Note specially that "righttrigger" and "lefttrigger" map to
/// `SDL_CONTROLLER_AXIS_TRIGGERRIGHT` and `SDL_CONTROLLER_AXIS_TRIGGERLEFT`,
/// respectively.
///
/// \param str string representing a SDL_GameController axis
/// \returns the SDL_GameControllerAxis enum corresponding to the input string,
/// or `SDL_CONTROLLER_AXIS_INVALID` if no match was found.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetStringForAxis
///
/// ```c
/// extern DECLSPEC SDL_GameControllerAxis SDLCALL SDL_GameControllerGetAxisFromString(const char *str)
/// ```
int sdlGameControllerGetAxisFromString(String str) {
  final sdlGameControllerGetAxisFromStringLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(Pointer<Utf8> str),
          int Function(
              Pointer<Utf8> str)>('SDL_GameControllerGetAxisFromString');
  final strPointer = str.toNativeUtf8();
  final result = sdlGameControllerGetAxisFromStringLookupFunction(strPointer);
  calloc.free(strPointer);
  return result;
}

///
/// Convert from an SDL_GameControllerAxis enum to a string.
///
/// The caller should not SDL_free() the returned string.
///
/// \param axis an enum value for a given SDL_GameControllerAxis
/// \returns a string for the given axis, or NULL if an invalid axis is
/// specified. The string returned is of the format used by
/// SDL_GameController mapping strings.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetAxisFromString
///
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForAxis(SDL_GameControllerAxis axis)
/// ```
String sdlGameControllerGetStringForAxis(int axis) {
  final sdlGameControllerGetStringForAxisLookupFunction =
      libSdl2.lookupFunction<
          Pointer<Utf8> Function(Int32 axis),
          Pointer<Utf8> Function(
              int axis)>('SDL_GameControllerGetStringForAxis');
  return sdlGameControllerGetStringForAxisLookupFunction(axis).toDartString();
}

///
/// Get the SDL joystick layer binding for a controller axis mapping.
///
/// \param gamecontroller a game controller
/// \param axis an axis enum value (one of the SDL_GameControllerAxis values)
/// \returns a SDL_GameControllerButtonBind describing the bind. On failure
/// (like the given Controller axis doesn't exist on the device), its
/// `.bindType` will be `SDL_CONTROLLER_BINDTYPE_NONE`.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetBindForButton
///
/// ```c
/// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
Pointer<Void> sdlGameControllerGetBindForAxis(
    Pointer<SdlGameController> gamecontroller, int axis) {
  final sdlGameControllerGetBindForAxisLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(
          Pointer<SdlGameController> gamecontroller, Int32 axis),
      Pointer<Void> Function(Pointer<SdlGameController> gamecontroller,
          int axis)>('SDL_GameControllerGetBindForAxis');
  return sdlGameControllerGetBindForAxisLookupFunction(gamecontroller, axis);
}

///
/// Query whether a game controller has a given axis.
///
/// This merely reports whether the controller's mapping defined this axis, as
/// that is all the information SDL has about the physical device.
///
/// \param gamecontroller a game controller
/// \param axis an axis enum value (an SDL_GameControllerAxis value)
/// \returns SDL_TRUE if the controller has this axis, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerHasAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
int sdlGameControllerHasAxis(
    Pointer<SdlGameController> gamecontroller, int axis) {
  final sdlGameControllerHasAxisLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller, Int32 axis),
      int Function(Pointer<SdlGameController> gamecontroller,
          int axis)>('SDL_GameControllerHasAxis');
  return sdlGameControllerHasAxisLookupFunction(gamecontroller, axis);
}

///
/// Get the current state of an axis control on a game controller.
///
/// The axis indices start at index 0.
///
/// The state is a value ranging from -32768 to 32767. Triggers, however, range
/// from 0 to 32767 (they never return a negative value).
///
/// \param gamecontroller a game controller
/// \param axis an axis index (one of the SDL_GameControllerAxis values)
/// \returns axis state (including 0) on success or 0 (also) on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetButton
///
/// ```c
/// extern DECLSPEC Sint16 SDLCALL SDL_GameControllerGetAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
int sdlGameControllerGetAxis(
    Pointer<SdlGameController> gamecontroller, int axis) {
  final sdlGameControllerGetAxisLookupFunction = libSdl2.lookupFunction<
      Int16 Function(Pointer<SdlGameController> gamecontroller, Int32 axis),
      int Function(Pointer<SdlGameController> gamecontroller,
          int axis)>('SDL_GameControllerGetAxis');
  return sdlGameControllerGetAxisLookupFunction(gamecontroller, axis);
}

///
/// Convert a string into an SDL_GameControllerButton enum.
///
/// This function is called internally to translate SDL_GameController mapping
/// strings for the underlying joystick device into the consistent
/// SDL_GameController mapping. You do not normally need to call this function
/// unless you are parsing SDL_GameController mappings in your own code.
///
/// \param str string representing a SDL_GameController axis
/// \returns the SDL_GameControllerButton enum corresponding to the input
/// string, or `SDL_CONTROLLER_AXIS_INVALID` if no match was found.
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC SDL_GameControllerButton SDLCALL SDL_GameControllerGetButtonFromString(const char *str)
/// ```
int sdlGameControllerGetButtonFromString(String str) {
  final sdlGameControllerGetButtonFromStringLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(Pointer<Utf8> str),
          int Function(
              Pointer<Utf8> str)>('SDL_GameControllerGetButtonFromString');
  final strPointer = str.toNativeUtf8();
  final result = sdlGameControllerGetButtonFromStringLookupFunction(strPointer);
  calloc.free(strPointer);
  return result;
}

///
/// Convert from an SDL_GameControllerButton enum to a string.
///
/// The caller should not SDL_free() the returned string.
///
/// \param button an enum value for a given SDL_GameControllerButton
/// \returns a string for the given button, or NULL if an invalid axis is
/// specified. The string returned is of the format used by
/// SDL_GameController mapping strings.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetButtonFromString
///
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForButton(SDL_GameControllerButton button)
/// ```
String sdlGameControllerGetStringForButton(int button) {
  final sdlGameControllerGetStringForButtonLookupFunction =
      libSdl2.lookupFunction<
          Pointer<Utf8> Function(Int32 button),
          Pointer<Utf8> Function(
              int button)>('SDL_GameControllerGetStringForButton');
  return sdlGameControllerGetStringForButtonLookupFunction(button)
      .toDartString();
}

///
/// Get the SDL joystick layer binding for a controller button mapping.
///
/// \param gamecontroller a game controller
/// \param button an button enum value (an SDL_GameControllerButton value)
/// \returns a SDL_GameControllerButtonBind describing the bind. On failure
/// (like the given Controller button doesn't exist on the device),
/// its `.bindType` will be `SDL_CONTROLLER_BINDTYPE_NONE`.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetBindForAxis
///
/// ```c
/// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
Pointer<Void> sdlGameControllerGetBindForButton(
    Pointer<SdlGameController> gamecontroller, int button) {
  final sdlGameControllerGetBindForButtonLookupFunction =
      libSdl2.lookupFunction<
          Pointer<Void> Function(
              Pointer<SdlGameController> gamecontroller, Int32 button),
          Pointer<Void> Function(Pointer<SdlGameController> gamecontroller,
              int button)>('SDL_GameControllerGetBindForButton');
  return sdlGameControllerGetBindForButtonLookupFunction(
      gamecontroller, button);
}

///
/// Query whether a game controller has a given button.
///
/// This merely reports whether the controller's mapping defined this button,
/// as that is all the information SDL has about the physical device.
///
/// \param gamecontroller a game controller
/// \param button a button enum value (an SDL_GameControllerButton value)
/// \returns SDL_TRUE if the controller has this button, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerHasButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
int sdlGameControllerHasButton(
    Pointer<SdlGameController> gamecontroller, int button) {
  final sdlGameControllerHasButtonLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller, Int32 button),
      int Function(Pointer<SdlGameController> gamecontroller,
          int button)>('SDL_GameControllerHasButton');
  return sdlGameControllerHasButtonLookupFunction(gamecontroller, button);
}

///
/// Get the current state of a button on a game controller.
///
/// \param gamecontroller a game controller
/// \param button a button index (one of the SDL_GameControllerButton values)
/// \returns 1 for pressed state or 0 for not pressed state or error; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerGetAxis
///
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_GameControllerGetButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
int sdlGameControllerGetButton(
    Pointer<SdlGameController> gamecontroller, int button) {
  final sdlGameControllerGetButtonLookupFunction = libSdl2.lookupFunction<
      Uint8 Function(Pointer<SdlGameController> gamecontroller, Int32 button),
      int Function(Pointer<SdlGameController> gamecontroller,
          int button)>('SDL_GameControllerGetButton');
  return sdlGameControllerGetButtonLookupFunction(gamecontroller, button);
}

///
/// Get the number of touchpads on a game controller.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerGetNumTouchpads(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerGetNumTouchpads(
    Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerGetNumTouchpadsLookupFunction = libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerGetNumTouchpads');
  return sdlGameControllerGetNumTouchpadsLookupFunction(gamecontroller);
}

///
/// Get the number of supported simultaneous fingers on a touchpad on a game
/// controller.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerGetNumTouchpadFingers(SDL_GameController *gamecontroller, int touchpad)
/// ```
int sdlGameControllerGetNumTouchpadFingers(
    Pointer<SdlGameController> gamecontroller, int touchpad) {
  final sdlGameControllerGetNumTouchpadFingersLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(
              Pointer<SdlGameController> gamecontroller, Int32 touchpad),
          int Function(Pointer<SdlGameController> gamecontroller,
              int touchpad)>('SDL_GameControllerGetNumTouchpadFingers');
  return sdlGameControllerGetNumTouchpadFingersLookupFunction(
      gamecontroller, touchpad);
}

///
/// Get the current state of a finger on a touchpad on a game controller.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerGetTouchpadFinger(SDL_GameController *gamecontroller, int touchpad, int finger, Uint8 *state, float *x, float *y, float *pressure)
/// ```
int sdlGameControllerGetTouchpadFinger(
    Pointer<SdlGameController> gamecontroller,
    int touchpad,
    int finger,
    Pointer<Uint8> state,
    Pointer<Float> x,
    Pointer<Float> y,
    Pointer<Float> pressure) {
  final sdlGameControllerGetTouchpadFingerLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(
              Pointer<SdlGameController> gamecontroller,
              Int32 touchpad,
              Int32 finger,
              Pointer<Uint8> state,
              Pointer<Float> x,
              Pointer<Float> y,
              Pointer<Float> pressure),
          int Function(
              Pointer<SdlGameController> gamecontroller,
              int touchpad,
              int finger,
              Pointer<Uint8> state,
              Pointer<Float> x,
              Pointer<Float> y,
              Pointer<Float> pressure)>('SDL_GameControllerGetTouchpadFinger');
  return sdlGameControllerGetTouchpadFingerLookupFunction(
      gamecontroller, touchpad, finger, state, x, y, pressure);
}

///
/// Return whether a game controller has a particular sensor.
///
/// \param gamecontroller The controller to query
/// \param type The type of sensor to query
/// \returns SDL_TRUE if the sensor exists, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerHasSensor(SDL_GameController *gamecontroller, SDL_SensorType type)
/// ```
int sdlGameControllerHasSensor(
    Pointer<SdlGameController> gamecontroller, int type) {
  final sdlGameControllerHasSensorLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller, Int32 type),
      int Function(Pointer<SdlGameController> gamecontroller,
          int type)>('SDL_GameControllerHasSensor');
  return sdlGameControllerHasSensorLookupFunction(gamecontroller, type);
}

///
/// Set whether data reporting for a game controller sensor is enabled.
///
/// \param gamecontroller The controller to update
/// \param type The type of sensor to enable/disable
/// \param enabled Whether data reporting should be enabled
/// \returns 0 or -1 if an error occurred.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerSetSensorEnabled(SDL_GameController *gamecontroller, SDL_SensorType type, SDL_bool enabled)
/// ```
int sdlGameControllerSetSensorEnabled(
    Pointer<SdlGameController> gamecontroller, int type, int enabled) {
  final sdlGameControllerSetSensorEnabledLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller, Int32 type,
              Int32 enabled),
          int Function(Pointer<SdlGameController> gamecontroller, int type,
              int enabled)>('SDL_GameControllerSetSensorEnabled');
  return sdlGameControllerSetSensorEnabledLookupFunction(
      gamecontroller, type, enabled);
}

///
/// Query whether sensor data reporting is enabled for a game controller.
///
/// \param gamecontroller The controller to query
/// \param type The type of sensor to query
/// \returns SDL_TRUE if the sensor is enabled, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerIsSensorEnabled(SDL_GameController *gamecontroller, SDL_SensorType type)
/// ```
int sdlGameControllerIsSensorEnabled(
    Pointer<SdlGameController> gamecontroller, int type) {
  final sdlGameControllerIsSensorEnabledLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller, Int32 type),
      int Function(Pointer<SdlGameController> gamecontroller,
          int type)>('SDL_GameControllerIsSensorEnabled');
  return sdlGameControllerIsSensorEnabledLookupFunction(gamecontroller, type);
}

///
/// Get the data rate (number of events per second) of a game controller
/// sensor.
///
/// \param gamecontroller The controller to query
/// \param type The type of sensor to query
/// \return the data rate, or 0.0f if the data rate is not available.
///
/// \since This function is available since SDL 2.0.16.
///
/// ```c
/// extern DECLSPEC float SDLCALL SDL_GameControllerGetSensorDataRate(SDL_GameController *gamecontroller, SDL_SensorType type)
/// ```
double sdlGameControllerGetSensorDataRate(
    Pointer<SdlGameController> gamecontroller, int type) {
  final sdlGameControllerGetSensorDataRateLookupFunction =
      libSdl2.lookupFunction<
          Float Function(Pointer<SdlGameController> gamecontroller, Int32 type),
          double Function(Pointer<SdlGameController> gamecontroller,
              int type)>('SDL_GameControllerGetSensorDataRate');
  return sdlGameControllerGetSensorDataRateLookupFunction(gamecontroller, type);
}

///
/// Get the current state of a game controller sensor.
///
/// The number of values and interpretation of the data is sensor dependent.
/// See SDL_sensor.h for the details for each type of sensor.
///
/// \param gamecontroller The controller to query
/// \param type The type of sensor to query
/// \param data A pointer filled with the current sensor state
/// \param num_values The number of values to write to data
/// \return 0 or -1 if an error occurred.
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerGetSensorData(SDL_GameController *gamecontroller, SDL_SensorType type, float *data, int num_values)
/// ```
int sdlGameControllerGetSensorData(Pointer<SdlGameController> gamecontroller,
    int type, Pointer<Float> data, int numValues) {
  final sdlGameControllerGetSensorDataLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller, Int32 type,
          Pointer<Float> data, Int32 numValues),
      int Function(
          Pointer<SdlGameController> gamecontroller,
          int type,
          Pointer<Float> data,
          int numValues)>('SDL_GameControllerGetSensorData');
  return sdlGameControllerGetSensorDataLookupFunction(
      gamecontroller, type, data, numValues);
}

///
/// Start a rumble effect on a game controller.
///
/// Each call to this function cancels any previous rumble effect, and calling
/// it with 0 intensity stops any rumbling.
///
/// \param gamecontroller The controller to vibrate
/// \param low_frequency_rumble The intensity of the low frequency (left)
/// rumble motor, from 0 to 0xFFFF
/// \param high_frequency_rumble The intensity of the high frequency (right)
/// rumble motor, from 0 to 0xFFFF
/// \param duration_ms The duration of the rumble effect, in milliseconds
/// \returns 0, or -1 if rumble isn't supported on this controller
///
/// \since This function is available since SDL 2.0.9.
///
/// \sa SDL_GameControllerHasRumble
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerRumble(SDL_GameController *gamecontroller, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms)
/// ```
int sdlGameControllerRumble(Pointer<SdlGameController> gamecontroller,
    int lowFrequencyRumble, int highFrequencyRumble, int durationMs) {
  final sdlGameControllerRumbleLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlGameController> gamecontroller,
          Uint16 lowFrequencyRumble,
          Uint16 highFrequencyRumble,
          Uint32 durationMs),
      int Function(
          Pointer<SdlGameController> gamecontroller,
          int lowFrequencyRumble,
          int highFrequencyRumble,
          int durationMs)>('SDL_GameControllerRumble');
  return sdlGameControllerRumbleLookupFunction(
      gamecontroller, lowFrequencyRumble, highFrequencyRumble, durationMs);
}

///
/// Start a rumble effect in the game controller's triggers.
///
/// Each call to this function cancels any previous trigger rumble effect, and
/// calling it with 0 intensity stops any rumbling.
///
/// Note that this is rumbling of the _triggers_ and not the game controller as
/// a whole. This is currently only supported on Xbox One controllers. If you
/// want the (more common) whole-controller rumble, use
/// SDL_GameControllerRumble() instead.
///
/// \param gamecontroller The controller to vibrate
/// \param left_rumble The intensity of the left trigger rumble motor, from 0
/// to 0xFFFF
/// \param right_rumble The intensity of the right trigger rumble motor, from 0
/// to 0xFFFF
/// \param duration_ms The duration of the rumble effect, in milliseconds
/// \returns 0, or -1 if trigger rumble isn't supported on this controller
///
/// \since This function is available since SDL 2.0.14.
///
/// \sa SDL_GameControllerHasRumbleTriggers
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerRumbleTriggers(SDL_GameController *gamecontroller, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms)
/// ```
int sdlGameControllerRumbleTriggers(Pointer<SdlGameController> gamecontroller,
    int leftRumble, int rightRumble, int durationMs) {
  final sdlGameControllerRumbleTriggersLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller,
          Uint16 leftRumble, Uint16 rightRumble, Uint32 durationMs),
      int Function(Pointer<SdlGameController> gamecontroller, int leftRumble,
          int rightRumble, int durationMs)>('SDL_GameControllerRumbleTriggers');
  return sdlGameControllerRumbleTriggersLookupFunction(
      gamecontroller, leftRumble, rightRumble, durationMs);
}

///
/// Query whether a game controller has an LED.
///
/// \param gamecontroller The controller to query
/// \returns SDL_TRUE, or SDL_FALSE if this controller does not have a
/// modifiable LED
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerHasLED(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerHasLed(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerHasLedLookupFunction = libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerHasLED');
  return sdlGameControllerHasLedLookupFunction(gamecontroller);
}

///
/// Query whether a game controller has rumble support.
///
/// \param gamecontroller The controller to query
/// \returns SDL_TRUE, or SDL_FALSE if this controller does not have rumble
/// support
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_GameControllerRumble
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerHasRumble(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerHasRumble(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerHasRumbleLookupFunction = libSdl2.lookupFunction<
          Int32 Function(Pointer<SdlGameController> gamecontroller),
          int Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerHasRumble');
  return sdlGameControllerHasRumbleLookupFunction(gamecontroller);
}

///
/// Query whether a game controller has rumble support on triggers.
///
/// \param gamecontroller The controller to query
/// \returns SDL_TRUE, or SDL_FALSE if this controller does not have trigger
/// rumble support
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_GameControllerRumbleTriggers
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerHasRumbleTriggers(SDL_GameController *gamecontroller)
/// ```
int sdlGameControllerHasRumbleTriggers(
    Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerHasRumbleTriggersLookupFunction =
      libSdl2.lookupFunction<
              Int32 Function(Pointer<SdlGameController> gamecontroller),
              int Function(Pointer<SdlGameController> gamecontroller)>(
          'SDL_GameControllerHasRumbleTriggers');
  return sdlGameControllerHasRumbleTriggersLookupFunction(gamecontroller);
}

///
/// Update a game controller's LED color.
///
/// \param gamecontroller The controller to update
/// \param red The intensity of the red LED
/// \param green The intensity of the green LED
/// \param blue The intensity of the blue LED
/// \returns 0, or -1 if this controller does not have a modifiable LED
///
/// \since This function is available since SDL 2.0.14.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerSetLED(SDL_GameController *gamecontroller, Uint8 red, Uint8 green, Uint8 blue)
/// ```
int sdlGameControllerSetLed(
    Pointer<SdlGameController> gamecontroller, int red, int green, int blue) {
  final sdlGameControllerSetLedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller, Uint8 red,
          Uint8 green, Uint8 blue),
      int Function(Pointer<SdlGameController> gamecontroller, int red,
          int green, int blue)>('SDL_GameControllerSetLED');
  return sdlGameControllerSetLedLookupFunction(
      gamecontroller, red, green, blue);
}

///
/// Send a controller specific effect packet
///
/// \param gamecontroller The controller to affect
/// \param data The data to send to the controller
/// \param size The size of the data to send to the controller
/// \returns 0, or -1 if this controller or driver doesn't support effect
/// packets
///
/// \since This function is available since SDL 2.0.16.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerSendEffect(SDL_GameController *gamecontroller, const void *data, int size)
/// ```
int sdlGameControllerSendEffect(
    Pointer<SdlGameController> gamecontroller, Pointer<Void> data, int size) {
  final sdlGameControllerSendEffectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlGameController> gamecontroller,
          Pointer<Void> data, Int32 size),
      int Function(Pointer<SdlGameController> gamecontroller,
          Pointer<Void> data, int size)>('SDL_GameControllerSendEffect');
  return sdlGameControllerSendEffectLookupFunction(gamecontroller, data, size);
}

///
/// Close a game controller previously opened with SDL_GameControllerOpen().
///
/// \param gamecontroller a game controller identifier previously returned by
/// SDL_GameControllerOpen()
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GameControllerOpen
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerClose(SDL_GameController *gamecontroller)
/// ```
void sdlGameControllerClose(Pointer<SdlGameController> gamecontroller) {
  final sdlGameControllerCloseLookupFunction = libSdl2.lookupFunction<
          Void Function(Pointer<SdlGameController> gamecontroller),
          void Function(Pointer<SdlGameController> gamecontroller)>(
      'SDL_GameControllerClose');
  return sdlGameControllerCloseLookupFunction(gamecontroller);
}

///
/// Return the sfSymbolsName for a given button on a game controller on Apple
/// platforms.
///
/// \param gamecontroller the controller to query
/// \param button a button on the game controller
/// \returns the sfSymbolsName or NULL if the name can't be found
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_GameControllerGetAppleSFSymbolsNameForAxis
///
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetAppleSFSymbolsNameForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
String sdlGameControllerGetAppleSfSymbolsNameForButton(
    Pointer<SdlGameController> gamecontroller, int button) {
  final sdlGameControllerGetAppleSfSymbolsNameForButtonLookupFunction =
      libSdl2.lookupFunction<
          Pointer<Utf8> Function(
              Pointer<SdlGameController> gamecontroller, Int32 button),
          Pointer<Utf8> Function(Pointer<SdlGameController> gamecontroller,
              int button)>('SDL_GameControllerGetAppleSFSymbolsNameForButton');
  return sdlGameControllerGetAppleSfSymbolsNameForButtonLookupFunction(
          gamecontroller, button)
      .toDartString();
}

///
/// Return the sfSymbolsName for a given axis on a game controller on Apple
/// platforms.
///
/// \param gamecontroller the controller to query
/// \param axis an axis on the game controller
/// \returns the sfSymbolsName or NULL if the name can't be found
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_GameControllerGetAppleSFSymbolsNameForButton
///
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetAppleSFSymbolsNameForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
String sdlGameControllerGetAppleSfSymbolsNameForAxis(
    Pointer<SdlGameController> gamecontroller, int axis) {
  final sdlGameControllerGetAppleSfSymbolsNameForAxisLookupFunction =
      libSdl2.lookupFunction<
          Pointer<Utf8> Function(
              Pointer<SdlGameController> gamecontroller, Int32 axis),
          Pointer<Utf8> Function(Pointer<SdlGameController> gamecontroller,
              int axis)>('SDL_GameControllerGetAppleSFSymbolsNameForAxis');
  return sdlGameControllerGetAppleSfSymbolsNameForAxisLookupFunction(
          gamecontroller, axis)
      .toDartString();
}
