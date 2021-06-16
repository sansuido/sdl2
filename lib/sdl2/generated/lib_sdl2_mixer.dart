// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';
import 'struct_sdl2_mixer.dart';

final _SDL2_mixer = DynamicLibrary.open(Platform.isWindows ? 'SDL2_mixer.dll' : 'libSDL2_mixer.so');

/// This function gets the version of the dynamically linked SDL_mixer library.
/// it should NOT be used to fill a version structure, instead you should
/// use the SDL_MIXER_VERSION() macro.
/// /
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL Mix_Linked_Version(void)
/// ```
Pointer<SDL_version>? Mix_Linked_Version() {
  final _Mix_Linked_Version = _SDL2_mixer.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('Mix_Linked_Version');
  return _Mix_Linked_Version();
}

/// Loads dynamic libraries and prepares them for use.  Flags should be
/// one or more flags from MIX_InitFlags OR'd together.
/// It returns the flags successfully initialized, or 0 on failure.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Init(int flags)
/// ```
int Mix_Init(int flags) {
  final _Mix_Init = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 flags),
      int Function(int flags)>('Mix_Init');
  return _Mix_Init(flags);
}

/// Unloads libraries loaded with Mix_Init
/// ```c
/// extern DECLSPEC void SDLCALL Mix_Quit(void)
/// ```
void Mix_Quit() {
  final _Mix_Quit = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_Quit');
  return _Mix_Quit();
}

/// Open the mixer with a certain audio format
/// ```c
/// extern DECLSPEC int SDLCALL Mix_OpenAudio(int frequency, Uint16 format, int channels, int chunksize)
/// ```
int Mix_OpenAudio(int frequency, int format, int channels, int chunksize) {
  final _Mix_OpenAudio = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 frequency, Uint16 format, Int32 channels, Int32 chunksize),
      int Function(int frequency, int format, int channels, int chunksize)>('Mix_OpenAudio');
  return _Mix_OpenAudio(frequency, format, channels, chunksize);
}

/// Open the mixer with specific device and certain audio format
/// ```c
/// extern DECLSPEC int SDLCALL Mix_OpenAudioDevice(int frequency, Uint16 format, int channels, int chunksize, const char* device, int allowed_changes)
/// ```
int Mix_OpenAudioDevice(int frequency, int format, int channels, int chunksize, String device, int allowed_changes) {
  final _Mix_OpenAudioDevice = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 frequency, Uint16 format, Int32 channels, Int32 chunksize, Pointer<Utf8>? device, Int32 allowed_changes),
      int Function(int frequency, int format, int channels, int chunksize, Pointer<Utf8>? device, int allowed_changes)>('Mix_OpenAudioDevice');
  final _devicePointer = device.toNativeUtf8();
  final _result = _Mix_OpenAudioDevice(frequency, format, channels, chunksize, _devicePointer, allowed_changes);
  calloc.free(_devicePointer);
  return _result;
}

/// Dynamically change the number of channels managed by the mixer.
/// If decreasing the number of channels, the upper channels are
/// stopped.
/// This function returns the new number of allocated channels.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_AllocateChannels(int numchans)
/// ```
int Mix_AllocateChannels(int numchans) {
  final _Mix_AllocateChannels = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 numchans),
      int Function(int numchans)>('Mix_AllocateChannels');
  return _Mix_AllocateChannels(numchans);
}

/// Find out what the actual audio device parameters are.
/// This function returns 1 if the audio has been opened, 0 otherwise.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_QuerySpec(int *frequency,Uint16 *format,int *channels)
/// ```
int Mix_QuerySpec(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels) {
  final _Mix_QuerySpec = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels),
      int Function(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels)>('Mix_QuerySpec');
  return _Mix_QuerySpec(frequency, format, channels);
}

/// Load a wave file or a music (.mod .s3m .it .xm) file
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_LoadWAV_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<Mix_Chunk>? Mix_LoadWAV_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _Mix_LoadWAV_RW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<Mix_Chunk>? Function(Pointer<SDL_RWops>? src, int freesrc)>('Mix_LoadWAV_RW');
  return _Mix_LoadWAV_RW(src, freesrc);
}

/// ```c
/// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUS(const char *file)
/// ```
Pointer<Mix_Music>? Mix_LoadMUS(String file) {
  final _Mix_LoadMUS = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<Utf8>? file),
      Pointer<Mix_Music>? Function(Pointer<Utf8>? file)>('Mix_LoadMUS');
  final _filePointer = file.toNativeUtf8();
  final _result = _Mix_LoadMUS(_filePointer);
  calloc.free(_filePointer);
  return _result;
}

