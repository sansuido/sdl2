// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

// SDL_AssertData
final class SdlAssertData extends Struct {
  // [0]+(4)
  @Int32()
  external int alwaysIgnore;
  // [4]+(4)
  @Uint32()
  external int triggerCount;
  // [8]+(8)
  external Pointer<Utf8> condition;
  // [16]+(8)
  external Pointer<Utf8> filename;
  // [24]+(4)
  @Int32()
  external int linenum;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [32]+(8)
  external Pointer<Utf8> function;
  // [40]+(8)
  external Pointer<SdlAssertData> next;
}

// SDL_atomic_t
final class SdlAtomicT extends Struct {
  // [0]+(4)
  @Int32()
  external int value;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_AudioSpec
final class SdlAudioSpec extends Struct {
  // [0]+(4)
  @Int32()
  external int freq;
  // [4]+(2)
  @Uint16()
  external int format;
  // [6]+(1)
  @Uint8()
  external int channels;
  // [7]+(1)
  @Uint8()
  external int silence;
  // [8]+(2)
  @Uint16()
  external int samples;
  // [10]+(2)
  @Uint16()
  external int padding;
  // [12]+(4)
  @Uint32()
  external int size;
  // [16]+(0)
  // [16]+(8)
  external Pointer<NativeType> userdata;
}

extension SdlAudioSpecExtension on Pointer<SdlAudioSpec> {
  Pointer<SdlAudioCallback> get callback =>
      cast<Uint8>().elementAt(16).cast<SdlAudioCallback>();
}

// SDL_AudioCVT
final class SdlAudioCvt extends Struct {
  // [0]+(4)
  @Int32()
  external int needed;
  // [4]+(2)
  @Uint16()
  external int srcFormat;
  // [6]+(2)
  @Uint16()
  external int dstFormat;
  // [8]+(8)
  @Double()
  external double rateIncr;
  // [16]+(8)
  external Pointer<Uint8> buf;
  // [24]+(4)
  @Int32()
  external int len;
  // [28]+(4)
  @Int32()
  external int lenCvt;
  // [32]+(4)
  @Int32()
  external int lenMult;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [40]+(8)
  @Double()
  external double lenRatio;
  // [48]+(0*10)
  // [48]+(4)
  @Int32()
  external int filterIndex;
  // [] +(4)
  @Uint32()
  external int blank_2;
}

extension SdlAudioCvtExtension on Pointer<SdlAudioCvt> {
  List<SdlAudioFilter> get filters {
    var list = <SdlAudioFilter>[];
    for (var i = 0; i < 10; i++) {
      list.add(
          cast<Uint8>().elementAt(48 + i * 0).cast<SdlAudioFilter>().value);
    }
    return list;
  }
}

// SDL_AudioStream
final class SdlAudioStream extends Opaque {}

// SDL_CommonEvent
final class SdlCommonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

// SDL_DisplayEvent
final class SdlDisplayEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int display;
  // [12]+(1)
  @Uint8()
  external int event;
  // [13]+(1)
  @Uint8()
  external int padding1;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
  // [16]+(4)
  @Int32()
  external int data1;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_WindowEvent
final class SdlWindowEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(1)
  @Uint8()
  external int event;
  // [13]+(1)
  @Uint8()
  external int padding1;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
  // [16]+(4)
  @Int32()
  external int data1;
  // [20]+(4)
  @Int32()
  external int data2;
}

// SDL_KeyboardEvent
final class SdlKeyboardEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(1)
  @Uint8()
  external int state;
  // [13]+(1)
  @Uint8()
  external int repeat;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
  // [16]+(16)
  @Uint64()
  external int keysym_1;
  @Uint64()
  external int keysym_2;
}

extension SdlKeyboardEventExtension on Pointer<SdlKeyboardEvent> {
  Pointer<SdlKeysym> get keysym =>
      cast<Uint8>().elementAt(16).cast<SdlKeysym>();
}

// SDL_TextEditingEvent
final class SdlTextEditingEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(1*32)
  @Int8()
  external int text_1;
  @Int8()
  external int text_2;
  @Int8()
  external int text_3;
  @Int8()
  external int text_4;
  @Int8()
  external int text_5;
  @Int8()
  external int text_6;
  @Int8()
  external int text_7;
  @Int8()
  external int text_8;
  @Int8()
  external int text_9;
  @Int8()
  external int text_10;
  @Int8()
  external int text_11;
  @Int8()
  external int text_12;
  @Int8()
  external int text_13;
  @Int8()
  external int text_14;
  @Int8()
  external int text_15;
  @Int8()
  external int text_16;
  @Int8()
  external int text_17;
  @Int8()
  external int text_18;
  @Int8()
  external int text_19;
  @Int8()
  external int text_20;
  @Int8()
  external int text_21;
  @Int8()
  external int text_22;
  @Int8()
  external int text_23;
  @Int8()
  external int text_24;
  @Int8()
  external int text_25;
  @Int8()
  external int text_26;
  @Int8()
  external int text_27;
  @Int8()
  external int text_28;
  @Int8()
  external int text_29;
  @Int8()
  external int text_30;
  @Int8()
  external int text_31;
  @Int8()
  external int text_32;
  // [44]+(4)
  @Int32()
  external int start;
  // [48]+(4)
  @Int32()
  external int length;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_TextEditingExtEvent
final class SdlTextEditingExtEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [16]+(8)
  external Pointer<Int8> text;
  // [24]+(4)
  @Int32()
  external int start;
  // [28]+(4)
  @Int32()
  external int length;
}

