import 'dart:ffi';
import './generated/const_sdl2_net.dart';
import './generated/struct_sdl2.dart';

/// ```c
/// const SDL_NET_VERSION = (X) \{ \ (X)->major = SDL_NET_MAJOR_VERSION; \ (X)->minor = SDL_NET_MINOR_VERSION; \ (X)->patch = SDL_NET_PATCHLEVEL; \};
/// ```
void SDL_NET_VERSION(Pointer<SDL_version>? x) {
  if (x != null) {
    x.ref.major = SDL_NET_MAJOR_VERSION;
    x.ref.minor = SDL_NET_MINOR_VERSION;
    x.ref.patch = SDL_NET_PATCHLEVEL;
  }
}

//const SDLNet_SocketReady = (sock) _SDLNet_SocketReady((SDLNet_GenericSocket)(sock));
//const SDLNet_Write16 = (value, areap) _SDLNet_Write16(value, areap);
//const SDLNet_Write32 = (value, areap) _SDLNet_Write32(value, areap);
//const SDLNet_Read16 = (areap) _SDLNet_Read16(areap);
//const SDLNet_Read32 = (areap) _SDLNet_Read32(areap);