/// Load a music file from an SDL_RWop object (Ogg and MikMod specific currently)
/// Matt Campbell (matt@campbellhome.dhs.org) April 2000 */
/// ```c
/// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUS_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<Mix_Music>? Mix_LoadMUS_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _Mix_LoadMUS_RW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, int freesrc)>('Mix_LoadMUS_RW');
  return _Mix_LoadMUS_RW(src, freesrc);
}

/// Load a music file from an SDL_RWop object assuming a specific format
/// ```c
/// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUSType_RW(SDL_RWops *src, Mix_MusicType type, int freesrc)
/// ```
Pointer<Mix_Music>? Mix_LoadMUSType_RW(Pointer<SDL_RWops>? src, int type, int freesrc) {
  final _Mix_LoadMUSType_RW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, Int32 type, Int32 freesrc),
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, int type, int freesrc)>('Mix_LoadMUSType_RW');
  return _Mix_LoadMUSType_RW(src, type, freesrc);
}

/// Load a wave file of the mixer format from a memory buffer
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_QuickLoad_WAV(Uint8 *mem)
/// ```
Pointer<Mix_Chunk>? Mix_QuickLoad_WAV(Pointer<Uint8>? mem) {
  final _Mix_QuickLoad_WAV = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem),
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem)>('Mix_QuickLoad_WAV');
  return _Mix_QuickLoad_WAV(mem);
}

/// Load raw audio data of the mixer format from a memory buffer
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_QuickLoad_RAW(Uint8 *mem, Uint32 len)
/// ```
Pointer<Mix_Chunk>? Mix_QuickLoad_RAW(Pointer<Uint8>? mem, int len) {
  final _Mix_QuickLoad_RAW = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem, Uint32 len),
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem, int len)>('Mix_QuickLoad_RAW');
  return _Mix_QuickLoad_RAW(mem, len);
}

/// Free an audio chunk previously loaded
/// ```c
/// extern DECLSPEC void SDLCALL Mix_FreeChunk(Mix_Chunk *chunk)
/// ```
void Mix_FreeChunk(Pointer<Mix_Chunk>? chunk) {
  final _Mix_FreeChunk = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Mix_Chunk>? chunk),
      void Function(Pointer<Mix_Chunk>? chunk)>('Mix_FreeChunk');
  return _Mix_FreeChunk(chunk);
}

/// ```c
/// extern DECLSPEC void SDLCALL Mix_FreeMusic(Mix_Music *music)
/// ```
void Mix_FreeMusic(Pointer<Mix_Music>? music) {
  final _Mix_FreeMusic = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Mix_Music>? music),
      void Function(Pointer<Mix_Music>? music)>('Mix_FreeMusic');
  return _Mix_FreeMusic(music);
}

/// Get a list of chunk/music decoders that this build of SDL_mixer provides.
/// This list can change between builds AND runs of the program, if external
/// libraries that add functionality become available.
/// You must successfully call Mix_OpenAudio() before calling these functions.
/// This API is only available in SDL_mixer 1.2.9 and later.
/// 
/// // usage...
/// int i;
/// const int total = Mix_GetNumChunkDecoders();
/// for (i = 0; i < total; i++)
/// printf("Supported chunk decoder: [%s]\n", Mix_GetChunkDecoder(i));
/// 
/// Appearing in this list doesn't promise your specific audio file will
/// decode...but it's handy to know if you have, say, a functioning Timidity
/// install.
/// 
/// These return values are static, read-only data; do not modify or free it.
/// The pointers remain valid until you call Mix_CloseAudio().
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetNumChunkDecoders(void)
/// ```
int Mix_GetNumChunkDecoders() {
  final _Mix_GetNumChunkDecoders = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_GetNumChunkDecoders');
  return _Mix_GetNumChunkDecoders();
}

/// ```c
/// extern DECLSPEC const char * SDLCALL Mix_GetChunkDecoder(int index)
/// ```
String Mix_GetChunkDecoder(int index) {
  final _Mix_GetChunkDecoder = _SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('Mix_GetChunkDecoder');
  return _Mix_GetChunkDecoder(index)!.toDartString();
}

