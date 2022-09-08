// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../dylib.dart' as dylib;
import 'struct_sdl.dart';
import 'struct_sdl_mixer.dart';

final DLL_SDL2_mixer = dylib.dylibOpen('SDL2_mixer');

/// 
/// Query the version of SDL_mixer that the program is linked against.
/// 
/// This function gets the version of the dynamically linked SDL_mixer library.
/// This is separate from the SDL_MIXER_VERSION() macro, which tells you what
/// version of the SDL_mixer headers you compiled against.
/// 
/// This returns static internal data; do not free or modify it!
/// 
/// \returns a pointer to the version information.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL Mix_Linked_Version(void)
/// ```
Pointer<SDL_version>? Mix_Linked_Version() {
  final _Mix_Linked_Version = DLL_SDL2_mixer.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('Mix_Linked_Version');
  return _Mix_Linked_Version();
}

/// 
/// Initialize SDL_mixer.
/// 
/// This function loads dynamic libraries that SDL_mixer needs, and prepares
/// them for use. This must be the first function you call in SDL_mixer, and if
/// it fails you should not continue with the library.
/// 
/// Flags should be one or more flags from MIX_InitFlags OR'd together. It
/// returns the flags successfully initialized, or 0 on failure.
/// 
/// Currently, these flags are:
/// 
/// - `MIX_INIT_FLAC`
/// - `MIX_INIT_MOD`
/// - `MIX_INIT_MP3`
/// - `MIX_INIT_OGG`
/// - `MIX_INIT_MID`
/// - `MIX_INIT_OPUS`
/// 
/// More flags may be added in a future SDL_mixer release.
/// 
/// This function may need to load external shared libraries to support various
/// codecs, which means this function can fail to initialize that support on an
/// otherwise-reasonable system if the library isn't available; this is not
/// just a question of exceptional circumstances like running out of memory at
/// startup!
/// 
/// Note that you may call this function more than once to initialize with
/// additional flags. The return value will reflect both new flags that
/// successfully initialized, and also include flags that had previously been
/// initialized as well.
/// 
/// As this will return previously-initialized flags, it's legal to call this
/// with zero (no flags set). This is a safe no-op that can be used to query
/// the current initialization state without changing it at all.
/// 
/// Since this returns previously-initialized flags as well as new ones, and
/// you can call this with zero, you should not check for a zero return value
/// to determine an error condition. Instead, you should check to make sure all
/// the flags you require are set in the return value. If you have a game with
/// data in a specific format, this might be a fatal error. If you're a generic
/// media player, perhaps you are fine with only having WAV and MP3 support and
/// can live without Opus playback, even if you request support for everything.
/// 
/// Unlike other SDL satellite libraries, calls to Mix_Init do not stack; a
/// single call to Mix_Quit() will deinitialize everything and does not have to
/// be paired with a matching Mix_Init call. For that reason, it's considered
/// best practices to have a single Mix_Init and Mix_Quit call in your program.
/// While this isn't required, be aware of the risks of deviating from that
/// behavior.
/// 
/// After initializing SDL_mixer, the next step is to open an audio device to
/// prepare to play sound (with Mix_OpenAudio() or Mix_OpenAudioDevice()), and
/// load audio data to play with that device.
/// 
/// \param flags initialization flags, OR'd together.
/// \returns all currently initialized flags.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_Quit
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Init(int flags)
/// ```
int Mix_Init(int flags) {
  final _Mix_Init = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 flags),
      int Function(int flags)>('Mix_Init');
  return _Mix_Init(flags);
}

/// 
/// Deinitialize SDL_mixer.
/// 
/// This should be the last function you call in SDL_mixer, after freeing all
/// other resources and closing all audio devices. This will unload any shared
/// libraries it is using for various codecs.
/// 
/// After this call, a call to Mix_Init(0) will return 0 (no codecs loaded).
/// 
/// You can safely call Mix_Init() to reload various codec support after this
/// call.
/// 
/// Unlike other SDL satellite libraries, calls to Mix_Init do not stack; a
/// single call to Mix_Quit() will deinitialize everything and does not have to
/// be paired with a matching Mix_Init call. For that reason, it's considered
/// best practices to have a single Mix_Init and Mix_Quit call in your program.
/// While this isn't required, be aware of the risks of deviating from that
/// behavior.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_Init
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_Quit(void)
/// ```
void Mix_Quit() {
  final _Mix_Quit = DLL_SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_Quit');
  return _Mix_Quit();
}

/// 
/// Open the default audio device for playback.
/// 
/// An audio device is what generates sound, so the app must open one to make
/// noise.
/// 
/// This function will check if SDL's audio system is initialized, and if not,
/// it will initialize it by calling `SDL_Init(SDL_INIT_AUDIO)` on your behalf.
/// You are free to (and encouraged to!) initialize it yourself before calling
/// this function, as this gives your program more control over the process.
/// 
/// This function might cover all of an application's needs, but for those that
/// need more flexibility, the more powerful version of this function is
/// Mix_OpenAudioDevice(). This function is equivalent to calling:
/// 
/// ```c
/// Mix_OpenAudioDevice(frequency, format, nchannels, chunksize, NULL,
/// SDL_AUDIO_ALLOW_FREQUENCY_CHANGE |
/// SDL_AUDIO_ALLOW_CHANNELS_CHANGE);
/// ```
/// 
/// If you aren't particularly concerned with the specifics of the audio
/// device, and your data isn't in a specific format, the values you use here
/// can just be reasonable defaults. SDL_mixer will convert audio data you feed
/// it to the correct format on demand.
/// 
/// That being said, if you have control of your audio data and you know its
/// format ahead of time, you can save CPU time by opening the audio device in
/// that exact format so SDL_mixer does not have to spend time converting
/// anything behind the scenes, and can just pass the data straight through to
/// the hardware. On some platforms, where the hardware only supports specific
/// settings, you might have to be careful to make everything match, but your
/// own data is often easier to control, so aim to open the device for what you
/// need.
/// 
/// The other reason to care about specific formats: if you plan to touch the
/// mix buffer directly (with Mix_SetPostMix, a registered effect, or
/// Mix_HookMusic), you might have code that expects it to be in a specific
/// format, and you should specify that here.
/// 
/// The audio device frequency is specified in Hz; in modern times, 48000 is
/// often a reasonable default.
/// 
/// The audio device format is one of SDL's AUDIO_* constants. AUDIO_S16SYS
/// (16-bit audio) is probably a safe default. More modern systems may prefer
/// AUDIO_F32SYS (32-bit floating point audio).
/// 
/// The audio device channels are generally 1 for mono output, or 2 for stereo,
/// but the brave can try surround sound configs with 4 (quad), 6 (5.1), 7
/// (6.1) or 8 (7.1).
/// 
/// The audio device's chunk size is the number of sample frames (one sample
/// per frame for mono output, two samples per frame in a stereo setup, etc)
/// that are fed to the device at once. The lower the number, the lower the
/// latency, but you risk dropouts if it gets too low. 2048 is often a
/// reasonable default, but your app might want to experiment with 1024 or
/// 4096.
/// 
/// You may only have one audio device open at a time; if you want to change a
/// setting, you must close the device and reopen it, which is not something
/// you can do seamlessly during playback.
/// 
/// This function does not allow you to select a specific audio device on the
/// system, it always chooses the best default it can on your behalf (which, in
/// many cases, is exactly what you want anyhow). If you must choose a specific
/// device, you can do so with Mix_OpenAudioDevice() instead.
/// 
/// If this function reports success, you are ready to start making noise! Load
/// some audio data and start playing!
/// 
/// The app can use Mix_QuerySpec() to determine the final device settings.
/// 
/// When done with an audio device, probably at the end of the program, the app
/// should dispose of the device with Mix_CloseDevice().
/// 
/// \param frequency the frequency to playback audio at (in Hz).
/// \param format audio format, one of SDL's AUDIO_* values.
/// \param channels number of channels (1 is mono, 2 is stereo, etc).
/// \param chunksize audio buffer size in sample FRAMES (total samples divided
/// by channel count).
/// \returns 0 if successful, -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_OpenAudioDevice
/// \sa Mix_CloseDevice
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_OpenAudio(int frequency, Uint16 format, int channels, int chunksize)
/// ```
int Mix_OpenAudio(int frequency, int format, int channels, int chunksize) {
  final _Mix_OpenAudio = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 frequency, Uint16 format, Int32 channels, Int32 chunksize),
      int Function(int frequency, int format, int channels, int chunksize)>('Mix_OpenAudio');
  return _Mix_OpenAudio(frequency, format, channels, chunksize);
}

/// 
/// Open a specific audio device for playback.
/// 
/// (A slightly simpler version of this function is available in
/// Mix_OpenAudio(), which still might meet most applications' needs.)
/// 
/// An audio device is what generates sound, so the app must open one to make
/// noise.
/// 
/// This function will check if SDL's audio system is initialized, and if not,
/// it will initialize it by calling `SDL_Init(SDL_INIT_AUDIO)` on your behalf.
/// You are free to (and encouraged to!) initialize it yourself before calling
/// this function, as this gives your program more control over the process.
/// 
/// If you aren't particularly concerned with the specifics of the audio
/// device, and your data isn't in a specific format, the values you use here
/// can just be reasonable defaults. SDL_mixer will convert audio data you feed
/// it to the correct format on demand.
/// 
/// That being said, if you have control of your audio data and you know its
/// format ahead of time, you can save CPU time by opening the audio device in
/// that exact format so SDL_mixer does not have to spend time converting
/// anything behind the scenes, and can just pass the data straight through to
/// the hardware. On some platforms, where the hardware only supports specific
/// settings, you might have to be careful to make everything match, but your
/// own data is often easier to control, so aim to open the device for what you
/// need.
/// 
/// The other reason to care about specific formats: if you plan to touch the
/// mix buffer directly (with Mix_SetPostMix, a registered effect, or
/// Mix_HookMusic), you might have code that expects it to be in a specific
/// format, and you should specify that here.
/// 
/// The audio device frequency is specified in Hz; in modern times, 48000 is
/// often a reasonable default.
/// 
/// The audio device format is one of SDL's AUDIO_* constants. AUDIO_S16SYS
/// (16-bit audio) is probably a safe default. More modern systems may prefer
/// AUDIO_F32SYS (32-bit floating point audio).
/// 
/// The audio device channels are generally 1 for mono output, or 2 for stereo,
/// but the brave can try surround sound configs with 4 (quad), 6 (5.1), 7
/// (6.1) or 8 (7.1).
/// 
/// The audio device's chunk size is the number of sample frames (one sample
/// per frame for mono output, two samples per frame in a stereo setup, etc)
/// that are fed to the device at once. The lower the number, the lower the
/// latency, but you risk dropouts if it gets too low. 2048 is often a
/// reasonable default, but your app might want to experiment with 1024 or
/// 4096.
/// 
/// You may only have one audio device open at a time; if you want to change a
/// setting, you must close the device and reopen it, which is not something
/// you can do seamlessly during playback.
/// 
/// This function allows you to select specific audio hardware on the system
/// with the `device` parameter. If you specify NULL, SDL_mixer will choose the
/// best default it can on your behalf (which, in many cases, is exactly what
/// you want anyhow). SDL_mixer does not offer a mechanism to determine device
/// names to open, but you can use SDL_GetNumAudioDevices() to get a count of
/// available devices and then SDL_GetAudioDeviceName() in a loop to obtain a
/// list. If you do this, be sure to call `SDL_Init(SDL_INIT_AUDIO)` first to
/// initialize SDL's audio system!
/// 
/// The `allowed_changes` parameter specifies what settings are flexible. These
/// are the `SDL_AUDIO_ALLOW_*` flags from SDL. These tell SDL_mixer that the
/// app doesn't mind if a specific setting changes. For example, the app might
/// need stereo data in Sint16 format, but if the sample rate or chunk size
/// changes, the app can handle that. In that case, the app would specify
/// `SDL_AUDIO_ALLOW_FORMAT_CHANGE|SDL_AUDIO_ALLOW_SAMPLES_CHANGE`. In this
/// case, if the system's hardware requires something other than the requested
/// format, SDL_mixer can select what the hardware demands instead of the app.
/// If the `SDL_AUDIO_ALLOW_` flag is not specified, SDL_mixer must convert
/// data behind the scenes between what the app demands and what the hardware
/// requires. If your app needs precisely what is requested, specify zero for
/// `allowed_changes`.
/// 
/// If changes were allowed, the app can use Mix_QuerySpec() to determine the
/// final device settings.
/// 
/// If this function reports success, you are ready to start making noise! Load
/// some audio data and start playing!
/// 
/// When done with an audio device, probably at the end of the program, the app
/// should dispose of the device with Mix_CloseDevice().
/// 
/// \param frequency the frequency to playback audio at (in Hz).
/// \param format audio format, one of SDL's AUDIO_* values.
/// \param channels number of channels (1 is mono, 2 is stereo, etc).
/// \param chunksize audio buffer size in sample FRAMES (total samples divided
/// by channel count).
/// \param device the device name to open, or NULL to choose a reasonable
/// default.
/// \param allowed_changes Allow change flags (see SDL_AUDIO_ALLOW_* flags)
/// \returns 0 if successful, -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.2.
/// 
/// \sa Mix_OpenAudio
/// \sa Mix_CloseDevice
/// \sa Mix_QuerySpec
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_OpenAudioDevice(int frequency, Uint16 format, int channels, int chunksize, const char* device, int allowed_changes)
/// ```
int Mix_OpenAudioDevice(int frequency, int format, int channels, int chunksize, String device, int allowed_changes) {
  final _Mix_OpenAudioDevice = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 frequency, Uint16 format, Int32 channels, Int32 chunksize, Pointer<Utf8>? device, Int32 allowed_changes),
      int Function(int frequency, int format, int channels, int chunksize, Pointer<Utf8>? device, int allowed_changes)>('Mix_OpenAudioDevice');
  final _devicePointer = device.toNativeUtf8();
  final _result = _Mix_OpenAudioDevice(frequency, format, channels, chunksize, _devicePointer, allowed_changes);
  calloc.free(_devicePointer);
  return _result;
}