// SDL_TextInputEvent
final class SdlTextInputEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(1*32)
  @Int8()
  external int text_1;
  @Int8()
  external int text_2;
  @Int8()
  external int text_3;
  @Int8()
  external int text_4;
  @Int8()
  external int text_5;
  @Int8()
  external int text_6;
  @Int8()
  external int text_7;
  @Int8()
  external int text_8;
  @Int8()
  external int text_9;
  @Int8()
  external int text_10;
  @Int8()
  external int text_11;
  @Int8()
  external int text_12;
  @Int8()
  external int text_13;
  @Int8()
  external int text_14;
  @Int8()
  external int text_15;
  @Int8()
  external int text_16;
  @Int8()
  external int text_17;
  @Int8()
  external int text_18;
  @Int8()
  external int text_19;
  @Int8()
  external int text_20;
  @Int8()
  external int text_21;
  @Int8()
  external int text_22;
  @Int8()
  external int text_23;
  @Int8()
  external int text_24;
  @Int8()
  external int text_25;
  @Int8()
  external int text_26;
  @Int8()
  external int text_27;
  @Int8()
  external int text_28;
  @Int8()
  external int text_29;
  @Int8()
  external int text_30;
  @Int8()
  external int text_31;
  @Int8()
  external int text_32;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_MouseMotionEvent
final class SdlMouseMotionEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(4)
  @Uint32()
  external int which;
  // [16]+(4)
  @Uint32()
  external int state;
  // [20]+(4)
  @Int32()
  external int x;
  // [24]+(4)
  @Int32()
  external int y;
  // [28]+(4)
  @Int32()
  external int xrel;
  // [32]+(4)
  @Int32()
  external int yrel;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_MouseButtonEvent
final class SdlMouseButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(4)
  @Uint32()
  external int which;
  // [16]+(1)
  @Uint8()
  external int button;
  // [17]+(1)
  @Uint8()
  external int state;
  // [18]+(1)
  @Uint8()
  external int clicks;
  // [19]+(1)
  @Uint8()
  external int padding1;
  // [20]+(4)
  @Int32()
  external int x;
  // [24]+(4)
  @Int32()
  external int y;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_MouseWheelEvent
final class SdlMouseWheelEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(4)
  @Uint32()
  external int which;
  // [16]+(4)
  @Int32()
  external int x;
  // [20]+(4)
  @Int32()
  external int y;
  // [24]+(4)
  @Uint32()
  external int direction;
  // [28]+(4)
  @Float()
  external double preciseX;
  // [32]+(4)
  @Float()
  external double preciseY;
  // [36]+(4)
  @Int32()
  external int mouseX;
  // [40]+(4)
  @Int32()
  external int mouseY;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_JoyAxisEvent
final class SdlJoyAxisEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int axis;
  // [13]+(1)
  @Uint8()
  external int padding1;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
  // [16]+(2)
  @Int16()
  external int value;
  // [18]+(2)
  @Uint16()
  external int padding4;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_JoyBallEvent
final class SdlJoyBallEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int ball;
  // [13]+(1)
  @Uint8()
  external int padding1;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
  // [16]+(2)
  @Int16()
  external int xrel;
  // [18]+(2)
  @Int16()
  external int yrel;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_JoyHatEvent
final class SdlJoyHatEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int hat;
  // [13]+(1)
  @Uint8()
  external int value;
  // [14]+(1)
  @Uint8()
  external int padding1;
  // [15]+(1)
  @Uint8()
  external int padding2;
}

// SDL_JoyButtonEvent
final class SdlJoyButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int button;
  // [13]+(1)
  @Uint8()
  external int state;
  // [14]+(1)
  @Uint8()
  external int padding1;
  // [15]+(1)
  @Uint8()
  external int padding2;
}

// SDL_JoyDeviceEvent
final class SdlJoyDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_JoyBatteryEvent
final class SdlJoyBatteryEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(4)
  @Int32()
  external int level;
}

// SDL_ControllerAxisEvent
final class SdlControllerAxisEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int axis;
  // [13]+(1)
  @Uint8()
  external int padding1;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
  // [16]+(2)
  @Int16()
  external int value;
  // [18]+(2)
  @Uint16()
  external int padding4;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_ControllerButtonEvent
final class SdlControllerButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int button;
  // [13]+(1)
  @Uint8()
  external int state;
  // [14]+(1)
  @Uint8()
  external int padding1;
  // [15]+(1)
  @Uint8()
  external int padding2;
}

// SDL_ControllerDeviceEvent
final class SdlControllerDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_ControllerTouchpadEvent
final class SdlControllerTouchpadEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(4)
  @Int32()
  external int touchpad;
  // [16]+(4)
  @Int32()
  external int finger;
  // [20]+(4)
  @Float()
  external double x;
  // [24]+(4)
  @Float()
  external double y;
  // [28]+(4)
  @Float()
  external double pressure;
}

// SDL_ControllerSensorEvent
final class SdlControllerSensorEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(4)
  @Int32()
  external int sensor;
  // [16]+(4*3)
  @Float()
  external double data_1;
  @Float()
  external double data_2;
  @Float()
  external double data_3;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [32]+(8)
  @Uint64()
  external int timestampUs;
}