/// ```c
/// extern DECLSPEC SDL_bool SDLCALL Mix_HasChunkDecoder(const char *name)
/// ```
int Mix_HasChunkDecoder(String name) {
  final _Mix_HasChunkDecoder = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('Mix_HasChunkDecoder');
  final _namePointer = name.toNativeUtf8();
  final _result = _Mix_HasChunkDecoder(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetNumMusicDecoders(void)
/// ```
int Mix_GetNumMusicDecoders() {
  final _Mix_GetNumMusicDecoders = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_GetNumMusicDecoders');
  return _Mix_GetNumMusicDecoders();
}

/// ```c
/// extern DECLSPEC const char * SDLCALL Mix_GetMusicDecoder(int index)
/// ```
String Mix_GetMusicDecoder(int index) {
  final _Mix_GetMusicDecoder = _SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('Mix_GetMusicDecoder');
  return _Mix_GetMusicDecoder(index)!.toDartString();
}

/// ```c
/// extern DECLSPEC SDL_bool SDLCALL Mix_HasMusicDecoder(const char *name)
/// ```
int Mix_HasMusicDecoder(String name) {
  final _Mix_HasMusicDecoder = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('Mix_HasMusicDecoder');
  final _namePointer = name.toNativeUtf8();
  final _result = _Mix_HasMusicDecoder(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// Find out the music format of a mixer music, or the currently playing
/// music, if 'music' is NULL.
/// 
/// ```c
/// extern DECLSPEC Mix_MusicType SDLCALL Mix_GetMusicType(const Mix_Music *music)
/// ```
int Mix_GetMusicType(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicType = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music),
      int Function(Pointer<Mix_Music>? music)>('Mix_GetMusicType');
  return _Mix_GetMusicType(music);
}

/// Set a function that is called after all mixing is performed.
/// This can be used to provide real-time visual display of the audio stream
/// or add a custom mixer filter for the stream data.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_SetPostMix(void (SDLCALL *mix_func)(void *udata, Uint8 *stream, int len), void *arg)
/// ```
void Mix_SetPostMix(Pointer<Void>? mix_func, Pointer<Void>? arg) {
  final _Mix_SetPostMix = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? mix_func, Pointer<Void>? arg),
      void Function(Pointer<Void>? mix_func, Pointer<Void>? arg)>('Mix_SetPostMix');
  return _Mix_SetPostMix(mix_func, arg);
}

/// Add your own music player or additional mixer function.
/// If 'mix_func' is NULL, the default music player is re-enabled.
/// /
/// ```c
/// extern DECLSPEC void SDLCALL Mix_HookMusic(void (SDLCALL *mix_func)(void *udata, Uint8 *stream, int len), void *arg)
/// ```
void Mix_HookMusic(Pointer<Void>? mix_func, Pointer<Void>? arg) {
  final _Mix_HookMusic = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? mix_func, Pointer<Void>? arg),
      void Function(Pointer<Void>? mix_func, Pointer<Void>? arg)>('Mix_HookMusic');
  return _Mix_HookMusic(mix_func, arg);
}

/// Add your own callback for when the music has finished playing or when it is
/// stopped from a call to Mix_HaltMusic.
/// /
/// ```c
/// extern DECLSPEC void SDLCALL Mix_HookMusicFinished(void (SDLCALL *music_finished)(void))
/// ```
void Mix_HookMusicFinished(Pointer<Void>? music_finished) {
  final _Mix_HookMusicFinished = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? music_finished),
      void Function(Pointer<Void>? music_finished)>('Mix_HookMusicFinished');
  return _Mix_HookMusicFinished(music_finished);
}

/// Get a pointer to the user data for the current music hook
/// ```c
/// extern DECLSPEC void * SDLCALL Mix_GetMusicHookData(void)
/// ```
Pointer<Void>? Mix_GetMusicHookData() {
  final _Mix_GetMusicHookData = _SDL2_mixer.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('Mix_GetMusicHookData');
  return _Mix_GetMusicHookData();
}

/// 
/// Add your own callback when a channel has finished playing. NULL
/// to disable callback. The callback may be called from the mixer's audio
/// callback or it could be called as a result of Mix_HaltChannel(), etc.
/// do not call SDL_LockAudio() from this callback; you will either be
/// inside the audio callback, or SDL_mixer will explicitly lock the audio
/// before calling your callback.
/// /
/// ```c
/// extern DECLSPEC void SDLCALL Mix_ChannelFinished(void (SDLCALL *channel_finished)(int channel))
/// ```
void Mix_ChannelFinished(Pointer<Void>? channel_finished) {
  final _Mix_ChannelFinished = _SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? channel_finished),
      void Function(Pointer<Void>? channel_finished)>('Mix_ChannelFinished');
  return _Mix_ChannelFinished(channel_finished);
}

