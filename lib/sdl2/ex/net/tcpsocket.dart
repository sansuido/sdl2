import 'dart:ffi';
import '../../generated/lib_sdl_net.dart';
import '../../generated/struct_sdl_net.dart';

extension TCPsocketPointerEx on Pointer<TCPsocket> {
  // lib_sdl_net.dart
  Pointer<TCPsocket> accept() {
    // 194
    return sdlNetTcpAccept(this);
  }

  Pointer<IPaddress> getPeerAddress() {
    // 219
    return sdlNetTcpGetPeerAddress(this);
  }

  int send(Pointer<NativeType> data, int len) {
    // 256
    return sdlNetTcpSend(this, data, len);
  }

  int recv(Pointer<NativeType> data, int maxlen) {
    // 298
    return sdlNetTcpRecv(this, data, maxlen);
  }

  void close() {
    //324
    sdlNetTcpClose(this);
  }
}