/// 
/// Find out what the actual audio device parameters are.
/// 
/// If Mix_OpenAudioDevice() was called with `allowed_changes` set to anything
/// but zero, or Mix_OpenAudio() was used, some audio device settings may be
/// different from the application's request. This function will report what
/// the device is actually running at.
/// 
/// Note this is only important if the app intends to touch the audio buffers
/// being sent to the hardware directly. If an app just wants to play audio
/// files and let SDL_mixer handle the low-level details, this function can
/// probably be ignored.
/// 
/// If the audio device is not opened, this function will return 0.
/// 
/// \param frequency On return, will be filled with the audio device's
/// frequency in Hz.
/// \param format On return, will be filled with the audio device's format.
/// \param channels On return, will be filled with the audio device's channel
/// count.
/// \returns 1 if the audio device has been opened, 0 otherwise.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_OpenAudio
/// \sa Mix_OpenAudioDevice
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_QuerySpec(int *frequency, Uint16 *format, int *channels)
/// ```
int Mix_QuerySpec(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels) {
  final _Mix_QuerySpec = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels),
      int Function(Pointer<Int32>? frequency, Pointer<Uint16>? format, Pointer<Int32>? channels)>('Mix_QuerySpec');
  return _Mix_QuerySpec(frequency, format, channels);
}

/// 
/// Dynamically change the number of channels managed by the mixer.
/// 
/// SDL_mixer deals with "channels," which is not the same thing as the
/// mono/stereo channels; they might be better described as "tracks," as each
/// one corresponds to a separate source of audio data. Three different WAV
/// files playing at the same time would be three separate SDL_mixer channels,
/// for example.
/// 
/// An app needs as many channels as it has audio data it wants to play
/// simultaneously, mixing them into a single stream to send to the audio
/// device.
/// 
/// SDL_mixer allocates `MIX_CHANNELS` (currently 8) channels when you open an
/// audio device, which may be more than an app needs, but if the app needs
/// more or wants less, this function can change it.
/// 
/// If decreasing the number of channels, any upper channels currently playing
/// are stopped. This will deregister all effects on those channels and call
/// any callback specified by Mix_ChannelFinished() for each removed channel.
/// 
/// If `numchans` is less than zero, this will return the current number of
/// channels without changing anything.
/// 
/// \param numchans the new number of channels, or < 0 to query current channel
/// count.
/// \returns the new number of allocated channels.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_AllocateChannels(int numchans)
/// ```
int Mix_AllocateChannels(int numchans) {
  final _Mix_AllocateChannels = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 numchans),
      int Function(int numchans)>('Mix_AllocateChannels');
  return _Mix_AllocateChannels(numchans);
}

/// 
/// Load a supported audio format into a chunk.
/// 
/// SDL_mixer has two separate data structures for audio data. One it calls a
/// "chunk," which is meant to be a file completely decoded into memory up
/// front, and the other it calls "music" which is a file intended to be
/// decoded on demand. Originally, simple formats like uncompressed WAV files
/// were meant to be chunks and compressed things, like MP3s, were meant to be
/// music, and you would stream one thing for a game's music and make repeating
/// sound effects with the chunks.
/// 
/// In modern times, this isn't split by format anymore, and most are
/// interchangeable, so the question is what the app thinks is worth
/// predecoding or not. Chunks might take more memory, but once they are loaded
/// won't need to decode again, whereas music always needs to be decoded on the
/// fly. Also, crucially, there are as many channels for chunks as the app can
/// allocate, but SDL_mixer only offers a single "music" channel.
/// 
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_mixer reads everything it needs
/// from the RWops during this call in any case.
/// 
/// There is a separate function (a macro, before SDL_mixer 2.6.0) to read
/// files from disk without having to deal with SDL_RWops:
/// `Mix_LoadWAV("filename.wav")` will call this function and manage those
/// details for you.
/// 
/// When done with a chunk, the app should dispose of it with a call to
/// Mix_FreeChunk().
/// 
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \returns a new chunk, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.6.0 (and as a macro
/// since 2.0.0).
/// 
/// \sa Mix_LoadWAV
/// \sa Mix_FreeChunk
/// 
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_LoadWAV_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<Mix_Chunk>? Mix_LoadWAV_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _Mix_LoadWAV_RW = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<Mix_Chunk>? Function(Pointer<SDL_RWops>? src, int freesrc)>('Mix_LoadWAV_RW');
  return _Mix_LoadWAV_RW(src, freesrc);
}

/// 
/// Load a supported audio format into a chunk.
/// 
/// SDL_mixer has two separate data structures for audio data. One it calls a
/// "chunk," which is meant to be a file completely decoded into memory up
/// front, and the other it calls "music" which is a file intended to be
/// decoded on demand. Originally, simple formats like uncompressed WAV files
/// were meant to be chunks and compressed things, like MP3s, were meant to be
/// music, and you would stream one thing for a game's music and make repeating
/// sound effects with the chunks.
/// 
/// In modern times, this isn't split by format anymore, and most are
/// interchangeable, so the question is what the app thinks is worth
/// predecoding or not. Chunks might take more memory, but once they are loaded
/// won't need to decode again, whereas music always needs to be decoded on the
/// fly. Also, crucially, there are as many channels for chunks as the app can
/// allocate, but SDL_mixer only offers a single "music" channel.
/// 
/// If you would rather use the abstract SDL_RWops interface to load data from
/// somewhere other than the filesystem, you can use Mix_LoadWAV_RW() instead.
/// 
/// When done with a chunk, the app should dispose of it with a call to
/// Mix_FreeChunk().
/// 
/// Note that before SDL_mixer 2.6.0, this function was a macro that called
/// Mix_LoadWAV_RW(), creating a RWops and setting `freesrc` to 1. This macro
/// has since been promoted to a proper API function. Older binaries linked
/// against a newer SDL_mixer will still call Mix_LoadWAV_RW directly, as they
/// are using the macro, which was available since the dawn of time.
/// 
/// \param file the filesystem path to load data from.
/// \returns a new chunk, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.6.0 (and as a macro
/// since 2.0.0).
/// 
/// \sa Mix_LoadWAV_RW
/// \sa Mix_FreeChunk
/// 
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_LoadWAV(const char *file)
/// ```
Pointer<Mix_Chunk>? Mix_LoadWAV(String file) {
  final _Mix_LoadWAV = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Utf8>? file),
      Pointer<Mix_Chunk>? Function(Pointer<Utf8>? file)>('Mix_LoadWAV');
  final _filePointer = file.toNativeUtf8();
  final _result = _Mix_LoadWAV(_filePointer);
  calloc.free(_filePointer);
  return _result;
}

/// 
/// Load a supported audio format into a music object.
/// 
/// SDL_mixer has two separate data structures for audio data. One it calls a
/// "chunk," which is meant to be a file completely decoded into memory up
/// front, and the other it calls "music" which is a file intended to be
/// decoded on demand. Originally, simple formats like uncompressed WAV files
/// were meant to be chunks and compressed things, like MP3s, were meant to be
/// music, and you would stream one thing for a game's music and make repeating
/// sound effects with the chunks.
/// 
/// In modern times, this isn't split by format anymore, and most are
/// interchangeable, so the question is what the app thinks is worth
/// predecoding or not. Chunks might take more memory, but once they are loaded
/// won't need to decode again, whereas music always needs to be decoded on the
/// fly. Also, crucially, there are as many channels for chunks as the app can
/// allocate, but SDL_mixer only offers a single "music" channel.
/// 
/// When done with this music, the app should dispose of it with a call to
/// Mix_FreeMusic().
/// 
/// \param file a file path from where to load music data.
/// \returns a new music object, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_FreeMusic
/// 
/// ```c
/// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUS(const char *file)
/// ```
Pointer<Mix_Music>? Mix_LoadMUS(String file) {
  final _Mix_LoadMUS = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<Utf8>? file),
      Pointer<Mix_Music>? Function(Pointer<Utf8>? file)>('Mix_LoadMUS');
  final _filePointer = file.toNativeUtf8();
  final _result = _Mix_LoadMUS(_filePointer);
  calloc.free(_filePointer);
  return _result;
}

/// 
/// Load a supported audio format into a music object.
/// 
/// SDL_mixer has two separate data structures for audio data. One it calls a
/// "chunk," which is meant to be a file completely decoded into memory up
/// front, and the other it calls "music" which is a file intended to be
/// decoded on demand. Originally, simple formats like uncompressed WAV files
/// were meant to be chunks and compressed things, like MP3s, were meant to be
/// music, and you would stream one thing for a game's music and make repeating
/// sound effects with the chunks.
/// 
/// In modern times, this isn't split by format anymore, and most are
/// interchangeable, so the question is what the app thinks is worth
/// predecoding or not. Chunks might take more memory, but once they are loaded
/// won't need to decode again, whereas music always needs to be decoded on the
/// fly. Also, crucially, there are as many channels for chunks as the app can
/// allocate, but SDL_mixer only offers a single "music" channel.
/// 
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_mixer reads everything it needs
/// from the RWops during this call in any case.
/// 
/// As a convenience, there is a function to read files from disk without
/// having to deal with SDL_RWops: `Mix_LoadMUS("filename.mp3")` will manage
/// those details for you.
/// 
/// This function attempts to guess the file format from incoming data. If the
/// caller knows the format, or wants to force it, it should use
/// Mix_LoadMUSType_RW() instead.
/// 
/// When done with this music, the app should dispose of it with a call to
/// Mix_FreeMusic().
/// 
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \returns a new music object, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_FreeMusic
/// 
/// ```c
/// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUS_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<Mix_Music>? Mix_LoadMUS_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _Mix_LoadMUS_RW = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, int freesrc)>('Mix_LoadMUS_RW');
  return _Mix_LoadMUS_RW(src, freesrc);
}

/// 
/// Load an audio format into a music object, assuming a specific format.
/// 
/// SDL_mixer has two separate data structures for audio data. One it calls a
/// "chunk," which is meant to be a file completely decoded into memory up
/// front, and the other it calls "music" which is a file intended to be
/// decoded on demand. Originally, simple formats like uncompressed WAV files
/// were meant to be chunks and compressed things, like MP3s, were meant to be
/// music, and you would stream one thing for a game's music and make repeating
/// sound effects with the chunks.
/// 
/// In modern times, this isn't split by format anymore, and most are
/// interchangeable, so the question is what the app thinks is worth
/// predecoding or not. Chunks might take more memory, but once they are loaded
/// won't need to decode again, whereas music always needs to be decoded on the
/// fly. Also, crucially, there are as many channels for chunks as the app can
/// allocate, but SDL_mixer only offers a single "music" channel.
/// 
/// This function loads music data, and lets the application specify the type
/// of music being loaded, which might be useful if SDL_mixer cannot figure it
/// out from the data stream itself.
/// 
/// Currently, the following types are supported:
/// 
/// - `MUS_NONE` (SDL_mixer should guess, based on the data)
/// - `MUS_WAV` (Microsoft WAV files)
/// - `MUS_MOD` (Various tracker formats)
/// - `MUS_MID` (MIDI files)
/// - `MUS_OGG` (Ogg Vorbis files)
/// - `MUS_MP3` (MP3 files)
/// - `MUS_FLAC` (FLAC files)
/// - `MUS_OPUS` (Opus files)
/// 
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_mixer reads everything it needs
/// from the RWops during this call in any case.
/// 
/// As a convenience, there is a function to read files from disk without
/// having to deal with SDL_RWops: `Mix_LoadMUS("filename.mp3")` will manage
/// those details for you (but not let you specify the music type explicitly)..
/// 
/// When done with this music, the app should dispose of it with a call to
/// Mix_FreeMusic().
/// 
/// \param src an SDL_RWops that data will be read from.
/// \param type the type of audio data provided by `src`.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \returns a new music object, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_FreeMusic
/// 
/// ```c
/// extern DECLSPEC Mix_Music * SDLCALL Mix_LoadMUSType_RW(SDL_RWops *src, Mix_MusicType type, int freesrc)
/// ```
Pointer<Mix_Music>? Mix_LoadMUSType_RW(Pointer<SDL_RWops>? src, int type, int freesrc) {
  final _Mix_LoadMUSType_RW = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, Int32 type, Int32 freesrc),
      Pointer<Mix_Music>? Function(Pointer<SDL_RWops>? src, int type, int freesrc)>('Mix_LoadMUSType_RW');
  return _Mix_LoadMUSType_RW(src, type, freesrc);
}

/// 
/// Load a WAV file from memory as quickly as possible.
/// 
/// Unlike Mix_LoadWAV_RW, this function has several requirements, and unless
/// you control all your audio data and know what you're doing, you should
/// consider this function unsafe and not use it.
/// 
/// - The provided audio data MUST be in Microsoft WAV format.
/// - The provided audio data shouldn't use any strange WAV extensions.
/// - The audio data MUST be in the exact same format as the audio device. This
/// function will not attempt to convert it, or even verify it's in the right
/// format.
/// - The audio data must be valid; this function does not know the size of the
/// memory buffer, so if the WAV data is corrupted, it can read past the end
/// of the buffer, causing a crash.
/// - The audio data must live at least as long as the returned Mix_Chunk,
/// because SDL_mixer will use that data directly and not make a copy of it.
/// 
/// This function will do NO error checking! Be extremely careful here!
/// 
/// (Seriously, use Mix_LoadWAV_RW instead.)
/// 
/// If this function is successful, the provided memory buffer must remain
/// available until Mix_FreeChunk() is called on the returned chunk.
/// 
/// \param mem memory buffer containing of a WAV file.
/// \returns a new chunk, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_LoadWAV_RW
/// \sa Mix_FreeChunk
/// 
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_QuickLoad_WAV(Uint8 *mem)
/// ```
Pointer<Mix_Chunk>? Mix_QuickLoad_WAV(Pointer<Uint8>? mem) {
  final _Mix_QuickLoad_WAV = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem),
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem)>('Mix_QuickLoad_WAV');
  return _Mix_QuickLoad_WAV(mem);
}

