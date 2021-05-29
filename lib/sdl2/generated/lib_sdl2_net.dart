// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';
import 'struct_sdl2_net.dart';

final _SDL2_net = DynamicLibrary.open(Platform.isWindows ? 'SDL2_net.dll' : 'libSDL2_net.so');

// extern DECLSPEC const SDLNet_version * SDLCALL SDLNet_Linked_Version(void)
Pointer<SDL_version> SDLNet_Linked_Version() {
  final _SDLNet_Linked_Version = _SDL2_net.lookupFunction<
      Pointer<SDL_version> Function(),
      Pointer<SDL_version> Function()>('SDLNet_Linked_Version');
  return _SDLNet_Linked_Version();
}
// extern DECLSPEC int SDLCALL SDLNet_Init(void)
int SDLNet_Init() {
  final _SDLNet_Init = _SDL2_net.lookupFunction<
      Int32 Function(),
      int Function()>('SDLNet_Init');
  return _SDLNet_Init();
}
// extern DECLSPEC void SDLCALL SDLNet_Quit(void)
void SDLNet_Quit() {
  final _SDLNet_Quit = _SDL2_net.lookupFunction<
      Void Function(),
      void Function()>('SDLNet_Quit');
  return _SDLNet_Quit();
}
// extern DECLSPEC int SDLCALL SDLNet_ResolveHost(IPaddress *address, const char *host, Uint16 port)
int SDLNet_ResolveHost(Pointer<IPaddress> address, String host, int port) {
  final _SDLNet_ResolveHost = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<IPaddress> address, Pointer<Utf8> host, Uint16 port),
      int Function(Pointer<IPaddress> address, Pointer<Utf8> host, int port)>('SDLNet_ResolveHost');
  final _hostPointer = host.toNativeUtf8();
  final _result = _SDLNet_ResolveHost(address, _hostPointer, port);
  calloc.free(_hostPointer);
  return _result;
}
// extern DECLSPEC const char * SDLCALL SDLNet_ResolveIP(const IPaddress *ip)
String SDLNet_ResolveIP(Pointer<IPaddress> ip) {
  final _SDLNet_ResolveIP = _SDL2_net.lookupFunction<
      Pointer<Utf8> Function(Pointer<IPaddress> ip),
      Pointer<Utf8> Function(Pointer<IPaddress> ip)>('SDLNet_ResolveIP');
  return _SDLNet_ResolveIP(ip).toDartString();
}
// extern DECLSPEC int SDLCALL SDLNet_GetLocalAddresses(IPaddress *addresses, int maxcount)
int SDLNet_GetLocalAddresses(Pointer<IPaddress> addresses, int maxcount) {
  final _SDLNet_GetLocalAddresses = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<IPaddress> addresses, Int32 maxcount),
      int Function(Pointer<IPaddress> addresses, int maxcount)>('SDLNet_GetLocalAddresses');
  return _SDLNet_GetLocalAddresses(addresses, maxcount);
}
// extern DECLSPEC TCPsocket SDLCALL SDLNet_TCP_Open(IPaddress *ip)
Pointer<Void> SDLNet_TCP_Open(Pointer<IPaddress> ip) {
  final _SDLNet_TCP_Open = _SDL2_net.lookupFunction<
      Pointer<Void> Function(Pointer<IPaddress> ip),
      Pointer<Void> Function(Pointer<IPaddress> ip)>('SDLNet_TCP_Open');
  return _SDLNet_TCP_Open(ip);
}
// extern DECLSPEC TCPsocket SDLCALL SDLNet_TCP_Accept(TCPsocket server)
Pointer<Void> SDLNet_TCP_Accept(Pointer<Void> server) {
  final _SDLNet_TCP_Accept = _SDL2_net.lookupFunction<
      Pointer<Void> Function(Pointer<Void> server),
      Pointer<Void> Function(Pointer<Void> server)>('SDLNet_TCP_Accept');
  return _SDLNet_TCP_Accept(server);
}
// extern DECLSPEC IPaddress * SDLCALL SDLNet_TCP_GetPeerAddress(TCPsocket sock)
Pointer<IPaddress> SDLNet_TCP_GetPeerAddress(Pointer<Void> sock) {
  final _SDLNet_TCP_GetPeerAddress = _SDL2_net.lookupFunction<
      Pointer<IPaddress> Function(Pointer<Void> sock),
      Pointer<IPaddress> Function(Pointer<Void> sock)>('SDLNet_TCP_GetPeerAddress');
  return _SDLNet_TCP_GetPeerAddress(sock);
}
// extern DECLSPEC int SDLCALL SDLNet_TCP_Send(TCPsocket sock, const void *data, int len)
int SDLNet_TCP_Send(Pointer<Void> sock, Pointer<Void> data, int len) {
  final _SDLNet_TCP_Send = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Pointer<Void> data, Int32 len),
      int Function(Pointer<Void> sock, Pointer<Void> data, int len)>('SDLNet_TCP_Send');
  return _SDLNet_TCP_Send(sock, data, len);
}
// extern DECLSPEC int SDLCALL SDLNet_TCP_Recv(TCPsocket sock, void *data, int maxlen)
int SDLNet_TCP_Recv(Pointer<Void> sock, Pointer<Void> data, int maxlen) {
  final _SDLNet_TCP_Recv = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Pointer<Void> data, Int32 maxlen),
      int Function(Pointer<Void> sock, Pointer<Void> data, int maxlen)>('SDLNet_TCP_Recv');
  return _SDLNet_TCP_Recv(sock, data, maxlen);
}
// extern DECLSPEC void SDLCALL SDLNet_TCP_Close(TCPsocket sock)
void SDLNet_TCP_Close(Pointer<Void> sock) {
  final _SDLNet_TCP_Close = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void> sock),
      void Function(Pointer<Void> sock)>('SDLNet_TCP_Close');
  return _SDLNet_TCP_Close(sock);
}
// extern DECLSPEC UDPpacket * SDLCALL SDLNet_AllocPacket(int size)
Pointer<UDPpacket> SDLNet_AllocPacket(int size) {
  final _SDLNet_AllocPacket = _SDL2_net.lookupFunction<
      Pointer<UDPpacket> Function(Int32 size),
      Pointer<UDPpacket> Function(int size)>('SDLNet_AllocPacket');
  return _SDLNet_AllocPacket(size);
}
// extern DECLSPEC int SDLCALL SDLNet_ResizePacket(UDPpacket *packet, int newsize)
int SDLNet_ResizePacket(Pointer<UDPpacket> packet, int newsize) {
  final _SDLNet_ResizePacket = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<UDPpacket> packet, Int32 newsize),
      int Function(Pointer<UDPpacket> packet, int newsize)>('SDLNet_ResizePacket');
  return _SDLNet_ResizePacket(packet, newsize);
}
// extern DECLSPEC void SDLCALL SDLNet_FreePacket(UDPpacket *packet)
void SDLNet_FreePacket(Pointer<UDPpacket> packet) {
  final _SDLNet_FreePacket = _SDL2_net.lookupFunction<
      Void Function(Pointer<UDPpacket> packet),
      void Function(Pointer<UDPpacket> packet)>('SDLNet_FreePacket');
  return _SDLNet_FreePacket(packet);
}
// extern DECLSPEC UDPpacket ** SDLCALL SDLNet_AllocPacketV(int howmany, int size)
Pointer<Pointer<UDPpacket>> SDLNet_AllocPacketV(int howmany, int size) {
  final _SDLNet_AllocPacketV = _SDL2_net.lookupFunction<
      Pointer<Pointer<UDPpacket>> Function(Int32 howmany, Int32 size),
      Pointer<Pointer<UDPpacket>> Function(int howmany, int size)>('SDLNet_AllocPacketV');
  return _SDLNet_AllocPacketV(howmany, size);
}
// extern DECLSPEC void SDLCALL SDLNet_FreePacketV(UDPpacket **packetV)
void SDLNet_FreePacketV(Pointer<Pointer<UDPpacket>> packetV) {
  final _SDLNet_FreePacketV = _SDL2_net.lookupFunction<
      Void Function(Pointer<Pointer<UDPpacket>> packetV),
      void Function(Pointer<Pointer<UDPpacket>> packetV)>('SDLNet_FreePacketV');
  return _SDLNet_FreePacketV(packetV);
}
// extern DECLSPEC UDPsocket SDLCALL SDLNet_UDP_Open(Uint16 port)
Pointer<Void> SDLNet_UDP_Open(int port) {
  final _SDLNet_UDP_Open = _SDL2_net.lookupFunction<
      Pointer<Void> Function(Uint16 port),
      Pointer<Void> Function(int port)>('SDLNet_UDP_Open');
  return _SDLNet_UDP_Open(port);
}
// extern DECLSPEC void SDLCALL SDLNet_UDP_SetPacketLoss(UDPsocket sock, int percent)
void SDLNet_UDP_SetPacketLoss(Pointer<Void> sock, int percent) {
  final _SDLNet_UDP_SetPacketLoss = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void> sock, Int32 percent),
      void Function(Pointer<Void> sock, int percent)>('SDLNet_UDP_SetPacketLoss');
  return _SDLNet_UDP_SetPacketLoss(sock, percent);
}
// extern DECLSPEC int SDLCALL SDLNet_UDP_Bind(UDPsocket sock, int channel, const IPaddress *address)
int SDLNet_UDP_Bind(Pointer<Void> sock, int channel, Pointer<IPaddress> address) {
  final _SDLNet_UDP_Bind = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Int32 channel, Pointer<IPaddress> address),
      int Function(Pointer<Void> sock, int channel, Pointer<IPaddress> address)>('SDLNet_UDP_Bind');
  return _SDLNet_UDP_Bind(sock, channel, address);
}
// extern DECLSPEC void SDLCALL SDLNet_UDP_Unbind(UDPsocket sock, int channel)
void SDLNet_UDP_Unbind(Pointer<Void> sock, int channel) {
  final _SDLNet_UDP_Unbind = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void> sock, Int32 channel),
      void Function(Pointer<Void> sock, int channel)>('SDLNet_UDP_Unbind');
  return _SDLNet_UDP_Unbind(sock, channel);
}
// extern DECLSPEC IPaddress * SDLCALL SDLNet_UDP_GetPeerAddress(UDPsocket sock, int channel)
Pointer<IPaddress> SDLNet_UDP_GetPeerAddress(Pointer<Void> sock, int channel) {
  final _SDLNet_UDP_GetPeerAddress = _SDL2_net.lookupFunction<
      Pointer<IPaddress> Function(Pointer<Void> sock, Int32 channel),
      Pointer<IPaddress> Function(Pointer<Void> sock, int channel)>('SDLNet_UDP_GetPeerAddress');
  return _SDLNet_UDP_GetPeerAddress(sock, channel);
}
// extern DECLSPEC int SDLCALL SDLNet_UDP_SendV(UDPsocket sock, UDPpacket **packets, int npackets)
int SDLNet_UDP_SendV(Pointer<Void> sock, Pointer<Pointer<UDPpacket>> packets, int npackets) {
  final _SDLNet_UDP_SendV = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Pointer<Pointer<UDPpacket>> packets, Int32 npackets),
      int Function(Pointer<Void> sock, Pointer<Pointer<UDPpacket>> packets, int npackets)>('SDLNet_UDP_SendV');
  return _SDLNet_UDP_SendV(sock, packets, npackets);
}
// extern DECLSPEC int SDLCALL SDLNet_UDP_Send(UDPsocket sock, int channel, UDPpacket *packet)
int SDLNet_UDP_Send(Pointer<Void> sock, int channel, Pointer<UDPpacket> packet) {
  final _SDLNet_UDP_Send = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Int32 channel, Pointer<UDPpacket> packet),
      int Function(Pointer<Void> sock, int channel, Pointer<UDPpacket> packet)>('SDLNet_UDP_Send');
  return _SDLNet_UDP_Send(sock, channel, packet);
}
// extern DECLSPEC int SDLCALL SDLNet_UDP_RecvV(UDPsocket sock, UDPpacket **packets)
int SDLNet_UDP_RecvV(Pointer<Void> sock, Pointer<Pointer<UDPpacket>> packets) {
  final _SDLNet_UDP_RecvV = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Pointer<Pointer<UDPpacket>> packets),
      int Function(Pointer<Void> sock, Pointer<Pointer<UDPpacket>> packets)>('SDLNet_UDP_RecvV');
  return _SDLNet_UDP_RecvV(sock, packets);
}
// extern DECLSPEC int SDLCALL SDLNet_UDP_Recv(UDPsocket sock, UDPpacket *packet)
int SDLNet_UDP_Recv(Pointer<Void> sock, Pointer<UDPpacket> packet) {
  final _SDLNet_UDP_Recv = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> sock, Pointer<UDPpacket> packet),
      int Function(Pointer<Void> sock, Pointer<UDPpacket> packet)>('SDLNet_UDP_Recv');
  return _SDLNet_UDP_Recv(sock, packet);
}
// extern DECLSPEC void SDLCALL SDLNet_UDP_Close(UDPsocket sock)
void SDLNet_UDP_Close(Pointer<Void> sock) {
  final _SDLNet_UDP_Close = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void> sock),
      void Function(Pointer<Void> sock)>('SDLNet_UDP_Close');
  return _SDLNet_UDP_Close(sock);
}
// extern DECLSPEC SDLNet_SocketSet SDLCALL SDLNet_AllocSocketSet(int maxsockets)
Pointer<Void> SDLNet_AllocSocketSet(int maxsockets) {
  final _SDLNet_AllocSocketSet = _SDL2_net.lookupFunction<
      Pointer<Void> Function(Int32 maxsockets),
      Pointer<Void> Function(int maxsockets)>('SDLNet_AllocSocketSet');
  return _SDLNet_AllocSocketSet(maxsockets);
}
// extern DECLSPEC int SDLCALL SDLNet_AddSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock)
int SDLNet_AddSocket(Pointer<Void> set, Pointer<Void> sock) {
  final _SDLNet_AddSocket = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> set, Pointer<Void> sock),
      int Function(Pointer<Void> set, Pointer<Void> sock)>('SDLNet_AddSocket');
  return _SDLNet_AddSocket(set, sock);
}
// extern DECLSPEC int SDLCALL SDLNet_DelSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock)
int SDLNet_DelSocket(Pointer<Void> set, Pointer<Void> sock) {
  final _SDLNet_DelSocket = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> set, Pointer<Void> sock),
      int Function(Pointer<Void> set, Pointer<Void> sock)>('SDLNet_DelSocket');
  return _SDLNet_DelSocket(set, sock);
}
// extern DECLSPEC int SDLCALL SDLNet_CheckSockets(SDLNet_SocketSet set, Uint32 timeout)
int SDLNet_CheckSockets(Pointer<Void> set, int timeout) {
  final _SDLNet_CheckSockets = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void> set, Uint32 timeout),
      int Function(Pointer<Void> set, int timeout)>('SDLNet_CheckSockets');
  return _SDLNet_CheckSockets(set, timeout);
}
// extern DECLSPEC void SDLCALL SDLNet_FreeSocketSet(SDLNet_SocketSet set)
void SDLNet_FreeSocketSet(Pointer<Void> set) {
  final _SDLNet_FreeSocketSet = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void> set),
      void Function(Pointer<Void> set)>('SDLNet_FreeSocketSet');
  return _SDLNet_FreeSocketSet(set);
}
// extern DECLSPEC void SDLCALL SDLNet_SetError(const char *fmt, ...)
void SDLNet_SetError(String fmt, Pointer<Void> arg1) {
  final _SDLNet_SetError = _SDL2_net.lookupFunction<
      Void Function(Pointer<Utf8> fmt, Pointer<Void> arg1),
      void Function(Pointer<Utf8> fmt, Pointer<Void> arg1)>('SDLNet_SetError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDLNet_SetError(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC const char * SDLCALL SDLNet_GetError(void)
String SDLNet_GetError() {
  final _SDLNet_GetError = _SDL2_net.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDLNet_GetError');
  return _SDLNet_GetError().toDartString();
}
