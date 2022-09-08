// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
class SDL_AssertData extends Struct {
  // [0]+(4)
  @Int32()
  external int always_ignore;
  // [4]+(4)
  @Uint32()
  external int trigger_count;
  // [8]+(8)
  external Pointer<Utf8>? condition;
  // [16]+(8)
  external Pointer<Utf8>? filename;
  // [24]+(4)
  @Int32()
  external int linenum;
  // [28]+(8)
  external Pointer<Utf8>? function;
  // [36]+(8)
  external Pointer<SDL_AssertData>? next;
}

class SDL_atomic_t extends Struct {
  // [0]+(4)
  @Int32()
  external int value;
}

class SDL_AudioSpec extends Struct {
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

class SDL_AudioCVT extends Struct {
  // [0]+(4)
  @Int32()
  external int needed;
  // [4]+(2)
  @Uint16()
  external int src_format;
  // [6]+(2)
  @Uint16()
  external int dst_format;
  // [8]+(8)
  @Double()
  external double rate_incr;
  // [16]+(8)
  external Pointer<Uint8>? buf;
  // [24]+(4)
  @Int32()
  external int len;
  // [28]+(4)
  @Int32()
  external int len_cvt;
  // [32]+(4)
  @Int32()
  external int len_mult;
  // [36]+(8)
  @Double()
  external double len_ratio;
  // [44]+(8*10)
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
  // [124]+(4)
  @Int32()
  external int filter_index;
}

class SDL_AudioStream extends Opaque {}

class SDL_CommonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

class SDL_DisplayEvent extends Struct {
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
}

class SDL_WindowEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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

class SDL_KeyboardEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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
  // [16]+(14)
  @Uint64()
  external int keysym_1;
  @Uint32()
  external int keysym_2;
  @Uint16()
  external int keysym_3;
}
// ignore: camel_case_extensions
extension SDL_KeyboardEventExtension on Pointer<SDL_KeyboardEvent> {
  Pointer<SDL_Keysym> get keysym => cast<Uint8>().elementAt(16).cast<SDL_Keysym>();
}

class SDL_TextEditingEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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
}

class SDL_TextEditingExtEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
  // [12]+(8)
  external Pointer<Int8>? text;
  // [20]+(4)
  @Int32()
  external int start;
  // [24]+(4)
  @Int32()
  external int length;
}

class SDL_TextInputEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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
}

class SDL_MouseMotionEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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
}

class SDL_MouseButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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
}

class SDL_MouseWheelEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
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
}

class SDL_JoyAxisEvent extends Struct {
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
}

class SDL_JoyBallEvent extends Struct {
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
}

