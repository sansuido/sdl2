// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
class SDLNet_version extends Struct {
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

class IPaddress extends Struct {
  // [0]+(4)
  @Uint32()
  int host;
  // [4]+(2)
  @Uint16()
  int port;
}

class TCPsocket extends Opaque {}

class UDPsocket extends Opaque {}

class UDPpacket extends Struct {
  // [0]+(4)
  @Int32()
  int channel;
  // [4]+(8)
  Pointer<Uint8> data;
  // [12]+(4)
  @Int32()
  int len;
  // [16]+(4)
  @Int32()
  int maxlen;
  // [20]+(4)
  @Int32()
  int status;
  // [24]+(6)
  @Uint32()
  int address_1;
  @Uint16()
  int address_2;
  IPaddress get address => addressOf.cast<Uint8>().elementAt(24).cast<IPaddress>().ref;
}

class SDLNet_SocketSet extends Opaque {}

class SDLNet_GenericSocket extends Struct {
  // [0]+(4)
  @Int32()
  int ready;
}

