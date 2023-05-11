// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';

// Mix_Chunk
final class MixChunk extends Struct {
  // [0]+(4)
  @Int32()
  external int allocated;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<Uint8> abuf;
  // [16]+(4)
  @Uint32()
  external int alen;
  // [20]+(1)
  @Uint8()
  external int volume;
  // [] +(3)
  @Uint16()
  external int blank_2;
  @Uint8()
  external int blank_3;
}

// Mix_Music
final class MixMusic extends Opaque {}
