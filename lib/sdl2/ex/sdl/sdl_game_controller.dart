import 'dart:ffi';

import '../../generated/const_sdl.dart';
import '../../generated/lib_sdl_gamecontroller.dart';
import '../../generated/struct_sdl.dart';

extension SdlGameControllerEx on SdlGameController {
  // lib_sdl_gamecontroller.dart

  static int addMappingsFromRw(Pointer<SdlRWops> rw, int freerw) {
    // 38
    return sdlGameControllerAddMappingsFromRw(rw, freerw);
  }

  static int addMapping(String? mappingString) {
    // 77
    return sdlGameControllerAddMapping(mappingString);
  }

  static int numMappings() {
    // 100
    return sdlGameControllerNumMappings();
  }

  static Pointer<Int8> mappingForIndex(int mappingIndex) {
    // 118
    return sdlGameControllerMappingForIndex(mappingIndex);
  }

  static Pointer<Int8> mappingForGuid(SdlGuid guid) {
    // 143
    return sdlGameControllerMappingForGuid(guid);
  }

  static bool isGameController(int joystickIndex) {
    // 198
    return sdlIsGameController(joystickIndex) == SDL_TRUE;
  }

  static String? nameForIndex(int joystickIndex) {
    // 227
    return sdlGameControllerNameForIndex(joystickIndex);
  }

  static String? pathForIndex(int joystickIndex) {
    // 256
    return sdlGameControllerPathForIndex(joystickIndex);
  }

  static int typeForIndex(int joystickIndex) {
    // 279
    return sdlGameControllerTypeForIndex(joystickIndex);
  }

  static Pointer<Int8> mappingForDeviceIndex(int joystickIndex) {
    // 301
    return sdlGameControllerMappingForDeviceIndex(joystickIndex);
  }

  static Pointer<SdlGameController> open(int joystickIndex) {
    // 335
    return sdlGameControllerOpen(joystickIndex);
  }

  static Pointer<SdlGameController> fromInstanceId(int joyid) {
    // 355
    return sdlGameControllerFromInstanceId(joyid);
  }

  static Pointer<SdlGameController> fromPlayerIndex(int playerIndex) {
    // 381
    return sdlGameControllerFromPlayerIndex(playerIndex);
  }

  static int eventState(int state) {
    return sdlGameControllerEventState(state);
  }

  static void update() {
    // 715
    sdlGameControllerUpdate();
  }

  static int getAxisFromString(String? str) {
    // 745
    return sdlGameControllerGetAxisFromString(str);
  }

  static String? getStringForAxis(int axis) {
    // 774
    return sdlGameControllerGetStringForAxis(axis);
  }

  static int getButtonFromString(String? str) {
    // 880
    return sdlGameControllerGetButtonFromString(str);
  }

  static String? getStringForButton(int button) {
    // 909
    return sdlGameControllerGetStringForButton(button);
  }
}

extension SdlGameControllerPointerEx on Pointer<SdlGameController> {
  // lib_sdl_gamecontroller.dart
  Pointer<Int8> mapping() {
    // 170
    return sdlGameControllerMapping(this);
  }

  String? name() {
    // 408
    return sdlGameControllerName(this);
  }

  String? path() {
    // 434
    return sdlGameControllerPath(this);
  }

  int getType() {
    // 456
    return sdlGameControllerGetType(this);
  }

  int getPlayerIndex() {
    // 477
    return sdlGameControllerGetPlayerIndex(this);
  }

  void setPlayerIndex(int playerIndex) {
    // 497
    sdlGameControllerSetPlayerIndex(this, playerIndex);
  }

  int getVendor() {
    // 521
    return sdlGameControllerGetVendor(this);
  }

  int getProduct() {
    // 542
    return sdlGameControllerGetProduct(this);
  }

  int getProductVersion() {
    // 563
    return sdlGameControllerGetProductVersion(this);
  }

  int getFirmwareVersion() {
    // 586
    return sdlGameControllerGetFirmwareVersion(this);
  }

  String? getSerial() {
    // 610
    return sdlGameControllerGetSerial(this);
  }

