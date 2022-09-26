import 'dart:ffi';
import './generated/const_sdl_net.dart';
import './generated/struct_sdl.dart';

/// ```c
/// const SDL_NET_VERSION = (X) \{ \ (X)->major = SDL_NET_MAJOR_VERSION; \ (X)->minor = SDL_NET_MINOR_VERSION; \ (X)->patch = SDL_NET_PATCHLEVEL; \};
/// ```
void sdlNetVersion(Pointer<SdlVersion> x) {
  x.ref.major = SDL_NET_MAJOR_VERSION;
  x.ref.minor = SDL_NET_MINOR_VERSION;
  x.ref.patch = SDL_NET_PATCHLEVEL;
}

//const SDLNet_SocketReady = (sock) _SDLNet_SocketReady((SDLNet_GenericSocket)(sock));
//const SDLNet_Write16 = (value, areap) _SDLNet_Write16(value, areap);
//const SDLNet_Write32 = (value, areap) _SDLNet_Write32(value, areap);
//const SDLNet_Read16 = (areap) _SDLNet_Read16(areap);
//const SDLNet_Read32 = (areap) _SDLNet_Read32(areap);
