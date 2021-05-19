// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
class SDL_assert_data extends Struct {
  // [0]+(4)
  @Int32()
  int always_ignore;
  // [4]+(4)
  @Uint32()
  int trigger_count;
  // [8]+(8)
  Pointer<Utf8> condition;
  // [16]+(8)
  Pointer<Utf8> filename;
  // [24]+(4)
  @Int32()
  int linenum;
  // [28]+(8)
  Pointer<Utf8> function;
  // [36]+(8)
  Pointer<SDL_assert_data> next;
}

class SDL_atomic_t extends Struct {
  // [0]+(4)
  @Int32()
  int value;
}

class SDL_AudioSpec extends Struct {
  // [0]+(4)
  @Int32()
  int freq;
  // [4]+(2)
  @Uint16()
  int format;
  // [6]+(1)
  @Uint8()
  int channels;
  // [7]+(1)
  @Uint8()
  int silence;
  // [8]+(2)
  @Uint16()
  int samples;
  // [10]+(2)
  @Uint16()
  int padding;
  // [12]+(4)
  @Uint32()
  int size;
  // [16]+(8)
  Pointer<Void> callback;
  // [24]+(8)
  Pointer<Void> userdata;
}

class SDL_AudioCVT extends Struct {
  // [0]+(4)
  @Int32()
  int needed;
  // [4]+(2)
  @Uint16()
  int src_format;
  // [6]+(2)
  @Uint16()
  int dst_format;
  // [8]+(8)
  @Double()
  double rate_incr;
  // [16]+(8)
  Pointer<Uint8> buf;
  // [24]+(4)
  @Int32()
  int len;
  // [28]+(4)
  @Int32()
  int len_cvt;
  // [32]+(4)
  @Int32()
  int len_mult;
  // [36]+(8)
  @Double()
  double len_ratio;
  // [44]+(8*10)
  Pointer<Void> filters_1;
  Pointer<Void> filters_2;
  Pointer<Void> filters_3;
  Pointer<Void> filters_4;
  Pointer<Void> filters_5;
  Pointer<Void> filters_6;
  Pointer<Void> filters_7;
  Pointer<Void> filters_8;
  Pointer<Void> filters_9;
  Pointer<Void> filters_10;
  // [124]+(4)
  @Int32()
  int filter_index;
}

class SDL_CommonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
}

class SDL_WindowEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(1)
  @Uint8()
  int event;
  // [13]+(1)
  @Uint8()
  int padding1;
  // [14]+(1)
  @Uint8()
  int padding2;
  // [15]+(1)
  @Uint8()
  int padding3;
  // [16]+(4)
  @Int32()
  int data1;
  // [20]+(4)
  @Int32()
  int data2;
}

class SDL_KeyboardEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(1)
  @Uint8()
  int state;
  // [13]+(1)
  @Uint8()
  int repeat;
  // [14]+(1)
  @Uint8()
  int padding2;
  // [15]+(1)
  @Uint8()
  int padding3;
  // [16]+(14)
  @Uint64()
  int keysym_1;
  @Uint32()
  int keysym_2;
  @Uint16()
  int keysym_3;
}
// ignore: camel_case_extensions
extension SDL_KeyboardEventExtension on Pointer<SDL_KeyboardEvent> {
  SDL_Keysym get keysym => cast<Uint8>().elementAt(16).cast<SDL_Keysym>().ref;
}

class SDL_TextEditingEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(1*32)
  @Int8()
  int text_1;
  @Int8()
  int text_2;
  @Int8()
  int text_3;
  @Int8()
  int text_4;
  @Int8()
  int text_5;
  @Int8()
  int text_6;
  @Int8()
  int text_7;
  @Int8()
  int text_8;
  @Int8()
  int text_9;
  @Int8()
  int text_10;
  @Int8()
  int text_11;
  @Int8()
  int text_12;
  @Int8()
  int text_13;
  @Int8()
  int text_14;
  @Int8()
  int text_15;
  @Int8()
  int text_16;
  @Int8()
  int text_17;
  @Int8()
  int text_18;
  @Int8()
  int text_19;
  @Int8()
  int text_20;
  @Int8()
  int text_21;
  @Int8()
  int text_22;
  @Int8()
  int text_23;
  @Int8()
  int text_24;
  @Int8()
  int text_25;
  @Int8()
  int text_26;
  @Int8()
  int text_27;
  @Int8()
  int text_28;
  @Int8()
  int text_29;
  @Int8()
  int text_30;
  @Int8()
  int text_31;
  @Int8()
  int text_32;
  // [44]+(4)
  @Int32()
  int start;
  // [48]+(4)
  @Int32()
  int length;
}