  bool getAttached() {
    // 635
    return sdlGameControllerGetAttached(this) == SDL_TRUE;
  }

  Pointer<SdlJoystick> getJoystick() {
    // 665
    return sdlGameControllerGetJoystick(this);
  }

  SdlGameControllerButtonBind getBindForAxis(int axis) {
    // 799
    return sdlGameControllerGetBindForAxis(this, axis);
  }

  bool hasAxis(int axis) {
    // 825
    return sdlGameControllerHasAxis(this, axis) == SDL_TRUE;
  }

  int getAxis(int axis) {
    // 854
    return sdlGameControllerGetAxis(this, axis);
  }

  SdlGameControllerButtonBind getBindForButton(int button) {
    // 935
    return sdlGameControllerGetBindForButton(this, button);
  }

  bool hasButton(int button) {
    // 963
    return sdlGameControllerHasButton(this, button) == SDL_TRUE;
  }

  int getButton(int button) {
    // 987
    return sdlGameControllerGetButton(this, button);
  }

  int getNumTouchpads() {
    // 1004
    return sdlGameControllerGetNumTouchpads(this);
  }

  int getNumTouchpadFingers(int touchpad) {
    // 1022
    return sdlGameControllerGetNumTouchpadFingers(this, touchpad);
  }

  int getTouchpadFinger(int touchpad, int finger, Pointer<Uint8> state,
      Pointer<Float> x, Pointer<Float> y, Pointer<Float> pressure) {
    // 1042
    return sdlGameControllerGetTouchpadFinger(
        this, touchpad, finger, state, x, y, pressure);
  }

  bool hasSensor(int type) {
    // 1084
    return sdlGameControllerHasSensor(this, type) == SDL_TRUE;
  }

  int setSensorEnabled(int type, int enabled) {
    // 1106
    return sdlGameControllerSetSensorEnabled(this, type, enabled);
  }

  bool isSensorEnabled(int type) {
    // 1130
    return sdlGameControllerIsSensorEnabled(this, type) == SDL_TRUE;
  }

  double getSensorDataRate(int type) {
    // 1152
    return sdlGameControllerGetSensorDataRate(this, type);
  }

  int getSensorData(int type, Pointer<Float> data, int numValues) {
    // 1179
    return sdlGameControllerGetSensorData(this, type, data, numValues);
  }

  int getSensorDataWithTimestamp(
      int type, Pointer<Uint64> timestamp, Pointer<Float> data, int numValues) {
    // 1213
    return sdlGameControllerGetSensorDataWithTimestamp(
        this, type, timestamp, data, numValues);
  }

  int rumble(int lowFrequencyRumble, int highFrequencyRumble, int durationMs) {
    // 1254
    return sdlGameControllerRumble(
        this, lowFrequencyRumble, highFrequencyRumble, durationMs);
  }

  int rumbleTriggers(int leftRumble, int rightRumble, int durationMs) {
    // 1297
    return sdlGameControllerRumbleTriggers(
        this, leftRumble, rightRumble, durationMs);
  }

  bool hasLed() {
    // 1320
    return sdlGameControllerHasLed(this) == SDL_TRUE;
  }

  bool hasRumble() {
    // 1342
    return sdlGameControllerHasRumble(this) == SDL_TRUE;
  }

  bool hasRumbleTriggers() {
    // 1364
    return sdlGameControllerHasRumbleTriggers(this) == SDL_TRUE;
  }

  int setLed(int red, int green, int blue) {
    // 1388
    return sdlGameControllerSetLed(this, red, green, blue);
  }

  int sendEffect(Pointer<NativeType> data, int size) {
    // 1413
    return sdlGameControllerSendEffect(this, data, size);
  }

  void close() {
    // 1436
    sdlGameControllerClose(this);
  }

  String? getAppleSfSymbolsNameForButton(int button) {
    // 1459
    return sdlGameControllerGetAppleSfSymbolsNameForButton(this, button);
  }

  String? getAppleSfSymbolsNameForAxis(int axis) {
    // 1487
    return sdlGameControllerGetAppleSfSymbolsNameForAxis(this, axis);
  }
}