/// 
/// Load a raw audio data from memory as quickly as possible.
/// 
/// The audio data MUST be in the exact same format as the audio device. This
/// function will not attempt to convert it, or even verify it's in the right
/// format.
/// 
/// If this function is successful, the provided memory buffer must remain
/// available until Mix_FreeChunk() is called on the returned chunk.
/// 
/// \param mem memory buffer containing raw PCM data.
/// \param len length of buffer pointed to by `mem`, in bytes.
/// \returns a new chunk, or NULL on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_FreeChunk
/// 
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_QuickLoad_RAW(Uint8 *mem, Uint32 len)
/// ```
Pointer<Mix_Chunk>? Mix_QuickLoad_RAW(Pointer<Uint8>? mem, int len) {
  final _Mix_QuickLoad_RAW = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem, Uint32 len),
      Pointer<Mix_Chunk>? Function(Pointer<Uint8>? mem, int len)>('Mix_QuickLoad_RAW');
  return _Mix_QuickLoad_RAW(mem, len);
}

/// 
/// Free an audio chunk.
/// 
/// An app should call this function when it is done with a Mix_Chunk and wants
/// to dispose of its resources.
/// 
/// SDL_mixer will stop any channels this chunk is currently playing on. This
/// will deregister all effects on those channels and call any callback
/// specified by Mix_ChannelFinished() for each removed channel.
/// 
/// \param chunk the chunk to free.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_LoadWAV
/// \sa Mix_LoadWAV_RW
/// \sa Mix_QuickLoad_WAV
/// \sa Mix_QuickLoad_RAW
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_FreeChunk(Mix_Chunk *chunk)
/// ```
void Mix_FreeChunk(Pointer<Mix_Chunk>? chunk) {
  final _Mix_FreeChunk = DLL_SDL2_mixer.lookupFunction<
      Void Function(Pointer<Mix_Chunk>? chunk),
      void Function(Pointer<Mix_Chunk>? chunk)>('Mix_FreeChunk');
  return _Mix_FreeChunk(chunk);
}

/// 
/// Free a music object.
/// 
/// If this music is currently playing, it will be stopped.
/// 
/// If this music is in the process of fading out (via Mix_FadeOutMusic()),
/// this function will *block* until the fade completes. If you need to avoid
/// this, be sure to call Mix_HaltMusic() before freeing the music.
/// 
/// \param music the music object to free.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_LoadMUS
/// \sa Mix_LoadMUS_RW
/// \sa Mix_LoadMUSType_RW
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_FreeMusic(Mix_Music *music)
/// ```
void Mix_FreeMusic(Pointer<Mix_Music>? music) {
  final _Mix_FreeMusic = DLL_SDL2_mixer.lookupFunction<
      Void Function(Pointer<Mix_Music>? music),
      void Function(Pointer<Mix_Music>? music)>('Mix_FreeMusic');
  return _Mix_FreeMusic(music);
}

/// 
/// Get a list of chunk decoders that this build of SDL_mixer provides.
/// 
/// This list can change between builds AND runs of the program, if external
/// libraries that add functionality become available. You must successfully
/// call Mix_OpenAudio() or Mix_OpenAudioDevice() before calling this function,
/// as decoders are activated at device open time.
/// 
/// Appearing in this list doesn't promise your specific audio file will
/// decode...but it's handy to know if you have, say, a functioning Ogg Vorbis
/// install.
/// 
/// These return values are static, read-only data; do not modify or free it.
/// The pointers remain valid until you call Mix_CloseAudio().
/// 
/// \returns number of chunk decoders available.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GetChunkDecoder
/// \sa Mix_HasChunkDecoder
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetNumChunkDecoders(void)
/// ```
int Mix_GetNumChunkDecoders() {
  final _Mix_GetNumChunkDecoders = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_GetNumChunkDecoders');
  return _Mix_GetNumChunkDecoders();
}

/// 
/// Get a chunk decoder's name.
/// 
/// The requested decoder's index must be between zero and
/// Mix_GetNumChunkDecoders()-1. It's safe to call this with an invalid index;
/// this function will return NULL in that case.
/// 
/// This list can change between builds AND runs of the program, if external
/// libraries that add functionality become available. You must successfully
/// call Mix_OpenAudio() or Mix_OpenAudioDevice() before calling this function,
/// as decoders are activated at device open time.
/// 
/// \param index index of the chunk decoder.
/// \returns the chunk decoder's name.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GetNumChunkDecoders
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL Mix_GetChunkDecoder(int index)
/// ```
String Mix_GetChunkDecoder(int index) {
  final _Mix_GetChunkDecoder = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('Mix_GetChunkDecoder');
  return _Mix_GetChunkDecoder(index)!.toDartString();
}

/// 
/// Check if a chunk decoder is available by name.
/// 
/// This result can change between builds AND runs of the program, if external
/// libraries that add functionality become available. You must successfully
/// call Mix_OpenAudio() or Mix_OpenAudioDevice() before calling this function,
/// as decoders are activated at device open time.
/// 
/// Decoder names are arbitrary but also obvious, so you have to know what
/// you're looking for ahead of time, but usually it's the file extension in
/// capital letters (some example names are "AIFF", "VOC", "WAV").
/// 
/// \param name the decoder name to query.
/// \returns SDL_TRUE if a decoder by that name is available, SDL_FALSE
/// otherwise.
/// 
/// \since This function is available since SDL_mixer 2.0.2.
/// 
/// \sa Mix_GetNumChunkDecoders
/// \sa Mix_GetChunkDecoder
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL Mix_HasChunkDecoder(const char *name)
/// ```
int Mix_HasChunkDecoder(String name) {
  final _Mix_HasChunkDecoder = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('Mix_HasChunkDecoder');
  final _namePointer = name.toNativeUtf8();
  final _result = _Mix_HasChunkDecoder(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Get a list of music decoders that this build of SDL_mixer provides.
/// 
/// This list can change between builds AND runs of the program, if external
/// libraries that add functionality become available. You must successfully
/// call Mix_OpenAudio() or Mix_OpenAudioDevice() before calling this function,
/// as decoders are activated at device open time.
/// 
/// Appearing in this list doesn't promise your specific audio file will
/// decode...but it's handy to know if you have, say, a functioning Ogg Vorbis
/// install.
/// 
/// These return values are static, read-only data; do not modify or free it.
/// The pointers remain valid until you call Mix_CloseAudio().
/// 
/// \returns number of chunk decoders available.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GetMusicDecoder
/// \sa Mix_HasMusicDecoder
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetNumMusicDecoders(void)
/// ```
int Mix_GetNumMusicDecoders() {
  final _Mix_GetNumMusicDecoders = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_GetNumMusicDecoders');
  return _Mix_GetNumMusicDecoders();
}

/// 
/// Get a music decoder's name.
/// 
/// The requested decoder's index must be between zero and
/// Mix_GetNumMusicDecoders()-1. It's safe to call this with an invalid index;
/// this function will return NULL in that case.
/// 
/// This list can change between builds AND runs of the program, if external
/// libraries that add functionality become available. You must successfully
/// call Mix_OpenAudio() or Mix_OpenAudioDevice() before calling this function,
/// as decoders are activated at device open time.
/// 
/// \param index index of the music decoder.
/// \returns the music decoder's name.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GetNumMusicDecoders
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL Mix_GetMusicDecoder(int index)
/// ```
String Mix_GetMusicDecoder(int index) {
  final _Mix_GetMusicDecoder = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('Mix_GetMusicDecoder');
  return _Mix_GetMusicDecoder(index)!.toDartString();
}

/// 
/// Check if a music decoder is available by name.
/// 
/// This result can change between builds AND runs of the program, if external
/// libraries that add functionality become available. You must successfully
/// call Mix_OpenAudio() or Mix_OpenAudioDevice() before calling this function,
/// as decoders are activated at device open time.
/// 
/// Decoder names are arbitrary but also obvious, so you have to know what
/// you're looking for ahead of time, but usually it's the file extension in
/// capital letters (some example names are "MOD", "MP3", "FLAC").
/// 
/// \param name the decoder name to query.
/// \returns SDL_TRUE if a decoder by that name is available, SDL_FALSE
/// otherwise.
/// 
/// \since This function is available since SDL_mixer 2.6.0
/// 
/// \sa Mix_GetNumMusicDecoders
/// \sa Mix_GetMusicDecoder
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL Mix_HasMusicDecoder(const char *name)
/// ```
int Mix_HasMusicDecoder(String name) {
  final _Mix_HasMusicDecoder = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('Mix_HasMusicDecoder');
  final _namePointer = name.toNativeUtf8();
  final _result = _Mix_HasMusicDecoder(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Find out the format of a mixer music.
/// 
/// If `music` is NULL, this will query the currently playing music (and return
/// MUS_NONE if nothing is currently playing).
/// 
/// \param music the music object to query, or NULL for the currently-playing
/// music.
/// \returns the Mix_MusicType for the music object.
/// 
/// \since This function is available since SDL_mixer 2.0.0
/// 
/// ```c
/// extern DECLSPEC Mix_MusicType SDLCALL Mix_GetMusicType(const Mix_Music *music)
/// ```
int Mix_GetMusicType(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicType = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music),
      int Function(Pointer<Mix_Music>? music)>('Mix_GetMusicType');
  return _Mix_GetMusicType(music);
}

/// 
/// Get the title for a music object, or its filename.
/// 
/// This returns format-specific metadata. Not all file formats supply this!
/// 
/// If `music` is NULL, this will query the currently-playing music.
/// 
/// If music's title tag is missing or empty, the filename will be returned. If
/// you'd rather have the actual metadata or nothing, use
/// Mix_GetMusicTitleTag() instead.
/// 
/// Please note that if the music was loaded from an SDL_RWops instead of a
/// filename, the filename returned will be an empty string ("").
/// 
/// This function never returns NULL! If no data is available, it will return
/// an empty string ("").
/// 
/// \param music the music object to query, or NULL for the currently-playing
/// music.
/// \returns the music's title if available, or the filename if not, or "".
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// \sa Mix_GetMusicTitleTag
/// \sa Mix_GetMusicArtistTag
/// \sa Mix_GetMusicAlbumTag
/// \sa Mix_GetMusicCopyrightTag
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL Mix_GetMusicTitle(const Mix_Music *music)
/// ```
String Mix_GetMusicTitle(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicTitle = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music),
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music)>('Mix_GetMusicTitle');
  return _Mix_GetMusicTitle(music)!.toDartString();
}

/// 
/// Get the title for a music object.
/// 
/// This returns format-specific metadata. Not all file formats supply this!
/// 
/// If `music` is NULL, this will query the currently-playing music.
/// 
/// Unlike this function, Mix_GetMusicTitle() produce a string with the music's
/// filename if a title isn't available, which might be preferable for some
/// applications.
/// 
/// This function never returns NULL! If no data is available, it will return
/// an empty string ("").
/// 
/// \param music the music object to query, or NULL for the currently-playing
/// music.
/// \returns the music's title if available, or "".
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// \sa Mix_GetMusicTitle
/// \sa Mix_GetMusicArtistTag
/// \sa Mix_GetMusicAlbumTag
/// \sa Mix_GetMusicCopyrightTag
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL Mix_GetMusicTitleTag(const Mix_Music *music)
/// ```
String Mix_GetMusicTitleTag(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicTitleTag = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music),
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music)>('Mix_GetMusicTitleTag');
  return _Mix_GetMusicTitleTag(music)!.toDartString();
}

/// 
/// Get the artist name for a music object.
/// 
/// This returns format-specific metadata. Not all file formats supply this!
/// 
/// If `music` is NULL, this will query the currently-playing music.
/// 
/// This function never returns NULL! If no data is available, it will return
/// an empty string ("").
/// 
/// \param music the music object to query, or NULL for the currently-playing
/// music.
/// \returns the music's artist name if available, or "".
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// \sa Mix_GetMusicTitleTag
/// \sa Mix_GetMusicAlbumTag
/// \sa Mix_GetMusicCopyrightTag
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL Mix_GetMusicArtistTag(const Mix_Music *music)
/// ```
String Mix_GetMusicArtistTag(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicArtistTag = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music),
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music)>('Mix_GetMusicArtistTag');
  return _Mix_GetMusicArtistTag(music)!.toDartString();
}

/// 
/// Get the album name for a music object.
/// 
/// This returns format-specific metadata. Not all file formats supply this!
/// 
/// If `music` is NULL, this will query the currently-playing music.
/// 
/// This function never returns NULL! If no data is available, it will return
/// an empty string ("").
/// 
/// \param music the music object to query, or NULL for the currently-playing
/// music.
/// \returns the music's album name if available, or "".
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// \sa Mix_GetMusicTitleTag
/// \sa Mix_GetMusicArtistTag
/// \sa Mix_GetMusicCopyrightTag
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL Mix_GetMusicAlbumTag(const Mix_Music *music)
/// ```
String Mix_GetMusicAlbumTag(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicAlbumTag = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music),
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music)>('Mix_GetMusicAlbumTag');
  return _Mix_GetMusicAlbumTag(music)!.toDartString();
}

