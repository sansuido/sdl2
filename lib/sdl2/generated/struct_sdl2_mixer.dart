// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
class Mix_Chunk extends Struct {
  // [0]+(4)
  @Int32()
  int allocated;
  // [4]+(8)
  Pointer<Uint8> abuf;
  // [12]+(4)
  @Uint32()
  int alen;
  // [16]+(1)
  @Uint8()
  int volume;
}

class Mix_Music extends Opaque {}