class SDL_TextInputEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(1*32)
  @Int8()
  int text_1;
  @Int8()
  int text_2;
  @Int8()
  int text_3;
  @Int8()
  int text_4;
  @Int8()
  int text_5;
  @Int8()
  int text_6;
  @Int8()
  int text_7;
  @Int8()
  int text_8;
  @Int8()
  int text_9;
  @Int8()
  int text_10;
  @Int8()
  int text_11;
  @Int8()
  int text_12;
  @Int8()
  int text_13;
  @Int8()
  int text_14;
  @Int8()
  int text_15;
  @Int8()
  int text_16;
  @Int8()
  int text_17;
  @Int8()
  int text_18;
  @Int8()
  int text_19;
  @Int8()
  int text_20;
  @Int8()
  int text_21;
  @Int8()
  int text_22;
  @Int8()
  int text_23;
  @Int8()
  int text_24;
  @Int8()
  int text_25;
  @Int8()
  int text_26;
  @Int8()
  int text_27;
  @Int8()
  int text_28;
  @Int8()
  int text_29;
  @Int8()
  int text_30;
  @Int8()
  int text_31;
  @Int8()
  int text_32;
}

class SDL_MouseMotionEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(4)
  @Uint32()
  int which;
  // [16]+(4)
  @Uint32()
  int state;
  // [20]+(4)
  @Int32()
  int x;
  // [24]+(4)
  @Int32()
  int y;
  // [28]+(4)
  @Int32()
  int xrel;
  // [32]+(4)
  @Int32()
  int yrel;
}

class SDL_MouseButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(4)
  @Uint32()
  int which;
  // [16]+(1)
  @Uint8()
  int button;
  // [17]+(1)
  @Uint8()
  int state;
  // [18]+(1)
  @Uint8()
  int padding1;
  // [19]+(1)
  @Uint8()
  int padding2;
  // [20]+(4)
  @Int32()
  int x;
  // [24]+(4)
  @Int32()
  int y;
}

class SDL_MouseWheelEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(4)
  @Uint32()
  int which;
  // [16]+(4)
  @Int32()
  int x;
  // [20]+(4)
  @Int32()
  int y;
}

class SDL_JoyAxisEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
  // [12]+(1)
  @Uint8()
  int axis;
  // [13]+(1)
  @Uint8()
  int padding1;
  // [14]+(1)
  @Uint8()
  int padding2;
  // [15]+(1)
  @Uint8()
  int padding3;
  // [16]+(2)
  @Int16()
  int value;
  // [18]+(2)
  @Uint16()
  int padding4;
}

class SDL_JoyBallEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
  // [12]+(1)
  @Uint8()
  int ball;
  // [13]+(1)
  @Uint8()
  int padding1;
  // [14]+(1)
  @Uint8()
  int padding2;
  // [15]+(1)
  @Uint8()
  int padding3;
  // [16]+(2)
  @Int16()
  int xrel;
  // [18]+(2)
  @Int16()
  int yrel;
}

class SDL_JoyHatEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
  // [12]+(1)
  @Uint8()
  int hat;
  // [13]+(1)
  @Uint8()
  int value;
  // [14]+(1)
  @Uint8()
  int padding1;
  // [15]+(1)
  @Uint8()
  int padding2;
}

class SDL_JoyButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
  // [12]+(1)
  @Uint8()
  int button;
  // [13]+(1)
  @Uint8()
  int state;
  // [14]+(1)
  @Uint8()
  int padding1;
  // [15]+(1)
  @Uint8()
  int padding2;
}

class SDL_JoyDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
}

class SDL_ControllerAxisEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
  // [12]+(1)
  @Uint8()
  int axis;
  // [13]+(1)
  @Uint8()
  int padding1;
  // [14]+(1)
  @Uint8()
  int padding2;
  // [15]+(1)
  @Uint8()
  int padding3;
  // [16]+(2)
  @Int16()
  int value;
  // [18]+(2)
  @Uint16()
  int padding4;
}

class SDL_ControllerButtonEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
  // [12]+(1)
  @Uint8()
  int button;
  // [13]+(1)
  @Uint8()
  int state;
  // [14]+(1)
  @Uint8()
  int padding1;
  // [15]+(1)
  @Uint8()
  int padding2;
}

class SDL_ControllerDeviceEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Int32()
  int which;
}

class SDL_TouchFingerEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(8)
  @Int64()
  int touchId;
  // [16]+(8)
  @Int64()
  int fingerId;
  // [24]+(4)
  @Float()
  double x;
  // [28]+(4)
  @Float()
  double y;
  // [32]+(4)
  @Float()
  double dx;
  // [36]+(4)
  @Float()
  double dy;
  // [40]+(4)
  @Float()
  double pressure;
}

class SDL_MultiGestureEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(8)
  @Int64()
  int touchId;
  // [16]+(4)
  @Float()
  double dTheta;
  // [20]+(4)
  @Float()
  double dDist;
  // [24]+(4)
  @Float()
  double x;
  // [28]+(4)
  @Float()
  double y;
  // [32]+(2)
  @Uint16()
  int numFingers;
  // [34]+(2)
  @Uint16()
  int padding;
}