/// 
/// Get the copyright text for a music object.
/// 
/// This returns format-specific metadata. Not all file formats supply this!
/// 
/// If `music` is NULL, this will query the currently-playing music.
/// 
/// This function never returns NULL! If no data is available, it will return
/// an empty string ("").
/// 
/// \param music the music object to query, or NULL for the currently-playing
/// music.
/// \returns the music's copyright text if available, or "".
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// \sa Mix_GetMusicTitleTag
/// \sa Mix_GetMusicArtistTag
/// \sa Mix_GetMusicAlbumTag
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL Mix_GetMusicCopyrightTag(const Mix_Music *music)
/// ```
String Mix_GetMusicCopyrightTag(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicCopyrightTag = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music),
      Pointer<Utf8>? Function(Pointer<Mix_Music>? music)>('Mix_GetMusicCopyrightTag');
  return _Mix_GetMusicCopyrightTag(music)!.toDartString();
}

/// 
/// Set a function that is called after all mixing is performed.
/// 
/// This can be used to provide real-time visual display of the audio stream or
/// add a custom mixer filter for the stream data.
/// 
/// The callback will fire every time SDL_mixer is ready to supply more data to
/// the audio device, after it has finished all its mixing work. This runs
/// inside an SDL audio callback, so it's important that the callback return
/// quickly, or there could be problems in the audio playback.
/// 
/// The data provided to the callback is in the format that the audio device
/// was opened in, and it represents the exact waveform SDL_mixer has mixed
/// from all playing chunks and music for playback. You are allowed to modify
/// the data, but it cannot be resized (so you can't add a reverb effect that
/// goes past the end of the buffer without saving some state between runs to
/// add it into the next callback, or resample the buffer to a smaller size to
/// speed it up, etc).
/// 
/// The `arg` pointer supplied here is passed to the callback as-is, for
/// whatever the callback might want to do with it (keep track of some ongoing
/// state, settings, etc).
/// 
/// Passing a NULL callback disables the post-mix callback until such a time as
/// a new one callback is set.
/// 
/// There is only one callback available. If you need to mix multiple inputs,
/// be prepared to handle them from a single function.
/// 
/// \param mix_func the callback function to become the new post-mix callback.
/// \param arg a pointer that is passed, untouched, to the callback.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_HookMusic
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_SetPostMix(void (SDLCALL *mix_func)(void *udata, Uint8 *stream, int len), void *arg)
/// ```
void Mix_SetPostMix(Pointer<Void>? mix_func, Pointer<Void>? arg) {
  final _Mix_SetPostMix = DLL_SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? mix_func, Pointer<Void>? arg),
      void Function(Pointer<Void>? mix_func, Pointer<Void>? arg)>('Mix_SetPostMix');
  return _Mix_SetPostMix(mix_func, arg);
}

/// 
/// Add your own music player or additional mixer function.
/// 
/// This works something like Mix_SetPostMix(), but it has some crucial
/// differences. Note that an app can use this _and_ Mix_SetPostMix() at the
/// same time. This allows an app to replace the built-in music playback,
/// either with it's own music decoder or with some sort of
/// procedurally-generated audio output.
/// 
/// The supplied callback will fire every time SDL_mixer is preparing to supply
/// more data to the audio device. This runs inside an SDL audio callback, so
/// it's important that the callback return quickly, or there could be problems
/// in the audio playback.
/// 
/// Running this callback is the first thing SDL_mixer will do when starting to
/// mix more audio. The buffer will contain silence upon entry, so the callback
/// does not need to mix into existing data or initialize the buffer.
/// 
/// Note that while a callback is set through this function, SDL_mixer will not
/// mix any playing music; this callback is used instead. To disable this
/// callback (and thus reenable built-in music playback) call this function
/// with a NULL callback.
/// 
/// The data written to by the callback is in the format that the audio device
/// was opened in, and upon return from the callback, SDL_mixer will mix any
/// playing chunks (but not music!) into the buffer. The callback cannot resize
/// the buffer (so you must be prepared to provide exactly the amount of data
/// demanded or leave it as silence).
/// 
/// The `arg` pointer supplied here is passed to the callback as-is, for
/// whatever the callback might want to do with it (keep track of some ongoing
/// state, settings, etc).
/// 
/// As there is only one music "channel" mixed, there is only one callback
/// available. If you need to mix multiple inputs, be prepared to handle them
/// from a single function.
/// 
/// \param mix_func the callback function to become the new post-mix callback.
/// \param arg a pointer that is passed, untouched, to the callback.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_SetPostMix
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_HookMusic(void (SDLCALL *mix_func)(void *udata, Uint8 *stream, int len), void *arg)
/// ```
void Mix_HookMusic(Pointer<Void>? mix_func, Pointer<Void>? arg) {
  final _Mix_HookMusic = DLL_SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? mix_func, Pointer<Void>? arg),
      void Function(Pointer<Void>? mix_func, Pointer<Void>? arg)>('Mix_HookMusic');
  return _Mix_HookMusic(mix_func, arg);
}

/// 
/// Set a callback that runs when a music object has stopped playing.
/// 
/// This callback will fire when the currently-playing music has completed, or
/// when it has been explicitly stopped from a call to Mix_HaltMusic. As such,
/// this callback might fire from an arbitrary background thread at almost any
/// time; try to limit what you do here.
/// 
/// It is legal to start a new music object playing in this callback (or
/// restart the one that just stopped). If the music finished normally, this
/// can be used to loop the music without a gap in the audio playback.
/// 
/// Do not call SDL_LockAudio() from this callback; you will either be inside
/// the audio callback, or SDL_mixer will explicitly lock the audio before
/// calling your callback.
/// 
/// A NULL pointer will disable the callback.
/// 
/// \param music_finished the callback function to become the new notification
/// mechanism.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_HookMusicFinished(void (SDLCALL *music_finished)(void))
/// ```
void Mix_HookMusicFinished(Pointer<Void>? music_finished) {
  final _Mix_HookMusicFinished = DLL_SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? music_finished),
      void Function(Pointer<Void>? music_finished)>('Mix_HookMusicFinished');
  return _Mix_HookMusicFinished(music_finished);
}

/// 
/// Get a pointer to the user data for the current music hook.
/// 
/// This returns the `arg` pointer last passed to Mix_HookMusic(), or NULL if
/// that function has never been called.
/// 
/// \returns pointer to the user data previously passed to Mix_HookMusic.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL Mix_GetMusicHookData(void)
/// ```
Pointer<Void>? Mix_GetMusicHookData() {
  final _Mix_GetMusicHookData = DLL_SDL2_mixer.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('Mix_GetMusicHookData');
  return _Mix_GetMusicHookData();
}

/// 
/// Set a callback that runs when a channel has finished playing.
/// 
/// The callback may be called from the mixer's audio callback or it could be
/// called as a result of Mix_HaltChannel(), etc.
/// 
/// The callback has a single parameter, `channel`, which says what mixer
/// channel has just stopped.
/// 
/// Do not call SDL_LockAudio() from this callback; you will either be inside
/// the audio callback, or SDL_mixer will explicitly lock the audio before
/// calling your callback.
/// 
/// A NULL pointer will disable the callback.
/// 
/// \param channel_finished the callback function to become the new
/// notification mechanism.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_ChannelFinished(void (SDLCALL *channel_finished)(int channel))
/// ```
void Mix_ChannelFinished(Pointer<Void>? channel_finished) {
  final _Mix_ChannelFinished = DLL_SDL2_mixer.lookupFunction<
      Void Function(Pointer<Void>? channel_finished),
      void Function(Pointer<Void>? channel_finished)>('Mix_ChannelFinished');
  return _Mix_ChannelFinished(channel_finished);
}

/// 
/// Register a special effect function.
/// 
/// At mixing time, the channel data is copied into a buffer and passed through
/// each registered effect function. After it passes through all the functions,
/// it is mixed into the final output stream. The copy to buffer is performed
/// once, then each effect function performs on the output of the previous
/// effect. Understand that this extra copy to a buffer is not performed if
/// there are no effects registered for a given chunk, which saves CPU cycles,
/// and any given effect will be extra cycles, too, so it is crucial that your
/// code run fast. Also note that the data that your function is given is in
/// the format of the sound device, and not the format you gave to
/// Mix_OpenAudio(), although they may in reality be the same. This is an
/// unfortunate but necessary speed concern. Use Mix_QuerySpec() to determine
/// if you can handle the data before you register your effect, and take
/// appropriate actions.
/// 
/// You may also specify a callback (Mix_EffectDone_t) that is called when the
/// channel finishes playing. This gives you a more fine-grained control than
/// Mix_ChannelFinished(), in case you need to free effect-specific resources,
/// etc. If you don't need this, you can specify NULL.
/// 
/// You may set the callbacks before or after calling Mix_PlayChannel().
/// 
/// Things like Mix_SetPanning() are just internal special effect functions, so
/// if you are using that, you've already incurred the overhead of a copy to a
/// separate buffer, and that these effects will be in the queue with any
/// functions you've registered. The list of registered effects for a channel
/// is reset when a chunk finishes playing, so you need to explicitly set them
/// with each call to Mix_PlayChannel*().
/// 
/// You may also register a special effect function that is to be run after
/// final mixing occurs. The rules for these callbacks are identical to those
/// in Mix_RegisterEffect, but they are run after all the channels and the
/// music have been mixed into a single stream, whereas channel-specific
/// effects run on a given channel before any other mixing occurs. These global
/// effect callbacks are call "posteffects". Posteffects only have their
/// Mix_EffectDone_t function called when they are unregistered (since the main
/// output stream is never "done" in the same sense as a channel). You must
/// unregister them manually when you've had enough. Your callback will be told
/// that the channel being mixed is `MIX_CHANNEL_POST` if the processing is
/// considered a posteffect.
/// 
/// After all these effects have finished processing, the callback registered
/// through Mix_SetPostMix() runs, and then the stream goes to the audio
/// device.
/// 
/// DO NOT EVER call SDL_LockAudio() from your callback function! You are
/// already running in the audio thread and the lock is already held!
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param chan the channel to register an effect to, or MIX_CHANNEL_POST.
/// \param f effect the callback to run when more of this channel is to be
/// mixed.
/// \param d effect done callback
/// \param arg argument
/// \returns zero if error (no such channel), nonzero if added. Error messages
/// can be retrieved from Mix_GetError().
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_RegisterEffect(int chan, Mix_EffectFunc_t f, Mix_EffectDone_t d, void *arg)
/// ```
int Mix_RegisterEffect(int chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg) {
  final _Mix_RegisterEffect = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg),
      int Function(int chan, Pointer<Void>? f, Pointer<Void>? d, Pointer<Void>? arg)>('Mix_RegisterEffect');
  return _Mix_RegisterEffect(chan, f, d, arg);
}

/// 
/// Explicitly unregister a special effect function.
/// 
/// You may not need to call this at all, unless you need to stop an effect
/// from processing in the middle of a chunk's playback.
/// 
/// Posteffects are never implicitly unregistered as they are for channels (as
/// the output stream does not have an end), but they may be explicitly
/// unregistered through this function by specifying MIX_CHANNEL_POST for a
/// channel.
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param chan the channel to unregister an effect on, or MIX_CHANNEL_POST.
/// \param f effect the callback stop calling in future mixing iterations.
/// \returns zero if error (no such channel or effect), nonzero if removed.
/// Error messages can be retrieved from Mix_GetError().
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_UnregisterEffect(int channel, Mix_EffectFunc_t f)
/// ```
int Mix_UnregisterEffect(int channel, Pointer<Void>? f) {
  final _Mix_UnregisterEffect = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Void>? f),
      int Function(int channel, Pointer<Void>? f)>('Mix_UnregisterEffect');
  return _Mix_UnregisterEffect(channel, f);
}

/// 
/// Explicitly unregister all special effect functions.
/// 
/// You may not need to call this at all, unless you need to stop all effects
/// from processing in the middle of a chunk's playback.
/// 
/// Note that this will also shut off some internal effect processing, since
/// Mix_SetPanning() and others may use this API under the hood. This is called
/// internally when a channel completes playback. Posteffects are never
/// implicitly unregistered as they are for channels, but they may be
/// explicitly unregistered through this function by specifying
/// MIX_CHANNEL_POST for a channel.
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param chan the channel to unregister all effects on, or MIX_CHANNEL_POST.
/// \returns zero if error (no such channel), nonzero if all effects removed.
/// Error messages can be retrieved from Mix_GetError().
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_UnregisterAllEffects(int channel)
/// ```
int Mix_UnregisterAllEffects(int channel) {
  final _Mix_UnregisterAllEffects = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_UnregisterAllEffects');
  return _Mix_UnregisterAllEffects(channel);
}

/// 
/// Set the panning of a channel.
/// 
/// The left and right channels are specified as integers between 0 and 255,
/// quietest to loudest, respectively.
/// 
/// Technically, this is just individual volume control for a sample with two
/// (stereo) channels, so it can be used for more than just panning. If you
/// want real panning, call it like this:
/// 
/// ```c
/// Mix_SetPanning(channel, left, 255 - left);
/// ```
/// 
/// Setting `channel` to MIX_CHANNEL_POST registers this as a posteffect, and
/// the panning will be done to the final mixed stream before passing it on to
/// the audio device.
/// 
/// This uses the Mix_RegisterEffect() API internally, and returns without
/// registering the effect function if the audio device is not configured for
/// stereo output. Setting both `left` and `right` to 255 causes this effect to
/// be unregistered, since that is the data's normal state.
/// 
/// Note that an audio device in mono mode is a no-op, but this call will
/// return successful in that case. Error messages can be retrieved from
/// Mix_GetError().
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param channel The mixer channel to pan or MIX_CHANNEL_POST.
/// \param left Volume of stereo left channel, 0 is silence, 255 is full
/// volume.
/// \param right Volume of stereo right channel, 0 is silence, 255 is full
/// volume.
/// \returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if panning effect enabled.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_SetPosition
/// \sa Mix_SetDistance
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetPanning(int channel, Uint8 left, Uint8 right)
/// ```
int Mix_SetPanning(int channel, int left, int right) {
  final _Mix_SetPanning = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Uint8 left, Uint8 right),
      int Function(int channel, int left, int right)>('Mix_SetPanning');
  return _Mix_SetPanning(channel, left, right);
}

