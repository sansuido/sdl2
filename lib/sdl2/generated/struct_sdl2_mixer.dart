// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
class Mix_Chunk extends Struct {
  // [0]+(4)
  @Int32()
  external int allocated;
  // [4]+(8)
  external Pointer<Uint8>? abuf;
  // [12]+(4)
  @Uint32()
  external int alen;
  // [16]+(1)
  @Uint8()
  external int volume;
}

class Mix_Music extends Opaque {}

