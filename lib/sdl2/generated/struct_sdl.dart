// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
class SdlAssertData extends Struct {
  // [0]+(4)
  @Int32()
  external int alwaysIgnore;
  // [4]+(4)
  @Uint32()
  external int triggerCount;
  // [8]+(8)
  external Pointer<Utf8>? condition;
  // [16]+(8)
  external Pointer<Utf8>? filename;
  // [24]+(4)
  @Int32()
  external int linenum;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [32]+(8)
  external Pointer<Utf8>? function;
  // [40]+(8)
  external Pointer<SdlAssertData>? next;
}

class SdlAtomicT extends Struct {
  // [0]+(4)
  @Int32()
  external int value;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

class SdlAudioSpec extends Struct {
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
  // [16]+(8)
  external Pointer<Void>? callback;
  // [24]+(8)
  external Pointer<Void>? userdata;
}

class SdlAudioCvt extends Struct {
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
  external Pointer<Uint8>? buf;
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
  // [48]+(8*10)
  external Pointer<Void>? filters_1;
  external Pointer<Void>? filters_2;
  external Pointer<Void>? filters_3;
  external Pointer<Void>? filters_4;
  external Pointer<Void>? filters_5;
  external Pointer<Void>? filters_6;
  external Pointer<Void>? filters_7;
  external Pointer<Void>? filters_8;
  external Pointer<Void>? filters_9;
  external Pointer<Void>? filters_10;
  // [128]+(4)
  @Int32()
  external int filterIndex;
  // [] +(4)
  @Uint32()
  external int blank_2;
}

class SdlAudioStream extends Opaque {}

class SdlCommonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

class SdlDisplayEvent extends Struct {
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

class SdlWindowEvent extends Struct {
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

class SdlKeyboardEvent extends Struct {
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
  Pointer<SdlKeysym> get keysym => cast<Uint8>().elementAt(16).cast<SdlKeysym>();
}

class SdlTextEditingEvent extends Struct {
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

class SdlTextEditingExtEvent extends Struct {
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
  external Pointer<Int8>? text;
  // [24]+(4)
  @Int32()
  external int start;
  // [28]+(4)
  @Int32()
  external int length;
}

class SdlTextInputEvent extends Struct {
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

class SdlMouseMotionEvent extends Struct {
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

class SdlMouseButtonEvent extends Struct {
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

class SdlMouseWheelEvent extends Struct {
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
  // [] +(4)
  @Uint32()
  external int blank_1;
}

class SdlJoyAxisEvent extends Struct {
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

class SdlJoyBallEvent extends Struct {
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

class SdlJoyHatEvent extends Struct {
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

class SdlJoyButtonEvent extends Struct {
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

class SdlJoyDeviceEvent extends Struct {
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

class SdlJoyBatteryEvent extends Struct {
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

class SdlControllerAxisEvent extends Struct {
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

class SdlControllerButtonEvent extends Struct {
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

class SdlControllerDeviceEvent extends Struct {
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

class SdlControllerTouchpadEvent extends Struct {
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

class SdlControllerSensorEvent extends Struct {
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
}

class SdlAudioDeviceEvent extends Struct {
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

class SdlTouchFingerEvent extends Struct {
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

class SdlMultiGestureEvent extends Struct {
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

class SdlDollarGestureEvent extends Struct {
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

class SdlDropEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  external Pointer<Int8>? file;
  // [16]+(4)
  @Uint32()
  external int windowId;
  // [] +(4)
  @Uint32()
  external int blank_1;
}

class SdlSensorEvent extends Struct {
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
}

class SdlQuitEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

class SdlOsEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

class SdlUserEvent extends Struct {
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
  external Pointer<Void>? data1;
  // [24]+(8)
  external Pointer<Void>? data2;
}

class SdlSysWMmsg extends Opaque {}

class SdlSysWmEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  external Pointer<SdlSysWMmsg>? msg;
}

class SdlEvent extends Struct {
  // [0]+(904)
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
  @Uint64()
  external int union_10;
  @Uint64()
  external int union_11;
  @Uint64()
  external int union_12;
  @Uint64()
  external int union_13;
  @Uint64()
  external int union_14;
  @Uint64()
  external int union_15;
  @Uint64()
  external int union_16;
  @Uint64()
  external int union_17;
  @Uint64()
  external int union_18;
  @Uint64()
  external int union_19;
  @Uint64()
  external int union_20;
  @Uint64()
  external int union_21;
  @Uint64()
  external int union_22;
  @Uint64()
  external int union_23;
  @Uint64()
  external int union_24;
  @Uint64()
  external int union_25;
  @Uint64()
  external int union_26;
  @Uint64()
  external int union_27;
  @Uint64()
  external int union_28;
  @Uint64()
  external int union_29;
  @Uint64()
  external int union_30;
  @Uint64()
  external int union_31;
  @Uint64()
  external int union_32;
  @Uint64()
  external int union_33;
  @Uint64()
  external int union_34;
  @Uint64()
  external int union_35;
  @Uint64()
  external int union_36;
  @Uint64()
  external int union_37;
  @Uint64()
  external int union_38;
  @Uint64()
  external int union_39;
  @Uint64()
  external int union_40;
  @Uint64()
  external int union_41;
  @Uint64()
  external int union_42;
  @Uint64()
  external int union_43;
  @Uint64()
  external int union_44;
  @Uint64()
  external int union_45;
  @Uint64()
  external int union_46;
  @Uint64()
  external int union_47;
  @Uint64()
  external int union_48;
  @Uint64()
  external int union_49;
  @Uint64()
  external int union_50;
  @Uint64()
  external int union_51;
  @Uint64()
  external int union_52;
  @Uint64()
  external int union_53;
  @Uint64()
  external int union_54;
  @Uint64()
  external int union_55;
  @Uint64()
  external int union_56;
  @Uint64()
  external int union_57;
  @Uint64()
  external int union_58;
  @Uint64()
  external int union_59;
  @Uint64()
  external int union_60;
  @Uint64()
  external int union_61;
  @Uint64()
  external int union_62;
  @Uint64()
  external int union_63;
  @Uint64()
  external int union_64;
  @Uint64()
  external int union_65;
  @Uint64()
  external int union_66;
  @Uint64()
  external int union_67;
  @Uint64()
  external int union_68;
  @Uint64()
  external int union_69;
  @Uint64()
  external int union_70;
  @Uint64()
  external int union_71;
  @Uint64()
  external int union_72;
  @Uint64()
  external int union_73;
  @Uint64()
  external int union_74;
  @Uint64()
  external int union_75;
  @Uint64()
  external int union_76;
  @Uint64()
  external int union_77;
  @Uint64()
  external int union_78;
  @Uint64()
  external int union_79;
  @Uint64()
  external int union_80;
  @Uint64()
  external int union_81;
  @Uint64()
  external int union_82;
  @Uint64()
  external int union_83;
  @Uint64()
  external int union_84;
  @Uint64()
  external int union_85;
  @Uint64()
  external int union_86;
  @Uint64()
  external int union_87;
  @Uint64()
  external int union_88;
  @Uint64()
  external int union_89;
  @Uint64()
  external int union_90;
  @Uint64()
  external int union_91;
  @Uint64()
  external int union_92;
  @Uint64()
  external int union_93;
  @Uint64()
  external int union_94;
  @Uint64()
  external int union_95;
  @Uint64()
  external int union_96;
  @Uint64()
  external int union_97;
  @Uint64()
  external int union_98;
  @Uint64()
  external int union_99;
  @Uint64()
  external int union_100;
  @Uint64()
  external int union_101;
  @Uint64()
  external int union_102;
  @Uint64()
  external int union_103;
  @Uint64()
  external int union_104;
  @Uint64()
  external int union_105;
  @Uint64()
  external int union_106;
  @Uint64()
  external int union_107;
  @Uint64()
  external int union_108;
  @Uint64()
  external int union_109;
  @Uint64()
  external int union_110;
  @Uint64()
  external int union_111;
  @Uint64()
  external int union_112;
  @Uint64()
  external int union_113;
}
extension SdlEventExtension on Pointer<SdlEvent> {
  int get type => cast<Uint8>().elementAt(0).cast<Uint32>().value;
  Pointer<SdlCommonEvent> get common => cast<Uint8>().elementAt(8).cast<SdlCommonEvent>();
  Pointer<SdlDisplayEvent> get display => cast<Uint8>().elementAt(16).cast<SdlDisplayEvent>();
  Pointer<SdlWindowEvent> get window => cast<Uint8>().elementAt(40).cast<SdlWindowEvent>();
  Pointer<SdlKeyboardEvent> get key => cast<Uint8>().elementAt(64).cast<SdlKeyboardEvent>();
  Pointer<SdlTextEditingEvent> get edit => cast<Uint8>().elementAt(96).cast<SdlTextEditingEvent>();
  Pointer<SdlTextEditingExtEvent> get editExt => cast<Uint8>().elementAt(152).cast<SdlTextEditingExtEvent>();
  Pointer<SdlTextInputEvent> get text => cast<Uint8>().elementAt(184).cast<SdlTextInputEvent>();
  Pointer<SdlMouseMotionEvent> get motion => cast<Uint8>().elementAt(232).cast<SdlMouseMotionEvent>();
  Pointer<SdlMouseButtonEvent> get button => cast<Uint8>().elementAt(272).cast<SdlMouseButtonEvent>();
  Pointer<SdlMouseWheelEvent> get wheel => cast<Uint8>().elementAt(304).cast<SdlMouseWheelEvent>();
  Pointer<SdlJoyAxisEvent> get jaxis => cast<Uint8>().elementAt(344).cast<SdlJoyAxisEvent>();
  Pointer<SdlJoyBallEvent> get jball => cast<Uint8>().elementAt(368).cast<SdlJoyBallEvent>();
  Pointer<SdlJoyHatEvent> get jhat => cast<Uint8>().elementAt(392).cast<SdlJoyHatEvent>();
  Pointer<SdlJoyButtonEvent> get jbutton => cast<Uint8>().elementAt(408).cast<SdlJoyButtonEvent>();
  Pointer<SdlJoyDeviceEvent> get jdevice => cast<Uint8>().elementAt(424).cast<SdlJoyDeviceEvent>();
  Pointer<SdlJoyBatteryEvent> get jbattery => cast<Uint8>().elementAt(440).cast<SdlJoyBatteryEvent>();
  Pointer<SdlControllerAxisEvent> get caxis => cast<Uint8>().elementAt(456).cast<SdlControllerAxisEvent>();
  Pointer<SdlControllerButtonEvent> get cbutton => cast<Uint8>().elementAt(480).cast<SdlControllerButtonEvent>();
  Pointer<SdlControllerDeviceEvent> get cdevice => cast<Uint8>().elementAt(496).cast<SdlControllerDeviceEvent>();
  Pointer<SdlControllerTouchpadEvent> get ctouchpad => cast<Uint8>().elementAt(512).cast<SdlControllerTouchpadEvent>();
  Pointer<SdlControllerSensorEvent> get csensor => cast<Uint8>().elementAt(544).cast<SdlControllerSensorEvent>();
  Pointer<SdlAudioDeviceEvent> get adevice => cast<Uint8>().elementAt(576).cast<SdlAudioDeviceEvent>();
  Pointer<SdlSensorEvent> get sensor => cast<Uint8>().elementAt(592).cast<SdlSensorEvent>();
  Pointer<SdlQuitEvent> get quit => cast<Uint8>().elementAt(632).cast<SdlQuitEvent>();
  Pointer<SdlUserEvent> get user => cast<Uint8>().elementAt(640).cast<SdlUserEvent>();
  Pointer<SdlSysWmEvent> get syswm => cast<Uint8>().elementAt(672).cast<SdlSysWmEvent>();
  Pointer<SdlTouchFingerEvent> get tfinger => cast<Uint8>().elementAt(688).cast<SdlTouchFingerEvent>();
  Pointer<SdlMultiGestureEvent> get mgesture => cast<Uint8>().elementAt(736).cast<SdlMultiGestureEvent>();
  Pointer<SdlDollarGestureEvent> get dgesture => cast<Uint8>().elementAt(776).cast<SdlDollarGestureEvent>();
  Pointer<SdlDropEvent> get drop => cast<Uint8>().elementAt(816).cast<SdlDropEvent>();
  int get padding => cast<Uint8>().elementAt(840).cast<Uint8>().value;
}

class SdlGameController extends Opaque {}

class SdlGameControllerButtonBind extends Struct {
  // [0]+(4)
  @Int32()
  external int bindType;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<Void>? value;
}

class SdlGuid extends Struct {
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

class SdlHaptic extends Opaque {}

class SdlHapticDirection extends Struct {
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

class SdlHapticConstant extends Struct {
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
  Pointer<SdlHapticDirection> get direction => cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

class SdlHapticPeriodic extends Struct {
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
  Pointer<SdlHapticDirection> get direction => cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

class SdlHapticCondition extends Struct {
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
  Pointer<SdlHapticDirection> get direction => cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

class SdlHapticRamp extends Struct {
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
  Pointer<SdlHapticDirection> get direction => cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

class SdlHapticLeftRight extends Struct {
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

class SdlHapticCustom extends Struct {
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
  external Pointer<Uint16>? data;
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
  Pointer<SdlHapticDirection> get direction => cast<Uint8>().elementAt(8).cast<SdlHapticDirection>();
}

class SdlHapticEffect extends Struct {
  // [0]+(304)
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
  @Uint64()
  external int union_10;
  @Uint64()
  external int union_11;
  @Uint64()
  external int union_12;
  @Uint64()
  external int union_13;
  @Uint64()
  external int union_14;
  @Uint64()
  external int union_15;
  @Uint64()
  external int union_16;
  @Uint64()
  external int union_17;
  @Uint64()
  external int union_18;
  @Uint64()
  external int union_19;
  @Uint64()
  external int union_20;
  @Uint64()
  external int union_21;
  @Uint64()
  external int union_22;
  @Uint64()
  external int union_23;
  @Uint64()
  external int union_24;
  @Uint64()
  external int union_25;
  @Uint64()
  external int union_26;
  @Uint64()
  external int union_27;
  @Uint64()
  external int union_28;
  @Uint64()
  external int union_29;
  @Uint64()
  external int union_30;
  @Uint64()
  external int union_31;
  @Uint64()
  external int union_32;
  @Uint64()
  external int union_33;
  @Uint64()
  external int union_34;
  @Uint64()
  external int union_35;
  @Uint64()
  external int union_36;
  @Uint64()
  external int union_37;
  @Uint64()
  external int union_38;
}
extension SdlHapticEffectExtension on Pointer<SdlHapticEffect> {
  int get type => cast<Uint8>().elementAt(0).cast<Uint16>().value;
  Pointer<SdlHapticConstant> get ant => cast<Uint8>().elementAt(8).cast<SdlHapticConstant>();
  Pointer<SdlHapticPeriodic> get periodic => cast<Uint8>().elementAt(56).cast<SdlHapticPeriodic>();
  Pointer<SdlHapticCondition> get condition => cast<Uint8>().elementAt(112).cast<SdlHapticCondition>();
  Pointer<SdlHapticRamp> get ramp => cast<Uint8>().elementAt(184).cast<SdlHapticRamp>();
  Pointer<SdlHapticLeftRight> get leftright => cast<Uint8>().elementAt(232).cast<SdlHapticLeftRight>();
  Pointer<SdlHapticCustom> get custom => cast<Uint8>().elementAt(248).cast<SdlHapticCustom>();
}

class SdlHidDevice extends Opaque {}

class SdlHidDeviceInfo extends Struct {
  // [0]+(8)
  external Pointer<Int8>? path;
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
  external Pointer<Int16>? serialNumber;
  // [24]+(2)
  @Uint16()
  external int releaseNumber;
  // [] +(6)
  @Uint32()
  external int blank_2;
  @Uint16()
  external int blank_3;
  // [32]+(8)
  external Pointer<Int16>? manufacturerString;
  // [40]+(8)
  external Pointer<Int16>? productString;
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
  external Pointer<SdlHidDeviceInfo>? next;
}

class SdlJoystick extends Opaque {}

class SdlVirtualJoystickDesc extends Struct {
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
  external Pointer<Utf8>? name;
  // [32]+(8)
  external Pointer<Void>? userdata;
  // [40]+(8)
  external Pointer<Void>? update;
  // [48]+(8)
  external Pointer<Void>? setPlayerIndex;
  // [56]+(8)
  external Pointer<Void>? rumble;
  // [64]+(8)
  external Pointer<Void>? rumbleTriggers;
  // [72]+(8)
  external Pointer<Void>? setLed;
  // [80]+(8)
  external Pointer<Void>? sendEffect;
}

class SdlKeysym extends Struct {
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

class SdlLocale extends Struct {
  // [0]+(8)
  external Pointer<Utf8>? language;
  // [8]+(8)
  external Pointer<Utf8>? country;
}

class SdlMessageBoxButtonData extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [4]+(4)
  @Int32()
  external int buttonid;
  // [8]+(8)
  external Pointer<Utf8>? text;
}

class SdlMessageBoxColor extends Struct {
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

class SdlMessageBoxColorScheme extends Struct {
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
extension SdlMessageBoxColorSchemeExtension on Pointer<SdlMessageBoxColorScheme> {
  List<SdlMessageBoxColor> get colors {
    var list = <SdlMessageBoxColor>[];
    for (var i = 0; i < 5; i++) {
      list.add(cast<Uint8>().elementAt(0 + i * 8).cast<SdlMessageBoxColor>().ref);
    }
    return list;
  }
}

class SdlMessageBoxData extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlWindow>? window;
  // [16]+(8)
  external Pointer<Utf8>? title;
  // [24]+(8)
  external Pointer<Utf8>? message;
  // [32]+(4)
  @Int32()
  external int numbuttons;
  // [] +(4)
  @Uint32()
  external int blank_2;
  // [40]+(8)
  external Pointer<SdlMessageBoxButtonData>? buttons;
  // [48]+(8)
  external Pointer<SdlMessageBoxColorScheme>? colorScheme;
}

class SdlCursor extends Opaque {}

class SdlMutex extends Opaque {}

class SdlSem extends Opaque {}

class SdlCond extends Opaque {}

class SdlColor extends Struct {
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

class SdlPalette extends Struct {
  // [0]+(4)
  @Int32()
  external int ncolors;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlColor>? colors;
  // [16]+(4)
  @Uint32()
  external int version;
  // [20]+(4)
  @Int32()
  external int refcount;
}

class SdlPixelFormat extends Struct {
  // [0]+(4)
  @Uint32()
  external int format;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlPalette>? palette;
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
  external Pointer<SdlPixelFormat>? next;
}

class SdlPoint extends Struct {
  // [0]+(4)
  @Int32()
  external int x;
  // [4]+(4)
  @Int32()
  external int y;
}

class SdlFPoint extends Struct {
  // [0]+(4)
  @Float()
  external double x;
  // [4]+(4)
  @Float()
  external double y;
}

class SdlRect extends Struct {
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

class SdlFRect extends Struct {
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

class SdlRendererInfo extends Struct {
  // [0]+(8)
  external Pointer<Utf8>? name;
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

class SdlVertex extends Struct {
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
  Pointer<SdlFPoint> get position => cast<Uint8>().elementAt(0).cast<SdlFPoint>();
  Pointer<SdlColor> get color => cast<Uint8>().elementAt(8).cast<SdlColor>();
  Pointer<SdlFPoint> get texCoord => cast<Uint8>().elementAt(16).cast<SdlFPoint>();
}

class SdlRenderer extends Opaque {}

class SdlTexture extends Opaque {}

class SdlRWops extends Struct {
  // [0]+(8)
  external Pointer<Void>? size;
  // [8]+(8)
  external Pointer<Void>? seek;
  // [16]+(8)
  external Pointer<Void>? read;
  // [24]+(8)
  external Pointer<Void>? write;
  // [32]+(8)
  external Pointer<Void>? close;
  // [40]+(4)
  @Uint32()
  external int type;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [48]+(8)
  external Pointer<Void>? hidden;
}

class SdlSensor extends Opaque {}

class SdlWindowShapeParams extends Struct {
  // [0]+(16)
  @Uint64()
  external int union_1;
  @Uint64()
  external int union_2;
}
extension SdlWindowShapeParamsExtension on Pointer<SdlWindowShapeParams> {
  int get binarizationCutoff => cast<Uint8>().elementAt(0).cast<Uint8>().value;
  Pointer<SdlColor> get colorKey => cast<Uint8>().elementAt(8).cast<SdlColor>();
}

class SdlWindowShapeMode extends Struct {
  // [0]+(4)
  @Int32()
  external int mode;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(16)
  @Uint64()
  external int parameters_1;
  @Uint64()
  external int parameters_2;
}
extension SdlWindowShapeModeExtension on Pointer<SdlWindowShapeMode> {
  Pointer<SdlWindowShapeParams> get parameters => cast<Uint8>().elementAt(8).cast<SdlWindowShapeParams>();
}

class SdlIconvT extends Opaque {}

class SdlBlitMap extends Opaque {}

class SdlSurface extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<SdlPixelFormat>? format;
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
  external Pointer<Void>? pixels;
  // [40]+(8)
  external Pointer<Void>? userdata;
  // [48]+(4)
  @Int32()
  external int locked;
  // [] +(4)
  @Uint32()
  external int blank_3;
  // [56]+(8)
  external Pointer<Void>? listBlitmap;
  // [64]+(16)
  @Uint64()
  external int clipRect_1;
  @Uint64()
  external int clipRect_2;
  // [80]+(8)
  external Pointer<Pointer<Void>>? map;
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

class IDirect3DDevice9 extends Opaque {}

class Id3D11Device extends Opaque {}

class Id3D12Device extends Opaque {}

class XTaskQueueHandle extends Opaque {}

class NsWindow extends Opaque {}

class UiWindow extends Opaque {}

class UiViewController extends Opaque {}

class ANativeWindow extends Opaque {}

class SdlSysWMinfo extends Opaque {}

class SdlThread extends Opaque {}

class SdlFinger extends Struct {
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

class SdlVersion extends Struct {
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

class SdlDisplayMode extends Struct {
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
  external Pointer<Void>? driverdata;
}

class SdlWindow extends Opaque {}