/// 
/// Set the position of a channel.
/// 
/// `angle` is an integer from 0 to 360, that specifies the location of the
/// sound in relation to the listener. `angle` will be reduced as neccesary
/// (540 becomes 180 degrees, -100 becomes 260). Angle 0 is due north, and
/// rotates clockwise as the value increases. For efficiency, the precision of
/// this effect may be limited (angles 1 through 7 might all produce the same
/// effect, 8 through 15 are equal, etc). `distance` is an integer between 0
/// and 255 that specifies the space between the sound and the listener. The
/// larger the number, the further away the sound is. Using 255 does not
/// guarantee that the channel will be removed from the mixing process or be
/// completely silent. For efficiency, the precision of this effect may be
/// limited (distance 0 through 5 might all produce the same effect, 6 through
/// 10 are equal, etc). Setting `angle` and `distance` to 0 unregisters this
/// effect, since the data would be unchanged.
/// 
/// If you need more precise positional audio, consider using OpenAL for
/// spatialized effects instead of SDL_mixer. This is only meant to be a basic
/// effect for simple "3D" games.
/// 
/// If the audio device is configured for mono output, then you won't get any
/// effectiveness from the angle; however, distance attenuation on the channel
/// will still occur. While this effect will function with stereo voices, it
/// makes more sense to use voices with only one channel of sound, so when they
/// are mixed through this effect, the positioning will sound correct. You can
/// convert them to mono through SDL before giving them to the mixer in the
/// first place if you like.
/// 
/// Setting the channel to MIX_CHANNEL_POST registers this as a posteffect, and
/// the positioning will be done to the final mixed stream before passing it on
/// to the audio device.
/// 
/// This is a convenience wrapper over Mix_SetDistance() and Mix_SetPanning().
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param channel The mixer channel to position, or MIX_CHANNEL_POST.
/// \param angle angle, in degrees. North is 0, and goes clockwise.
/// \param distance distance; 0 is the listener, 255 is maxiumum distance away.
/// \returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if position effect is enabled. Error messages can be
/// retrieved from Mix_GetError().
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetPosition(int channel, Sint16 angle, Uint8 distance)
/// ```
int Mix_SetPosition(int channel, int angle, int distance) {
  final _Mix_SetPosition = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int16 angle, Uint8 distance),
      int Function(int channel, int angle, int distance)>('Mix_SetPosition');
  return _Mix_SetPosition(channel, angle, distance);
}

/// 
/// Set the "distance" of a channel.
/// 
/// `distance` is an integer from 0 to 255 that specifies the location of the
/// sound in relation to the listener. Distance 0 is overlapping the listener,
/// and 255 is as far away as possible. A distance of 255 does not guarantee
/// silence; in such a case, you might want to try changing the chunk's volume,
/// or just cull the sample from the mixing process with Mix_HaltChannel(). For
/// efficiency, the precision of this effect may be limited (distances 1
/// through 7 might all produce the same effect, 8 through 15 are equal, etc).
/// (distance) is an integer between 0 and 255 that specifies the space between
/// the sound and the listener. The larger the number, the further away the
/// sound is. Setting the distance to 0 unregisters this effect, since the data
/// would be unchanged. If you need more precise positional audio, consider
/// using OpenAL for spatialized effects instead of SDL_mixer. This is only
/// meant to be a basic effect for simple "3D" games.
/// 
/// Setting the channel to MIX_CHANNEL_POST registers this as a posteffect, and
/// the distance attenuation will be done to the final mixed stream before
/// passing it on to the audio device.
/// 
/// This uses the Mix_RegisterEffect() API internally.
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param channel The mixer channel to attenuate, or MIX_CHANNEL_POST.
/// \param distance distance; 0 is the listener, 255 is maxiumum distance away.
/// \returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if position effect is enabled. Error messages can be
/// retrieved from Mix_GetError().
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetDistance(int channel, Uint8 distance)
/// ```
int Mix_SetDistance(int channel, int distance) {
  final _Mix_SetDistance = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Uint8 distance),
      int Function(int channel, int distance)>('Mix_SetDistance');
  return _Mix_SetDistance(channel, distance);
}

/// 
/// Cause a channel to reverse its stereo.
/// 
/// This is handy if the user has his speakers hooked up backwards, or you
/// would like to have a trippy sound effect.
/// 
/// Calling this function with `flip` set to non-zero reverses the chunks's
/// usual channels. If `flip` is zero, the effect is unregistered.
/// 
/// This uses the Mix_RegisterEffect() API internally, and thus is probably
/// more CPU intensive than having the user just plug in his speakers
/// correctly. Mix_SetReverseStereo() returns without registering the effect
/// function if the audio device is not configured for stereo output.
/// 
/// If you specify MIX_CHANNEL_POST for `channel`, then this effect is used on
/// the final mixed stream before sending it on to the audio device (a
/// posteffect).
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param channel The mixer channel to reverse, or MIX_CHANNEL_POST.
/// \param flip non-zero to reverse stereo, zero to disable this effect.
/// \returns zero if error (no such channel or Mix_RegisterEffect() fails),
/// nonzero if reversing effect is enabled. Note that an audio device
/// in mono mode is a no-op, but this call will return successful in
/// that case. Error messages can be retrieved from Mix_GetError().
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetReverseStereo(int channel, int flip)
/// ```
int Mix_SetReverseStereo(int channel, int flip) {
  final _Mix_SetReverseStereo = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 flip),
      int Function(int channel, int flip)>('Mix_SetReverseStereo');
  return _Mix_SetReverseStereo(channel, flip);
}

/// 
/// Reserve the first channels for the application.
/// 
/// While SDL_mixer will use up to the number of channels allocated by
/// Mix_AllocateChannels(), this sets channels aside that will not be available
/// when calling Mix_PlayChannel with a channel of -1 (play on the first unused
/// channel). In this case, SDL_mixer will treat reserved channels as "used"
/// whether anything is playing on them at the moment or not.
/// 
/// This is useful if you've budgeted some channels for dedicated audio and the
/// rest are just used as they are available.
/// 
/// Calling this function will set channels 0 to `n - 1` to be reserved. This
/// will not change channel allocations. The number of reserved channels will
/// be clamped to the current number allocated.
/// 
/// By default, no channels are reserved.
/// 
/// \param num number of channels to reserve, starting at index zero.
/// \returns the number of reserved channels.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_ReserveChannels(int num)
/// ```
int Mix_ReserveChannels(int num) {
  final _Mix_ReserveChannels = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 num),
      int Function(int num)>('Mix_ReserveChannels');
  return _Mix_ReserveChannels(num);
}

/// 
/// Assign a tag to a channel.
/// 
/// A tag is an arbitary number that can be assigned to several mixer channels,
/// to form groups of channels.
/// 
/// If 'tag' is -1, the tag is removed (actually -1 is the tag used to
/// represent the group of all the channels).
/// 
/// This function replaces the requested channel's current tag; you may only
/// have one tag per channel.
/// 
/// You may not specify MAX_CHANNEL_POST for a channel.
/// 
/// \param which the channel to set the tag on.
/// \param tag an arbitrary value to assign a channel.
/// \returns non-zero on success, zero on error (no such channel).
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupChannel(int which, int tag)
/// ```
int Mix_GroupChannel(int which, int tag) {
  final _Mix_GroupChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which, Int32 tag),
      int Function(int which, int tag)>('Mix_GroupChannel');
  return _Mix_GroupChannel(which, tag);
}

/// 
/// Assign several consecutive channels to the same tag.
/// 
/// A tag is an arbitary number that can be assigned to several mixer channels,
/// to form groups of channels.
/// 
/// If 'tag' is -1, the tag is removed (actually -1 is the tag used to
/// represent the group of all the channels).
/// 
/// This function replaces the requested channels' current tags; you may only
/// have one tag per channel.
/// 
/// You may not specify MAX_CHANNEL_POST for a channel.
/// 
/// Note that this returns success and failure in the _opposite_ way from
/// Mix_GroupChannel(). We regret the API design mistake.
/// 
/// \param from the first channel to set the tag on.
/// \param to the last channel to set the tag on, inclusive.
/// \param tag an arbitrary value to assign a channel.
/// \returns 0 if successful, negative on error
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupChannels(int from, int to, int tag)
/// ```
int Mix_GroupChannels(int from, int to, int tag) {
  final _Mix_GroupChannels = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 from, Int32 to, Int32 tag),
      int Function(int from, int to, int tag)>('Mix_GroupChannels');
  return _Mix_GroupChannels(from, to, tag);
}

/// 
/// Finds the first available channel in a group of channels.
/// 
/// A tag is an arbitary number that can be assigned to several mixer channels,
/// to form groups of channels.
/// 
/// This function searches all channels with a specified tag, and returns the
/// channel number of the first one it finds that is currently unused.
/// 
/// If no channels with the specified tag are unused, this function returns -1.
/// 
/// \param tag an arbitrary value, assigned to channels, to search for.
/// \returns first available channel, or -1 if none are available.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupAvailable(int tag)
/// ```
int Mix_GroupAvailable(int tag) {
  final _Mix_GroupAvailable = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupAvailable');
  return _Mix_GroupAvailable(tag);
}

/// 
/// Returns the number of channels in a group.
/// 
/// If tag is -1, this will return the total number of channels allocated,
/// regardless of what their tag might be.
/// 
/// \param tag an arbitrary value, assigned to channels, to search for.
/// \returns the number of channels assigned the specified tag.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupCount(int tag)
/// ```
int Mix_GroupCount(int tag) {
  final _Mix_GroupCount = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupCount');
  return _Mix_GroupCount(tag);
}

/// 
/// Find the "oldest" sample playing in a group of channels.
/// 
/// Specifically, this function returns the channel number that is assigned the
/// specified tag, is currently playing, and has the lowest start time, based
/// on the value of SDL_GetTicks() when the channel started playing.
/// 
/// If no channel with this tag is currently playing, this function returns -1.
/// 
/// \param tag an arbitrary value, assigned to channels, to search through.
/// \returns the "oldest" sample playing in a group of channels
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GroupNewer
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupOldest(int tag)
/// ```
int Mix_GroupOldest(int tag) {
  final _Mix_GroupOldest = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupOldest');
  return _Mix_GroupOldest(tag);
}

/// 
/// Find the "most recent" sample playing in a group of channels.
/// 
/// Specifically, this function returns the channel number that is assigned the
/// specified tag, is currently playing, and has the highest start time, based
/// on the value of SDL_GetTicks() when the channel started playing.
/// 
/// If no channel with this tag is currently playing, this function returns -1.
/// 
/// \param tag an arbitrary value, assigned to channels, to search through.
/// \returns the "most recent" sample playing in a group of channels
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GroupOldest
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GroupNewer(int tag)
/// ```
int Mix_GroupNewer(int tag) {
  final _Mix_GroupNewer = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_GroupNewer');
  return _Mix_GroupNewer(tag);
}

/// 
/// Play an audio chunk on a specific channel.
/// 
/// If the specified channel is -1, play on the first free channel (and return
/// -1 without playing anything new if no free channel was available).
/// 
/// If a specific channel was requested, and there is a chunk already playing
/// there, that chunk will be halted and the new chunk will take its place.
/// 
/// If `loops` is greater than zero, loop the sound that many times. If `loops`
/// is -1, loop "infinitely" (~65000 times).
/// 
/// Note that before SDL_mixer 2.6.0, this function was a macro that called
/// Mix_PlayChannelTimed() with a fourth parameter ("ticks") of -1. This
/// function still does the same thing, but promotes it to a proper API
/// function. Older binaries linked against a newer SDL_mixer will still call
/// Mix_PlayChannelTimed directly, as they are using the macro, which was
/// available since the dawn of time.
/// 
/// \param channel the channel on which to play the new chunk.
/// \param chunk the new chunk to play.
/// \param loop the number of times the chunk should loop, -1 to loop (not
/// actually) infinitely.
/// \returns which channel was used to play the sound, or -1 if sound could not
/// be played.
/// 
/// \since This function is available since SDL_mixer 2.6.0 (and as a macro
/// since 2.0.0).
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayChannel(int channel, Mix_Chunk *chunk, int loops)
/// ```
int Mix_PlayChannel(int channel, Pointer<Mix_Chunk>? chunk, int loops) {
  final _Mix_PlayChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops),
      int Function(int channel, Pointer<Mix_Chunk>? chunk, int loops)>('Mix_PlayChannel');
  return _Mix_PlayChannel(channel, chunk, loops);
}

/// 
/// Play an audio chunk on a specific channel for a maximum time.
/// 
/// If the specified channel is -1, play on the first free channel (and return
/// -1 without playing anything new if no free channel was available).
/// 
/// If a specific channel was requested, and there is a chunk already playing
/// there, that chunk will be halted and the new chunk will take its place.
/// 
/// If `loops` is greater than zero, loop the sound that many times. If `loops`
/// is -1, loop "infinitely" (~65000 times).
/// 
/// `ticks` specifies the maximum number of milliseconds to play this chunk
/// before halting it. If you want the chunk to play until all data has been
/// mixed, specify -1.
/// 
/// Note that this function does not block for the number of ticks requested;
/// it just schedules the chunk to play and notes the maximum for the mixer to
/// manage later, and returns immediately.
/// 
/// \param channel the channel on which to play the new chunk.
/// \param chunk the new chunk to play.
/// \param loop the number of times the chunk should loop, -1 to loop (not
/// actually) infinitely.
/// \param ticks the maximum number of milliseconds of this chunk to mix for
/// playback.
/// \returns which channel was used to play the sound, or -1 if sound could not
/// be played.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ticks)
/// ```
int Mix_PlayChannelTimed(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ticks) {
  final _Mix_PlayChannelTimed = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ticks),
      int Function(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ticks)>('Mix_PlayChannelTimed');
  return _Mix_PlayChannelTimed(channel, chunk, loops, ticks);
}