/// Register a special effect function. At mixing time, the channel data is
/// copied into a buffer and passed through each registered effect function.
/// After it passes through all the functions, it is mixed into the final
/// output stream. The copy to buffer is performed once, then each effect
/// function performs on the output of the previous effect. Understand that
/// this extra copy to a buffer is not performed if there are no effects
/// registered for a given chunk, which saves CPU cycles, and any given
/// effect will be extra cycles, too, so it is crucial that your code run
/// fast. Also note that the data that your function is given is in the
/// format of the sound device, and not the format you gave to Mix_OpenAudio(),
/// although they may in reality be the same. This is an unfortunate but
/// necessary speed concern. Use Mix_QuerySpec() to determine if you can
/// handle the data before you register your effect, and take appropriate
/// actions.
/// You may also specify a callback (Mix_EffectDone_t) that is called when
/// the channel finishes playing. This gives you a more fine-grained control
/// than Mix_ChannelFinished(), in case you need to free effect-specific
/// resources, etc. If you don't need this, you can specify NULL.
/// You may set the callbacks before or after calling Mix_PlayChannel().
/// Things like Mix_SetPanning() are just internal special effect functions,
/// so if you are using that, you've already incurred the overhead of a copy
/// to a separate buffer, and that these effects will be in the queue with
/// any functions you've registered. The list of registered effects for a
/// channel is reset when a chunk finishes playing, so you need to explicitly
/// set them with each call to Mix_PlayChannel*().
/// You may also register a special effect function that is to be run after
/// final mixing occurs. The rules for these callbacks are identical to those
/// in Mix_RegisterEffect, but they are run after all the channels and the
/// music have been mixed into a single stream, whereas channel-specific
/// effects run on a given channel before any other mixing occurs. These
/// global effect callbacks are call "posteffects". Posteffects only have
/// their Mix_EffectDone_t function called when they are unregistered (since
/// the main output stream is never "done" in the same sense as a channel).
/// You must unregister them manually when you've had enough. Your callback
/// will be told that the channel being mixed is (MIX_CHANNEL_POST) if the
/// processing is considered a posteffect.
/// 
/// After all these effects have finished processing, the callback registered
/// through Mix_SetPostMix() runs, and then the stream goes to the audio
/// device.
/// 
/// DO NOT EVER call SDL_LockAudio() from your callback function!
/// 
/// returns zero if error (no such channel), nonzero if added.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_RegisterEffect(int chan, Mix_EffectFunc_t f, Mix_EffectDone_t d, void *arg)
/// ```
int Mix_RegisterEffect(int chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg) {
  final _Mix_RegisterEffect = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg),
      int Function(int chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg)>('Mix_RegisterEffect');
  return _Mix_RegisterEffect(chan, f, d, arg);
}

/// You may not need to call this explicitly, unless you need to stop an
/// effect from processing in the middle of a chunk's playback.
/// Posteffects are never implicitly unregistered as they are for channels,
/// but they may be explicitly unregistered through this function by
/// specifying MIX_CHANNEL_POST for a channel.
/// returns zero if error (no such channel or effect), nonzero if removed.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_UnregisterEffect(int channel, Mix_EffectFunc_t f)
/// ```
int Mix_UnregisterEffect(int channel, Pointer<Void>? f) {
  final _Mix_UnregisterEffect = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Void>? f),
      int Function(int channel, Pointer<Void>? f)>('Mix_UnregisterEffect');
  return _Mix_UnregisterEffect(channel, f);
}

/// You may not need to call this explicitly, unless you need to stop all
/// effects from processing in the middle of a chunk's playback. Note that
/// this will also shut off some internal effect processing, since
/// Mix_SetPanning() and others may use this API under the hood. This is
/// called internally when a channel completes playback.
/// Posteffects are never implicitly unregistered as they are for channels,
/// but they may be explicitly unregistered through this function by
/// specifying MIX_CHANNEL_POST for a channel.
/// returns zero if error (no such channel), nonzero if all effects removed.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_UnregisterAllEffects(int channel)
/// ```
int Mix_UnregisterAllEffects(int channel) {
  final _Mix_UnregisterAllEffects = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_UnregisterAllEffects');
  return _Mix_UnregisterAllEffects(channel);
}

/// Set the panning of a channel. The left and right channels are specified
/// as integers between 0 and 255, quietest to loudest, respectively.
/// 
/// Technically, this is just individual volume control for a sample with
/// two (stereo) channels, so it can be used for more than just panning.
/// If you want real panning, call it like this:
/// 
/// Mix_SetPanning(channel, left, 255 - left);
/// 
/// ...which isn't so hard.
/// 
/// Setting (channel) to MIX_CHANNEL_POST registers this as a posteffect, and
/// the panning will be done to the final mixed stream before passing it on
/// to the audio device.
/// 
/// This uses the Mix_RegisterEffect() API internally, and returns without
/// registering the effect function if the audio device is not configured
/// for stereo output. Setting both (left) and (right) to 255 causes this
/// effect to be unregistered, since that is the data's normal state.
/// 
/// returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if panning effect enabled. Note that an audio device in mono
/// mode is a no-op, but this call will return successful in that case.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetPanning(int channel, Uint8 left, Uint8 right)
/// ```
int Mix_SetPanning(int channel, int left, int right) {
  final _Mix_SetPanning = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Uint8 left, Uint8 right),
      int Function(int channel, int left, int right)>('Mix_SetPanning');
  return _Mix_SetPanning(channel, left, right);
}

