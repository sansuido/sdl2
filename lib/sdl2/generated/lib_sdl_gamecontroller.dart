// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Add or update an existing mapping configuration
/// 
/// \return 1 if mapping is added, 0 if updated, -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerAddMapping( const char* mappingString )
/// ```
int SDL_GameControllerAddMapping(String mappingString) {
  final _SDL_GameControllerAddMapping = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? mappingString),
      int Function(Pointer<Utf8>? mappingString)>('SDL_GameControllerAddMapping');
  final _mappingStringPointer = mappingString.toNativeUtf8();
  final _result = _SDL_GameControllerAddMapping(_mappingStringPointer);
  calloc.free(_mappingStringPointer);
  return _result;
}

/// 
/// Get a mapping string for a GUID
/// 
/// \return the mapping string.  Must be freed with SDL_free.  Returns NULL if no mapping is available
/// 
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMappingForGUID( SDL_JoystickGUID guid )
/// ```
Pointer<Int8>? SDL_GameControllerMappingForGUID(Pointer<Void>? guid) {
  final _SDL_GameControllerMappingForGUID = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Void>? guid),
      Pointer<Int8>? Function(Pointer<Void>? guid)>('SDL_GameControllerMappingForGUID');
  return _SDL_GameControllerMappingForGUID(guid);
}

/// 
/// Get a mapping string for an open GameController
/// 
/// \return the mapping string.  Must be freed with SDL_free.  Returns NULL if no mapping is available
/// 
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMapping( SDL_GameController * gamecontroller )
/// ```
Pointer<Int8>? SDL_GameControllerMapping(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerMapping = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<SDL_GameController>? gamecontroller),
      Pointer<Int8>? Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerMapping');
  return _SDL_GameControllerMapping(gamecontroller);
}

/// 
/// Is the joystick on this index supported by the game controller interface?
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsGameController(int joystick_index)
/// ```
int SDL_IsGameController(int joystick_index) {
  final _SDL_IsGameController = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 joystick_index),
      int Function(int joystick_index)>('SDL_IsGameController');
  return _SDL_IsGameController(joystick_index);
}

/// 
/// Get the implementation dependent name of a game controller.
/// This can be called before any controllers are opened.
/// If no name can be found, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerNameForIndex(int joystick_index)
/// ```
String SDL_GameControllerNameForIndex(int joystick_index) {
  final _SDL_GameControllerNameForIndex = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 joystick_index),
      Pointer<Utf8>? Function(int joystick_index)>('SDL_GameControllerNameForIndex');
  return _SDL_GameControllerNameForIndex(joystick_index)!.toDartString();
}

/// 
/// Open a game controller for use.
/// The index passed as an argument refers to the N'th game controller on the system.
/// This index is the value which will identify this controller in future controller
/// events.
/// 
/// \return A controller identifier, or NULL if an error occurred.
/// 
/// ```c
/// extern DECLSPEC SDL_GameController *SDLCALL SDL_GameControllerOpen(int joystick_index)
/// ```
Pointer<SDL_GameController>? SDL_GameControllerOpen(int joystick_index) {
  final _SDL_GameControllerOpen = DLL_SDL2.lookupFunction<
      Pointer<SDL_GameController>? Function(Int32 joystick_index),
      Pointer<SDL_GameController>? Function(int joystick_index)>('SDL_GameControllerOpen');
  return _SDL_GameControllerOpen(joystick_index);
}

/// 
/// Return the name for this currently opened controller
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerName(SDL_GameController *gamecontroller)
/// ```
String SDL_GameControllerName(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_GameController>? gamecontroller),
      Pointer<Utf8>? Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerName');
  return _SDL_GameControllerName(gamecontroller)!.toDartString();
}

/// 
/// Returns SDL_TRUE if the controller has been opened and currently connected,
/// or SDL_FALSE if it has not.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerGetAttached(SDL_GameController *gamecontroller)
/// ```
int SDL_GameControllerGetAttached(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerGetAttached = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_GameController>? gamecontroller),
      int Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerGetAttached');
  return _SDL_GameControllerGetAttached(gamecontroller);
}

/// 
/// Get the underlying joystick object used by a controller
/// 
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_GameControllerGetJoystick(SDL_GameController *gamecontroller)
/// ```
Pointer<SDL_Joystick>? SDL_GameControllerGetJoystick(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerGetJoystick = DLL_SDL2.lookupFunction<
      Pointer<SDL_Joystick>? Function(Pointer<SDL_GameController>? gamecontroller),
      Pointer<SDL_Joystick>? Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerGetJoystick');
  return _SDL_GameControllerGetJoystick(gamecontroller);
}

/// 
/// Enable/disable controller event polling.
/// 
/// If controller events are disabled, you must call SDL_GameControllerUpdate()
/// yourself and check the state of the controller when you want controller
/// information.
/// 
/// The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerEventState(int state)
/// ```
int SDL_GameControllerEventState(int state) {
  final _SDL_GameControllerEventState = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_GameControllerEventState');
  return _SDL_GameControllerEventState(state);
}