// SDL_AudioDeviceEvent
final class SdlAudioDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int which;
  // [12]+(1)
  @Uint8()
  external int iscapture;
  // [13]+(1)
  @Uint8()
  external int padding1;
  // [14]+(1)
  @Uint8()
  external int padding2;
  // [15]+(1)
  @Uint8()
  external int padding3;
}

// SDL_TouchFingerEvent
final class SdlTouchFingerEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  @Int64()
  external int touchId;
  // [16]+(8)
  @Int64()
  external int fingerId;
  // [24]+(4)
  @Float()
  external double x;
  // [28]+(4)
  @Float()
  external double y;
  // [32]+(4)
  @Float()
  external double dx;
  // [36]+(4)
  @Float()
  external double dy;
  // [40]+(4)
  @Float()
  external double pressure;
  // [44]+(4)
  @Uint32()
  external int windowId;
}

// SDL_MultiGestureEvent
final class SdlMultiGestureEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  @Int64()
  external int touchId;
  // [16]+(4)
  @Float()
  external double dTheta;
  // [20]+(4)
  @Float()
  external double dDist;
  // [24]+(4)
  @Float()
  external double x;
  // [28]+(4)
  @Float()
  external double y;
  // [32]+(2)
  @Uint16()
  external int numFingers;
  // [34]+(2)
  @Uint16()
  external int padding;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_DollarGestureEvent
final class SdlDollarGestureEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  @Int64()
  external int touchId;
  // [16]+(8)
  @Int64()
  external int gestureId;
  // [24]+(4)
  @Uint32()
  external int numFingers;
  // [28]+(4)
  @Float()
  external double error;
  // [32]+(4)
  @Float()
  external double x;
  // [36]+(4)
  @Float()
  external double y;
}

// SDL_DropEvent
final class SdlDropEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  external Pointer<Int8> file;
  // [16]+(4)
  @Uint32()
  external int windowId;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_SensorEvent
final class SdlSensorEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
  // [12]+(4*6)
  @Float()
  external double data_1;
  @Float()
  external double data_2;
  @Float()
  external double data_3;
  @Float()
  external double data_4;
  @Float()
  external double data_5;
  @Float()
  external double data_6;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [40]+(8)
  @Uint64()
  external int timestampUs;
}

// SDL_QuitEvent
final class SdlQuitEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

// SDL_OSEvent
final class SdlOsEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

// SDL_UserEvent
final class SdlUserEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowId;
  // [12]+(4)
  @Int32()
  external int code;
  // [16]+(8)
  external Pointer<NativeType> data1;
  // [24]+(8)
  external Pointer<NativeType> data2;
}

// SDL_SysWMmsg
final class SdlSysWMmsg extends Opaque {}

// SDL_SysWMEvent
final class SdlSysWmEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  external Pointer<SdlSysWMmsg> msg;
}

// SDL_Event
final class SdlEvent extends Struct {
  // [0]+(64)
  @Uint64()
  external int union_1;
  @Uint64()
  external int union_2;
  @Uint64()
  external int union_3;
  @Uint64()
  external int union_4;
  @Uint64()
  external int union_5;
  @Uint64()
  external int union_6;
  @Uint64()
  external int union_7;
  @Uint64()
  external int union_8;
}