/// Set the position of a channel. (angle) is an integer from 0 to 360, that
/// specifies the location of the sound in relation to the listener. (angle)
/// will be reduced as neccesary (540 becomes 180 degrees, -100 becomes 260).
/// Angle 0 is due north, and rotates clockwise as the value increases.
/// For efficiency, the precision of this effect may be limited (angles 1
/// through 7 might all produce the same effect, 8 through 15 are equal, etc).
/// (distance) is an integer between 0 and 255 that specifies the space
/// between the sound and the listener. The larger the number, the further
/// away the sound is. Using 255 does not guarantee that the channel will be
/// culled from the mixing process or be completely silent. For efficiency,
/// the precision of this effect may be limited (distance 0 through 5 might
/// all produce the same effect, 6 through 10 are equal, etc). Setting (angle)
/// and (distance) to 0 unregisters this effect, since the data would be
/// unchanged.
/// 
/// If you need more precise positional audio, consider using OpenAL for
/// spatialized effects instead of SDL_mixer. This is only meant to be a
/// basic effect for simple "3D" games.
/// 
/// If the audio device is configured for mono output, then you won't get
/// any effectiveness from the angle; however, distance attenuation on the
/// channel will still occur. While this effect will function with stereo
/// voices, it makes more sense to use voices with only one channel of sound,
/// so when they are mixed through this effect, the positioning will sound
/// correct. You can convert them to mono through SDL before giving them to
/// the mixer in the first place if you like.
/// 
/// Setting (channel) to MIX_CHANNEL_POST registers this as a posteffect, and
/// the positioning will be done to the final mixed stream before passing it
/// on to the audio device.
/// 
/// This is a convenience wrapper over Mix_SetDistance() and Mix_SetPanning().
/// 
/// returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if position effect is enabled.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetPosition(int channel, Sint16 angle, Uint8 distance)
/// ```
int Mix_SetPosition(int channel, int angle, int distance) {
  final _Mix_SetPosition = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int16 angle, Uint8 distance),
      int Function(int channel, int angle, int distance)>('Mix_SetPosition');
  return _Mix_SetPosition(channel, angle, distance);
}

/// Set the "distance" of a channel. (distance) is an integer from 0 to 255
/// that specifies the location of the sound in relation to the listener.
/// Distance 0 is overlapping the listener, and 255 is as far away as possible
/// A distance of 255 does not guarantee silence; in such a case, you might
/// want to try changing the chunk's volume, or just cull the sample from the
/// mixing process with Mix_HaltChannel().
/// For efficiency, the precision of this effect may be limited (distances 1
/// through 7 might all produce the same effect, 8 through 15 are equal, etc).
/// (distance) is an integer between 0 and 255 that specifies the space
/// between the sound and the listener. The larger the number, the further
/// away the sound is.
/// Setting (distance) to 0 unregisters this effect, since the data would be
/// unchanged.
/// If you need more precise positional audio, consider using OpenAL for
/// spatialized effects instead of SDL_mixer. This is only meant to be a
/// basic effect for simple "3D" games.
/// 
/// Setting (channel) to MIX_CHANNEL_POST registers this as a posteffect, and
/// the distance attenuation will be done to the final mixed stream before
/// passing it on to the audio device.
/// 
/// This uses the Mix_RegisterEffect() API internally.
/// 
/// returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if position effect is enabled.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetDistance(int channel, Uint8 distance)
/// ```
int Mix_SetDistance(int channel, int distance) {
  final _Mix_SetDistance = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Uint8 distance),
      int Function(int channel, int distance)>('Mix_SetDistance');
  return _Mix_SetDistance(channel, distance);
}

/// Causes a channel to reverse its stereo. This is handy if the user has his
/// speakers hooked up backwards, or you would like to have a minor bit of
/// psychedelia in your sound code.  :)  Calling this function with (flip)
/// set to non-zero reverses the chunks's usual channels. If (flip) is zero,
/// the effect is unregistered.
/// 
/// This uses the Mix_RegisterEffect() API internally, and thus is probably
/// more CPU intensive than having the user just plug in his speakers
/// correctly. Mix_SetReverseStereo() returns without registering the effect
/// function if the audio device is not configured for stereo output.
/// 
/// If you specify MIX_CHANNEL_POST for (channel), then this the effect is used
/// on the final mixed stream before sending it on to the audio device (a
/// posteffect).
/// 
/// returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if reversing effect is enabled. Note that an audio device in mono
/// mode is a no-op, but this call will return successful in that case.
/// Error messages can be retrieved from Mix_GetError().
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetReverseStereo(int channel, int flip)
/// ```
int Mix_SetReverseStereo(int channel, int flip) {
  final _Mix_SetReverseStereo = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 flip),
      int Function(int channel, int flip)>('Mix_SetReverseStereo');
  return _Mix_SetReverseStereo(channel, flip);
}