/// 
/// Play a new music object.
/// 
/// This will schedule the music object to begin mixing for playback.
/// 
/// There is only ever one music object playing at a time; if this is called
/// when another music object is playing, the currently-playing music is halted
/// and the new music will replace it.
/// 
/// Please note that if the currently-playing music is in the process of fading
/// out (via Mix_FadeOutMusic()), this function will *block* until the fade
/// completes. If you need to avoid this, be sure to call Mix_HaltMusic()
/// before starting new music.
/// 
/// \param music the new music object to schedule for mixing.
/// \param loops the number of loops to play the music for (0 means "play once
/// and stop").
/// \returns zero on success, -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayMusic(Mix_Music *music, int loops)
/// ```
int Mix_PlayMusic(Pointer<Mix_Music>? music, int loops) {
  final _Mix_PlayMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops),
      int Function(Pointer<Mix_Music>? music, int loops)>('Mix_PlayMusic');
  return _Mix_PlayMusic(music, loops);
}

/// 
/// Play a new music object, fading in the audio.
/// 
/// This will start the new music playing, much like Mix_PlayMusic() will, but
/// will start the music playing at silence and fade in to its normal volume
/// over the specified number of milliseconds.
/// 
/// If there is already music playing, that music will be halted and the new
/// music object will take its place.
/// 
/// If `loops` is greater than zero, loop the music that many times. If `loops`
/// is -1, loop "infinitely" (~65000 times).
/// 
/// Fading music will change it's volume progressively, as if Mix_VolumeMusic()
/// was called on it (which is to say: you probably shouldn't call
/// Mix_VolumeMusic() on fading music).
/// 
/// \param music the new music object to play.
/// \param loop the number of times the chunk should loop, -1 to loop (not
/// actually) infinitely.
/// \param ms the number of milliseconds to spend fading in.
/// \returns zero on success, -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInMusic(Mix_Music *music, int loops, int ms)
/// ```
int Mix_FadeInMusic(Pointer<Mix_Music>? music, int loops, int ms) {
  final _Mix_FadeInMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops, Int32 ms),
      int Function(Pointer<Mix_Music>? music, int loops, int ms)>('Mix_FadeInMusic');
  return _Mix_FadeInMusic(music, loops, ms);
}

/// 
/// Play a new music object, fading in the audio, from a starting position.
/// 
/// This will start the new music playing, much like Mix_PlayMusic() will, but
/// will start the music playing at silence and fade in to its normal volume
/// over the specified number of milliseconds.
/// 
/// If there is already music playing, that music will be halted and the new
/// music object will take its place.
/// 
/// If `loops` is greater than zero, loop the music that many times. If `loops`
/// is -1, loop "infinitely" (~65000 times).
/// 
/// Fading music will change it's volume progressively, as if Mix_VolumeMusic()
/// was called on it (which is to say: you probably shouldn't call
/// Mix_VolumeMusic() on fading music).
/// 
/// This function allows the caller to start the music playback past the
/// beginning of its audio data. You may specify a start position, in seconds,
/// and the playback and fade-in will start there instead of with the first
/// samples of the music.
/// 
/// An app can specify a `position` of 0.0 to start at the beginning of the
/// music (or just call Mix_FadeInMusic() instead).
/// 
/// To convert from milliseconds, divide by 1000.0.
/// 
/// \param music the new music object to play.
/// \param loop the number of times the chunk should loop, -1 to loop (not
/// actually) infinitely.
/// \param ms the number of milliseconds to spend fading in.
/// \param position the start position within the music, in seconds, where
/// playback should start.
/// \returns zero on success, -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInMusicPos(Mix_Music *music, int loops, int ms, double position)
/// ```
int Mix_FadeInMusicPos(Pointer<Mix_Music>? music, int loops, int ms, double position) {
  final _Mix_FadeInMusicPos = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music, Int32 loops, Int32 ms, Double position),
      int Function(Pointer<Mix_Music>? music, int loops, int ms, double position)>('Mix_FadeInMusicPos');
  return _Mix_FadeInMusicPos(music, loops, ms, position);
}

/// 
/// Play an audio chunk on a specific channel, fading in the audio.
/// 
/// This will start the new sound playing, much like Mix_PlayChannel() will,
/// but will start the sound playing at silence and fade in to its normal
/// volume over the specified number of milliseconds.
/// 
/// If the specified channel is -1, play on the first free channel (and return
/// -1 without playing anything new if no free channel was available).
/// 
/// If a specific channel was requested, and there is a chunk already playing
/// there, that chunk will be halted and the new chunk will take its place.
/// 
/// If `loops` is greater than zero, loop the sound that many times. If `loops`
/// is -1, loop "infinitely" (~65000 times).
/// 
/// A fading channel will change it's volume progressively, as if Mix_Volume()
/// was called on it (which is to say: you probably shouldn't call Mix_Volume()
/// on a fading channel).
/// 
/// Note that before SDL_mixer 2.6.0, this function was a macro that called
/// Mix_FadeInChannelTimed() with a fourth parameter ("ticks") of -1. This
/// function still does the same thing, but promotes it to a proper API
/// function. Older binaries linked against a newer SDL_mixer will still call
/// Mix_FadeInChannelTimed directly, as they are using the macro, which was
/// available since the dawn of time.
/// 
/// \param channel the channel on which to play the new chunk, or -1 to find
/// any available.
/// \param chunk the new chunk to play.
/// \param loop the number of times the chunk should loop, -1 to loop (not
/// actually) infinitely.
/// \param ms the number of milliseconds to spend fading in.
/// \returns which channel was used to play the sound, or -1 if sound could not
/// be played.
/// 
/// \since This function is available since SDL_mixer 2.6.0 (and as a macro
/// since 2.0.0).
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInChannel(int channel, Mix_Chunk *chunk, int loops, int ms)
/// ```
int Mix_FadeInChannel(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ms) {
  final _Mix_FadeInChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ms),
      int Function(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ms)>('Mix_FadeInChannel');
  return _Mix_FadeInChannel(channel, chunk, loops, ms);
}

/// 
/// Play an audio chunk on a specific channel, fading in the audio, for a
/// maximum time.
/// 
/// This will start the new sound playing, much like Mix_PlayChannel() will,
/// but will start the sound playing at silence and fade in to its normal
/// volume over the specified number of milliseconds.
/// 
/// If the specified channel is -1, play on the first free channel (and return
/// -1 without playing anything new if no free channel was available).
/// 
/// If a specific channel was requested, and there is a chunk already playing
/// there, that chunk will be halted and the new chunk will take its place.
/// 
/// If `loops` is greater than zero, loop the sound that many times. If `loops`
/// is -1, loop "infinitely" (~65000 times).
/// 
/// `ticks` specifies the maximum number of milliseconds to play this chunk
/// before halting it. If you want the chunk to play until all data has been
/// mixed, specify -1.
/// 
/// Note that this function does not block for the number of ticks requested;
/// it just schedules the chunk to play and notes the maximum for the mixer to
/// manage later, and returns immediately.
/// 
/// A fading channel will change it's volume progressively, as if Mix_Volume()
/// was called on it (which is to say: you probably shouldn't call Mix_Volume()
/// on a fading channel).
/// 
/// \param channel the channel on which to play the new chunk, or -1 to find
/// any available.
/// \param chunk the new chunk to play.
/// \param loop the number of times the chunk should loop, -1 to loop (not
/// actually) infinitely.
/// \param ms the number of milliseconds to spend fading in.
/// \param ticks the maximum number of milliseconds of this chunk to mix for
/// playback.
/// \returns which channel was used to play the sound, or -1 if sound could not
/// be played.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeInChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ms, int ticks)
/// ```
int Mix_FadeInChannelTimed(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ms, int ticks) {
  final _Mix_FadeInChannelTimed = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Pointer<Mix_Chunk>? chunk, Int32 loops, Int32 ms, Int32 ticks),
      int Function(int channel, Pointer<Mix_Chunk>? chunk, int loops, int ms, int ticks)>('Mix_FadeInChannelTimed');
  return _Mix_FadeInChannelTimed(channel, chunk, loops, ms, ticks);
}

/// 
/// Set the volume for a specific channel.
/// 
/// The volume must be between 0 (silence) and MIX_MAX_VOLUME (full volume).
/// Note that MIX_MAX_VOLUME is 128. Values greater than MIX_MAX_VOLUME are
/// clamped to MIX_MAX_VOLUME.
/// 
/// Specifying a negative volume will not change the current volume; as such,
/// this can be used to query the current volume without making changes, as
/// this function returns the previous (in this case, still-current) value.
/// 
/// If the specified channel is -1, this function sets the volume for all
/// channels, and returns _the average_ of all channels' volumes prior to this
/// call.
/// 
/// The default volume for a channel is MIX_MAX_VOLUME (no attenuation).
/// 
/// \param channel the channel on set/query the volume on, or -1 for all
/// channels.
/// \param volume the new volume, between 0 and MIX_MAX_VOLUME, or -1 to query.
/// \returns the previous volume. If the specified volume is -1, this returns
/// the current volume. If `channel` is -1, this returns the average
/// of all channels.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Volume(int channel, int volume)
/// ```
int Mix_Volume(int channel, int volume) {
  final _Mix_Volume = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 volume),
      int Function(int channel, int volume)>('Mix_Volume');
  return _Mix_Volume(channel, volume);
}

/// 
/// Set the volume for a specific chunk.
/// 
/// In addition to channels having a volume setting, individual chunks also
/// maintain a seperate volume. Both values are considered when mixing, so both
/// affect the final attenuation of the sound. This lets an app adjust the
/// volume for all instances of a sound in addition to specific instances of
/// that sound.
/// 
/// The volume must be between 0 (silence) and MIX_MAX_VOLUME (full volume).
/// Note that MIX_MAX_VOLUME is 128. Values greater than MIX_MAX_VOLUME are
/// clamped to MIX_MAX_VOLUME.
/// 
/// Specifying a negative volume will not change the current volume; as such,
/// this can be used to query the current volume without making changes, as
/// this function returns the previous (in this case, still-current) value.
/// 
/// The default volume for a chunk is MIX_MAX_VOLUME (no attenuation).
/// 
/// \param channel the channel on set/query the volume on, or -1 for all
/// channels.
/// \param volume the new volume, between 0 and MIX_MAX_VOLUME, or -1 to query.
/// \returns the previous volume. If the specified volume is -1, this returns
/// the current volume. If `chunk` is NULL, this returns -1.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_VolumeChunk(Mix_Chunk *chunk, int volume)
/// ```
int Mix_VolumeChunk(Pointer<Mix_Chunk>? chunk, int volume) {
  final _Mix_VolumeChunk = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Chunk>? chunk, Int32 volume),
      int Function(Pointer<Mix_Chunk>? chunk, int volume)>('Mix_VolumeChunk');
  return _Mix_VolumeChunk(chunk, volume);
}

/// 
/// Set the volume for the music channel.
/// 
/// The volume must be between 0 (silence) and MIX_MAX_VOLUME (full volume).
/// Note that MIX_MAX_VOLUME is 128. Values greater than MIX_MAX_VOLUME are
/// clamped to MIX_MAX_VOLUME.
/// 
/// Specifying a negative volume will not change the current volume; as such,
/// this can be used to query the current volume without making changes, as
/// this function returns the previous (in this case, still-current) value.
/// 
/// The default volume for music is MIX_MAX_VOLUME (no attenuation).
/// 
/// \param volume the new volume, between 0 and MIX_MAX_VOLUME, or -1 to query.
/// \returns the previous volume. If the specified volume is -1, this returns
/// the current volume.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_VolumeMusic(int volume)
/// ```
int Mix_VolumeMusic(int volume) {
  final _Mix_VolumeMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 volume),
      int Function(int volume)>('Mix_VolumeMusic');
  return _Mix_VolumeMusic(volume);
}

/// 
/// Query the current volume value for a music object.
/// 
/// \param music the music object to query.
/// \returns the music's current volume, between 0 and MIX_MAX_VOLUME (128).
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetMusicVolume(Mix_Music *music)
/// ```
int Mix_GetMusicVolume(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicVolume = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Mix_Music>? music),
      int Function(Pointer<Mix_Music>? music)>('Mix_GetMusicVolume');
  return _Mix_GetMusicVolume(music);
}

/// 
/// Set the master volume for all channels.
/// 
/// SDL_mixer keeps a per-channel volume, a per-chunk volume, and a master
/// volume, and considers all three when mixing audio. This function sets the
/// master volume, which is applied to all playing channels when mixing.
/// 
/// The volume must be between 0 (silence) and MIX_MAX_VOLUME (full volume).
/// Note that MIX_MAX_VOLUME is 128. Values greater than MIX_MAX_VOLUME are
/// clamped to MIX_MAX_VOLUME.
/// 
/// Specifying a negative volume will not change the current volume; as such,
/// this can be used to query the current volume without making changes, as
/// this function returns the previous (in this case, still-current) value.
/// 
/// Note that the master volume does not affect any playing music; it is only
/// applied when mixing chunks. Use Mix_MusicVolume() for that.\
/// 
/// \param volume the new volume, between 0 and MIX_MAX_VOLUME, or -1 to query.
/// \returns the previous volume. If the specified volume is -1, this returns
/// the current volume.
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_MasterVolume(int volume)
/// ```
int Mix_MasterVolume(int volume) {
  final _Mix_MasterVolume = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 volume),
      int Function(int volume)>('Mix_MasterVolume');
  return _Mix_MasterVolume(volume);
}

