// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';
import 'struct_sdl2_net.dart';

final _SDL2_net = DynamicLibrary.open(Platform.isWindows ? 'SDL2_net.dll' : 'libSDL2_net.so');

/// This function gets the version of the dynamically linked SDL_net library.
/// it should NOT be used to fill a version structure, instead you should
/// use the SDL_NET_VERSION() macro.
/// /
/// ```c
/// extern DECLSPEC const SDLNet_version * SDLCALL SDLNet_Linked_Version(void)
/// ```
Pointer<SDL_version>? SDLNet_Linked_Version() {
  final _SDLNet_Linked_Version = _SDL2_net.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('SDLNet_Linked_Version');
  return _SDLNet_Linked_Version();
}

/// Initialize/Cleanup the network API
/// SDL must be initialized before calls to functions in this library,
/// because this library uses utility functions from the SDL library.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_Init(void)
/// ```
int SDLNet_Init() {
  final _SDLNet_Init = _SDL2_net.lookupFunction<
      Int32 Function(),
      int Function()>('SDLNet_Init');
  return _SDLNet_Init();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_Quit(void)
/// ```
void SDLNet_Quit() {
  final _SDLNet_Quit = _SDL2_net.lookupFunction<
      Void Function(),
      void Function()>('SDLNet_Quit');
  return _SDLNet_Quit();
}

/// Resolve a host name and port to an IP address in network form.
/// If the function succeeds, it will return 0.
/// If the host couldn't be resolved, the host portion of the returned
/// address will be INADDR_NONE, and the function will return -1.
/// If 'host' is NULL, the resolved host will be set to INADDR_ANY.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_ResolveHost(IPaddress *address, const char *host, Uint16 port)
/// ```
int SDLNet_ResolveHost(Pointer<IPaddress>? address, String host, int port) {
  final _SDLNet_ResolveHost = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<IPaddress>? address, Pointer<Utf8>? host, Uint16 port),
      int Function(Pointer<IPaddress>? address, Pointer<Utf8>? host, int port)>('SDLNet_ResolveHost');
  final _hostPointer = host.toNativeUtf8();
  final _result = _SDLNet_ResolveHost(address, _hostPointer, port);
  calloc.free(_hostPointer);
  return _result;
}

/// Resolve an ip address to a host name in canonical form.
/// If the ip couldn't be resolved, this function returns NULL,
/// otherwise a pointer to a static buffer containing the hostname
/// is returned.  Note that this function is not thread-safe.
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDLNet_ResolveIP(const IPaddress *ip)
/// ```
String SDLNet_ResolveIP(Pointer<IPaddress>? ip) {
  final _SDLNet_ResolveIP = _SDL2_net.lookupFunction<
      Pointer<Utf8>? Function(Pointer<IPaddress>? ip),
      Pointer<Utf8>? Function(Pointer<IPaddress>? ip)>('SDLNet_ResolveIP');
  return _SDLNet_ResolveIP(ip)!.toDartString();
}

/// Get the addresses of network interfaces on this system.
/// This returns the number of addresses saved in 'addresses'
/// /
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_GetLocalAddresses(IPaddress *addresses, int maxcount)
/// ```
int SDLNet_GetLocalAddresses(Pointer<IPaddress>? addresses, int maxcount) {
  final _SDLNet_GetLocalAddresses = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<IPaddress>? addresses, Int32 maxcount),
      int Function(Pointer<IPaddress>? addresses, int maxcount)>('SDLNet_GetLocalAddresses');
  return _SDLNet_GetLocalAddresses(addresses, maxcount);
}

/// Open a TCP network socket
/// If ip.host is INADDR_NONE or INADDR_ANY, this creates a local server
/// socket on the given port, otherwise a TCP connection to the remote
/// host and port is attempted. The address passed in should already be
/// swapped to network byte order (addresses returned from
/// SDLNet_ResolveHost() are already in the correct form).
/// The newly created socket is returned, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC TCPsocket SDLCALL SDLNet_TCP_Open(IPaddress *ip)
/// ```
Pointer<Void>? SDLNet_TCP_Open(Pointer<IPaddress>? ip) {
  final _SDLNet_TCP_Open = _SDL2_net.lookupFunction<
      Pointer<Void>? Function(Pointer<IPaddress>? ip),
      Pointer<Void>? Function(Pointer<IPaddress>? ip)>('SDLNet_TCP_Open');
  return _SDLNet_TCP_Open(ip);
}