/// Reserve the first channels (0 -> n-1) for the application, i.e. don't allocate
/// them dynamically to the next sample if requested with a -1 value below.
/// Returns the number of reserved channels.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_ReserveChannels(int num)
/// ```
int Mix_ReserveChannels(int num) {
  final _Mix_ReserveChannels = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 num),
      int Function(int num)>('Mix_ReserveChannels');
  return _Mix_ReserveChannels(num);
}

/// Attach a tag to a channel. A tag can be assigned to several mixer
/// channels, to form groups of channels.
/// If 'tag' is -1, the tag is removed (actually -1 is the tag used to
/// represent the group of all the channels).
/// Returns true if everything was OK.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupChannel(int which, int tag)
/// ```
int Mix_GroupChannel(int which, int tag) {
  final _Mix_GroupChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which, Int32 tag),
      int Function(int which, int tag)>('Mix_GroupChannel');
  return _Mix_GroupChannel(which, tag);
}

/// Assign several consecutive channels to a group
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupChannels(int from, int to, int tag)
/// ```
int Mix_GroupChannels(int from, int to, int tag) {
  final _Mix_GroupChannels = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 from, Int32 to, Int32 tag),
      int Function(int from, int to, int tag)>('Mix_GroupChannels');
  return _Mix_GroupChannels(from, to, tag);
}

/// Finds the first available channel in a group of channels,
/// returning -1 if none are available.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupAvailable(int tag)
/// ```
int Mix_GroupAvailable(int tag) {
  final _Mix_GroupAvailable = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupAvailable');
  return _Mix_GroupAvailable(tag);
}

/// Returns the number of channels in a group. This is also a subtle
/// way to get the total number of channels when 'tag' is -1
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupCount(int tag)
/// ```
int Mix_GroupCount(int tag) {
  final _Mix_GroupCount = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupCount');
  return _Mix_GroupCount(tag);
}

/// Finds the "oldest" sample playing in a group of channels
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupOldest(int tag)
/// ```
int Mix_GroupOldest(int tag) {
  final _Mix_GroupOldest = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupOldest');
  return _Mix_GroupOldest(tag);
}

/// Finds the "most recent" (i.e. last) sample playing in a group of channels
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupNewer(int tag)
/// ```
int Mix_GroupNewer(int tag) {
  final _Mix_GroupNewer = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupNewer');
  return _Mix_GroupNewer(tag);
}

/// The same as above, but the sound is played at most 'ticks' milliseconds
/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ticks)
/// ```
int Mix_PlayChannelTimed(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ticks) {
  final _Mix_PlayChannelTimed = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ticks),
      int Function(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ticks)>('Mix_PlayChannelTimed');
  return _Mix_PlayChannelTimed(channel, chunk, loops, ticks);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayMusic(Mix_Music *music, int loops)
/// ```
int Mix_PlayMusic(Pointer<Mix_Music>? music, int loops) {
  final _Mix_PlayMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops),
      int Function(Pointer<Mix_Music>? music, int loops)>('Mix_PlayMusic');
  return _Mix_PlayMusic(music, loops);
}

/// Fade in music or a channel over "ms" milliseconds, same semantics as the "Play" functions
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInMusic(Mix_Music *music, int loops, int ms)
/// ```
int Mix_FadeInMusic(Pointer<Mix_Music>? music, int loops, int ms) {
  final _Mix_FadeInMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops, Int32 ms),
      int Function(Pointer<Mix_Music>? music, int loops, int ms)>('Mix_FadeInMusic');
  return _Mix_FadeInMusic(music, loops, ms);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInMusicPos(Mix_Music *music, int loops, int ms, double position)
/// ```
int Mix_FadeInMusicPos(Pointer<Mix_Music>? music, int loops, int ms, double position) {
  final _Mix_FadeInMusicPos = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops, Int32 ms, Double position),
      int Function(Pointer<Mix_Music>? music, int loops, int ms, double position)>('Mix_FadeInMusicPos');
  return _Mix_FadeInMusicPos(music, loops, ms, position);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ms, int ticks)
/// ```
int Mix_FadeInChannelTimed(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ms, int ticks) {
  final _Mix_FadeInChannelTimed = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ms, Int32 ticks),
      int Function(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ms, int ticks)>('Mix_FadeInChannelTimed');
  return _Mix_FadeInChannelTimed(channel, chunk, loops, ms, ticks);
}

/// Set the volume in the range of 0-128 of a specific channel or chunk.
/// If the specified channel is -1, set volume for all channels.
/// Returns the original volume.
/// If the specified volume is -1, just return the current volume.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Volume(int channel, int volume)
/// ```
int Mix_Volume(int channel, int volume) {
  final _Mix_Volume = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 volume),
      int Function(int channel, int volume)>('Mix_Volume');
  return _Mix_Volume(channel, volume);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_VolumeChunk(Mix_Chunk *chunk, int volume)
