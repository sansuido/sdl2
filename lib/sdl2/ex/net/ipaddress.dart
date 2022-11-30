import 'dart:ffi';
import '../../generated/lib_sdl_net.dart';
import '../../generated/struct_sdl_net.dart';

extension IPaddressPointerEx on Pointer<IPaddress> {
  // lib_sdl_net.dart
  int resolveHost(String host, int port) {
    // 99
    return sdlNetResolveHost(this, host, port);
  }

  String? resolveIp() {
    // 126
    return sdlNetResolveIp(this);
  }

  int getLocalAddresses(int maxcount) {
    // 145
    return sdlNetGetLocalAddresses(this, maxcount);
  }

  Pointer<TCPsocket> tcpOpen() {
    // 172
    return sdlNetTcpOpen(this);
  }
}