/// Accept an incoming connection on the given server socket.
/// The newly created socket is returned, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC TCPsocket SDLCALL SDLNet_TCP_Accept(TCPsocket server)
/// ```
Pointer<Void>? SDLNet_TCP_Accept(Pointer<Void>? server) {
  final _SDLNet_TCP_Accept = _SDL2_net.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? server),
      Pointer<Void>? Function(Pointer<Void>? server)>('SDLNet_TCP_Accept');
  return _SDLNet_TCP_Accept(server);
}

/// Get the IP address of the remote system associated with the socket.
/// If the socket is a server socket, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC IPaddress * SDLCALL SDLNet_TCP_GetPeerAddress(TCPsocket sock)
/// ```
Pointer<IPaddress>? SDLNet_TCP_GetPeerAddress(Pointer<Void>? sock) {
  final _SDLNet_TCP_GetPeerAddress = _SDL2_net.lookupFunction<
      Pointer<IPaddress>? Function(Pointer<Void>? sock),
      Pointer<IPaddress>? Function(Pointer<Void>? sock)>('SDLNet_TCP_GetPeerAddress');
  return _SDLNet_TCP_GetPeerAddress(sock);
}

/// Send 'len' bytes of 'data' over the non-server socket 'sock'
/// This function returns the actual amount of data sent.  If the return value
/// is less than the amount of data sent, then either the remote connection was
/// closed, or an unknown socket error occurred.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_TCP_Send(TCPsocket sock, const void *data, int len)
/// ```
int SDLNet_TCP_Send(Pointer<Void>? sock, Pointer<Void>? data, int len) {
  final _SDLNet_TCP_Send = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Pointer<Void>? data, Int32 len),
      int Function(Pointer<Void>? sock, Pointer<Void>? data, int len)>('SDLNet_TCP_Send');
  return _SDLNet_TCP_Send(sock, data, len);
}

/// Receive up to 'maxlen' bytes of data over the non-server socket 'sock',
/// and store them in the buffer pointed to by 'data'.
/// This function returns the actual amount of data received.  If the return
/// value is less than or equal to zero, then either the remote connection was
/// closed, or an unknown socket error occurred.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_TCP_Recv(TCPsocket sock, void *data, int maxlen)
/// ```
int SDLNet_TCP_Recv(Pointer<Void>? sock, Pointer<Void>? data, int maxlen) {
  final _SDLNet_TCP_Recv = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Pointer<Void>? data, Int32 maxlen),
      int Function(Pointer<Void>? sock, Pointer<Void>? data, int maxlen)>('SDLNet_TCP_Recv');
  return _SDLNet_TCP_Recv(sock, data, maxlen);
}

/// Close a TCP network socket
/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_TCP_Close(TCPsocket sock)
/// ```
void SDLNet_TCP_Close(Pointer<Void>? sock) {
  final _SDLNet_TCP_Close = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void>? sock),
      void Function(Pointer<Void>? sock)>('SDLNet_TCP_Close');
  return _SDLNet_TCP_Close(sock);
}