/// 
/// Update the current state of the open game controllers.
/// 
/// This is called automatically by the event loop if any game controller
/// events are enabled.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerUpdate(void)
/// ```
void SDL_GameControllerUpdate() {
  final _SDL_GameControllerUpdate = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GameControllerUpdate');
  return _SDL_GameControllerUpdate();
}

/// 
/// turn this string into a axis mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerAxis SDLCALL SDL_GameControllerGetAxisFromString(const char *pchString)
/// ```
int SDL_GameControllerGetAxisFromString(String pchString) {
  final _SDL_GameControllerGetAxisFromString = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? pchString),
      int Function(Pointer<Utf8>? pchString)>('SDL_GameControllerGetAxisFromString');
  final _pchStringPointer = pchString.toNativeUtf8();
  final _result = _SDL_GameControllerGetAxisFromString(_pchStringPointer);
  calloc.free(_pchStringPointer);
  return _result;
}

/// 
/// turn this axis enum into a string mapping
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForAxis(SDL_GameControllerAxis axis)
/// ```
String SDL_GameControllerGetStringForAxis(int axis) {
  final _SDL_GameControllerGetStringForAxis = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 axis),
      Pointer<Utf8>? Function(int axis)>('SDL_GameControllerGetStringForAxis');
  return _SDL_GameControllerGetStringForAxis(axis)!.toDartString();
}

/// 
/// Get the SDL joystick layer binding for this controller button mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
Pointer<Void>? SDL_GameControllerGetBindForAxis(Pointer<SDL_GameController>? gamecontroller, int axis) {
  final _SDL_GameControllerGetBindForAxis = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, Int32 axis),
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, int axis)>('SDL_GameControllerGetBindForAxis');
  return _SDL_GameControllerGetBindForAxis(gamecontroller, axis);
}

/// 
/// Get the current state of an axis control on a game controller.
/// 
/// The state is a value ranging from -32768 to 32767.
/// 
/// The axis indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Sint16 SDLCALL SDL_GameControllerGetAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
int SDL_GameControllerGetAxis(Pointer<SDL_GameController>? gamecontroller, int axis) {
  final _SDL_GameControllerGetAxis = DLL_SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_GameController>? gamecontroller, Int32 axis),
      int Function(Pointer<SDL_GameController>? gamecontroller, int axis)>('SDL_GameControllerGetAxis');
  return _SDL_GameControllerGetAxis(gamecontroller, axis);
}

/// 
/// turn this string into a button mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerButton SDLCALL SDL_GameControllerGetButtonFromString(const char *pchString)
/// ```
int SDL_GameControllerGetButtonFromString(String pchString) {
  final _SDL_GameControllerGetButtonFromString = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? pchString),
      int Function(Pointer<Utf8>? pchString)>('SDL_GameControllerGetButtonFromString');
  final _pchStringPointer = pchString.toNativeUtf8();
  final _result = _SDL_GameControllerGetButtonFromString(_pchStringPointer);
  calloc.free(_pchStringPointer);
  return _result;
}

/// 
/// turn this button enum into a string mapping
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForButton(SDL_GameControllerButton button)
/// ```
String SDL_GameControllerGetStringForButton(int button) {
  final _SDL_GameControllerGetStringForButton = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 button),
      Pointer<Utf8>? Function(int button)>('SDL_GameControllerGetStringForButton');
  return _SDL_GameControllerGetStringForButton(button)!.toDartString();
}

/// 
/// Get the SDL joystick layer binding for this controller button mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
Pointer<Void>? SDL_GameControllerGetBindForButton(Pointer<SDL_GameController>? gamecontroller, int button) {
  final _SDL_GameControllerGetBindForButton = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, Int32 button),
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, int button)>('SDL_GameControllerGetBindForButton');
  return _SDL_GameControllerGetBindForButton(gamecontroller, button);
}

/// 
/// Get the current state of a button on a game controller.
/// 
/// The button indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_GameControllerGetButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
int SDL_GameControllerGetButton(Pointer<SDL_GameController>? gamecontroller, int button) {
  final _SDL_GameControllerGetButton = DLL_SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_GameController>? gamecontroller, Int32 button),
      int Function(Pointer<SDL_GameController>? gamecontroller, int button)>('SDL_GameControllerGetButton');
  return _SDL_GameControllerGetButton(gamecontroller, button);
}

/// 
/// Close a controller previously opened with SDL_GameControllerOpen().
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerClose(SDL_GameController *gamecontroller)
/// ```
void SDL_GameControllerClose(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerClose = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_GameController>? gamecontroller),
      void Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerClose');
  return _SDL_GameControllerClose(gamecontroller);
}

