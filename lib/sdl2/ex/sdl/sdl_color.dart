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