/// Allocate/resize/free a single UDP packet 'size' bytes long.
/// The new packet is returned, or NULL if the function ran out of memory.
/// /
/// ```c
/// extern DECLSPEC UDPpacket * SDLCALL SDLNet_AllocPacket(int size)
/// ```
Pointer<UDPpacket>? SDLNet_AllocPacket(int size) {
  final _SDLNet_AllocPacket = _SDL2_net.lookupFunction<
      Pointer<UDPpacket>? Function(Int32 size),
      Pointer<UDPpacket>? Function(int size)>('SDLNet_AllocPacket');
  return _SDLNet_AllocPacket(size);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_ResizePacket(UDPpacket *packet, int newsize)
/// ```
int SDLNet_ResizePacket(Pointer<UDPpacket>? packet, int newsize) {
  final _SDLNet_ResizePacket = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<UDPpacket>? packet, Int32 newsize),
      int Function(Pointer<UDPpacket>? packet, int newsize)>('SDLNet_ResizePacket');
  return _SDLNet_ResizePacket(packet, newsize);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_FreePacket(UDPpacket *packet)
/// ```
void SDLNet_FreePacket(Pointer<UDPpacket>? packet) {
  final _SDLNet_FreePacket = _SDL2_net.lookupFunction<
      Void Function(Pointer<UDPpacket>? packet),
      void Function(Pointer<UDPpacket>? packet)>('SDLNet_FreePacket');
  return _SDLNet_FreePacket(packet);
}

/// Allocate/Free a UDP packet vector (array of packets) of 'howmany' packets,
/// each 'size' bytes long.
/// A pointer to the first packet in the array is returned, or NULL if the
/// function ran out of memory.
/// /
/// ```c
/// extern DECLSPEC UDPpacket ** SDLCALL SDLNet_AllocPacketV(int howmany, int size)
/// ```
Pointer<Pointer<UDPpacket>>? SDLNet_AllocPacketV(int howmany, int size) {
  final _SDLNet_AllocPacketV = _SDL2_net.lookupFunction<
      Pointer<Pointer<UDPpacket>>? Function(Int32 howmany, Int32 size),
      Pointer<Pointer<UDPpacket>>? Function(int howmany, int size)>('SDLNet_AllocPacketV');
  return _SDLNet_AllocPacketV(howmany, size);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_FreePacketV(UDPpacket **packetV)
/// ```
void SDLNet_FreePacketV(Pointer<Pointer<UDPpacket>>? packetV) {
  final _SDLNet_FreePacketV = _SDL2_net.lookupFunction<
      Void Function(Pointer<Pointer<UDPpacket>>? packetV),
      void Function(Pointer<Pointer<UDPpacket>>? packetV)>('SDLNet_FreePacketV');
  return _SDLNet_FreePacketV(packetV);
}

/// Open a UDP network socket
/// If 'port' is non-zero, the UDP socket is bound to a local port.
/// The 'port' should be given in native byte order, but is used
/// internally in network (big endian) byte order, in addresses, etc.
/// This allows other systems to send to this socket via a known port.
/// 
/// ```c
/// extern DECLSPEC UDPsocket SDLCALL SDLNet_UDP_Open(Uint16 port)
/// ```
Pointer<Void>? SDLNet_UDP_Open(int port) {
  final _SDLNet_UDP_Open = _SDL2_net.lookupFunction<
      Pointer<Void>? Function(Uint16 port),
      Pointer<Void>? Function(int port)>('SDLNet_UDP_Open');
  return _SDLNet_UDP_Open(port);
}

/// Set the percentage of simulated packet loss for packets sent on the socket.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_UDP_SetPacketLoss(UDPsocket sock, int percent)
/// ```
void SDLNet_UDP_SetPacketLoss(Pointer<Void>? sock, int percent) {
  final _SDLNet_UDP_SetPacketLoss = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void>? sock, Int32 percent),
      void Function(Pointer<Void>? sock, int percent)>('SDLNet_UDP_SetPacketLoss');
  return _SDLNet_UDP_SetPacketLoss(sock, percent);
}

/// Bind the address 'address' to the requested channel on the UDP socket.
/// If the channel is -1, then the first unbound channel that has not yet
/// been bound to the maximum number of addresses will be bound with
/// the given address as it's primary address.
/// If the channel is already bound, this new address will be added to the
/// list of valid source addresses for packets arriving on the channel.
/// If the channel is not already bound, then the address becomes the primary
/// address, to which all outbound packets on the channel are sent.
/// This function returns the channel which was bound, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_UDP_Bind(UDPsocket sock, int channel, const IPaddress *address)
/// ```
int SDLNet_UDP_Bind(Pointer<Void>? sock, int channel, Pointer<IPaddress>? address) {
  final _SDLNet_UDP_Bind = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Int32 channel, Pointer<IPaddress>? address),
      int Function(Pointer<Void>? sock, int channel, Pointer<IPaddress>? address)>('SDLNet_UDP_Bind');
  return _SDLNet_UDP_Bind(sock, channel, address);
}

/// Unbind all addresses from the given channel
/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_UDP_Unbind(UDPsocket sock, int channel)
/// ```
void SDLNet_UDP_Unbind(Pointer<Void>? sock, int channel) {
  final _SDLNet_UDP_Unbind = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void>? sock, Int32 channel),
      void Function(Pointer<Void>? sock, int channel)>('SDLNet_UDP_Unbind');
  return _SDLNet_UDP_Unbind(sock, channel);
}