/// ```
int Mix_VolumeChunk(Pointer<Mix_Chunk>? chunk, int volume) {
  final _Mix_VolumeChunk = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Chunk>? chunk, Int32 volume),
      int Function(Pointer<Mix_Chunk>? chunk, int volume)>('Mix_VolumeChunk');
  return _Mix_VolumeChunk(chunk, volume);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_VolumeMusic(int volume)
/// ```
int Mix_VolumeMusic(int volume) {
  final _Mix_VolumeMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 volume),
      int Function(int volume)>('Mix_VolumeMusic');
  return _Mix_VolumeMusic(volume);
}

/// Halt playing of a particular channel
/// ```c
/// extern DECLSPEC int SDLCALL Mix_HaltChannel(int channel)
/// ```
int Mix_HaltChannel(int channel) {
  final _Mix_HaltChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_HaltChannel');
  return _Mix_HaltChannel(channel);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_HaltGroup(int tag)
/// ```
int Mix_HaltGroup(int tag) {
  final _Mix_HaltGroup = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_HaltGroup');
  return _Mix_HaltGroup(tag);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_HaltMusic(void)
/// ```
int Mix_HaltMusic() {
  final _Mix_HaltMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_HaltMusic');
  return _Mix_HaltMusic();
}

/// Change the expiration delay for a particular channel.
/// The sample will stop playing after the 'ticks' milliseconds have elapsed,
/// or remove the expiration if 'ticks' is -1
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_ExpireChannel(int channel, int ticks)
/// ```
int Mix_ExpireChannel(int channel, int ticks) {
  final _Mix_ExpireChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 ticks),
      int Function(int channel, int ticks)>('Mix_ExpireChannel');
  return _Mix_ExpireChannel(channel, ticks);
}

/// Halt a channel, fading it out progressively till it's silent
/// The ms parameter indicates the number of milliseconds the fading
/// will take.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeOutChannel(int which, int ms)
/// ```
int Mix_FadeOutChannel(int which, int ms) {
  final _Mix_FadeOutChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which, Int32 ms),
      int Function(int which, int ms)>('Mix_FadeOutChannel');
  return _Mix_FadeOutChannel(which, ms);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeOutGroup(int tag, int ms)
/// ```
int Mix_FadeOutGroup(int tag, int ms) {
  final _Mix_FadeOutGroup = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag, Int32 ms),
      int Function(int tag, int ms)>('Mix_FadeOutGroup');
  return _Mix_FadeOutGroup(tag, ms);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeOutMusic(int ms)
/// ```
int Mix_FadeOutMusic(int ms) {
  final _Mix_FadeOutMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 ms),
      int Function(int ms)>('Mix_FadeOutMusic');
  return _Mix_FadeOutMusic(ms);
}

/// Query the fading status of a channel
/// ```c
/// extern DECLSPEC Mix_Fading SDLCALL Mix_FadingMusic(void)
/// ```
int Mix_FadingMusic() {
  final _Mix_FadingMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_FadingMusic');
  return _Mix_FadingMusic();
}

/// ```c
/// extern DECLSPEC Mix_Fading SDLCALL Mix_FadingChannel(int which)
/// ```
int Mix_FadingChannel(int which) {
  final _Mix_FadingChannel = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which),
      int Function(int which)>('Mix_FadingChannel');
  return _Mix_FadingChannel(which);
}

/// Pause/Resume a particular channel
/// ```c
/// extern DECLSPEC void SDLCALL Mix_Pause(int channel)
/// ```
void Mix_Pause(int channel) {
  final _Mix_Pause = _SDL2_mixer.lookupFunction<
      Void Function(Int32 channel),
      void Function(int channel)>('Mix_Pause');
  return _Mix_Pause(channel);
}

