// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';

class SdlNetVersion extends Struct {
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

class IPaddress extends Struct {
  // [0]+(4)
  @Uint32()
  external int host;
  // [4]+(2)
  @Uint16()
  external int port;
  // [] +(2)
  @Uint16()
  external int blank_1;
}

class TcPsocket extends Opaque {}

class UdPsocket extends Opaque {}

class UdPpacket extends Struct {
  // [0]+(4)
  @Int32()
  external int channel;
  // [] +(4)
  @Uint32()
  external int blank_1;
  // [8]+(8)
  external Pointer<Uint8> data;
  // [16]+(4)
  @Int32()
  external int len;
  // [20]+(4)
  @Int32()
  external int maxlen;
  // [24]+(4)
  @Int32()
  external int status;
  // [] +(4)
  @Uint32()
  external int blank_2;
  // [32]+(8)
  @Uint64()
  external int address_1;
}

extension UdPpacketExtension on Pointer<UdPpacket> {
  Pointer<IPaddress> get address =>
      cast<Uint8>().elementAt(32).cast<IPaddress>();
}

class SdlNetSocketSet extends Opaque {}

class SdlNetGenericSocket extends Struct {
  // [0]+(4)
  @Int32()
  external int ready;
  // [] +(4)
  @Uint32()
  external int blank_1;
}
