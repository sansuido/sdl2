import 'dart:ffi';
import './generated/const_sdl2.dart';
import './generated/const_sdl2_mixer.dart';
import './generated/lib_sdl2.dart';
import './generated/lib_sdl2_mixer.dart';
import './generated/struct_sdl2.dart';
import './generated/struct_sdl2_mixer.dart';
import './sdl2_handwritten.dart';

//const SDL_MIXER_VERSION = (X) \{ \ (X)->major = SDL_MIXER_MAJOR_VERSION; \ (X)->minor = SDL_MIXER_MINOR_VERSION; \ (X)->patch = SDL_MIXER_PATCHLEVEL; \};
void SDL_MIXER_VERSION(Pointer<SDL_version>? x) {
  if (x != null) {
    x.ref.major = SDL_MIXER_MAJOR_VERSION;
    x.ref.minor = SDL_MIXER_MINOR_VERSION;
    x.ref.patch = SDL_MIXER_PATCHLEVEL;
  }
}

//const MIX_VERSION = (X) SDL_MIXER_VERSION(X);
void MIX_VERSION(Pointer<SDL_version>? x) {
  return SDL_MIXER_VERSION(x);
}

//const SDL_MIXER_COMPILEDVERSION = \ SDL_VERSIONNUM(SDL_MIXER_MAJOR_VERSION, SDL_MIXER_MINOR_VERSION, SDL_MIXER_PATCHLEVEL);
final SDL_MIXER_COMPILEDVERSION = SDL_VERSIONNUM(SDL_MIXER_MAJOR_VERSION, SDL_MIXER_MINOR_VERSION, SDL_MIXER_PATCHLEVEL);

//const SDL_MIXER_VERSION_ATLEAST = (X, Y, Z) \ (SDL_MIXER_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
bool SDL_MIXER_VERSION_ATLEAST(int? x, int? y, int? z) {
  return SDL_MIXER_COMPILEDVERSION! >= SDL_VERSIONNUM(x, y, z)!;
}

//const MIX_DEFAULT_FORMAT = AUDIO_S16LSB;
final MIX_DEFAULT_FORMAT = AUDIO_S16LSB;

//const MIX_MAX_VOLUME = SDL_MIX_MAXVOLUME;
final MIX_MAX_VOLUME = SDL_MIX_MAXVOLUME;

//const Mix_LoadWAV = (file) Mix_LoadWAV_RW(SDL_RWFromFile(file, 'rb'), 1);
Pointer<Mix_Chunk>? Mix_LoadWAV(String? file) {
  return Mix_LoadWAV_RW(SDL_RWFromFile(file, 'rb'), 1);
}

//const Mix_PlayChannel = (channel,chunk,loops) Mix_PlayChannelTimed(channel,chunk,loops,-1);
int? Mix_PlayChannel(int channel, Pointer<Mix_Chunk>? chunk, int? loops) {
  return Mix_PlayChannelTimed(channel, chunk, loops, -1);
}

//const Mix_FadeInChannel = (channel,chunk,loops,ms) Mix_FadeInChannelTimed(channel,chunk,loops,ms,-1);
int? Mix_FadeInChannel(int? channel, Pointer<Mix_Chunk>? chunk, int? loops, int? ms) {
  return Mix_FadeInChannelTimed(channel, chunk, loops, ms, -1);
}

//const Mix_SetError = SDL_SetError;
int? Mix_SetError(String? fmt, Pointer<Void>? arg1) {
  return SDL_SetError(fmt, arg1);
}

//const Mix_GetError = SDL_GetError;
String? Mix_GetError() {
  return SDL_GetError();
}

//const Mix_ClearError = SDL_ClearError;
void Mix_ClearError() {
  return SDL_ClearError();
}
