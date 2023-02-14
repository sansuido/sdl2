import 'dart:ffi';
import '../../generated/lib_sdl_net.dart';
import '../../generated/struct_sdl_net.dart';

extension SdlNetSocketSetPointerEx on Pointer<SdlNetSocketSet> {
  // lib_sdl_net.dart

  int add(SdlNetGenericSocket sock) {
    // 884
    return sdlNetAddSocket(this, sock);
  }

  int del(SdlNetGenericSocket sock) {
    // 922
    return sdlNetDelSocket(this, sock);
  }

  int check(int timeout) {
    // 950
    return sdlNetCheckSockets(this, timeout);
  }

  void free() {
    // 974
    sdlNetFreeSocketSet(this);
  }
}