class SDL_DollarGestureEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(8)
  @Int64()
  int touchId;
  // [16]+(8)
  @Int64()
  int gestureId;
  // [24]+(4)
  @Uint32()
  int numFingers;
  // [28]+(4)
  @Float()
  double error;
  // [32]+(4)
  @Float()
  double x;
  // [36]+(4)
  @Float()
  double y;
}

class SDL_DropEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(8)
  Pointer<Int8> file;
}

class SDL_QuitEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
}

class SDL_OSEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
}

class SDL_UserEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(4)
  @Uint32()
  int windowID;
  // [12]+(4)
  @Int32()
  int code;
  // [16]+(8)
  Pointer<Void> data1;
  // [24]+(8)
  Pointer<Void> data2;
}

class SDL_SysWMmsg extends Opaque {}

class SDL_SysWMEvent extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(4)
  @Uint32()
  int timestamp;
  // [8]+(8)
  Pointer<SDL_SysWMmsg> msg;
}

class SDL_Event extends Struct {
  // [0]+(4)
  @Uint32()
  int type;
  // [4]+(8)
  @Uint64()
  int common_1;
  // [12]+(24)
  @Uint64()
  int window_1;
  @Uint64()
  int window_2;
  @Uint64()
  int window_3;
  // [36]+(30)
  @Uint64()
  int key_1;
  @Uint64()
  int key_2;
  @Uint64()
  int key_3;
  @Uint32()
  int key_4;
  @Uint16()
  int key_5;
  // [66]+(52)
  @Uint64()
  int edit_1;
  @Uint64()
  int edit_2;
  @Uint64()
  int edit_3;
  @Uint64()
  int edit_4;
  @Uint64()
  int edit_5;
  @Uint64()
  int edit_6;
  @Uint32()
  int edit_7;
  // [118]+(44)
  @Uint64()
  int text_1;
  @Uint64()
  int text_2;
  @Uint64()
  int text_3;
  @Uint64()
  int text_4;
  @Uint64()
  int text_5;
  @Uint32()
  int text_6;
  // [162]+(36)
  @Uint64()
  int motion_1;
  @Uint64()
  int motion_2;
  @Uint64()
  int motion_3;
  @Uint64()
  int motion_4;
  @Uint32()
  int motion_5;
  // [198]+(28)
  @Uint64()
  int button_1;
  @Uint64()
  int button_2;
  @Uint64()
  int button_3;
  @Uint32()
  int button_4;
  // [226]+(24)
  @Uint64()
  int wheel_1;
  @Uint64()
  int wheel_2;
  @Uint64()
  int wheel_3;
  // [250]+(20)
  @Uint64()
  int jaxis_1;
  @Uint64()
  int jaxis_2;
  @Uint32()
  int jaxis_3;
  // [270]+(20)
  @Uint64()
  int jball_1;
  @Uint64()
  int jball_2;
  @Uint32()
  int jball_3;
  // [290]+(16)
  @Uint64()
  int jhat_1;
  @Uint64()
  int jhat_2;
  // [306]+(16)
  @Uint64()
  int jbutton_1;
  @Uint64()
  int jbutton_2;
  // [322]+(12)
  @Uint64()
  int jdevice_1;
  @Uint32()
  int jdevice_2;
  // [334]+(20)
  @Uint64()
  int caxis_1;
  @Uint64()
  int caxis_2;
  @Uint32()
  int caxis_3;
  // [354]+(16)
  @Uint64()
  int cbutton_1;
  @Uint64()
  int cbutton_2;
  // [370]+(12)
  @Uint64()
  int cdevice_1;
  @Uint32()
  int cdevice_2;
  // [382]+(8)
  @Uint64()
  int quit_1;
  // [390]+(32)
  @Uint64()
  int user_1;
  @Uint64()
  int user_2;
  @Uint64()
  int user_3;
  @Uint64()
  int user_4;
  // [422]+(16)
  @Uint64()
  int syswm_1;
  @Uint64()
  int syswm_2;
  // [438]+(44)
  @Uint64()
  int tfinger_1;
  @Uint64()
  int tfinger_2;
  @Uint64()
  int tfinger_3;
  @Uint64()
  int tfinger_4;
  @Uint64()
  int tfinger_5;
  @Uint32()
  int tfinger_6;
  // [482]+(36)
  @Uint64()
  int mgesture_1;
  @Uint64()
  int mgesture_2;
  @Uint64()
  int mgesture_3;
  @Uint64()
  int mgesture_4;
  @Uint32()
  int mgesture_5;
  // [518]+(40)
  @Uint64()
  int dgesture_1;
  @Uint64()
  int dgesture_2;
  @Uint64()
  int dgesture_3;
  @Uint64()
  int dgesture_4;
  @Uint64()
  int dgesture_5;
  // [558]+(16)
  @Uint64()
  int drop_1;
  @Uint64()
  int drop_2;
  // [574]+(1*56)
  @Uint8()
  int padding_1;
  @Uint8()
  int padding_2;
  @Uint8()
  int padding_3;
  @Uint8()
  int padding_4;
  @Uint8()
  int padding_5;
  @Uint8()
  int padding_6;
  @Uint8()
  int padding_7;
  @Uint8()
  int padding_8;
  @Uint8()
  int padding_9;
  @Uint8()
  int padding_10;
  @Uint8()
  int padding_11;
  @Uint8()
  int padding_12;
  @Uint8()
  int padding_13;
  @Uint8()
  int padding_14;
  @Uint8()
  int padding_15;
  @Uint8()
  int padding_16;
  @Uint8()
  int padding_17;
  @Uint8()
  int padding_18;
  @Uint8()
  int padding_19;
  @Uint8()
  int padding_20;
  @Uint8()
  int padding_21;
  @Uint8()
  int padding_22;
  @Uint8()
  int padding_23;
  @Uint8()
  int padding_24;
  @Uint8()
  int padding_25;
  @Uint8()
  int padding_26;
  @Uint8()
  int padding_27;
  @Uint8()
  int padding_28;
  @Uint8()
  int padding_29;
  @Uint8()
  int padding_30;
  @Uint8()
  int padding_31;
  @Uint8()
  int padding_32;
  @Uint8()
  int padding_33;
  @Uint8()
  int padding_34;
  @Uint8()
  int padding_35;
  @Uint8()
  int padding_36;
  @Uint8()
  int padding_37;
  @Uint8()
  int padding_38;
  @Uint8()
  int padding_39;
  @Uint8()
  int padding_40;
  @Uint8()
  int padding_41;
  @Uint8()
  int padding_42;
  @Uint8()
  int padding_43;
  @Uint8()
  int padding_44;
  @Uint8()
  int padding_45;
  @Uint8()
  int padding_46;
  @Uint8()
  int padding_47;
  @Uint8()
  int padding_48;
  @Uint8()
  int padding_49;
  @Uint8()
  int padding_50;
  @Uint8()
  int padding_51;
  @Uint8()
  int padding_52;
  @Uint8()
  int padding_53;
  @Uint8()
  int padding_54;
  @Uint8()
  int padding_55;
  @Uint8()
  int padding_56;
}
// ignore: camel_case_extensions
extension SDL_EventExtension on Pointer<SDL_Event> {
  SDL_CommonEvent get common => cast<Uint8>().elementAt(4).cast<SDL_CommonEvent>().ref;
  SDL_WindowEvent get window => cast<Uint8>().elementAt(12).cast<SDL_WindowEvent>().ref;
  SDL_KeyboardEvent get key => cast<Uint8>().elementAt(36).cast<SDL_KeyboardEvent>().ref;
  SDL_TextEditingEvent get edit => cast<Uint8>().elementAt(66).cast<SDL_TextEditingEvent>().ref;
  SDL_TextInputEvent get text => cast<Uint8>().elementAt(118).cast<SDL_TextInputEvent>().ref;
  SDL_MouseMotionEvent get motion => cast<Uint8>().elementAt(162).cast<SDL_MouseMotionEvent>().ref;
  SDL_MouseButtonEvent get button => cast<Uint8>().elementAt(198).cast<SDL_MouseButtonEvent>().ref;
  SDL_MouseWheelEvent get wheel => cast<Uint8>().elementAt(226).cast<SDL_MouseWheelEvent>().ref;
  SDL_JoyAxisEvent get jaxis => cast<Uint8>().elementAt(250).cast<SDL_JoyAxisEvent>().ref;
  SDL_JoyBallEvent get jball => cast<Uint8>().elementAt(270).cast<SDL_JoyBallEvent>().ref;
  SDL_JoyHatEvent get jhat => cast<Uint8>().elementAt(290).cast<SDL_JoyHatEvent>().ref;
  SDL_JoyButtonEvent get jbutton => cast<Uint8>().elementAt(306).cast<SDL_JoyButtonEvent>().ref;
  SDL_JoyDeviceEvent get jdevice => cast<Uint8>().elementAt(322).cast<SDL_JoyDeviceEvent>().ref;
  SDL_ControllerAxisEvent get caxis => cast<Uint8>().elementAt(334).cast<SDL_ControllerAxisEvent>().ref;
  SDL_ControllerButtonEvent get cbutton => cast<Uint8>().elementAt(354).cast<SDL_ControllerButtonEvent>().ref;
  SDL_ControllerDeviceEvent get cdevice => cast<Uint8>().elementAt(370).cast<SDL_ControllerDeviceEvent>().ref;
  SDL_QuitEvent get quit => cast<Uint8>().elementAt(382).cast<SDL_QuitEvent>().ref;
  SDL_UserEvent get user => cast<Uint8>().elementAt(390).cast<SDL_UserEvent>().ref;
  SDL_SysWMEvent get syswm => cast<Uint8>().elementAt(422).cast<SDL_SysWMEvent>().ref;
  SDL_TouchFingerEvent get tfinger => cast<Uint8>().elementAt(438).cast<SDL_TouchFingerEvent>().ref;
  SDL_MultiGestureEvent get mgesture => cast<Uint8>().elementAt(482).cast<SDL_MultiGestureEvent>().ref;
  SDL_DollarGestureEvent get dgesture => cast<Uint8>().elementAt(518).cast<SDL_DollarGestureEvent>().ref;
  SDL_DropEvent get drop => cast<Uint8>().elementAt(558).cast<SDL_DropEvent>().ref;
}