extension SdlEventExtension on Pointer<SdlEvent> {
  int get type => cast<Uint8>().elementAt(0).cast<Uint32>().value;
  Pointer<SdlCommonEvent> get common =>
      cast<Uint8>().elementAt(0).cast<SdlCommonEvent>();
  Pointer<SdlDisplayEvent> get display =>
      cast<Uint8>().elementAt(0).cast<SdlDisplayEvent>();
  Pointer<SdlWindowEvent> get window =>
      cast<Uint8>().elementAt(0).cast<SdlWindowEvent>();
  Pointer<SdlKeyboardEvent> get key =>
      cast<Uint8>().elementAt(0).cast<SdlKeyboardEvent>();
  Pointer<SdlTextEditingEvent> get edit =>
      cast<Uint8>().elementAt(0).cast<SdlTextEditingEvent>();
  Pointer<SdlTextEditingExtEvent> get editExt =>
      cast<Uint8>().elementAt(0).cast<SdlTextEditingExtEvent>();
  Pointer<SdlTextInputEvent> get text =>
      cast<Uint8>().elementAt(0).cast<SdlTextInputEvent>();
  Pointer<SdlMouseMotionEvent> get motion =>
      cast<Uint8>().elementAt(0).cast<SdlMouseMotionEvent>();
  Pointer<SdlMouseButtonEvent> get button =>
      cast<Uint8>().elementAt(0).cast<SdlMouseButtonEvent>();
  Pointer<SdlMouseWheelEvent> get wheel =>
      cast<Uint8>().elementAt(0).cast<SdlMouseWheelEvent>();
  Pointer<SdlJoyAxisEvent> get jaxis =>
      cast<Uint8>().elementAt(0).cast<SdlJoyAxisEvent>();
  Pointer<SdlJoyBallEvent> get jball =>
      cast<Uint8>().elementAt(0).cast<SdlJoyBallEvent>();
  Pointer<SdlJoyHatEvent> get jhat =>
      cast<Uint8>().elementAt(0).cast<SdlJoyHatEvent>();
  Pointer<SdlJoyButtonEvent> get jbutton =>
      cast<Uint8>().elementAt(0).cast<SdlJoyButtonEvent>();
  Pointer<SdlJoyDeviceEvent> get jdevice =>
      cast<Uint8>().elementAt(0).cast<SdlJoyDeviceEvent>();
  Pointer<SdlJoyBatteryEvent> get jbattery =>
      cast<Uint8>().elementAt(0).cast<SdlJoyBatteryEvent>();
  Pointer<SdlControllerAxisEvent> get caxis =>
      cast<Uint8>().elementAt(0).cast<SdlControllerAxisEvent>();
  Pointer<SdlControllerButtonEvent> get cbutton =>
      cast<Uint8>().elementAt(0).cast<SdlControllerButtonEvent>();
  Pointer<SdlControllerDeviceEvent> get cdevice =>
      cast<Uint8>().elementAt(0).cast<SdlControllerDeviceEvent>();
  Pointer<SdlControllerTouchpadEvent> get ctouchpad =>
      cast<Uint8>().elementAt(0).cast<SdlControllerTouchpadEvent>();
  Pointer<SdlControllerSensorEvent> get csensor =>
      cast<Uint8>().elementAt(0).cast<SdlControllerSensorEvent>();
  Pointer<SdlAudioDeviceEvent> get adevice =>
      cast<Uint8>().elementAt(0).cast<SdlAudioDeviceEvent>();
  Pointer<SdlSensorEvent> get sensor =>
      cast<Uint8>().elementAt(0).cast<SdlSensorEvent>();
  Pointer<SdlQuitEvent> get quit =>
      cast<Uint8>().elementAt(0).cast<SdlQuitEvent>();
  Pointer<SdlUserEvent> get user =>
      cast<Uint8>().elementAt(0).cast<SdlUserEvent>();
  Pointer<SdlSysWmEvent> get syswm =>
      cast<Uint8>().elementAt(0).cast<SdlSysWmEvent>();
  Pointer<SdlTouchFingerEvent> get tfinger =>
      cast<Uint8>().elementAt(0).cast<SdlTouchFingerEvent>();
  Pointer<SdlMultiGestureEvent> get mgesture =>
      cast<Uint8>().elementAt(0).cast<SdlMultiGestureEvent>();
  Pointer<SdlDollarGestureEvent> get dgesture =>
      cast<Uint8>().elementAt(0).cast<SdlDollarGestureEvent>();
  Pointer<SdlDropEvent> get drop =>
      cast<Uint8>().elementAt(0).cast<SdlDropEvent>();
  int get padding => cast<Uint8>().elementAt(0).cast<Uint8>().value;
}

// SDL_GameController
final class SdlGameController extends Opaque {}

// SDL_GameControllerButtonBind
final class SdlGameControllerButtonBind extends Struct {
  // [0]+(4)
  @Int32()
  external int bindType;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<NativeType> value;
}

// SDL_GUID
final class SdlGuid extends Struct {
  // [0]+(1*16)
  @Uint8()
  external int data_1;
  @Uint8()
  external int data_2;
  @Uint8()
  external int data_3;
  @Uint8()
  external int data_4;
  @Uint8()
  external int data_5;
  @Uint8()
  external int data_6;
  @Uint8()
  external int data_7;
  @Uint8()
  external int data_8;
  @Uint8()
  external int data_9;
  @Uint8()
  external int data_10;
  @Uint8()
  external int data_11;
  @Uint8()
  external int data_12;
  @Uint8()
  external int data_13;
  @Uint8()
  external int data_14;
  @Uint8()
  external int data_15;
  @Uint8()
  external int data_16;
}

// SDL_Haptic
final class SdlHaptic extends Opaque {}

// SDL_HapticDirection
final class SdlHapticDirection extends Struct {
  // [0]+(1)
  @Uint8()
  external int type;
  // [] +(3)
  @Uint16()
  external int blank_1;
  @Uint8()
  external int blank_2;
  // [4]+(4*3)
  @Int32()
  external int dir_1;
  @Int32()
  external int dir_2;
  @Int32()
  external int dir_3;
}

// SDL_HapticConstant
final class SdlHapticConstant extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [] +(6)
  @Uint32()
  external int blank_1;
  @Uint16()
  external int blank_2;
  // [8]+(16)
  @Uint64()
  external int direction_1;
  @Uint64()
  external int direction_2;
  // [24]+(4)
  @Uint32()
  external int length;
  // [28]+(2)
  @Uint16()
  external int delay;
  // [30]+(2)
  @Uint16()
  external int button;
  // [32]+(2)
  @Uint16()
  external int interval;
  // [34]+(2)
  @Int16()
  external int level;
  // [36]+(2)
  @Uint16()
  external int attackLength;
  // [38]+(2)
  @Uint16()
  external int attackLevel;
  // [40]+(2)
  @Uint16()
  external int fadeLength;
  // [42]+(2)
  @Uint16()
  external int fadeLevel;
  // [] +(4)
  @Uint32()
  external int blank_3;
}

extension SdlHapticConstantExtension on Pointer<SdlHapticConstant> {
  Pointer<SdlHapticDirection> get direction =>
      cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

// SDL_HapticPeriodic
final class SdlHapticPeriodic extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [] +(6)
  @Uint32()
  external int blank_1;
  @Uint16()
  external int blank_2;
  // [8]+(16)
  @Uint64()
  external int direction_1;
  @Uint64()
  external int direction_2;
  // [24]+(4)
  @Uint32()
  external int length;
  // [28]+(2)
  @Uint16()
  external int delay;
  // [30]+(2)
  @Uint16()
  external int button;
  // [32]+(2)
  @Uint16()
  external int interval;
  // [34]+(2)
  @Uint16()
  external int period;
  // [36]+(2)
  @Int16()
  external int magnitude;
  // [38]+(2)
  @Int16()
  external int offset;
  // [40]+(2)
  @Uint16()
  external int phase;
  // [42]+(2)
  @Uint16()
  external int attackLength;
  // [44]+(2)
  @Uint16()
  external int attackLevel;
  // [46]+(2)
  @Uint16()
  external int fadeLength;
  // [48]+(2)
  @Uint16()
  external int fadeLevel;
  // [] +(6)
  @Uint32()
  external int blank_3;
  @Uint16()
  external int blank_4;
}

