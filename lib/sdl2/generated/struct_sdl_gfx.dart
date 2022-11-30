// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';

// FPSmanager
class FPSmanager extends Struct {
  // [0]+(4)
  @Uint32()
  external int framecount;
  // [4]+(4)
  @Float()
  external double rateticks;
  // [8]+(4)
  @Uint32()
  external int baseticks;
  // [12]+(4)
  @Uint32()
  external int lastticks;
  // [16]+(4)
  @Uint32()
  external int rate;
  // [] +(4)
  @Uint32()
  external int blank_1;
}