class SDL_GameController extends Opaque {}

class SDL_GameControllerButtonBind extends Struct {
  // [0]+(4)
  @Int32()
  int bindType;
  // [4]+(8)
  Pointer<Void>  value;
}

class SDL_Haptic extends Opaque {}

class SDL_HapticDirection extends Struct {
  // [0]+(1)
  @Uint8()
  int type;
  // [1]+(4*3)
  @Int32()
  int dir_1;
  @Int32()
  int dir_2;
  @Int32()
  int dir_3;
}

class SDL_HapticConstant extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(13)
  @Uint64()
  int direction_1;
  @Uint32()
  int direction_2;
  @Uint8()
  int direction_3;
  // [15]+(4)
  @Uint32()
  int length;
  // [19]+(2)
  @Uint16()
  int delay;
  // [21]+(2)
  @Uint16()
  int button;
  // [23]+(2)
  @Uint16()
  int interval;
  // [25]+(2)
  @Int16()
  int level;
  // [27]+(2)
  @Uint16()
  int attack_length;
  // [29]+(2)
  @Uint16()
  int attack_level;
  // [31]+(2)
  @Uint16()
  int fade_length;
  // [33]+(2)
  @Uint16()
  int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticConstantExtension on Pointer<SDL_HapticConstant> {
  SDL_HapticDirection get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>().ref;
}