extension SdlHapticPeriodicExtension on Pointer<SdlHapticPeriodic> {
  Pointer<SdlHapticDirection> get direction =>
      cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

// SDL_HapticCondition
final class SdlHapticCondition extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [] +(6)
  @Uint32()
  external int blank_1;
  @Uint16()
  external int blank_2;
  // [8]+(16)
  @Uint64()
  external int direction_1;
  @Uint64()
  external int direction_2;
  // [24]+(4)
  @Uint32()
  external int length;
  // [28]+(2)
  @Uint16()
  external int delay;
  // [30]+(2)
  @Uint16()
  external int button;
  // [32]+(2)
  @Uint16()
  external int interval;
  // [34]+(2*3)
  @Uint16()
  external int rightSat_1;
  @Uint16()
  external int rightSat_2;
  @Uint16()
  external int rightSat_3;
  // [40]+(2*3)
  @Uint16()
  external int leftSat_1;
  @Uint16()
  external int leftSat_2;
  @Uint16()
  external int leftSat_3;
  // [46]+(2*3)
  @Int16()
  external int rightCoeff_1;
  @Int16()
  external int rightCoeff_2;
  @Int16()
  external int rightCoeff_3;
  // [52]+(2*3)
  @Int16()
  external int leftCoeff_1;
  @Int16()
  external int leftCoeff_2;
  @Int16()
  external int leftCoeff_3;
  // [58]+(2*3)
  @Uint16()
  external int deadband_1;
  @Uint16()
  external int deadband_2;
  @Uint16()
  external int deadband_3;
  // [64]+(2*3)
  @Int16()
  external int center_1;
  @Int16()
  external int center_2;
  @Int16()
  external int center_3;
  // [] +(2)
  @Uint16()
  external int blank_3;
}

extension SdlHapticConditionExtension on Pointer<SdlHapticCondition> {
  Pointer<SdlHapticDirection> get direction =>
      cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

// SDL_HapticRamp
final class SdlHapticRamp extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [] +(6)
  @Uint32()
  external int blank_1;
  @Uint16()
  external int blank_2;
  // [8]+(16)
  @Uint64()
  external int direction_1;
  @Uint64()
  external int direction_2;
  // [24]+(4)
  @Uint32()
  external int length;
  // [28]+(2)
  @Uint16()
  external int delay;
  // [30]+(2)
  @Uint16()
  external int button;
  // [32]+(2)
  @Uint16()
  external int interval;
  // [34]+(2)
  @Int16()
  external int start;
  // [36]+(2)
  @Int16()
  external int end;
  // [38]+(2)
  @Uint16()
  external int attackLength;
  // [40]+(2)
  @Uint16()
  external int attackLevel;
  // [42]+(2)
  @Uint16()
  external int fadeLength;
  // [44]+(2)
  @Uint16()
  external int fadeLevel;
  // [] +(2)
  @Uint16()
  external int blank_3;
}

extension SdlHapticRampExtension on Pointer<SdlHapticRamp> {
  Pointer<SdlHapticDirection> get direction =>
      cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

// SDL_HapticLeftRight
final class SdlHapticLeftRight extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [] +(2)
  @Uint16()
  external int blank_1;
  // [4]+(4)
  @Uint32()
  external int length;
  // [8]+(2)
  @Uint16()
  external int largeMagnitude;
  // [10]+(2)
  @Uint16()
  external int smallMagnitude;
  // [] +(4)
  @Uint32()
  external int blank_2;
}

// SDL_HapticCustom
final class SdlHapticCustom extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [] +(6)
  @Uint32()
  external int blank_1;
  @Uint16()
  external int blank_2;
  // [8]+(16)
  @Uint64()
  external int direction_1;
  @Uint64()
  external int direction_2;
  // [24]+(4)
  @Uint32()
  external int length;
  // [28]+(2)
  @Uint16()
  external int delay;
  // [30]+(2)
  @Uint16()
  external int button;
  // [32]+(2)
  @Uint16()
  external int interval;
  // [34]+(1)
  @Uint8()
  external int channels;
  // [] +(1)
  @Uint8()
  external int blank_3;
  // [36]+(2)
  @Uint16()
  external int period;
  // [38]+(2)
  @Uint16()
  external int samples;
  // [40]+(8)
  external Pointer<Uint16> data;
  // [48]+(2)
  @Uint16()
  external int attackLength;
  // [50]+(2)
  @Uint16()
  external int attackLevel;
  // [52]+(2)
  @Uint16()
  external int fadeLength;
  // [54]+(2)
  @Uint16()
  external int fadeLevel;
}

