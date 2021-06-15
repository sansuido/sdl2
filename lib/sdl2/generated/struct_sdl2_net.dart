// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
class SDLNet_version extends Struct {
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

class IPaddress extends Struct {
  // [0]+(4)
  @Uint32()
  external int host;
  // [4]+(2)
  @Uint16()
  external int port;
}

class TCPsocket extends Opaque {}

class UDPsocket extends Opaque {}

class UDPpacket extends Struct {
  // [0]+(4)
  @Int32()
  external int channel;
  // [4]+(8)
  external Pointer<Uint8>? data;
  // [12]+(4)
  @Int32()
  external int len;
  // [16]+(4)
  @Int32()
  external int maxlen;
  // [20]+(4)
  @Int32()
  external int status;
  // [24]+(6)
  @Uint32()
  external int? address_1;
  @Uint16()
  external int? address_2;
}
// ignore: camel_case_extensions
extension UDPpacketExtension on Pointer<UDPpacket> {
  IPaddress get address => cast<Uint8>().elementAt(24).cast<IPaddress>().ref;
}

class SDLNet_SocketSet extends Opaque {}

class SDLNet_GenericSocket extends Struct {
  // [0]+(4)
  @Int32()
  external int ready;
}