class SDL_HapticPeriodic extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(13)
  @Uint64()
  int direction_1;
  @Uint32()
  int direction_2;
  @Uint8()
  int direction_3;
  // [15]+(4)
  @Uint32()
  int length;
  // [19]+(2)
  @Uint16()
  int delay;
  // [21]+(2)
  @Uint16()
  int button;
  // [23]+(2)
  @Uint16()
  int interval;
  // [25]+(2)
  @Uint16()
  int period;
  // [27]+(2)
  @Int16()
  int magnitude;
  // [29]+(2)
  @Int16()
  int offset;
  // [31]+(2)
  @Uint16()
  int phase;
  // [33]+(2)
  @Uint16()
  int attack_length;
  // [35]+(2)
  @Uint16()
  int attack_level;
  // [37]+(2)
  @Uint16()
  int fade_length;
  // [39]+(2)
  @Uint16()
  int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticPeriodicExtension on Pointer<SDL_HapticPeriodic> {
  SDL_HapticDirection get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>().ref;
}

class SDL_HapticCondition extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(13)
  @Uint64()
  int direction_1;
  @Uint32()
  int direction_2;
  @Uint8()
  int direction_3;
  // [15]+(4)
  @Uint32()
  int length;
  // [19]+(2)
  @Uint16()
  int delay;
  // [21]+(2)
  @Uint16()
  int button;
  // [23]+(2)
  @Uint16()
  int interval;
  // [25]+(2*3)
  @Uint16()
  int right_sat_1;
  @Uint16()
  int right_sat_2;
  @Uint16()
  int right_sat_3;
  // [31]+(2*3)
  @Uint16()
  int left_sat_1;
  @Uint16()
  int left_sat_2;
  @Uint16()
  int left_sat_3;
  // [37]+(2*3)
  @Int16()
  int right_coeff_1;
  @Int16()
  int right_coeff_2;
  @Int16()
  int right_coeff_3;
  // [43]+(2*3)
  @Int16()
  int left_coeff_1;
  @Int16()
  int left_coeff_2;
  @Int16()
  int left_coeff_3;
  // [49]+(2*3)
  @Uint16()
  int deadband_1;
  @Uint16()
  int deadband_2;
  @Uint16()
  int deadband_3;
  // [55]+(2*3)
  @Int16()
  int center_1;
  @Int16()
  int center_2;
  @Int16()
  int center_3;
}
// ignore: camel_case_extensions
extension SDL_HapticConditionExtension on Pointer<SDL_HapticCondition> {
  SDL_HapticDirection get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>().ref;
}