/// Get the primary IP address of the remote system associated with the
/// socket and channel.  If the channel is -1, then the primary IP port
/// of the UDP socket is returned -- this is only meaningful for sockets
/// opened with a specific port.
/// If the channel is not bound and not -1, this function returns NULL.
/// /
/// ```c
/// extern DECLSPEC IPaddress * SDLCALL SDLNet_UDP_GetPeerAddress(UDPsocket sock, int channel)
/// ```
Pointer<IPaddress>? SDLNet_UDP_GetPeerAddress(Pointer<Void>? sock, int channel) {
  final _SDLNet_UDP_GetPeerAddress = _SDL2_net.lookupFunction<
      Pointer<IPaddress>? Function(Pointer<Void>? sock, Int32 channel),
      Pointer<IPaddress>? Function(Pointer<Void>? sock, int channel)>('SDLNet_UDP_GetPeerAddress');
  return _SDLNet_UDP_GetPeerAddress(sock, channel);
}

/// Send a vector of packets to the the channels specified within the packet.
/// If the channel specified in the packet is -1, the packet will be sent to
/// the address in the 'src' member of the packet.
/// Each packet will be updated with the status of the packet after it has
/// been sent, -1 if the packet send failed.
/// This function returns the number of packets sent.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_UDP_SendV(UDPsocket sock, UDPpacket **packets, int npackets)
/// ```
int SDLNet_UDP_SendV(Pointer<Void>? sock, Pointer<Pointer<UDPpacket>>? packets, int npackets) {
  final _SDLNet_UDP_SendV = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Pointer<Pointer<UDPpacket>>? packets, Int32 npackets),
      int Function(Pointer<Void>? sock, Pointer<Pointer<UDPpacket>>? packets, int npackets)>('SDLNet_UDP_SendV');
  return _SDLNet_UDP_SendV(sock, packets, npackets);
}

/// Send a single packet to the specified channel.
/// If the channel specified in the packet is -1, the packet will be sent to
/// the address in the 'src' member of the packet.
/// The packet will be updated with the status of the packet after it has
/// been sent.
/// This function returns 1 if the packet was sent, or 0 on error.
/// 
/// NOTE:
/// The maximum size of the packet is limited by the MTU (Maximum Transfer Unit)
/// of the transport medium.  It can be as low as 250 bytes for some PPP links,
/// and as high as 1500 bytes for ethernet.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_UDP_Send(UDPsocket sock, int channel, UDPpacket *packet)
/// ```
int SDLNet_UDP_Send(Pointer<Void>? sock, int channel, Pointer<UDPpacket>? packet) {
  final _SDLNet_UDP_Send = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Int32 channel, Pointer<UDPpacket>? packet),
      int Function(Pointer<Void>? sock, int channel, Pointer<UDPpacket>? packet)>('SDLNet_UDP_Send');
  return _SDLNet_UDP_Send(sock, channel, packet);
}

/// Receive a vector of pending packets from the UDP socket.
/// The returned packets contain the source address and the channel they arrived
/// on.  If they did not arrive on a bound channel, the the channel will be set
/// to -1.
/// The channels are checked in highest to lowest order, so if an address is
/// bound to multiple channels, the highest channel with the source address
/// bound will be returned.
/// This function returns the number of packets read from the network, or -1
/// on error.  This function does not block, so can return 0 packets pending.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_UDP_RecvV(UDPsocket sock, UDPpacket **packets)
/// ```
int SDLNet_UDP_RecvV(Pointer<Void>? sock, Pointer<Pointer<UDPpacket>>? packets) {
  final _SDLNet_UDP_RecvV = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Pointer<Pointer<UDPpacket>>? packets),
      int Function(Pointer<Void>? sock, Pointer<Pointer<UDPpacket>>? packets)>('SDLNet_UDP_RecvV');
  return _SDLNet_UDP_RecvV(sock, packets);
}

/// Receive a single packet from the UDP socket.
/// The returned packet contains the source address and the channel it arrived
/// on.  If it did not arrive on a bound channel, the the channel will be set
/// to -1.
/// The channels are checked in highest to lowest order, so if an address is
/// bound to multiple channels, the highest channel with the source address
/// bound will be returned.
/// This function returns the number of packets read from the network, or -1
/// on error.  This function does not block, so can return 0 packets pending.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_UDP_Recv(UDPsocket sock, UDPpacket *packet)
/// ```
int SDLNet_UDP_Recv(Pointer<Void>? sock, Pointer<UDPpacket>? packet) {
  final _SDLNet_UDP_Recv = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? sock, Pointer<UDPpacket>? packet),
      int Function(Pointer<Void>? sock, Pointer<UDPpacket>? packet)>('SDLNet_UDP_Recv');
  return _SDLNet_UDP_Recv(sock, packet);
}

