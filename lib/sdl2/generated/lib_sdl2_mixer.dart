// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';
import 'struct_sdl2_mixer.dart';

final _SDL2_mixer = DynamicLibrary.open(Platform.isWindows ? 'SDL2_mixer.dll' : 'libSDL2_mixer.so');

// extern DECLSPEC const SDL_version * SDLCALL Mix_Linked_Version(void)
Pointer<SDL_version>? Mix_Linked_Version() {
  final _Mix_Linked_Version = _SDL2_mixer.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('Mix_Linked_Version');
  return _Mix_Linked_Version();
}
// extern DECLSPEC int SDLCALL Mix_Init(int flags)
int? Mix_Init(int? flags) {
  final _Mix_Init = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 flags),
      int? Function(int? flags)>('Mix_Init');
  return _Mix_Init(flags);
}
// extern DECLSPEC void SDLCALL Mix_Quit(void)
void Mix_Quit() {
  final _Mix_Quit = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_Quit');
  return _Mix_Quit();
}
// extern DECLSPEC int SDLCALL Mix_OpenAudio(int frequency, Uint16 format, int channels, int chunksize)
int? Mix_OpenAudio(int? frequency, int? format, int? channels, int? chunksize) {
  final _Mix_OpenAudio = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 frequency, Uint16 format, Int32 channels, Int32 chunksize),
      int? Function(int? frequency, int? format, int? channels, int? chunksize)>('Mix_OpenAudio');
  return _Mix_OpenAudio(frequency, format, channels, chunksize);
}
// extern DECLSPEC int SDLCALL Mix_OpenAudioDevice(int frequency, Uint16 format, int channels, int chunksize, const char* device, int allowed_changes)
int? Mix_OpenAudioDevice(int? frequency, int? format, int? channels, int? chunksize, String? device, int? allowed_changes) {
  final _Mix_OpenAudioDevice = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 frequency, Uint16 format, Int32 channels, Int32 chunksize, Pointer<Utf8>? device, Int32 allowed_changes),
      int? Function(int? frequency, int? format, int? channels, int? chunksize, Pointer<Utf8>? device, int? allowed_changes)>('Mix_OpenAudioDevice');
  final _devicePointer = device?.toNativeUtf8();
  final _result = _Mix_OpenAudioDevice(frequency, format, channels, chunksize, _devicePointer, allowed_changes);
  calloc.free(_devicePointer!);
  return _result;
}
// extern DECLSPEC int SDLCALL Mix_AllocateChannels(int numchans)
int? Mix_AllocateChannels(int? numchans) {
  final _Mix_AllocateChannels = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 numchans),
      int? Function(int? numchans)>('Mix_AllocateChannels');
  return _Mix_AllocateChannels(numchans);
}
// extern DECLSPEC int SDLCALL Mix_QuerySpec(int *frequency,Uint16 *format,int *channels)
int? Mix_QuerySpec(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels) {
  final _Mix_QuerySpec = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels),
      int? Function(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels)>('Mix_QuerySpec');
  return _Mix_QuerySpec(frequency, format, channels);
}
// extern DECLSPEC Mix_Chunk * SDLCALL Mix_LoadWAV_RW(SDL_RWops *src, int freesrc)
Pointer<Mix_Chunk>? Mix_LoadWAV_RW(Pointer<SDL_RWops>? src, int? freesrc) {
  final _Mix_LoadWAV_RW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<Mix_Chunk>? Function(Pointer<SDL_RWops>? src, int? freesrc)>('Mix_LoadWAV_RW');
  return _Mix_LoadWAV_RW(src, freesrc);
}
// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUS(const char *file)
Pointer<Mix_Music>? Mix_LoadMUS(String? file) {
  final _Mix_LoadMUS = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<Utf8>? file),
      Pointer<Mix_Music>? Function(Pointer<Utf8>? file)>('Mix_LoadMUS');
  final _filePointer = file?.toNativeUtf8();
  final _result = _Mix_LoadMUS(_filePointer);
  calloc.free(_filePointer!);
  return _result;
}
// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUS_RW(SDL_RWops *src, int freesrc)
Pointer<Mix_Music>? Mix_LoadMUS_RW(Pointer<SDL_RWops>? src, int? freesrc) {
  final _Mix_LoadMUS_RW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, int? freesrc)>('Mix_LoadMUS_RW');
  return _Mix_LoadMUS_RW(src, freesrc);
}
// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUSType_RW(SDL_RWops *src, Mix_MusicType type, int freesrc)
Pointer<Mix_Music>? Mix_LoadMUSType_RW(Pointer<SDL_RWops>? src, int? type, int? freesrc) {
  final _Mix_LoadMUSType_RW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, Int32 type, Int32 freesrc),
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, int? type, int? freesrc)>('Mix_LoadMUSType_RW');
  return _Mix_LoadMUSType_RW(src, type, freesrc);
}
// extern DECLSPEC Mix_Chunk * SDLCALL Mix_QuickLoad_WAV(Uint8 *mem)
Pointer<Mix_Chunk>? Mix_QuickLoad_WAV(Pointer<Uint8>? mem) {
  final _Mix_QuickLoad_WAV = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem),
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem)>('Mix_QuickLoad_WAV');
  return _Mix_QuickLoad_WAV(mem);
}
// extern DECLSPEC Mix_Chunk * SDLCALL Mix_QuickLoad_RAW(Uint8 *mem, Uint32 len)
Pointer<Mix_Chunk>? Mix_QuickLoad_RAW(Pointer<Uint8>? mem, int? len) {
  final _Mix_QuickLoad_RAW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem, Uint32 len),
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem, int? len)>('Mix_QuickLoad_RAW');
  return _Mix_QuickLoad_RAW(mem, len);
}
// extern DECLSPEC void SDLCALL Mix_FreeChunk(Mix_Chunk *chunk)
void Mix_FreeChunk(Pointer<Mix_Chunk>? chunk) {
  final _Mix_FreeChunk = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Mix_Chunk>? chunk),
      void Function(Pointer<Mix_Chunk>? chunk)>('Mix_FreeChunk');
  return _Mix_FreeChunk(chunk);
}
// extern DECLSPEC void SDLCALL Mix_FreeMusic(Mix_Music *music)
void Mix_FreeMusic(Pointer<Mix_Music>? music) {
  final _Mix_FreeMusic = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Mix_Music>? music),
      void Function(Pointer<Mix_Music>? music)>('Mix_FreeMusic');
  return _Mix_FreeMusic(music);
}
// extern DECLSPEC int SDLCALL Mix_GetNumChunkDecoders(void)
int? Mix_GetNumChunkDecoders() {
  final _Mix_GetNumChunkDecoders = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_GetNumChunkDecoders');
  return _Mix_GetNumChunkDecoders();
}
// extern DECLSPEC const char * SDLCALL Mix_GetChunkDecoder(int index)
String? Mix_GetChunkDecoder(int? index) {
  final _Mix_GetChunkDecoder = _SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int? index)>('Mix_GetChunkDecoder');
  return _Mix_GetChunkDecoder(index)?.toDartString();
}
// extern DECLSPEC SDL_bool SDLCALL Mix_HasChunkDecoder(const char *name)
int? Mix_HasChunkDecoder(String? name) {
  final _Mix_HasChunkDecoder = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int? Function(Pointer<Utf8>? name)>('Mix_HasChunkDecoder');
  final _namePointer = name?.toNativeUtf8();
  final _result = _Mix_HasChunkDecoder(_namePointer);
  calloc.free(_namePointer!);
  return _result;
}
// extern DECLSPEC int SDLCALL Mix_GetNumMusicDecoders(void)
int? Mix_GetNumMusicDecoders() {
  final _Mix_GetNumMusicDecoders = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_GetNumMusicDecoders');
  return _Mix_GetNumMusicDecoders();
}
// extern DECLSPEC const char * SDLCALL Mix_GetMusicDecoder(int index)
String? Mix_GetMusicDecoder(int? index) {
  final _Mix_GetMusicDecoder = _SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int? index)>('Mix_GetMusicDecoder');
  return _Mix_GetMusicDecoder(index)?.toDartString();
}
// extern DECLSPEC SDL_bool SDLCALL Mix_HasMusicDecoder(const char *name)
int? Mix_HasMusicDecoder(String? name) {
  final _Mix_HasMusicDecoder = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int? Function(Pointer<Utf8>? name)>('Mix_HasMusicDecoder');
  final _namePointer = name?.toNativeUtf8();
  final _result = _Mix_HasMusicDecoder(_namePointer);
  calloc.free(_namePointer!);
  return _result;
}
// extern DECLSPEC Mix_MusicType SDLCALL Mix_GetMusicType(const Mix_Music *music)
int? Mix_GetMusicType(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicType = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music),
      int? Function(Pointer<Mix_Music>? music)>('Mix_GetMusicType');
  return _Mix_GetMusicType(music);
}
// extern DECLSPEC void SDLCALL Mix_SetPostMix(void (SDLCALL *mix_func)(void *udata, Uint8 *stream, int len), void *arg)
void Mix_SetPostMix(Pointer<Void>? mix_func, Pointer<Void>? arg) {
  final _Mix_SetPostMix = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? mix_func, Pointer<Void>? arg),
      void Function(Pointer<Void>? mix_func, Pointer<Void>? arg)>('Mix_SetPostMix');
  return _Mix_SetPostMix(mix_func, arg);
}
// extern DECLSPEC void SDLCALL Mix_HookMusic(void (SDLCALL *mix_func)(void *udata, Uint8 *stream, int len), void *arg)
void Mix_HookMusic(Pointer<Void>? mix_func, Pointer<Void>? arg) {
  final _Mix_HookMusic = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? mix_func, Pointer<Void>? arg),
      void Function(Pointer<Void>? mix_func, Pointer<Void>? arg)>('Mix_HookMusic');
  return _Mix_HookMusic(mix_func, arg);
}
// extern DECLSPEC void SDLCALL Mix_HookMusicFinished(void (SDLCALL *music_finished)(void))
void Mix_HookMusicFinished(Pointer<Void>? music_finished) {
  final _Mix_HookMusicFinished = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? music_finished),
      void Function(Pointer<Void>? music_finished)>('Mix_HookMusicFinished');
  return _Mix_HookMusicFinished(music_finished);
}
// extern DECLSPEC void * SDLCALL Mix_GetMusicHookData(void)
Pointer<Void>? Mix_GetMusicHookData() {
  final _Mix_GetMusicHookData = _SDL2_mixer.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('Mix_GetMusicHookData');
  return _Mix_GetMusicHookData();
}
// extern DECLSPEC void SDLCALL Mix_ChannelFinished(void (SDLCALL *channel_finished)(int channel))
void Mix_ChannelFinished(Pointer<Void>? channel_finished) {
  final _Mix_ChannelFinished = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? channel_finished),
      void Function(Pointer<Void>? channel_finished)>('Mix_ChannelFinished');
  return _Mix_ChannelFinished(channel_finished);
}
// extern DECLSPEC int SDLCALL Mix_RegisterEffect(int chan, Mix_EffectFunc_t f, Mix_EffectDone_t d, void *arg)
int? Mix_RegisterEffect(int? chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg) {
  final _Mix_RegisterEffect = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg),
      int? Function(int? chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg)>('Mix_RegisterEffect');
  return _Mix_RegisterEffect(chan, f, d, arg);
}
// extern DECLSPEC int SDLCALL Mix_UnregisterEffect(int channel, Mix_EffectFunc_t f)
int? Mix_UnregisterEffect(int? channel, Pointer<Void>? f) {
  final _Mix_UnregisterEffect = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Void>? f),
      int? Function(int? channel, Pointer<Void>? f)>('Mix_UnregisterEffect');
  return _Mix_UnregisterEffect(channel, f);
}
// extern DECLSPEC int SDLCALL Mix_UnregisterAllEffects(int channel)
int? Mix_UnregisterAllEffects(int? channel) {
  final _Mix_UnregisterAllEffects = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int? Function(int? channel)>('Mix_UnregisterAllEffects');
  return _Mix_UnregisterAllEffects(channel);
}
// extern DECLSPEC int SDLCALL Mix_SetPanning(int channel, Uint8 left, Uint8 right)
int? Mix_SetPanning(int? channel, int? left, int? right) {
  final _Mix_SetPanning = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Uint8 left, Uint8 right),
      int? Function(int? channel, int? left, int? right)>('Mix_SetPanning');
  return _Mix_SetPanning(channel, left, right);
}
// extern DECLSPEC int SDLCALL Mix_SetPosition(int channel, Sint16 angle, Uint8 distance)
int? Mix_SetPosition(int? channel, int? angle, int? distance) {
  final _Mix_SetPosition = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int16 angle, Uint8 distance),
      int? Function(int? channel, int? angle, int? distance)>('Mix_SetPosition');
  return _Mix_SetPosition(channel, angle, distance);
}
// extern DECLSPEC int SDLCALL Mix_SetDistance(int channel, Uint8 distance)
int? Mix_SetDistance(int? channel, int? distance) {
  final _Mix_SetDistance = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Uint8 distance),
      int? Function(int? channel, int? distance)>('Mix_SetDistance');
  return _Mix_SetDistance(channel, distance);
}
// extern DECLSPEC int SDLCALL Mix_SetReverseStereo(int channel, int flip)
int? Mix_SetReverseStereo(int? channel, int? flip) {
  final _Mix_SetReverseStereo = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 flip),
      int? Function(int? channel, int? flip)>('Mix_SetReverseStereo');
  return _Mix_SetReverseStereo(channel, flip);
}
// extern DECLSPEC int SDLCALL Mix_ReserveChannels(int num)
int? Mix_ReserveChannels(int? num) {
  final _Mix_ReserveChannels = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 num),
      int? Function(int? num)>('Mix_ReserveChannels');
  return _Mix_ReserveChannels(num);
}
// extern DECLSPEC int SDLCALL Mix_GroupChannel(int which, int tag)
int? Mix_GroupChannel(int? which, int? tag) {
  final _Mix_GroupChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which, Int32 tag),
      int? Function(int? which, int? tag)>('Mix_GroupChannel');
  return _Mix_GroupChannel(which, tag);
}
// extern DECLSPEC int SDLCALL Mix_GroupChannels(int from, int to, int tag)
int? Mix_GroupChannels(int? from, int? to, int? tag) {
  final _Mix_GroupChannels = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 from, Int32 to, Int32 tag),
      int? Function(int? from, int? to, int? tag)>('Mix_GroupChannels');
  return _Mix_GroupChannels(from, to, tag);
}
// extern DECLSPEC int SDLCALL Mix_GroupAvailable(int tag)
int? Mix_GroupAvailable(int? tag) {
  final _Mix_GroupAvailable = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int? Function(int? tag)>('Mix_GroupAvailable');
  return _Mix_GroupAvailable(tag);
}
// extern DECLSPEC int SDLCALL Mix_GroupCount(int tag)
int? Mix_GroupCount(int? tag) {
  final _Mix_GroupCount = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int? Function(int? tag)>('Mix_GroupCount');
  return _Mix_GroupCount(tag);
}
// extern DECLSPEC int SDLCALL Mix_GroupOldest(int tag)
int? Mix_GroupOldest(int? tag) {
  final _Mix_GroupOldest = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int? Function(int? tag)>('Mix_GroupOldest');
  return _Mix_GroupOldest(tag);
}
// extern DECLSPEC int SDLCALL Mix_GroupNewer(int tag)
int? Mix_GroupNewer(int? tag) {
  final _Mix_GroupNewer = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int? Function(int? tag)>('Mix_GroupNewer');
  return _Mix_GroupNewer(tag);
}
// extern DECLSPEC int SDLCALL Mix_PlayChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ticks)
int? Mix_PlayChannelTimed(int? channel, Pointer<Mix_Chunk>? chunk, int? loops, int? ticks) {
  final _Mix_PlayChannelTimed = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ticks),
      int? Function(int? channel, Pointer<Mix_Chunk>? chunk, int? loops, int? ticks)>('Mix_PlayChannelTimed');
  return _Mix_PlayChannelTimed(channel, chunk, loops, ticks);
}
// extern DECLSPEC int SDLCALL Mix_PlayMusic(Mix_Music *music, int loops)
int? Mix_PlayMusic(Pointer<Mix_Music>? music, int? loops) {
  final _Mix_PlayMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops),
      int? Function(Pointer<Mix_Music>? music, int? loops)>('Mix_PlayMusic');
  return _Mix_PlayMusic(music, loops);
}
// extern DECLSPEC int SDLCALL Mix_FadeInMusic(Mix_Music *music, int loops, int ms)
int? Mix_FadeInMusic(Pointer<Mix_Music>? music, int? loops, int? ms) {
  final _Mix_FadeInMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops, Int32 ms),
      int? Function(Pointer<Mix_Music>? music, int? loops, int? ms)>('Mix_FadeInMusic');
  return _Mix_FadeInMusic(music, loops, ms);
}
// extern DECLSPEC int SDLCALL Mix_FadeInMusicPos(Mix_Music *music, int loops, int ms, double position)
int? Mix_FadeInMusicPos(Pointer<Mix_Music>? music, int? loops, int? ms, double? position) {
  final _Mix_FadeInMusicPos = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops, Int32 ms, Double position),
      int? Function(Pointer<Mix_Music>? music, int? loops, int? ms, double? position)>('Mix_FadeInMusicPos');
  return _Mix_FadeInMusicPos(music, loops, ms, position);
}
// extern DECLSPEC int SDLCALL Mix_FadeInChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ms, int ticks)
int? Mix_FadeInChannelTimed(int? channel, Pointer<Mix_Chunk>? chunk, int? loops, int? ms, int? ticks) {
  final _Mix_FadeInChannelTimed = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ms, Int32 ticks),
      int? Function(int? channel, Pointer<Mix_Chunk>? chunk, int? loops, int? ms, int? ticks)>('Mix_FadeInChannelTimed');
  return _Mix_FadeInChannelTimed(channel, chunk, loops, ms, ticks);
}
// extern DECLSPEC int SDLCALL Mix_Volume(int channel, int volume)
int? Mix_Volume(int? channel, int? volume) {
  final _Mix_Volume = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 volume),
      int? Function(int? channel, int? volume)>('Mix_Volume');
  return _Mix_Volume(channel, volume);
}
// extern DECLSPEC int SDLCALL Mix_VolumeChunk(Mix_Chunk *chunk, int volume)
int? Mix_VolumeChunk(Pointer<Mix_Chunk>? chunk, int? volume) {
  final _Mix_VolumeChunk = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Chunk>? chunk, Int32 volume),
      int? Function(Pointer<Mix_Chunk>? chunk, int? volume)>('Mix_VolumeChunk');
  return _Mix_VolumeChunk(chunk, volume);
}
// extern DECLSPEC int SDLCALL Mix_VolumeMusic(int volume)
int? Mix_VolumeMusic(int? volume) {
  final _Mix_VolumeMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 volume),
      int? Function(int? volume)>('Mix_VolumeMusic');
  return _Mix_VolumeMusic(volume);
}
// extern DECLSPEC int SDLCALL Mix_HaltChannel(int channel)
int? Mix_HaltChannel(int? channel) {
  final _Mix_HaltChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int? Function(int? channel)>('Mix_HaltChannel');
  return _Mix_HaltChannel(channel);
}
// extern DECLSPEC int SDLCALL Mix_HaltGroup(int tag)
int? Mix_HaltGroup(int? tag) {
  final _Mix_HaltGroup = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int? Function(int? tag)>('Mix_HaltGroup');
  return _Mix_HaltGroup(tag);
}
// extern DECLSPEC int SDLCALL Mix_HaltMusic(void)
int? Mix_HaltMusic() {
  final _Mix_HaltMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_HaltMusic');
  return _Mix_HaltMusic();
}
// extern DECLSPEC int SDLCALL Mix_ExpireChannel(int channel, int ticks)
int? Mix_ExpireChannel(int? channel, int? ticks) {
  final _Mix_ExpireChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 ticks),
      int? Function(int? channel, int? ticks)>('Mix_ExpireChannel');
  return _Mix_ExpireChannel(channel, ticks);
}
// extern DECLSPEC int SDLCALL Mix_FadeOutChannel(int which, int ms)
int? Mix_FadeOutChannel(int? which, int? ms) {
  final _Mix_FadeOutChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which, Int32 ms),
      int? Function(int? which, int? ms)>('Mix_FadeOutChannel');
  return _Mix_FadeOutChannel(which, ms);
}
// extern DECLSPEC int SDLCALL Mix_FadeOutGroup(int tag, int ms)
int? Mix_FadeOutGroup(int? tag, int? ms) {
  final _Mix_FadeOutGroup = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag, Int32 ms),
      int? Function(int? tag, int? ms)>('Mix_FadeOutGroup');
  return _Mix_FadeOutGroup(tag, ms);
}
// extern DECLSPEC int SDLCALL Mix_FadeOutMusic(int ms)
int? Mix_FadeOutMusic(int? ms) {
  final _Mix_FadeOutMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 ms),
      int? Function(int? ms)>('Mix_FadeOutMusic');
  return _Mix_FadeOutMusic(ms);
}
// extern DECLSPEC Mix_Fading SDLCALL Mix_FadingMusic(void)
int? Mix_FadingMusic() {
  final _Mix_FadingMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_FadingMusic');
  return _Mix_FadingMusic();
}
// extern DECLSPEC Mix_Fading SDLCALL Mix_FadingChannel(int which)
int? Mix_FadingChannel(int? which) {
  final _Mix_FadingChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which),
      int? Function(int? which)>('Mix_FadingChannel');
  return _Mix_FadingChannel(which);
}
// extern DECLSPEC void SDLCALL Mix_Pause(int channel)
void Mix_Pause(int? channel) {
  final _Mix_Pause = _SDL2_mixer.lookupFunction<
      Void Function(Int32 channel),
      void Function(int? channel)>('Mix_Pause');
  return _Mix_Pause(channel);
}
// extern DECLSPEC void SDLCALL Mix_Resume(int channel)
void Mix_Resume(int? channel) {
  final _Mix_Resume = _SDL2_mixer.lookupFunction<
      Void Function(Int32 channel),
      void Function(int? channel)>('Mix_Resume');
  return _Mix_Resume(channel);
}
// extern DECLSPEC int SDLCALL Mix_Paused(int channel)
int? Mix_Paused(int? channel) {
  final _Mix_Paused = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int? Function(int? channel)>('Mix_Paused');
  return _Mix_Paused(channel);
}
// extern DECLSPEC void SDLCALL Mix_PauseMusic(void)
void Mix_PauseMusic() {
  final _Mix_PauseMusic = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_PauseMusic');
  return _Mix_PauseMusic();
}
// extern DECLSPEC void SDLCALL Mix_ResumeMusic(void)
void Mix_ResumeMusic() {
  final _Mix_ResumeMusic = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_ResumeMusic');
  return _Mix_ResumeMusic();
}
// extern DECLSPEC void SDLCALL Mix_RewindMusic(void)
void Mix_RewindMusic() {
  final _Mix_RewindMusic = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_RewindMusic');
  return _Mix_RewindMusic();
}
// extern DECLSPEC int SDLCALL Mix_PausedMusic(void)
int? Mix_PausedMusic() {
  final _Mix_PausedMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_PausedMusic');
  return _Mix_PausedMusic();
}
// extern DECLSPEC int SDLCALL Mix_SetMusicPosition(double position)
int? Mix_SetMusicPosition(double? position) {
  final _Mix_SetMusicPosition = _SDL2_mixer.lookupFunction<
      Int32 Function(Double position),
      int? Function(double? position)>('Mix_SetMusicPosition');
  return _Mix_SetMusicPosition(position);
}
// extern DECLSPEC int SDLCALL Mix_Playing(int channel)
int? Mix_Playing(int? channel) {
  final _Mix_Playing = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int? Function(int? channel)>('Mix_Playing');
  return _Mix_Playing(channel);
}
// extern DECLSPEC int SDLCALL Mix_PlayingMusic(void)
int? Mix_PlayingMusic() {
  final _Mix_PlayingMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_PlayingMusic');
  return _Mix_PlayingMusic();
}
// extern DECLSPEC int SDLCALL Mix_SetMusicCMD(const char *command)
int? Mix_SetMusicCMD(String? command) {
  final _Mix_SetMusicCMD = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? command),
      int? Function(Pointer<Utf8>? command)>('Mix_SetMusicCMD');
  final _commandPointer = command?.toNativeUtf8();
  final _result = _Mix_SetMusicCMD(_commandPointer);
  calloc.free(_commandPointer!);
  return _result;
}
// extern DECLSPEC int SDLCALL Mix_SetSynchroValue(int value)
int? Mix_SetSynchroValue(int? value) {
  final _Mix_SetSynchroValue = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 value),
      int? Function(int? value)>('Mix_SetSynchroValue');
  return _Mix_SetSynchroValue(value);
}
// extern DECLSPEC int SDLCALL Mix_GetSynchroValue(void)
int? Mix_GetSynchroValue() {
  final _Mix_GetSynchroValue = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int? Function()>('Mix_GetSynchroValue');
  return _Mix_GetSynchroValue();
}
// extern DECLSPEC int SDLCALL Mix_SetSoundFonts(const char *paths)
int? Mix_SetSoundFonts(String? paths) {
  final _Mix_SetSoundFonts = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? paths),
      int? Function(Pointer<Utf8>? paths)>('Mix_SetSoundFonts');
  final _pathsPointer = paths?.toNativeUtf8();
  final _result = _Mix_SetSoundFonts(_pathsPointer);
  calloc.free(_pathsPointer!);
  return _result;
}
// extern DECLSPEC const char* SDLCALL Mix_GetSoundFonts(void)
String? Mix_GetSoundFonts() {
  final _Mix_GetSoundFonts = _SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('Mix_GetSoundFonts');
  return _Mix_GetSoundFonts()?.toDartString();
}
// extern DECLSPEC int SDLCALL Mix_EachSoundFont(int (SDLCALL *function)(const char*, void*), void *data)
int? Mix_EachSoundFont(Pointer<Void>? function, Pointer<Void>? data) {
  final _Mix_EachSoundFont = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Void>? function, Pointer<Void>? data),
      int? Function(Pointer<Void>? function, Pointer<Void>? data)>('Mix_EachSoundFont');
  return _Mix_EachSoundFont(function, data);
}
// extern DECLSPEC Mix_Chunk * SDLCALL Mix_GetChunk(int channel)
Pointer<Mix_Chunk>? Mix_GetChunk(int? channel) {
  final _Mix_GetChunk = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Int32 channel),
      Pointer<Mix_Chunk>? Function(int? channel)>('Mix_GetChunk');
  return _Mix_GetChunk(channel);
}
// extern DECLSPEC void SDLCALL Mix_CloseAudio(void)
void Mix_CloseAudio() {
  final _Mix_CloseAudio = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_CloseAudio');
  return _Mix_CloseAudio();
}