extension SdlHapticCustomExtension on Pointer<SdlHapticCustom> {
  Pointer<SdlHapticDirection> get direction =>
      cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

// SDL_HapticEffect
final class SdlHapticEffect extends Struct {
  // [0]+(72)
  @Uint64()
  external int union_1;
  @Uint64()
  external int union_2;
  @Uint64()
  external int union_3;
  @Uint64()
  external int union_4;
  @Uint64()
  external int union_5;
  @Uint64()
  external int union_6;
  @Uint64()
  external int union_7;
  @Uint64()
  external int union_8;
  @Uint64()
  external int union_9;
}

extension SdlHapticEffectExtension on Pointer<SdlHapticEffect> {
  int get type => cast<Uint8>().elementAt(0).cast<Uint16>().value;
  Pointer<SdlHapticConstant> get ant =>
      cast<Uint8>().elementAt(0).cast<SdlHapticConstant>();
  Pointer<SdlHapticPeriodic> get periodic =>
      cast<Uint8>().elementAt(0).cast<SdlHapticPeriodic>();
  Pointer<SdlHapticCondition> get condition =>
      cast<Uint8>().elementAt(0).cast<SdlHapticCondition>();
  Pointer<SdlHapticRamp> get ramp =>
      cast<Uint8>().elementAt(0).cast<SdlHapticRamp>();
  Pointer<SdlHapticLeftRight> get leftright =>
      cast<Uint8>().elementAt(0).cast<SdlHapticLeftRight>();
  Pointer<SdlHapticCustom> get custom =>
      cast<Uint8>().elementAt(0).cast<SdlHapticCustom>();
}

// SDL_hid_device
final class SdlHidDevice extends Opaque {}

// SDL_hid_device_info
final class SdlHidDeviceInfo extends Struct {
  // [0]+(8)
  external Pointer<Int8> path;
  // [8]+(2)
  @Uint16()
  external int vendorId;
  // [10]+(2)
  @Uint16()
  external int productId;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [16]+(8)
  external Pointer<Int16> serialNumber;
  // [24]+(2)
  @Uint16()
  external int releaseNumber;
  // [] +(6)
  @Uint32()
  external int blank_2;
  @Uint16()
  external int blank_3;
  // [32]+(8)
  external Pointer<Int16> manufacturerString;
  // [40]+(8)
  external Pointer<Int16> productString;
  // [48]+(2)
  @Uint16()
  external int usagePage;
  // [50]+(2)
  @Uint16()
  external int usage;
  // [52]+(4)
  @Int32()
  external int interfaceNumber;
  // [56]+(4)
  @Int32()
  external int interfaceClass;
  // [60]+(4)
  @Int32()
  external int interfaceSubclass;
  // [64]+(4)
  @Int32()
  external int interfaceProtocol;
  // [] +(4)
  @Uint32()
  external int blank_4;
  // [72]+(8)
  external Pointer<SdlHidDeviceInfo> next;
}

// SDL_Joystick
final class SdlJoystick extends Opaque {}

// SDL_VirtualJoystickDesc
final class SdlVirtualJoystickDesc extends Struct {
  // [0]+(2)
  @Uint16()
  external int version;
  // [2]+(2)
  @Uint16()
  external int type;
  // [4]+(2)
  @Uint16()
  external int naxes;
  // [6]+(2)
  @Uint16()
  external int nbuttons;
  // [8]+(2)
  @Uint16()
  external int nhats;
  // [10]+(2)
  @Uint16()
  external int vendorId;
  // [12]+(2)
  @Uint16()
  external int productId;
  // [14]+(2)
  @Uint16()
  external int padding;
  // [16]+(4)
  @Uint32()
  external int buttonMask;
  // [20]+(4)
  @Uint32()
  external int axisMask;
  // [24]+(8)
  external Pointer<Utf8> name;
  // [32]+(8)
  external Pointer<NativeType> userdata;
  // [40]+(8)
  external Pointer<NativeType> update;
  // [48]+(8)
  external Pointer<NativeType> setPlayerIndex;
  // [56]+(8)
  external Pointer<NativeType> rumble;
  // [64]+(8)
  external Pointer<NativeType> rumbleTriggers;
  // [72]+(8)
  external Pointer<NativeType> setLed;
  // [80]+(8)
  external Pointer<NativeType> sendEffect;
}

// SDL_Keysym
final class SdlKeysym extends Struct {
  // [0]+(4)
  @Int32()
  external int scancode;
  // [4]+(4)
  @Int32()
  external int sym;
  // [8]+(2)
  @Uint16()
  external int mod;
  // [] +(2)
  @Uint16()
  external int blank_1;
  // [12]+(4)
  @Uint32()
  external int unused;
}

// SDL_Locale
final class SdlLocale extends Struct {
  // [0]+(8)
  external Pointer<Utf8> language;
  // [8]+(8)
  external Pointer<Utf8> country;
}

// SDL_MessageBoxButtonData
final class SdlMessageBoxButtonData extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [4]+(4)
  @Int32()
  external int buttonid;
  // [8]+(8)
  external Pointer<Utf8> text;
}

// SDL_MessageBoxColor
final class SdlMessageBoxColor extends Struct {
  // [0]+(1)
  @Uint8()
  external int r;
  // [1]+(1)
  @Uint8()
  external int g;
  // [2]+(1)
  @Uint8()
  external int b;
  // [] +(5)
  @Uint32()
  external int blank_1;
  @Uint8()
  external int blank_2;
}

// SDL_MessageBoxColorScheme
final class SdlMessageBoxColorScheme extends Struct {
  // [0]+(8*5)
  @Uint64()
  external int colors_1;
  @Uint64()
  external int colors_2;
  @Uint64()
  external int colors_3;
  @Uint64()
  external int colors_4;
  @Uint64()
  external int colors_5;
}