class SDL_HapticRamp extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(13)
  @Uint64()
  int direction_1;
  @Uint32()
  int direction_2;
  @Uint8()
  int direction_3;
  // [15]+(4)
  @Uint32()
  int length;
  // [19]+(2)
  @Uint16()
  int delay;
  // [21]+(2)
  @Uint16()
  int button;
  // [23]+(2)
  @Uint16()
  int interval;
  // [25]+(2)
  @Int16()
  int start;
  // [27]+(2)
  @Int16()
  int end;
  // [29]+(2)
  @Uint16()
  int attack_length;
  // [31]+(2)
  @Uint16()
  int attack_level;
  // [33]+(2)
  @Uint16()
  int fade_length;
  // [35]+(2)
  @Uint16()
  int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticRampExtension on Pointer<SDL_HapticRamp> {
  SDL_HapticDirection get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>().ref;
}

class SDL_HapticLeftRight extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(4)
  @Uint32()
  int length;
  // [6]+(2)
  @Uint16()
  int large_magnitude;
  // [8]+(2)
  @Uint16()
  int small_magnitude;
}

class SDL_HapticCustom extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(13)
  @Uint64()
  int direction_1;
  @Uint32()
  int direction_2;
  @Uint8()
  int direction_3;
  // [15]+(4)
  @Uint32()
  int length;
  // [19]+(2)
  @Uint16()
  int delay;
  // [21]+(2)
  @Uint16()
  int button;
  // [23]+(2)
  @Uint16()
  int interval;
  // [25]+(1)
  @Uint8()
  int channels;
  // [26]+(2)
  @Uint16()
  int period;
  // [28]+(2)
  @Uint16()
  int samples;
  // [30]+(8)
  Pointer<Uint16> data;
  // [38]+(2)
  @Uint16()
  int attack_length;
  // [40]+(2)
  @Uint16()
  int attack_level;
  // [42]+(2)
  @Uint16()
  int fade_length;
  // [44]+(2)
  @Uint16()
  int fade_level;
}
// ignore: camel_case_extensions
extension SDL_HapticCustomExtension on Pointer<SDL_HapticCustom> {
  SDL_HapticDirection get direction => cast<Uint8>().elementAt(2).cast<SDL_HapticDirection>().ref;
}

class SDL_HapticEffect extends Struct {
  // [0]+(2)
  @Uint16()
  int type;
  // [2]+(35)
  @Uint64()
  int ant_1;
  @Uint64()
  int ant_2;
  @Uint64()
  int ant_3;
  @Uint64()
  int ant_4;
  @Uint16()
  int ant_5;
  @Uint8()
  int ant_6;
  // [37]+(41)
  @Uint64()
  int periodic_1;
  @Uint64()
  int periodic_2;
  @Uint64()
  int periodic_3;
  @Uint64()
  int periodic_4;
  @Uint64()
  int periodic_5;
  @Uint8()
  int periodic_6;
  // [78]+(61)
  @Uint64()
  int condition_1;
  @Uint64()
  int condition_2;
  @Uint64()
  int condition_3;
  @Uint64()
  int condition_4;
  @Uint64()
  int condition_5;
  @Uint64()
  int condition_6;
  @Uint64()
  int condition_7;
  @Uint32()
  int condition_8;
  @Uint8()
  int condition_9;
  // [139]+(37)
  @Uint64()
  int ramp_1;
  @Uint64()
  int ramp_2;
  @Uint64()
  int ramp_3;
  @Uint64()
  int ramp_4;
  @Uint32()
  int ramp_5;
  @Uint8()
  int ramp_6;
  // [176]+(10)
  @Uint64()
  int leftright_1;
  @Uint16()
  int leftright_2;
  // [186]+(46)
  @Uint64()
  int custom_1;
  @Uint64()
  int custom_2;
  @Uint64()
  int custom_3;
  @Uint64()
  int custom_4;
  @Uint64()
  int custom_5;
  @Uint32()
  int custom_6;
  @Uint16()
  int custom_7;
}
// ignore: camel_case_extensions
extension SDL_HapticEffectExtension on Pointer<SDL_HapticEffect> {
  SDL_HapticConstant get ant => cast<Uint8>().elementAt(2).cast<SDL_HapticConstant>().ref;
  SDL_HapticPeriodic get periodic => cast<Uint8>().elementAt(37).cast<SDL_HapticPeriodic>().ref;
  SDL_HapticCondition get condition => cast<Uint8>().elementAt(78).cast<SDL_HapticCondition>().ref;
  SDL_HapticRamp get ramp => cast<Uint8>().elementAt(139).cast<SDL_HapticRamp>().ref;
  SDL_HapticLeftRight get leftright => cast<Uint8>().elementAt(176).cast<SDL_HapticLeftRight>().ref;
  SDL_HapticCustom get custom => cast<Uint8>().elementAt(186).cast<SDL_HapticCustom>().ref;
}

class SDL_Joystick extends Opaque {}