/// ```c
/// extern DECLSPEC void SDLCALL Mix_Resume(int channel)
/// ```
void Mix_Resume(int channel) {
  final _Mix_Resume = _SDL2_mixer.lookupFunction<
      Void Function(Int32 channel),
      void Function(int channel)>('Mix_Resume');
  return _Mix_Resume(channel);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_Paused(int channel)
/// ```
int Mix_Paused(int channel) {
  final _Mix_Paused = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_Paused');
  return _Mix_Paused(channel);
}

/// Pause/Resume the music stream
/// ```c
/// extern DECLSPEC void SDLCALL Mix_PauseMusic(void)
/// ```
void Mix_PauseMusic() {
  final _Mix_PauseMusic = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_PauseMusic');
  return _Mix_PauseMusic();
}

/// ```c
/// extern DECLSPEC void SDLCALL Mix_ResumeMusic(void)
/// ```
void Mix_ResumeMusic() {
  final _Mix_ResumeMusic = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_ResumeMusic');
  return _Mix_ResumeMusic();
}

/// ```c
/// extern DECLSPEC void SDLCALL Mix_RewindMusic(void)
/// ```
void Mix_RewindMusic() {
  final _Mix_RewindMusic = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_RewindMusic');
  return _Mix_RewindMusic();
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_PausedMusic(void)
/// ```
int Mix_PausedMusic() {
  final _Mix_PausedMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_PausedMusic');
  return _Mix_PausedMusic();
}

/// Set the current position in the music stream.
/// This returns 0 if successful, or -1 if it failed or isn't implemented.
/// This function is only implemented for MOD music formats (set pattern
/// order number) and for OGG, FLAC, MP3_MAD, MP3_MPG and MODPLUG music
/// (set position in seconds), at the moment.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetMusicPosition(double position)
/// ```
int Mix_SetMusicPosition(double position) {
  final _Mix_SetMusicPosition = _SDL2_mixer.lookupFunction<
      Int32 Function(Double position),
      int Function(double position)>('Mix_SetMusicPosition');
  return _Mix_SetMusicPosition(position);
}

/// Check the status of a specific channel.
/// If the specified channel is -1, check all channels.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Playing(int channel)
/// ```
int Mix_Playing(int channel) {
  final _Mix_Playing = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_Playing');
  return _Mix_Playing(channel);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayingMusic(void)
/// ```
int Mix_PlayingMusic() {
  final _Mix_PlayingMusic = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_PlayingMusic');
  return _Mix_PlayingMusic();
}

/// Stop music and set external music playback command
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetMusicCMD(const char *command)
/// ```
int Mix_SetMusicCMD(String command) {
  final _Mix_SetMusicCMD = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? command),
      int Function(Pointer<Utf8>? command)>('Mix_SetMusicCMD');
  final _commandPointer = command.toNativeUtf8();
  final _result = _Mix_SetMusicCMD(_commandPointer);
  calloc.free(_commandPointer);
  return _result;
}

/// Synchro value is set by MikMod from modules while playing
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetSynchroValue(int value)
/// ```
int Mix_SetSynchroValue(int value) {
  final _Mix_SetSynchroValue = _SDL2_mixer.lookupFunction<
      Int32 Function(Int32 value),
      int Function(int value)>('Mix_SetSynchroValue');
  return _Mix_SetSynchroValue(value);
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetSynchroValue(void)
/// ```
int Mix_GetSynchroValue() {
  final _Mix_GetSynchroValue = _SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_GetSynchroValue');
  return _Mix_GetSynchroValue();
}

/// Set/Get/Iterate SoundFonts paths to use by supported MIDI backends
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetSoundFonts(const char *paths)
/// ```
int Mix_SetSoundFonts(String paths) {
  final _Mix_SetSoundFonts = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? paths),
      int Function(Pointer<Utf8>? paths)>('Mix_SetSoundFonts');
  final _pathsPointer = paths.toNativeUtf8();
  final _result = _Mix_SetSoundFonts(_pathsPointer);
  calloc.free(_pathsPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC const char* SDLCALL Mix_GetSoundFonts(void)
/// ```
String Mix_GetSoundFonts() {
  final _Mix_GetSoundFonts = _SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('Mix_GetSoundFonts');
  return _Mix_GetSoundFonts()!.toDartString();
}

/// ```c
/// extern DECLSPEC int SDLCALL Mix_EachSoundFont(int (SDLCALL *function)(const char*, void*), void *data)
/// ```
int Mix_EachSoundFont(Pointer<Void>? function, Pointer<Void>? data) {
  final _Mix_EachSoundFont = _SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Void>? function, Pointer<Void>? data),
      int Function(Pointer<Void>? function, Pointer<Void>? data)>('Mix_EachSoundFont');
  return _Mix_EachSoundFont(function, data);
}

/// Get the Mix_Chunk currently associated with a mixer channel
/// Returns NULL if it's an invalid channel, or there's no chunk associated.
/// 
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_GetChunk(int channel)
/// ```
Pointer<Mix_Chunk>? Mix_GetChunk(int channel) {
  final _Mix_GetChunk = _SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Int32 channel),
      Pointer<Mix_Chunk>? Function(int channel)>('Mix_GetChunk');
  return _Mix_GetChunk(channel);
}

/// Close the mixer, halting all playing audio
/// ```c
/// extern DECLSPEC void SDLCALL Mix_CloseAudio(void)
/// ```
void Mix_CloseAudio() {
  final _Mix_CloseAudio = _SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_CloseAudio');
  return _Mix_CloseAudio();
}