extension SdlMessageBoxColorSchemeExtension
    on Pointer<SdlMessageBoxColorScheme> {
  List<SdlMessageBoxColor> get colors {
    var list = <SdlMessageBoxColor>[];
    for (var i = 0; i < 5; i++) {
      list.add(
          cast<Uint8>().elementAt(0 + i * 8).cast<SdlMessageBoxColor>().ref);
    }
    return list;
  }
}

// SDL_MessageBoxData
final class SdlMessageBoxData extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlWindow> window;
  // [16]+(8)
  external Pointer<Utf8> title;
  // [24]+(8)
  external Pointer<Utf8> message;
  // [32]+(4)
  @Int32()
  external int numbuttons;
  // [] +(4)
  @Uint32()
  external int blank_2;
  // [40]+(8)
  external Pointer<SdlMessageBoxButtonData> buttons;
  // [48]+(8)
  external Pointer<SdlMessageBoxColorScheme> colorScheme;
}

// SDL_Cursor
final class SdlCursor extends Opaque {}

// SDL_mutex
final class SdlMutex extends Opaque {}

// SDL_sem
final class SdlSem extends Opaque {}

// SDL_cond
final class SdlCond extends Opaque {}

// SDL_Color
final class SdlColor extends Struct {
  // [0]+(1)
  @Uint8()
  external int r;
  // [1]+(1)
  @Uint8()
  external int g;
  // [2]+(1)
  @Uint8()
  external int b;
  // [3]+(1)
  @Uint8()
  external int a;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_Palette
final class SdlPalette extends Struct {
  // [0]+(4)
  @Int32()
  external int ncolors;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlColor> colors;
  // [16]+(4)
  @Uint32()
  external int version;
  // [20]+(4)
  @Int32()
  external int refcount;
}

// SDL_PixelFormat
final class SdlPixelFormat extends Struct {
  // [0]+(4)
  @Uint32()
  external int format;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlPalette> palette;
  // [16]+(1)
  @Uint8()
  external int bitsPerPixel;
  // [17]+(1)
  @Uint8()
  external int bytesPerPixel;
  // [18]+(1*2)
  @Uint8()
  external int padding_1;
  @Uint8()
  external int padding_2;
  // [20]+(4)
  @Uint32()
  external int rmask;
  // [24]+(4)
  @Uint32()
  external int gmask;
  // [28]+(4)
  @Uint32()
  external int bmask;
  // [32]+(4)
  @Uint32()
  external int amask;
  // [36]+(1)
  @Uint8()
  external int rloss;
  // [37]+(1)
  @Uint8()
  external int gloss;
  // [38]+(1)
  @Uint8()
  external int bloss;
  // [39]+(1)
  @Uint8()
  external int aloss;
  // [40]+(1)
  @Uint8()
  external int rshift;
  // [41]+(1)
  @Uint8()
  external int gshift;
  // [42]+(1)
  @Uint8()
  external int bshift;
  // [43]+(1)
  @Uint8()
  external int ashift;
  // [44]+(4)
  @Int32()
  external int refcount;
  // [48]+(8)
  external Pointer<SdlPixelFormat> next;
}

// SDL_Point
final class SdlPoint extends Struct {
  // [0]+(4)
  @Int32()
  external int x;
  // [4]+(4)
  @Int32()
  external int y;
}

// SDL_FPoint
final class SdlFPoint extends Struct {
  // [0]+(4)
  @Float()
  external double x;
  // [4]+(4)
  @Float()
  external double y;
}

// SDL_Rect
final class SdlRect extends Struct {
  // [0]+(4)
  @Int32()
  external int x;
  // [4]+(4)
  @Int32()
  external int y;
  // [8]+(4)
  @Int32()
  external int w;
  // [12]+(4)
  @Int32()
  external int h;
}

// SDL_FRect
final class SdlFRect extends Struct {
  // [0]+(4)
  @Float()
  external double x;
  // [4]+(4)
  @Float()
  external double y;
  // [8]+(4)
  @Float()
  external double w;
  // [12]+(4)
  @Float()
  external double h;
}

// SDL_RendererInfo
final class SdlRendererInfo extends Struct {
  // [0]+(8)
  external Pointer<Utf8> name;
  // [8]+(4)
  @Uint32()
  external int flags;
  // [12]+(4)
  @Uint32()
  external int numTextureFormats;
  // [16]+(4*16)
  @Uint32()
  external int textureFormats_1;
  @Uint32()
  external int textureFormats_2;
  @Uint32()
  external int textureFormats_3;
  @Uint32()
  external int textureFormats_4;
  @Uint32()
  external int textureFormats_5;
  @Uint32()
  external int textureFormats_6;
  @Uint32()
  external int textureFormats_7;
  @Uint32()
  external int textureFormats_8;
  @Uint32()
  external int textureFormats_9;
  @Uint32()
  external int textureFormats_10;
  @Uint32()
  external int textureFormats_11;
  @Uint32()
  external int textureFormats_12;
  @Uint32()
  external int textureFormats_13;
  @Uint32()
  external int textureFormats_14;
  @Uint32()
  external int textureFormats_15;
  @Uint32()
  external int textureFormats_16;
  // [80]+(4)
  @Int32()
  external int maxTextureWidth;
  // [84]+(4)
  @Int32()
  external int maxTextureHeight;
}

// SDL_Vertex
final class SdlVertex extends Struct {
  // [0]+(8)
  @Uint64()
  external int position_1;
  // [8]+(8)
  @Uint64()
  external int color_1;
  // [16]+(8)
  @Uint64()
  external int texCoord_1;
}

extension SdlVertexExtension on Pointer<SdlVertex> {
  Pointer<SdlFPoint> get position =>
      cast<Uint8>().elementAt(0).cast<SdlFPoint>();
  Pointer<SdlColor> get color => cast<Uint8>().elementAt(8).cast<SdlColor>();
  Pointer<SdlFPoint> get texCoord =>
      cast<Uint8>().elementAt(16).cast<SdlFPoint>();
}

// SDL_Renderer
final class SdlRenderer extends Opaque {}

// SDL_Texture
final class SdlTexture extends Opaque {}

// SDL_RWops
final class SdlRWops extends Struct {
  // [0]+(8)
  external Pointer<NativeType> size;
  // [8]+(8)
  external Pointer<NativeType> seek;
  // [16]+(8)
  external Pointer<NativeType> read;
  // [24]+(8)
  external Pointer<NativeType> write;
  // [32]+(8)
  external Pointer<NativeType> close;
  // [40]+(4)
  @Uint32()
  external int type;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [48]+(8)
  external Pointer<NativeType> hidden;
}

// SDL_Sensor
final class SdlSensor extends Opaque {}

// SDL_WindowShapeParams
final class SdlWindowShapeParams extends Struct {
  // [0]+(8)
  @Uint64()
  external int union_1;
}

extension SdlWindowShapeParamsExtension on Pointer<SdlWindowShapeParams> {
  int get binarizationCutoff => cast<Uint8>().elementAt(0).cast<Uint8>().value;
  Pointer<SdlColor> get colorKey => cast<Uint8>().elementAt(0).cast<SdlColor>();
}

// SDL_WindowShapeMode
final class SdlWindowShapeMode extends Struct {
  // [0]+(4)
  @Int32()
  external int mode;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  @Uint64()
  external int parameters_1;
}

extension SdlWindowShapeModeExtension on Pointer<SdlWindowShapeMode> {
  Pointer<SdlWindowShapeParams> get parameters =>
      cast<Uint8>().elementAt(8).cast<SdlWindowShapeParams>();
}

// SDL_iconv_t
final class SdlIconvT extends Opaque {}

// SDL_BlitMap
final class SdlBlitMap extends Opaque {}

// SDL_Surface
final class SdlSurface extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlPixelFormat> format;
  // [16]+(4)
  @Int32()
  external int w;
  // [20]+(4)
  @Int32()
  external int h;
  // [24]+(4)
  @Int32()
  external int pitch;
  // [] +(4)
  @Uint32()
  external int blank_2;
  // [32]+(8)
  external Pointer<NativeType> pixels;
  // [40]+(8)
  external Pointer<NativeType> userdata;
  // [48]+(4)
  @Int32()
  external int locked;
  // [] +(4)
  @Uint32()
  external int blank_3;
  // [56]+(8)
  external Pointer<NativeType> listBlitmap;
  // [64]+(16)
  @Uint64()
  external int clipRect_1;
  @Uint64()
  external int clipRect_2;
  // [80]+(8)
  external Pointer<Void> map;
  // [88]+(4)
  @Int32()
  external int refcount;
  // [] +(4)
  @Uint32()
  external int blank_4;
}