/// 
/// Halt playing of a particular channel.
/// 
/// This will stop further playback on that channel until a new chunk is
/// started there.
/// 
/// Specifying a channel of -1 will halt _all_ channels, except for any playing
/// music.
/// 
/// Any halted channels will have any currently-registered effects
/// deregistered, and will call any callback specified by Mix_ChannelFinished()
/// before this function returns.
/// 
/// You may not specify MAX_CHANNEL_POST for a channel.
/// 
/// \param channel channel to halt, or -1 to halt all channels.
/// \returns 0 on success, or -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_HaltChannel(int channel)
/// ```
int Mix_HaltChannel(int channel) {
  final _Mix_HaltChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_HaltChannel');
  return _Mix_HaltChannel(channel);
}

/// 
/// Halt playing of a group of channels by arbitrary tag.
/// 
/// This will stop further playback on all channels with a specific tag, until
/// a new chunk is started there.
/// 
/// A tag is an arbitary number that can be assigned to several mixer channels,
/// to form groups of channels.
/// 
/// The default tag for a channel is -1.
/// 
/// Any halted channels will have any currently-registered effects
/// deregistered, and will call any callback specified by Mix_ChannelFinished()
/// before this function returns.
/// 
/// \param tag an arbitrary value, assigned to channels, to search for.
/// \returns zero, whether any channels were halted or not.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_HaltGroup(int tag)
/// ```
int Mix_HaltGroup(int tag) {
  final _Mix_HaltGroup = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag),
      int Function(int tag)>('Mix_HaltGroup');
  return _Mix_HaltGroup(tag);
}

/// 
/// Halt playing of the music stream.
/// 
/// This will stop further playback of music until a new music object is
/// started there.
/// 
/// Any halted music will call any callback specified by
/// Mix_HookMusicFinished() before this function returns.
/// 
/// \returns zero, regardless of whether any music was halted.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_HaltMusic(void)
/// ```
int Mix_HaltMusic() {
  final _Mix_HaltMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_HaltMusic');
  return _Mix_HaltMusic();
}

/// 
/// Change the expiration delay for a particular channel.
/// 
/// The channel will halt after the 'ticks' milliseconds have elapsed, or
/// remove the expiration if 'ticks' is -1.
/// 
/// This overrides the value passed to the fourth parameter of
/// Mix_PlayChannelTimed().
/// 
/// Specifying a channel of -1 will set an expiration for _all_ channels.
/// 
/// Any halted channels will have any currently-registered effects
/// deregistered, and will call any callback specified by Mix_ChannelFinished()
/// once the halt occurs.
/// 
/// Note that this function does not block for the number of ticks requested;
/// it just schedules the chunk to expire and notes the time for the mixer to
/// manage later, and returns immediately.
/// 
/// \param channel the channel to change the expiration time on.
/// \param ticks number of milliseconds from now to let channel play before
/// halting, -1 to not halt.
/// \returns the number of channels that changed expirations.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_ExpireChannel(int channel, int ticks)
/// ```
int Mix_ExpireChannel(int channel, int ticks) {
  final _Mix_ExpireChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel, Int32 ticks),
      int Function(int channel, int ticks)>('Mix_ExpireChannel');
  return _Mix_ExpireChannel(channel, ticks);
}

/// 
/// Halt a channel after fading it out for a specified time.
/// 
/// This will begin a channel fading from its current volume to silence over
/// `ms` milliseconds. After that time, the channel is halted.
/// 
/// Any halted channels will have any currently-registered effects
/// deregistered, and will call any callback specified by Mix_ChannelFinished()
/// once the halt occurs.
/// 
/// A fading channel will change it's volume progressively, as if Mix_Volume()
/// was called on it (which is to say: you probably shouldn't call Mix_Volume()
/// on a fading channel).
/// 
/// Note that this function does not block for the number of milliseconds
/// requested; it just schedules the chunk to fade and notes the time for the
/// mixer to manage later, and returns immediately.
/// 
/// \param which the channel to fade out.
/// \param ms number of milliseconds to fade before halting the channel.
/// \returns 0 on success, or -1 on error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeOutChannel(int which, int ms)
/// ```
int Mix_FadeOutChannel(int which, int ms) {
  final _Mix_FadeOutChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which, Int32 ms),
      int Function(int which, int ms)>('Mix_FadeOutChannel');
  return _Mix_FadeOutChannel(which, ms);
}

/// 
/// Halt a playing group of channels by arbitrary tag, after fading them out
/// for a specified time.
/// 
/// This will begin fading a group of channels with a specific tag from their
/// current volumes to silence over `ms` milliseconds. After that time, those
/// channels are halted.
/// 
/// A tag is an arbitary number that can be assigned to several mixer channels,
/// to form groups of channels.
/// 
/// The default tag for a channel is -1.
/// 
/// Any halted channels will have any currently-registered effects
/// deregistered, and will call any callback specified by Mix_ChannelFinished()
/// once the halt occurs.
/// 
/// A fading channel will change it's volume progressively, as if Mix_Volume()
/// was called on it (which is to say: you probably shouldn't call Mix_Volume()
/// on a fading channel).
/// 
/// Note that this function does not block for the number of milliseconds
/// requested; it just schedules the group to fade and notes the time for the
/// mixer to manage later, and returns immediately.
/// 
/// \param tag an arbitrary value, assigned to channels, to search for.
/// \param ms number of milliseconds to fade before halting the group.
/// \returns the number of channels that were scheduled for fading.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeOutGroup(int tag, int ms)
/// ```
int Mix_FadeOutGroup(int tag, int ms) {
  final _Mix_FadeOutGroup = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 tag, Int32 ms),
      int Function(int tag, int ms)>('Mix_FadeOutGroup');
  return _Mix_FadeOutGroup(tag, ms);
}

/// 
/// Halt the music stream after fading it out for a specified time.
/// 
/// This will begin the music fading from its current volume to silence over
/// `ms` milliseconds. After that time, the music is halted.
/// 
/// Any halted music will call any callback specified by
/// Mix_HookMusicFinished() once the halt occurs.
/// 
/// Fading music will change it's volume progressively, as if Mix_VolumeMusic()
/// was called on it (which is to say: you probably shouldn't call
/// Mix_VolumeMusic() on a fading channel).
/// 
/// Note that this function does not block for the number of milliseconds
/// requested; it just schedules the music to fade and notes the time for the
/// mixer to manage later, and returns immediately.
/// 
/// \param which the channel to fade out.
/// \param ms number of milliseconds to fade before halting the channel.
/// \returns non-zero if music was scheduled to fade, zero otherwise. If no
/// music is currently playing, this returns zero.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_FadeOutMusic(int ms)
/// ```
int Mix_FadeOutMusic(int ms) {
  final _Mix_FadeOutMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 ms),
      int Function(int ms)>('Mix_FadeOutMusic');
  return _Mix_FadeOutMusic(ms);
}

/// 
/// Query the fading status of the music stream.
/// 
/// This reports one of three values:
/// 
/// - `MIX_NO_FADING`
/// - `MIX_FADING_OUT`
/// - `MIX_FADING_IN`
/// 
/// If music is not currently playing, this returns `MIX_NO_FADING`.
/// 
/// \returns the current fading status of the music stream.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC Mix_Fading SDLCALL Mix_FadingMusic(void)
/// ```
int Mix_FadingMusic() {
  final _Mix_FadingMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_FadingMusic');
  return _Mix_FadingMusic();
}

/// 
/// Query the fading status of a channel.
/// 
/// This reports one of three values:
/// 
/// - `MIX_NO_FADING`
/// - `MIX_FADING_OUT`
/// - `MIX_FADING_IN`
/// 
/// If nothing is currently playing on the channel, or an invalid channel is
/// specified, this returns `MIX_NO_FADING`.
/// 
/// You may not specify MAX_CHANNEL_POST for a channel.
/// 
/// You may not specify -1 for all channels; only individual channels may be
/// queried.
/// 
/// \param which the channel to query.
/// \returns the current fading status of the channel.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC Mix_Fading SDLCALL Mix_FadingChannel(int which)
/// ```
int Mix_FadingChannel(int which) {
  final _Mix_FadingChannel = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 which),
      int Function(int which)>('Mix_FadingChannel');
  return _Mix_FadingChannel(which);
}

/// 
/// Pause a particular channel.
/// 
/// Pausing a channel will prevent further playback of the assigned chunk but
/// will maintain the chunk's current mixing position. When resumed, this
/// channel will continue to mix the chunk where it left off.
/// 
/// A paused channel can be resumed by calling Mix_Resume().
/// 
/// A paused channel with an expiration will not expire while paused (the
/// expiration countdown will be adjusted once resumed).
/// 
/// It is legal to halt a paused channel. Playing a new chunk on a paused
/// channel will replace the current chunk and unpause the channel.
/// 
/// Specifying a channel of -1 will pause _all_ channels. Any music is
/// unaffected.
/// 
/// You may not specify MAX_CHANNEL_POST for a channel.
/// 
/// \param channel the channel to pause, or -1 to pause all channels.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_Pause(int channel)
/// ```
void Mix_Pause(int channel) {
  final _Mix_Pause = DLL_SDL2_mixer.lookupFunction<
      Void Function(Int32 channel),
      void Function(int channel)>('Mix_Pause');
  return _Mix_Pause(channel);
}

/// 
/// Resume a particular channel.
/// 
/// It is legal to resume an unpaused or invalid channel; it causes no effect
/// and reports no error.
/// 
/// If the paused channel has an expiration, its expiration countdown resumes
/// now, as well.
/// 
/// Specifying a channel of -1 will resume _all_ paused channels. Any music is
/// unaffected.
/// 
/// \param channel the channel to resume, or -1 to resume all paused channels.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_Resume(int channel)
/// ```
void Mix_Resume(int channel) {
  final _Mix_Resume = DLL_SDL2_mixer.lookupFunction<
      Void Function(Int32 channel),
      void Function(int channel)>('Mix_Resume');
  return _Mix_Resume(channel);
}

/// 
/// Query whether a particular channel is paused.
/// 
/// If an invalid channel is specified, this function returns zero.
/// 
/// \param channel the channel to query, or -1 to query all channels.
/// \return 1 if channel paused, 0 otherwise. If `channel` is -1, returns the
/// number of paused channels.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Paused(int channel)
/// ```
int Mix_Paused(int channel) {
  final _Mix_Paused = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_Paused');
  return _Mix_Paused(channel);
}

/// 
/// Pause the music stream.
/// 
/// Pausing the music stream will prevent further playback of the assigned
/// music object, but will maintain the object's current mixing position. When
/// resumed, this channel will continue to mix the music where it left off.
/// 
/// Paused music can be resumed by calling Mix_ResumeMusic().
/// 
/// It is legal to halt paused music. Playing a new music object when music is
/// paused will replace the current music and unpause the music stream.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_PauseMusic(void)
/// ```
void Mix_PauseMusic() {
  final _Mix_PauseMusic = DLL_SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_PauseMusic');
  return _Mix_PauseMusic();
}

/// 
/// Resume the music stream.
/// 
/// It is legal to resume an unpaused music stream; it causes no effect and
/// reports no error.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_ResumeMusic(void)
/// ```
void Mix_ResumeMusic() {
  final _Mix_ResumeMusic = DLL_SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_ResumeMusic');
  return _Mix_ResumeMusic();
}

/// 
/// Rewind the music stream.
/// 
/// This causes the currently-playing music to start mixing from the beginning
/// of the music, as if it were just started.
/// 
/// It's a legal no-op to rewind the music stream when not playing.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_RewindMusic(void)
/// ```
void Mix_RewindMusic() {
  final _Mix_RewindMusic = DLL_SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_RewindMusic');
  return _Mix_RewindMusic();
}

/// 
/// Query whether the music stream is paused.
/// 
/// \return 1 if music is paused, 0 otherwise.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_PauseMusic
/// \sa Mix_ResumeMusic
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_PausedMusic(void)
/// ```
int Mix_PausedMusic() {
  final _Mix_PausedMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_PausedMusic');
  return _Mix_PausedMusic();
}

/// 
/// Jump to a given order in mod music.
/// 
/// This only applies to MOD music formats.
/// 
/// \param order order
/// \returns 0 if successful, or -1 if failed or isn't implemented.
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_ModMusicJumpToOrder(int order)
/// ```
int Mix_ModMusicJumpToOrder(int order) {
  final _Mix_ModMusicJumpToOrder = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 order),
      int Function(int order)>('Mix_ModMusicJumpToOrder');
  return _Mix_ModMusicJumpToOrder(order);
}

/// 
/// Set the current position in the music stream, in seconds.
/// 
/// To convert from milliseconds, divide by 1000.0.
/// 
/// This function is only implemented for MOD music formats (set pattern order
/// number) and for WAV, OGG, FLAC, MP3, and MODPLUG music at the moment.
/// 
/// \param position the new position, in seconds (as a double).
/// \returns 0 if successful, or -1 if it failed or not implemented.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetMusicPosition(double position)
/// ```
int Mix_SetMusicPosition(double position) {
  final _Mix_SetMusicPosition = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Double position),
      int Function(double position)>('Mix_SetMusicPosition');
  return _Mix_SetMusicPosition(position);
}

/// 
/// Get the time current position of music stream, in seconds.
/// 
/// To convert to milliseconds, multiply by 1000.0.
/// 
/// \param music the music object to query.
/// \returns -1.0 if this feature is not supported for some codec.
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC double SDLCALL Mix_GetMusicPosition(Mix_Music *music)
/// ```
double Mix_GetMusicPosition(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicPosition = DLL_SDL2_mixer.lookupFunction<
      Double Function(Pointer<Mix_Music>? music),
      double Function(Pointer<Mix_Music>? music)>('Mix_GetMusicPosition');
  return _Mix_GetMusicPosition(music);
}

