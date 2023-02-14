import 'dart:ffi';

import '../../generated/lib_sdl_net.dart';
import '../../generated/struct_sdl_net.dart';

extension UdPsocketPointerEx on Pointer<UDPsocket> {
  // lib_sdl_net.dart
  void setPacketLoss(int percent) {
    // 533
    sdlNetUdpSetPacketLoss(this, percent);
  }

  int bind(int channel, Pointer<IPaddress> address) {
    // 570
    return sdlNetUdpBind(this, channel, address);
  }

  void unbind(int channel) {
    // 597
    sdlNetUdpUnbind(this, channel);
  }

  Pointer<IPaddress> getPeerAddress(int channel) {
    // 621
    return sdlNetUdpGetPeerAddress(this, channel);
  }

  int sendV(Pointer<Pointer<UDPpacket>> packets, int npackets) {
    // 671
    return sdlNetUdpSendV(this, packets, npackets);
  }

  int send(int channel, Pointer<UDPpacket> packet) {
    // 715
    return sdlNetUdpSend(this, channel, packet);
  }

  int recvV(Pointer<Pointer<UDPpacket>> packets) {
    // 758
    return sdlNetUdpRecvV(this, packets);
  }

  int recv(Pointer<UDPpacket> packet) {
    // 795
    return sdlNetUdpRecv(this, packet);
  }

  void close() {
    // 817
    sdlNetUdpClose(this);
  }
}