extension SdlSurfaceExtension on Pointer<SdlSurface> {
  Pointer<SdlRect> get clipRect => cast<Uint8>().elementAt(64).cast<SdlRect>();
}

// IDirect3DDevice9
final class IDirect3DDevice9 extends Opaque {}

// ID3D11Device
final class ID3D11Device extends Opaque {}

// ID3D12Device
final class ID3D12Device extends Opaque {}

// XTaskQueueHandle
final class XTaskQueueHandle extends Opaque {}

// NSWindow
final class NSWindow extends Opaque {}

// UIWindow
final class UIWindow extends Opaque {}

// UIViewController
final class UIViewController extends Opaque {}

// ANativeWindow
final class ANativeWindow extends Opaque {}

// SDL_SysWMinfo
final class SdlSysWMinfo extends Opaque {}

// SDL_Thread
final class SdlThread extends Opaque {}

// SDL_Finger
final class SdlFinger extends Struct {
  // [0]+(8)
  @Int64()
  external int id;
  // [8]+(4)
  @Float()
  external double x;
  // [12]+(4)
  @Float()
  external double y;
  // [16]+(4)
  @Float()
  external double pressure;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

// SDL_version
final class SdlVersion extends Struct {
  // [0]+(1)
  @Uint8()
  external int major;
  // [1]+(1)
  @Uint8()
  external int minor;
  // [2]+(1)
  @Uint8()
  external int patch;
  // [] +(5)
  @Uint32()
  external int blank_1;
  @Uint8()
  external int blank_2;
}

// SDL_DisplayMode
final class SdlDisplayMode extends Struct {
  // [0]+(4)
  @Uint32()
  external int format;
  // [4]+(4)
  @Int32()
  external int w;
  // [8]+(4)
  @Int32()
  external int h;
  // [12]+(4)
  @Int32()
  external int refreshRate;
  // [16]+(8)
  external Pointer<NativeType> driverdata;
}

// SDL_Window
final class SdlWindow extends Opaque {}