class SDL_JoyHatEvent extends Struct {
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

class SDL_JoyButtonEvent extends Struct {
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

class SDL_JoyDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
}

class SDL_JoyBatteryEvent extends Struct {
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

class SDL_ControllerAxisEvent extends Struct {
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
}

class SDL_ControllerButtonEvent extends Struct {
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

class SDL_ControllerDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Int32()
  external int which;
}

class SDL_ControllerTouchpadEvent extends Struct {
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

class SDL_ControllerSensorEvent extends Struct {
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
}

class SDL_AudioDeviceEvent extends Struct {
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

class SDL_TouchFingerEvent extends Struct {
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
  external int windowID;
}

class SDL_MultiGestureEvent extends Struct {
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
}

class SDL_DollarGestureEvent extends Struct {
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

class SDL_DropEvent extends Struct {
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
  external int windowID;
}

class SDL_SensorEvent extends Struct {
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
}

class SDL_QuitEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

class SDL_OSEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
}

class SDL_UserEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(4)
  @Uint32()
  external int windowID;
  // [12]+(4)
  @Int32()
  external int code;
  // [16]+(8)
  external Pointer<Void>? data1;
  // [24]+(8)
  external Pointer<Void>? data2;
}

class SDL_SysWMmsg extends Opaque {}

class SDL_SysWMEvent extends Struct {
  // [0]+(4)
  @Uint32()
  external int type;
  // [4]+(4)
  @Uint32()
  external int timestamp;
  // [8]+(8)
  external Pointer<SDL_SysWMmsg>? msg;
}

class SDL_Event extends Struct {
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
// ignore: camel_case_extensions
extension SDL_EventExtension on Pointer<SDL_Event> {
  int get type => cast<Uint8>().elementAt(0).cast<Uint32>().value;
  Pointer<SDL_CommonEvent> get common => cast<Uint8>().elementAt(0).cast<SDL_CommonEvent>();
  Pointer<SDL_DisplayEvent> get display => cast<Uint8>().elementAt(0).cast<SDL_DisplayEvent>();
  Pointer<SDL_WindowEvent> get window => cast<Uint8>().elementAt(0).cast<SDL_WindowEvent>();
  Pointer<SDL_KeyboardEvent> get key => cast<Uint8>().elementAt(0).cast<SDL_KeyboardEvent>();
  Pointer<SDL_TextEditingEvent> get edit => cast<Uint8>().elementAt(0).cast<SDL_TextEditingEvent>();
  Pointer<SDL_TextEditingExtEvent> get editExt => cast<Uint8>().elementAt(0).cast<SDL_TextEditingExtEvent>();
  Pointer<SDL_TextInputEvent> get text => cast<Uint8>().elementAt(0).cast<SDL_TextInputEvent>();
  Pointer<SDL_MouseMotionEvent> get motion => cast<Uint8>().elementAt(0).cast<SDL_MouseMotionEvent>();
  Pointer<SDL_MouseButtonEvent> get button => cast<Uint8>().elementAt(0).cast<SDL_MouseButtonEvent>();
  Pointer<SDL_MouseWheelEvent> get wheel => cast<Uint8>().elementAt(0).cast<SDL_MouseWheelEvent>();
  Pointer<SDL_JoyAxisEvent> get jaxis => cast<Uint8>().elementAt(0).cast<SDL_JoyAxisEvent>();
  Pointer<SDL_JoyBallEvent> get jball => cast<Uint8>().elementAt(0).cast<SDL_JoyBallEvent>();
  Pointer<SDL_JoyHatEvent> get jhat => cast<Uint8>().elementAt(0).cast<SDL_JoyHatEvent>();
  Pointer<SDL_JoyButtonEvent> get jbutton => cast<Uint8>().elementAt(0).cast<SDL_JoyButtonEvent>();
  Pointer<SDL_JoyDeviceEvent> get jdevice => cast<Uint8>().elementAt(0).cast<SDL_JoyDeviceEvent>();
  Pointer<SDL_JoyBatteryEvent> get jbattery => cast<Uint8>().elementAt(0).cast<SDL_JoyBatteryEvent>();
  Pointer<SDL_ControllerAxisEvent> get caxis => cast<Uint8>().elementAt(0).cast<SDL_ControllerAxisEvent>();
  Pointer<SDL_ControllerButtonEvent> get cbutton => cast<Uint8>().elementAt(0).cast<SDL_ControllerButtonEvent>();
  Pointer<SDL_ControllerDeviceEvent> get cdevice => cast<Uint8>().elementAt(0).cast<SDL_ControllerDeviceEvent>();
  Pointer<SDL_ControllerTouchpadEvent> get ctouchpad => cast<Uint8>().elementAt(0).cast<SDL_ControllerTouchpadEvent>();
  Pointer<SDL_ControllerSensorEvent> get csensor => cast<Uint8>().elementAt(0).cast<SDL_ControllerSensorEvent>();
  Pointer<SDL_AudioDeviceEvent> get adevice => cast<Uint8>().elementAt(0).cast<SDL_AudioDeviceEvent>();
  Pointer<SDL_SensorEvent> get sensor => cast<Uint8>().elementAt(0).cast<SDL_SensorEvent>();
  Pointer<SDL_QuitEvent> get quit => cast<Uint8>().elementAt(0).cast<SDL_QuitEvent>();
  Pointer<SDL_UserEvent> get user => cast<Uint8>().elementAt(0).cast<SDL_UserEvent>();
  Pointer<SDL_SysWMEvent> get syswm => cast<Uint8>().elementAt(0).cast<SDL_SysWMEvent>();
  Pointer<SDL_TouchFingerEvent> get tfinger => cast<Uint8>().elementAt(0).cast<SDL_TouchFingerEvent>();
  Pointer<SDL_MultiGestureEvent> get mgesture => cast<Uint8>().elementAt(0).cast<SDL_MultiGestureEvent>();
  Pointer<SDL_DollarGestureEvent> get dgesture => cast<Uint8>().elementAt(0).cast<SDL_DollarGestureEvent>();
  Pointer<SDL_DropEvent> get drop => cast<Uint8>().elementAt(0).cast<SDL_DropEvent>();
  int get padding => cast<Uint8>().elementAt(0).cast<Uint8>().value;
}

class SDL_GameController extends Opaque {}

class SDL_GameControllerButtonBind extends Struct {
  // [0]+(4)
  @Int32()
  external int bindType;
  // [4]+(8)
  external Pointer<Void>?  value;
}

class SDL_GUID extends Struct {
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

class SDL_Haptic extends Opaque {}

class SDL_HapticDirection extends Struct {
  // [0]+(1)
  @Uint8()
  external int type;
  // [1]+(4*3)
  @Int32()
  external int dir_1;
  @Int32()
  external int dir_2;
  @Int32()
  external int dir_3;
}

class SDL_HapticConstant extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [2]+(13)
  @Uint64()
  external int direction_1;
  @Uint32()
  external int direction_2;
  @Uint8()
  external int direction_3;
  // [15]+(4)
  @Uint32()
  external int length;
  // [19]+(2)
  @Uint16()
  external int delay;
  // [21]+(2)
  @Uint16()
  external int button;
  // [23]+(2)
  @Uint16()
  external int interval;
  // [25]+(2)
  @Int16()
  external int level;
  // [27]+(2)
  @Uint16()
  external int attack_length;
  // [29]+(2)
  @Uint16()
  external int attack_level;
  // [31]+(2)
  @Uint16()
  external int fade_length;
  // [33]+(2)
  @Uint16()
  external int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticConstantExtension on Pointer<SDL_HapticConstant> {
  Pointer<SDL_HapticDirection> get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>();
}

class SDL_HapticPeriodic extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [2]+(13)
  @Uint64()
  external int direction_1;
  @Uint32()
  external int direction_2;
  @Uint8()
  external int direction_3;
  // [15]+(4)
  @Uint32()
  external int length;
  // [19]+(2)
  @Uint16()
  external int delay;
  // [21]+(2)
  @Uint16()
  external int button;
  // [23]+(2)
  @Uint16()
  external int interval;
  // [25]+(2)
  @Uint16()
  external int period;
  // [27]+(2)
  @Int16()
  external int magnitude;
  // [29]+(2)
  @Int16()
  external int offset;
  // [31]+(2)
  @Uint16()
  external int phase;
  // [33]+(2)
  @Uint16()
  external int attack_length;
  // [35]+(2)
  @Uint16()
  external int attack_level;
  // [37]+(2)
  @Uint16()
  external int fade_length;
  // [39]+(2)
  @Uint16()
  external int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticPeriodicExtension on Pointer<SDL_HapticPeriodic> {
  Pointer<SDL_HapticDirection> get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>();
}

class SDL_HapticCondition extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [2]+(13)
  @Uint64()
  external int direction_1;
  @Uint32()
  external int direction_2;
  @Uint8()
  external int direction_3;
  // [15]+(4)
  @Uint32()
  external int length;
  // [19]+(2)
  @Uint16()
  external int delay;
  // [21]+(2)
  @Uint16()
  external int button;
  // [23]+(2)
  @Uint16()
  external int interval;
  // [25]+(2*3)
  @Uint16()
  external int right_sat_1;
  @Uint16()
  external int right_sat_2;
  @Uint16()
  external int right_sat_3;
  // [31]+(2*3)
  @Uint16()
  external int left_sat_1;
  @Uint16()
  external int left_sat_2;
  @Uint16()
  external int left_sat_3;
  // [37]+(2*3)
  @Int16()
  external int right_coeff_1;
  @Int16()
  external int right_coeff_2;
  @Int16()
  external int right_coeff_3;
  // [43]+(2*3)
  @Int16()
  external int left_coeff_1;
  @Int16()
  external int left_coeff_2;
  @Int16()
  external int left_coeff_3;
  // [49]+(2*3)
  @Uint16()
  external int deadband_1;
  @Uint16()
  external int deadband_2;
  @Uint16()
  external int deadband_3;
  // [55]+(2*3)
  @Int16()
  external int center_1;
  @Int16()
  external int center_2;
  @Int16()
  external int center_3;
}
// ignore: camel_case_extensions
extension SDL_HapticConditionExtension on Pointer<SDL_HapticCondition> {
  Pointer<SDL_HapticDirection> get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>();
}

class SDL_HapticRamp extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [2]+(13)
  @Uint64()
  external int direction_1;
  @Uint32()
  external int direction_2;
  @Uint8()
  external int direction_3;
  // [15]+(4)
  @Uint32()
  external int length;
  // [19]+(2)
  @Uint16()
  external int delay;
  // [21]+(2)
  @Uint16()
  external int button;
  // [23]+(2)
  @Uint16()
  external int interval;
  // [25]+(2)
  @Int16()
  external int start;
  // [27]+(2)
  @Int16()
  external int end;
  // [29]+(2)
  @Uint16()
  external int attack_length;
  // [31]+(2)
  @Uint16()
  external int attack_level;
  // [33]+(2)
  @Uint16()
  external int fade_length;
  // [35]+(2)
  @Uint16()
  external int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticRampExtension on Pointer<SDL_HapticRamp> {
  Pointer<SDL_HapticDirection> get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>();
}

class SDL_HapticLeftRight extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [2]+(4)
  @Uint32()
  external int length;
  // [6]+(2)
  @Uint16()
  external int large_magnitude;
  // [8]+(2)
  @Uint16()
  external int small_magnitude;
}

class SDL_HapticCustom extends Struct {
  // [0]+(2)
  @Uint16()
  external int type;
  // [2]+(13)
  @Uint64()
  external int direction_1;
  @Uint32()
  external int direction_2;
  @Uint8()
  external int direction_3;
  // [15]+(4)
  @Uint32()
  external int length;
  // [19]+(2)
  @Uint16()
  external int delay;
  // [21]+(2)
  @Uint16()
  external int button;
  // [23]+(2)
  @Uint16()
  external int interval;
  // [25]+(1)
  @Uint8()
  external int channels;
  // [26]+(2)
  @Uint16()
  external int period;
  // [28]+(2)
  @Uint16()
  external int samples;
  // [30]+(8)
  external Pointer<Uint16>? data;
  // [38]+(2)
  @Uint16()
  external int attack_length;
  // [40]+(2)
  @Uint16()
  external int attack_level;
  // [42]+(2)
  @Uint16()
  external int fade_length;
  // [44]+(2)
  @Uint16()
  external int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticCustomExtension on Pointer<SDL_HapticCustom> {
  Pointer<SDL_HapticDirection> get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>();
}

class SDL_HapticEffect extends Struct {
  // [0]+(61)
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
  @Uint32()
  external int union_8;
  @Uint8()
  external int union_9;
}
// ignore: camel_case_extensions
extension SDL_HapticEffectExtension on Pointer<SDL_HapticEffect> {
  int get type => cast<Uint8>().elementAt(0).cast<Uint16>().value;
  Pointer<SDL_HapticConstant> get ant => cast<Uint8>().elementAt(0).cast<SDL_HapticConstant>();
  Pointer<SDL_HapticPeriodic> get periodic => cast<Uint8>().elementAt(0).cast<SDL_HapticPeriodic>();
  Pointer<SDL_HapticCondition> get condition => cast<Uint8>().elementAt(0).cast<SDL_HapticCondition>();
  Pointer<SDL_HapticRamp> get ramp => cast<Uint8>().elementAt(0).cast<SDL_HapticRamp>();
  Pointer<SDL_HapticLeftRight> get leftright => cast<Uint8>().elementAt(0).cast<SDL_HapticLeftRight>();
  Pointer<SDL_HapticCustom> get custom => cast<Uint8>().elementAt(0).cast<SDL_HapticCustom>();
}

class SDL_hid_device extends Opaque {}

class SDL_hid_device_info extends Struct {
  // [0]+(8)
  external Pointer<Int8>? path;
  // [8]+(2)
  @Uint16()
  external int vendor_id;
  // [10]+(2)
  @Uint16()
  external int product_id;
  // [12]+(8)
  external Pointer<Int16>? serial_number;
  // [20]+(2)
  @Uint16()
  external int release_number;
  // [22]+(8)
  external Pointer<Int16>? manufacturer_string;
  // [30]+(8)
  external Pointer<Int16>? product_string;
  // [38]+(2)
  @Uint16()
  external int usage_page;
  // [40]+(2)
  @Uint16()
  external int usage;
  // [42]+(4)
  @Int32()
  external int interface_number;
  // [46]+(4)
  @Int32()
  external int interface_class;
  // [50]+(4)
  @Int32()
  external int interface_subclass;
  // [54]+(4)
  @Int32()
  external int interface_protocol;
  // [58]+(8)
  external Pointer<SDL_hid_device_info>? next;
}

class SDL_Joystick extends Opaque {}

class SDL_VirtualJoystickDesc extends Struct {
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
  external int vendor_id;
  // [12]+(2)
  @Uint16()
  external int product_id;
  // [14]+(2)
  @Uint16()
  external int padding;
  // [16]+(4)
  @Uint32()
  external int button_mask;
  // [20]+(4)
  @Uint32()
  external int axis_mask;
  // [24]+(8)
  external Pointer<Utf8>? name;
  // [32]+(8)
  external Pointer<Void>? userdata;
  // [40]+(8)
  external Pointer<Void>? Update;
  // [48]+(8)
  external Pointer<Void>? SetPlayerIndex;
  // [56]+(8)
  external Pointer<Void>? Rumble;
  // [64]+(8)
  external Pointer<Void>? RumbleTriggers;
  // [72]+(8)
  external Pointer<Void>? SetLED;
  // [80]+(8)
  external Pointer<Void>? SendEffect;
}

class SDL_Keysym extends Struct {
  // [0]+(4)
  @Int32()
  external int scancode;
  // [4]+(4)
  @Int32()
  external int sym;
  // [8]+(2)
  @Uint16()
  external int mod;
  // [10]+(4)
  @Uint32()
  external int unused;
}

class SDL_Locale extends Struct {
  // [0]+(8)
  external Pointer<Utf8>? language;
  // [8]+(8)
  external Pointer<Utf8>? country;
}

class SDL_MessageBoxButtonData extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [4]+(4)
  @Int32()
  external int buttonid;
  // [8]+(8)
  external Pointer<Utf8>? text;
}

class SDL_MessageBoxColor extends Struct {
  // [0]+(1)
  @Uint8()
  external int r;
  // [1]+(1)
  @Uint8()
  external int g;
  // [2]+(1)
  @Uint8()
  external int b;
}

class SDL_MessageBoxColorScheme extends Struct {
  // [0]+(3*5)
  @Uint64()
  external int colors_1;
  @Uint32()
  external int colors_2;
  @Uint16()
  external int colors_3;
  @Uint8()
  external int colors_4;
}
// ignore: camel_case_extensions
extension SDL_MessageBoxColorSchemeExtension on Pointer<SDL_MessageBoxColorScheme> {
  List<SDL_MessageBoxColor> get colors {
    var list;
    for (var i = 0; i < 5; i++) {
      list.add(cast<Uint8>().elementAt(0 + i * 3).cast<SDL_MessageBoxColor>().ref);
    }
    return list;
  }
}

class SDL_MessageBoxData extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [4]+(8)
  external Pointer<SDL_Window>? window;
  // [12]+(8)
  external Pointer<Utf8>? title;
  // [20]+(8)
  external Pointer<Utf8>? message;
  // [28]+(4)
  @Int32()
  external int numbuttons;
  // [32]+(8)
  external Pointer<SDL_MessageBoxButtonData>? buttons;
  // [40]+(8)
  external Pointer<SDL_MessageBoxColorScheme>? colorScheme;
}

class SDL_Cursor extends Opaque {}

class SDL_mutex extends Opaque {}

class SDL_sem extends Opaque {}

class SDL_cond extends Opaque {}

class SDL_Color extends Struct {
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
}

class SDL_Palette extends Struct {
  // [0]+(4)
  @Int32()
  external int ncolors;
  // [4]+(8)
  external Pointer<SDL_Color>? colors;
  // [12]+(4)
  @Uint32()
  external int version;
  // [16]+(4)
  @Int32()
  external int refcount;
}

class SDL_PixelFormat extends Struct {
  // [0]+(4)
  @Uint32()
  external int format;
  // [4]+(8)
  external Pointer<SDL_Palette>? palette;
  // [12]+(1)
  @Uint8()
  external int BitsPerPixel;
  // [13]+(1)
  @Uint8()
  external int BytesPerPixel;
  // [14]+(1*2)
  @Uint8()
  external int padding_1;
  @Uint8()
  external int padding_2;
  // [16]+(4)
  @Uint32()
  external int Rmask;
  // [20]+(4)
  @Uint32()
  external int Gmask;
  // [24]+(4)
  @Uint32()
  external int Bmask;
  // [28]+(4)
  @Uint32()
  external int Amask;
  // [32]+(1)
  @Uint8()
  external int Rloss;
  // [33]+(1)
  @Uint8()
  external int Gloss;
  // [34]+(1)
  @Uint8()
  external int Bloss;
  // [35]+(1)
  @Uint8()
  external int Aloss;
  // [36]+(1)
  @Uint8()
  external int Rshift;
  // [37]+(1)
  @Uint8()
  external int Gshift;
  // [38]+(1)
  @Uint8()
  external int Bshift;
  // [39]+(1)
  @Uint8()
  external int Ashift;
  // [40]+(4)
  @Int32()
  external int refcount;
  // [44]+(8)
  external Pointer<SDL_PixelFormat>? next;
}

class SDL_Point extends Struct {
  // [0]+(4)
  @Int32()
  external int x;
  // [4]+(4)
  @Int32()
  external int y;
}

class SDL_FPoint extends Struct {
  // [0]+(4)
  @Float()
  external double x;
  // [4]+(4)
  @Float()
  external double y;
}

class SDL_Rect extends Struct {
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

class SDL_FRect extends Struct {
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

class SDL_RendererInfo extends Struct {
  // [0]+(8)
  external Pointer<Utf8>? name;
  // [8]+(4)
  @Uint32()
  external int flags;
  // [12]+(4)
  @Uint32()
  external int num_texture_formats;
  // [16]+(4*16)
  @Uint32()
  external int texture_formats_1;
  @Uint32()
  external int texture_formats_2;
  @Uint32()
  external int texture_formats_3;
  @Uint32()
  external int texture_formats_4;
  @Uint32()
  external int texture_formats_5;
  @Uint32()
  external int texture_formats_6;
  @Uint32()
  external int texture_formats_7;
  @Uint32()
  external int texture_formats_8;
  @Uint32()
  external int texture_formats_9;
  @Uint32()
  external int texture_formats_10;
  @Uint32()
  external int texture_formats_11;
  @Uint32()
  external int texture_formats_12;
  @Uint32()
  external int texture_formats_13;
  @Uint32()
  external int texture_formats_14;
  @Uint32()
  external int texture_formats_15;
  @Uint32()
  external int texture_formats_16;
  // [80]+(4)
  @Int32()
  external int max_texture_width;
  // [84]+(4)
  @Int32()
  external int max_texture_height;
}

class SDL_Vertex extends Struct {
  // [0]+(8)
  @Uint64()
  external int position_1;
  // [8]+(4)
  @Uint32()
  external int color_1;
  // [12]+(8)
  @Uint64()
  external int tex_coord_1;
}
// ignore: camel_case_extensions
extension SDL_VertexExtension on Pointer<SDL_Vertex> {
  Pointer<SDL_FPoint> get position => cast<Uint8>().elementAt(0).cast<SDL_FPoint>();
  Pointer<SDL_Color> get color => cast<Uint8>().elementAt(8).cast<SDL_Color>();
  Pointer<SDL_FPoint> get tex_coord => cast<Uint8>().elementAt(12).cast<SDL_FPoint>();
}

class SDL_Renderer extends Opaque {}

class SDL_Texture extends Opaque {}

class SDL_RWops extends Struct {
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
  // [44]+(8)
  external Pointer<Void>?  hidden;
}

class SDL_Sensor extends Opaque {}

class SDL_WindowShapeParams extends Struct {
  // [0]+(4)
  @Uint32()
  external int union_1;
}
// ignore: camel_case_extensions
extension SDL_WindowShapeParamsExtension on Pointer<SDL_WindowShapeParams> {
  int get binarizationCutoff => cast<Uint8>().elementAt(0).cast<Uint8>().value;
  Pointer<SDL_Color> get colorKey => cast<Uint8>().elementAt(0).cast<SDL_Color>();
}

class SDL_WindowShapeMode extends Struct {
  // [0]+(4)
  @Int32()
  external int mode;
  // [4]+(4)
  @Uint32()
  external int parameters_1;
}
// ignore: camel_case_extensions
extension SDL_WindowShapeModeExtension on Pointer<SDL_WindowShapeMode> {
  Pointer<SDL_WindowShapeParams> get parameters => cast<Uint8>().elementAt(4).cast<SDL_WindowShapeParams>();
}

class SDL_iconv_t extends Opaque {}

class SDL_BlitMap extends Opaque {}

class SDL_Surface extends Struct {
  // [0]+(4)
  @Uint32()
  external int flags;
  // [4]+(8)
  external Pointer<SDL_PixelFormat>? format;
  // [12]+(4)
  @Int32()
  external int w;
  // [16]+(4)
  @Int32()
  external int h;
  // [20]+(4)
  @Int32()
  external int pitch;
  // [24]+(8)
  external Pointer<Void>? pixels;
  // [32]+(8)
  external Pointer<Void>? userdata;
  // [40]+(4)
  @Int32()
  external int locked;
  // [44]+(8)
  external Pointer<Void>? list_blitmap;
  // [52]+(16)
  @Uint64()
  external int clip_rect_1;
  @Uint64()
  external int clip_rect_2;
  // [68]+(8)
  external Pointer<Pointer<Void>>? map;
  // [76]+(4)
  @Int32()
  external int refcount;
}
// ignore: camel_case_extensions
extension SDL_SurfaceExtension on Pointer<SDL_Surface> {
  Pointer<SDL_Rect> get clip_rect => cast<Uint8>().elementAt(52).cast<SDL_Rect>();
}

class IDirect3DDevice9 extends Opaque {}

class ID3D11Device extends Opaque {}

class ID3D12Device extends Opaque {}

class XTaskQueueHandle extends Opaque {}

class NSWindow extends Opaque {}

class UIWindow extends Opaque {}

class UIViewController extends Opaque {}

class ANativeWindow extends Opaque {}

class SDL_SysWMinfo extends Opaque {}

class SDL_Thread extends Opaque {}

class SDL_Finger extends Struct {
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
}

class SDL_version extends Struct {
  // [0]+(1)
  @Uint8()
  external int major;
  // [1]+(1)
  @Uint8()
  external int minor;
  // [2]+(1)
  @Uint8()
  external int patch;
}

class SDL_DisplayMode extends Struct {
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
  external int refresh_rate;
  // [16]+(8)
  external Pointer<Void>? driverdata;
}

class SDL_Window extends Opaque {}