/// Close a UDP network socket
/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_UDP_Close(UDPsocket sock)
/// ```
void SDLNet_UDP_Close(Pointer<Void>? sock) {
  final _SDLNet_UDP_Close = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void>? sock),
      void Function(Pointer<Void>? sock)>('SDLNet_UDP_Close');
  return _SDLNet_UDP_Close(sock);
}

/// Allocate a socket set for use with SDLNet_CheckSockets()
/// This returns a socket set for up to 'maxsockets' sockets, or NULL if
/// the function ran out of memory.
/// /
/// ```c
/// extern DECLSPEC SDLNet_SocketSet SDLCALL SDLNet_AllocSocketSet(int maxsockets)
/// ```
Pointer<Void>? SDLNet_AllocSocketSet(int maxsockets) {
  final _SDLNet_AllocSocketSet = _SDL2_net.lookupFunction<
      Pointer<Void>? Function(Int32 maxsockets),
      Pointer<Void>? Function(int maxsockets)>('SDLNet_AllocSocketSet');
  return _SDLNet_AllocSocketSet(maxsockets);
}

/// Add a socket to a set of sockets to be checked for available data
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_AddSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock)
/// ```
int SDLNet_AddSocket(Pointer<Void>? set, Pointer<Void>? sock) {
  final _SDLNet_AddSocket = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? set, Pointer<Void>? sock),
      int Function(Pointer<Void>? set, Pointer<Void>? sock)>('SDLNet_AddSocket');
  return _SDLNet_AddSocket(set, sock);
}

/// Remove a socket from a set of sockets to be checked for available data
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_DelSocket(SDLNet_SocketSet set, SDLNet_GenericSocket sock)
/// ```
int SDLNet_DelSocket(Pointer<Void>? set, Pointer<Void>? sock) {
  final _SDLNet_DelSocket = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? set, Pointer<Void>? sock),
      int Function(Pointer<Void>? set, Pointer<Void>? sock)>('SDLNet_DelSocket');
  return _SDLNet_DelSocket(set, sock);
}

/// This function checks to see if data is available for reading on the
/// given set of sockets.  If 'timeout' is 0, it performs a quick poll,
/// otherwise the function returns when either data is available for
/// reading, or the timeout in milliseconds has elapsed, which ever occurs
/// first.  This function returns the number of sockets ready for reading,
/// or -1 if there was an error with the select() system call.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDLNet_CheckSockets(SDLNet_SocketSet set, Uint32 timeout)
/// ```
int SDLNet_CheckSockets(Pointer<Void>? set, int timeout) {
  final _SDLNet_CheckSockets = _SDL2_net.lookupFunction<
      Int32 Function(Pointer<Void>? set, Uint32 timeout),
      int Function(Pointer<Void>? set, int timeout)>('SDLNet_CheckSockets');
  return _SDLNet_CheckSockets(set, timeout);
}

/// Free a set of sockets allocated by SDL_NetAllocSocketSet()
/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_FreeSocketSet(SDLNet_SocketSet set)
/// ```
void SDLNet_FreeSocketSet(Pointer<Void>? set) {
  final _SDLNet_FreeSocketSet = _SDL2_net.lookupFunction<
      Void Function(Pointer<Void>? set),
      void Function(Pointer<Void>? set)>('SDLNet_FreeSocketSet');
  return _SDLNet_FreeSocketSet(set);
}

/// *********************************************************************
/// ```c
/// extern DECLSPEC void SDLCALL SDLNet_SetError(const char *fmt, ...)
/// ```
void SDLNet_SetError(String fmt, Pointer<Void>? arg1) {
  final _SDLNet_SetError = _SDL2_net.lookupFunction<
      Void Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1),
      void Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1)>('SDLNet_SetError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDLNet_SetError(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC const char * SDLCALL SDLNet_GetError(void)
/// ```
String SDLNet_GetError() {
  final _SDLNet_GetError = _SDL2_net.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDLNet_GetError');
  return _SDLNet_GetError()!.toDartString();
}