/// 
/// Get a music object's duration, in seconds.
/// 
/// To convert to milliseconds, multiply by 1000.0.
/// 
/// If NULL is passed, returns duration of current playing music.
/// 
/// \param music the music object to query.
/// \returns music duration in seconds, or -1.0 on error.
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC double SDLCALL Mix_MusicDuration(Mix_Music *music)
/// ```
double Mix_MusicDuration(Pointer<Mix_Music>? music) {
  final _Mix_MusicDuration = DLL_SDL2_mixer.lookupFunction<
      Double Function(Pointer<Mix_Music>? music),
      double Function(Pointer<Mix_Music>? music)>('Mix_MusicDuration');
  return _Mix_MusicDuration(music);
}

/// 
/// Get the loop start time position of music stream, in seconds.
/// 
/// To convert to milliseconds, multiply by 1000.0.
/// 
/// If NULL is passed, returns duration of current playing music.
/// 
/// \param music the music object to query.
/// \returns -1.0 if this feature is not used for this music or not supported
/// for some codec
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC double SDLCALL Mix_GetMusicLoopStartTime(Mix_Music *music)
/// ```
double Mix_GetMusicLoopStartTime(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicLoopStartTime = DLL_SDL2_mixer.lookupFunction<
      Double Function(Pointer<Mix_Music>? music),
      double Function(Pointer<Mix_Music>? music)>('Mix_GetMusicLoopStartTime');
  return _Mix_GetMusicLoopStartTime(music);
}

/// 
/// Get the loop end time position of music stream, in seconds.
/// 
/// To convert to milliseconds, multiply by 1000.0.
/// 
/// If NULL is passed, returns duration of current playing music.
/// 
/// \param music the music object to query.
/// \returns -1.0 if this feature is not used for this music or not supported
/// for some codec
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC double SDLCALL Mix_GetMusicLoopEndTime(Mix_Music *music)
/// ```
double Mix_GetMusicLoopEndTime(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicLoopEndTime = DLL_SDL2_mixer.lookupFunction<
      Double Function(Pointer<Mix_Music>? music),
      double Function(Pointer<Mix_Music>? music)>('Mix_GetMusicLoopEndTime');
  return _Mix_GetMusicLoopEndTime(music);
}

/// 
/// Get the loop time length of music stream, in seconds.
/// 
/// To convert to milliseconds, multiply by 1000.0.
/// 
/// If NULL is passed, returns duration of current playing music.
/// 
/// \param music the music object to query.
/// \returns -1.0 if this feature is not used for this music or not supported
/// for some codec
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC double SDLCALL Mix_GetMusicLoopLengthTime(Mix_Music *music)
/// ```
double Mix_GetMusicLoopLengthTime(Pointer<Mix_Music>? music) {
  final _Mix_GetMusicLoopLengthTime = DLL_SDL2_mixer.lookupFunction<
      Double Function(Pointer<Mix_Music>? music),
      double Function(Pointer<Mix_Music>? music)>('Mix_GetMusicLoopLengthTime');
  return _Mix_GetMusicLoopLengthTime(music);
}

/// 
/// Check the playing status of a specific channel.
/// 
/// If the channel is currently playing, this function returns 1. Otherwise it
/// returns 0.
/// 
/// If the specified channel is -1, all channels are checked, and this function
/// returns the number of channels currently playing.
/// 
/// You may not specify MAX_CHANNEL_POST for a channel.
/// 
/// Paused channels are treated as playing, even though they are not currently
/// making forward progress in mixing.
/// 
/// \param channel channel
/// \returns non-zero if channel is playing, zero otherwise. If `channel` is
/// -1, return the total number of channel playings.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_Playing(int channel)
/// ```
int Mix_Playing(int channel) {
  final _Mix_Playing = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 channel),
      int Function(int channel)>('Mix_Playing');
  return _Mix_Playing(channel);
}

/// 
/// Check the playing status of the music stream.
/// 
/// If music is currently playing, this function returns 1. Otherwise it
/// returns 0.
/// 
/// Paused music is treated as playing, even though it is not currently making
/// forward progress in mixing.
/// 
/// \returns non-zero if music is playing, zero otherwise.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_PlayingMusic(void)
/// ```
int Mix_PlayingMusic() {
  final _Mix_PlayingMusic = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_PlayingMusic');
  return _Mix_PlayingMusic();
}

/// 
/// Run an external command as the music stream.
/// 
/// This halts any currently-playing music, and next time the music stream is
/// played, SDL_mixer will spawn a process using the command line specified in
/// `command`. This command is not subject to shell expansion, and beyond some
/// basic splitting up of arguments, is passed to execvp() on most platforms,
/// not system().
/// 
/// The command is responsible for generating sound; it is NOT mixed by
/// SDL_mixer! SDL_mixer will kill the child process if asked to halt the
/// music, but otherwise does not have any control over what the process does.
/// 
/// You are strongly encouraged not to use this function without an extremely
/// good reason.
/// 
/// \param command command
/// \returns 0 if successful, -1 on error
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetMusicCMD(const char *command)
/// ```
int Mix_SetMusicCMD(String command) {
  final _Mix_SetMusicCMD = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? command),
      int Function(Pointer<Utf8>? command)>('Mix_SetMusicCMD');
  final _commandPointer = command.toNativeUtf8();
  final _result = _Mix_SetMusicCMD(_commandPointer);
  calloc.free(_commandPointer);
  return _result;
}

/// 
/// This function does nothing, do not use.
/// 
/// This was probably meant to expose a feature, but no codecs support it, so
/// it only remains for binary compatibility.
/// 
/// Calling this function is a legal no-op that returns -1.
/// 
/// \param value this parameter is ignored.
/// \returns -1.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetSynchroValue(int value)
/// ```
int Mix_SetSynchroValue(int value) {
  final _Mix_SetSynchroValue = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Int32 value),
      int Function(int value)>('Mix_SetSynchroValue');
  return _Mix_SetSynchroValue(value);
}

/// 
/// This function does nothing, do not use.
/// 
/// This was probably meant to expose a feature, but no codecs support it, so
/// it only remains for binary compatibility.
/// 
/// Calling this function is a legal no-op that returns -1.
/// 
/// \returns -1.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_GetSynchroValue(void)
/// ```
int Mix_GetSynchroValue() {
  final _Mix_GetSynchroValue = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(),
      int Function()>('Mix_GetSynchroValue');
  return _Mix_GetSynchroValue();
}

/// 
/// Set SoundFonts paths to use by supported MIDI backends.
/// 
/// You may specify multiple paths in a single string by separating them with
/// semicolons; they will be searched in the order listed.
/// 
/// This function replaces any previously-specified paths.
/// 
/// Passing a NULL path will remove any previously-specified paths.
/// 
/// Note that unlike most SDL and SDL_mixer functions, this function returns
/// zero if there's an error, not on success. We apologize for the API design
/// inconsistency here.
/// 
/// \param paths Paths on the filesystem where SoundFonts are available,
/// separated by semicolons.
/// \returns 1 if successful, 0 on error (out of memory).
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetSoundFonts(const char *paths)
/// ```
int Mix_SetSoundFonts(String paths) {
  final _Mix_SetSoundFonts = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? paths),
      int Function(Pointer<Utf8>? paths)>('Mix_SetSoundFonts');
  final _pathsPointer = paths.toNativeUtf8();
  final _result = _Mix_SetSoundFonts(_pathsPointer);
  calloc.free(_pathsPointer);
  return _result;
}

/// 
/// Get SoundFonts paths to use by supported MIDI backends.
/// 
/// There are several factors that determine what will be reported by this
/// function:
/// 
/// - If the boolean _SDL hint_ `"SDL_FORCE_SOUNDFONTS"` is set, AND the
/// `"SDL_SOUNDFONTS"` _environment variable_ is also set, this function will
/// return that environment variable regardless of whether
/// Mix_SetSoundFounts() was ever called.
/// - Otherwise, if Mix_SetSoundFonts() was successfully called with a non-NULL
/// path, this function will return the string passed to that function.
/// - Otherwise, if the `"SDL_SOUNDFONTS"` variable is set, this function will
/// return that environment variable.
/// - Otherwise, this function will search some common locations on the
/// filesystem, and if it finds a SoundFont there, it will return that.
/// - Failing everything else, this function returns NULL.
/// 
/// This returns a pointer to internal (possibly read-only) memory, and it
/// should not be modified or free'd by the caller.
/// 
/// \returns semicolon-separated list of sound font paths.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL Mix_GetSoundFonts(void)
/// ```
String Mix_GetSoundFonts() {
  final _Mix_GetSoundFonts = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('Mix_GetSoundFonts');
  return _Mix_GetSoundFonts()!.toDartString();
}

/// 
/// Iterate SoundFonts paths to use by supported MIDI backends.
/// 
/// This function will take the string reported by Mix_GetSoundFonts(), split
/// it up into separate paths, as delimited by semicolons in the string, and
/// call a callback function for each separate path.
/// 
/// If there are no paths available, this returns 0 without calling the
/// callback at all.
/// 
/// If the callback returns non-zero, this function stops iterating and returns
/// non-zero. If the callback returns 0, this function will continue iterating,
/// calling the callback again for further paths. If the callback never returns
/// 1, this function returns 0, so this can be used to decide if an available
/// soundfont is acceptable for use.
/// 
/// \param function the callback function to call once per path.
/// \param data a pointer to pass to the callback for its own personal use.
/// \returns non-zero if callback ever returned non-zero, 0 on error or the
/// callback never returned non-zero.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_GetSoundFonts
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_EachSoundFont(int (SDLCALL *function)(const char*, void*), void *data)
/// ```
int Mix_EachSoundFont(Pointer<Void>? function, Pointer<Void>? data) {
  final _Mix_EachSoundFont = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Void>? function, Pointer<Void>? data),
      int Function(Pointer<Void>? function, Pointer<Void>? data)>('Mix_EachSoundFont');
  return _Mix_EachSoundFont(function, data);
}

/// 
/// Set full path of the Timidity config file.
/// 
/// For example, "/etc/timidity.cfg"
/// 
/// This is obviously only useful if SDL_mixer is using Timidity internally to
/// play MIDI files.
/// 
/// \param path path to a Timidity config file.
/// \returns 1 if successful, 0 on error
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL Mix_SetTimidityCfg(const char *path)
/// ```
int Mix_SetTimidityCfg(String path) {
  final _Mix_SetTimidityCfg = DLL_SDL2_mixer.lookupFunction<
      Int32 Function(Pointer<Utf8>? path),
      int Function(Pointer<Utf8>? path)>('Mix_SetTimidityCfg');
  final _pathPointer = path.toNativeUtf8();
  final _result = _Mix_SetTimidityCfg(_pathPointer);
  calloc.free(_pathPointer);
  return _result;
}

/// 
/// Get full path of a previously-specified Timidity config file.
/// 
/// For example, "/etc/timidity.cfg"
/// 
/// If a path has never been specified, this returns NULL.
/// 
/// This returns a pointer to internal memory, and it should not be modified or
/// free'd by the caller.
/// 
/// \returns the previously-specified path, or NULL if not set.
/// 
/// \since This function is available since SDL_mixer 2.6.0.
/// 
/// \sa Mix_SetTimidityCfg
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL Mix_GetTimidityCfg(void)
/// ```
String Mix_GetTimidityCfg() {
  final _Mix_GetTimidityCfg = DLL_SDL2_mixer.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('Mix_GetTimidityCfg');
  return _Mix_GetTimidityCfg()!.toDartString();
}

/// 
/// Get the Mix_Chunk currently associated with a mixer channel.
/// 
/// You may not specify MAX_CHANNEL_POST or -1 for a channel.
/// 
/// \param channel the channel to query.
/// \returns the associated chunk, if any, or NULL if it's an invalid channel.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// ```c
/// extern DECLSPEC Mix_Chunk * SDLCALL Mix_GetChunk(int channel)
/// ```
Pointer<Mix_Chunk>? Mix_GetChunk(int channel) {
  final _Mix_GetChunk = DLL_SDL2_mixer.lookupFunction<
      Pointer<Mix_Chunk>? Function(Int32 channel),
      Pointer<Mix_Chunk>? Function(int channel)>('Mix_GetChunk');
  return _Mix_GetChunk(channel);
}

/// 
/// Close the mixer, halting all playing audio.
/// 
/// Any halted channels will have any currently-registered effects
/// deregistered, and will call any callback specified by Mix_ChannelFinished()
/// before this function returns.
/// 
/// Any halted music will call any callback specified by
/// Mix_HookMusicFinished() before this function returns.
/// 
/// Do not start any new audio playing during callbacks in this function.
/// 
/// This will close the audio device. Attempting to play new audio after this
/// function returns will fail, until another successful call to
/// Mix_OpenAudio() or Mix_OpenAudioDevice().
/// 
/// Note that (unlike Mix_OpenAudio optionally calling SDL_Init(SDL_INIT_AUDIO)
/// on the app's behalf), this will _not_ deinitialize the SDL audio subsystem
/// in any case. At some point after calling this function and Mix_Quit(), some
/// part of the application should be responsible for calling SDL_Quit() to
/// deinitialize all of SDL, including its audio subsystem.
/// 
/// This function should be the last thing you call in SDL_mixer before
/// Mix_Quit(). However, the following notes apply if you don't follow this
/// advice:
/// 
/// Note that this will not free any loaded chunks or music; you should dispose
/// of those resources separately. It is probably poor form to dispose of them
/// _after_ this function, but it is safe to call Mix_FreeChunk() and
/// Mix_FreeMusic() after closing the device.
/// 
/// Note that any chunks or music you don't free may or may not work if you
/// call Mix_OpenAudio again, as the audio device may be in a new format and
/// the existing chunks will not be converted to match.
/// 
/// \since This function is available since SDL_mixer 2.0.0.
/// 
/// \sa Mix_Quit
/// 
/// ```c
/// extern DECLSPEC void SDLCALL Mix_CloseAudio(void)
/// ```
void Mix_CloseAudio() {
  final _Mix_CloseAudio = DLL_SDL2_mixer.lookupFunction<
      Void Function(),
      void Function()>('Mix_CloseAudio');
  return _Mix_CloseAudio();
}

