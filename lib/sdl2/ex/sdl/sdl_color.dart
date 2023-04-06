import 'dart:ffi';
import 'dart:typed_data';
import '../../generated/struct_sdl.dart';

extension SdlColorEx on SdlColor {
  // utirity
  static int rgbaToU32(int r, int g, int b, int a) {
    var u32 = 0;
    if (Endian.host == Endian.little) {
      u32 += (a & 0xff) << 24;
      u32 += (b & 0xff) << 16;
      u32 += (g & 0xff) << 8;
      u32 += (r & 0xff);
    } else {
      u32 += (r & 0xff) << 24;
      u32 += (g & 0xff) << 16;
      u32 += (b & 0xff) << 8;
      u32 += (a & 0xff);
    }
    return u32;
  }

  // https://api.flutter.dev/flutter/material/Colors-class.html
  // 0xffe91e63
  static int get pink => rgbaToU32(0xe9, 0x1e, 0x63, 0xff);
  // 0xffff4081
  static int get pinkAccent => rgbaToU32(0xff, 0x40, 0x81, 0xff);
  // 0xfff44336
  static int get red => rgbaToU32(0xf4, 0x43, 0x36, 0xff);
  // 0xffff5252
  static int get redAccent => rgbaToU32(0xff, 0x52, 0x52, 0xff);
  // 0xffff5722
  static int get deepOrange => rgbaToU32(0xff, 0x57, 0x22, 0xff);
  // 0xffff6e40
  static int get deepOrangeAccent => rgbaToU32(0xff, 0x6e, 0x40, 0xff);
  // 0xffff9800
  static int get orange => rgbaToU32(0xff, 0x98, 0x00, 0xff);
  // 0xffffab40
  static int get orangeAccent => rgbaToU32(0xff, 0xab, 0x40, 0xff);
  // 0xffffc107
  static int get amber => rgbaToU32(0xff, 0xc1, 0x07, 0xff);
  // 0xffffd740
  static int get amberAccent => rgbaToU32(0xff, 0xd7, 0x40, 0xff);
  // 0xffffeb3b
  static int get yellow => rgbaToU32(0xff, 0xeb, 0x3b, 0xff);
  // 0xffffff00
  static int get yellowAccent => rgbaToU32(0xff, 0xff, 0x00, 0xff);
  // 0xffcddc39
  static int get lime => rgbaToU32(0xcd, 0xdc, 0x39, 0xff);
  // 0xffeeff41
  static int get limeAccent => rgbaToU32(0xee, 0xff, 0x41, 0xff);
  // 0xff8bc34a
  static int get lightGreen => rgbaToU32(0x8b, 0xc3, 0x4a, 0xff);
  // 0cffb2ff59
  static int get lightGreenAccent => rgbaToU32(0xb2, 0xff, 0x59, 0xff);
  // 0xff4caf50
  static int get green => rgbaToU32(0x4c, 0xaf, 0x50, 0xff);
  // 0xff69f0ae
  static int get greenAccent => rgbaToU32(0x69, 0xf0, 0xae, 0xff);
  // 0xff009688
  static int get teal => rgbaToU32(0x00, 0x96, 0x88, 0xff);
  // 0xff64ffda
  static int get tealAccent => rgbaToU32(0x64, 0xff, 0xda, 0xff);
  // 0xff00bcd4
  static int get cyan => rgbaToU32(0x00, 0xbc, 0xd4, 0xff);
  // 0xff18ffff
  static int get cyanAccent => rgbaToU32(0x18, 0xff, 0xff, 0xff);
  // 0xff03a9f4
  static int get lightBlue => rgbaToU32(0x03, 0xa9, 0xf4, 0xff);
  // 0xff40c4ff
  static int get lightBlueAccent => rgbaToU32(0x40, 0xc4, 0xff, 0xff);
  // 0xff2196f3
  static int get blue => rgbaToU32(0x21, 0x96, 0xf3, 0xff);
  // 0xff448aff
  static int get blueAccent => rgbaToU32(0x44, 0x8a, 0xff, 0xff);
  // 0xff3f51b5
  static int get indigo => rgbaToU32(0x3f, 0x51, 0xb5, 0xff);
  // 0xff536dfe
  static int get indigoAccent => rgbaToU32(0x53, 0x6d, 0xfe, 0xff);
  // 0xff9c27b0
  static int get purple => rgbaToU32(0x9c, 0x27, 0xb0, 0xff);
  // 0xffe040fb
  static int get purpleAccent => rgbaToU32(0xe0, 0x40, 0xfb, 0xff);
  // 0xff673aB7
  static int get deepPurple => rgbaToU32(0x67, 0x3a, 0xB7, 0xff);
  // 0xff7c4dff
  static int get deepPurpleAccent => rgbaToU32(0x7c, 0x4d, 0xff, 0xff);
  // 0xff607d8b
  static int get blueGrey => rgbaToU32(0x60, 0x7d, 0x8b, 0xff);
  // 0xff795548
  static int get brown => rgbaToU32(0x79, 0x55, 0x48, 0xff);
  // 0xff9e9e9e
  static int get grey => rgbaToU32(0x9e, 0x9e, 0x9e, 0xff);
  // 0xff000000
  static int get black => rgbaToU32(0x00, 0x00, 0x00, 0xff);
  // 0xffffffff
  static int get white => rgbaToU32(0xff, 0xff, 0xff, 0xff);
}

extension SdlColorPointerEx on Pointer<SdlColor> {
  // utirity
  void setRgba(int r, int g, int b, int a) {
    ref.r = r;
    ref.g = g;
    ref.b = b;
    ref.a = a;
  }

  void fromU32(int u32) {
    if (Endian.host == Endian.little) {
      ref.a = (u32 & 0xff000000) >> 24;
      ref.b = (u32 & 0x00ff0000) >> 16;
      ref.g = (u32 & 0x0000ff00) >> 8;
      ref.r = (u32 & 0x000000ff);
    } else {
      ref.r = (u32 & 0xff000000) >> 24;
      ref.g = (u32 & 0x00ff0000) >> 16;
      ref.b = (u32 & 0x0000ff00) >> 8;
      ref.a = (u32 & 0x000000ff);
    }
  }

  int toU32() {
    var u32 = 0;
    if (Endian.host == Endian.little) {
      u32 += (ref.a & 0xff) << 24;
      u32 += (ref.b & 0xff) << 16;
      u32 += (ref.g & 0xff) << 8;
      u32 += (ref.r & 0xff);
    } else {
      u32 += (ref.r & 0xff) << 24;
      u32 += (ref.g & 0xff) << 16;
      u32 += (ref.b & 0xff) << 8;
      u32 += (ref.a & 0xff);
    }
    return u32;
  }
}