class SDL_JoystickGUID extends Struct {
  // [0]+(1*16)
  @Uint8()
  int data_1;
  @Uint8()
  int data_2;
  @Uint8()
  int data_3;
  @Uint8()
  int data_4;
  @Uint8()
  int data_5;
  @Uint8()
  int data_6;
  @Uint8()
  int data_7;
  @Uint8()
  int data_8;
  @Uint8()
  int data_9;
  @Uint8()
  int data_10;
  @Uint8()
  int data_11;
  @Uint8()
  int data_12;
  @Uint8()
  int data_13;
  @Uint8()
  int data_14;
  @Uint8()
  int data_15;
  @Uint8()
  int data_16;
}

class SDL_Keysym extends Struct {
  // [0]+(4)
  @Int32()
  int scancode;
  // [4]+(4)
  @Int32()
  int sym;
  // [8]+(2)
  @Uint16()
  int mod;
  // [10]+(4)
  @Uint32()
  int unused;
}

class SDL_MessageBoxButtonData extends Struct {
  // [0]+(4)
  @Uint32()
  int flags;
  // [4]+(4)
  @Int32()
  int buttonid;
  // [8]+(8)
  Pointer<Utf8> text;
}

class SDL_MessageBoxColor extends Struct {
  // [0]+(1)
  @Uint8()
  int r;
  // [1]+(1)
  @Uint8()
  int g;
  // [2]+(1)
  @Uint8()
  int b;
}

class SDL_MessageBoxColorScheme extends Struct {
  // [0]+(3*5)
  @Uint64()
  int colors_1;
  @Uint32()
  int colors_2;
  @Uint16()
  int colors_3;
  @Uint8()
  int colors_4;
}
// ignore: camel_case_extensions
extension SDL_MessageBoxColorSchemeExtension on Pointer<SDL_MessageBoxColorScheme> {
  List<SDL_MessageBoxColor> get colors {
    List<SDL_MessageBoxColor> list;
    for (var i = 0; i < 5; i++) {
      list.add(cast<Uint8>().elementAt(0 + i * 3).cast<SDL_MessageBoxColor>().ref);
    }
    return list;
  }
}

class SDL_MessageBoxData extends Struct {
  // [0]+(4)
  @Uint32()
  int flags;
  // [4]+(8)
  Pointer<SDL_Window> window;
  // [12]+(8)
  Pointer<Utf8> title;
  // [20]+(8)
  Pointer<Utf8> message;
  // [28]+(4)
  @Int32()
  int numbuttons;
  // [32]+(8)
  Pointer<SDL_MessageBoxButtonData> buttons;
  // [40]+(8)
  Pointer<SDL_MessageBoxColorScheme> colorScheme;
}

class SDL_Cursor extends Opaque {}

class SDL_mutex extends Opaque {}

class SDL_sem extends Opaque {}

class SDL_cond extends Opaque {}

class SDL_Color extends Struct {
  // [0]+(1)
  @Uint8()
  int r;
  // [1]+(1)
  @Uint8()
  int g;
  // [2]+(1)
  @Uint8()
  int b;
  // [3]+(1)
  @Uint8()
  int a;
}

class SDL_Palette extends Struct {
  // [0]+(4)
  @Int32()
  int ncolors;
  // [4]+(8)
  Pointer<SDL_Color> colors;
  // [12]+(4)
  @Uint32()
  int version;
  // [16]+(4)
  @Int32()
  int refcount;
}

class SDL_PixelFormat extends Struct {
  // [0]+(4)
  @Uint32()
  int format;
  // [4]+(8)
  Pointer<SDL_Palette> palette;
  // [12]+(1)
  @Uint8()
  int BitsPerPixel;
  // [13]+(1)
  @Uint8()
  int BytesPerPixel;
  // [14]+(1*2)
  @Uint8()
  int padding_1;
  @Uint8()
  int padding_2;
  // [16]+(4)
  @Uint32()
  int Rmask;
  // [20]+(4)
  @Uint32()
  int Gmask;
  // [24]+(4)
  @Uint32()
  int Bmask;
  // [28]+(4)
  @Uint32()
  int Amask;
  // [32]+(1)
  @Uint8()
  int Rloss;
  // [33]+(1)
  @Uint8()
  int Gloss;
  // [34]+(1)
  @Uint8()
  int Bloss;
  // [35]+(1)
  @Uint8()
  int Aloss;
  // [36]+(1)
  @Uint8()
  int Rshift;
  // [37]+(1)
  @Uint8()
  int Gshift;
  // [38]+(1)
  @Uint8()
  int Bshift;
  // [39]+(1)
  @Uint8()
  int Ashift;
  // [40]+(4)
  @Int32()
  int refcount;
  // [44]+(8)
  Pointer<SDL_PixelFormat> next;
}

class SDL_Point extends Struct {
  // [0]+(4)
  @Int32()
  int x;
  // [4]+(4)
  @Int32()
  int y;
}

class SDL_Rect extends Struct {
  // [0]+(4)
  @Int32()
  int x;
  // [4]+(4)
  @Int32()
  int y;
  // [8]+(4)
  @Int32()
  int w;
  // [12]+(4)
  @Int32()
  int h;
}

class SDL_RendererInfo extends Struct {
  // [0]+(8)
  Pointer<Utf8> name;
  // [8]+(4)
  @Uint32()
  int flags;
  // [12]+(4)
  @Uint32()
  int num_texture_formats;
  // [16]+(4*16)
  @Uint32()
  int texture_formats_1;
  @Uint32()
  int texture_formats_2;
  @Uint32()
  int texture_formats_3;
  @Uint32()
  int texture_formats_4;
  @Uint32()
  int texture_formats_5;
  @Uint32()
  int texture_formats_6;
  @Uint32()
  int texture_formats_7;
  @Uint32()
  int texture_formats_8;
  @Uint32()
  int texture_formats_9;
  @Uint32()
  int texture_formats_10;
  @Uint32()
  int texture_formats_11;
  @Uint32()
  int texture_formats_12;
  @Uint32()
  int texture_formats_13;
  @Uint32()
  int texture_formats_14;
  @Uint32()
  int texture_formats_15;
  @Uint32()
  int texture_formats_16;
  // [80]+(4)
  @Int32()
  int max_texture_width;
  // [84]+(4)
  @Int32()
  int max_texture_height;
}

class SDL_Renderer extends Opaque {}

class SDL_Texture extends Opaque {}

class SDL_RWops extends Struct {
  // [0]+(8)
  Pointer<Void> size;
  // [8]+(8)
  Pointer<Void> seek;
  // [16]+(8)
  Pointer<Void> read;
  // [24]+(8)
  Pointer<Void> write;
  // [32]+(8)
  Pointer<Void> close;
  // [40]+(4)
  @Uint32()
  int type;
  // [44]+(8)
  Pointer<Void>  hidden;
}

class SDL_WindowShapeParams extends Struct {
  // [0]+(1)
  @Uint8()
  int binarizationCutoff;
  // [1]+(4)
  @Uint32()
  int colorKey_1;
}
// ignore: camel_case_extensions
extension SDL_WindowShapeParamsExtension on Pointer<SDL_WindowShapeParams> {
  SDL_Color get colorKey => cast<Uint8>().elementAt(1).cast<SDL_Color>().ref;
}

class SDL_WindowShapeMode extends Struct {
  // [0]+(4)
  @Int32()
  int mode;
  // [4]+(5)
  @Uint32()
  int parameters_1;
  @Uint8()
  int parameters_2;
}
// ignore: camel_case_extensions
extension SDL_WindowShapeModeExtension on Pointer<SDL_WindowShapeMode> {
  SDL_WindowShapeParams get parameters => cast<Uint8>().elementAt(4).cast<SDL_WindowShapeParams>().ref;
}

class SDL_iconv_t extends Opaque {}

class SDL_Surface extends Struct {
  // [0]+(4)
  @Uint32()
  int flags;
  // [4]+(8)
  Pointer<SDL_PixelFormat> format;
  // [12]+(4)
  @Int32()
  int w;
  // [16]+(4)
  @Int32()
  int h;
  // [20]+(4)
  @Int32()
  int pitch;
  // [24]+(8)
  Pointer<Void> pixels;
  // [32]+(8)
  Pointer<Void> userdata;
  // [40]+(4)
  @Int32()
  int locked;
  // [44]+(8)
  Pointer<Void> lock_data;
  // [52]+(16)
  @Uint64()
  int clip_rect_1;
  @Uint64()
  int clip_rect_2;
  // [68]+(8)
  Pointer<Pointer<Void>> map;
  // [76]+(4)
  @Int32()
  int refcount;
}
// ignore: camel_case_extensions
extension SDL_SurfaceExtension on Pointer<SDL_Surface> {
  SDL_Rect get clip_rect => cast<Uint8>().elementAt(52).cast<SDL_Rect>().ref;
}

class NSWindow extends Opaque {}

class UIWindow extends Opaque {}

class SDL_SysWMinfo extends Opaque {}

class SDL_Thread extends Opaque {}

class SDL_Finger extends Struct {
  // [0]+(8)
  @Int64()
  int id;
  // [8]+(4)
  @Float()
  double x;
  // [12]+(4)
  @Float()
  double y;
  // [16]+(4)
  @Float()
  double pressure;
}

class SDL_version extends Struct {
  // [0]+(1)
  @Uint8()
  int major;
  // [1]+(1)
  @Uint8()
  int minor;
  // [2]+(1)
  @Uint8()
  int patch;
}

class SDL_DisplayMode extends Struct {
  // [0]+(4)
  @Uint32()
  int format;
  // [4]+(4)
  @Int32()
  int w;
  // [8]+(4)
  @Int32()
  int h;
  // [12]+(4)
  @Int32()
  int refresh_rate;
  // [16]+(8)
  Pointer<Void> driverdata;
}

class SDL_Window extends Opaque {}

