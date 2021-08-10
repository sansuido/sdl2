// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// @{
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumAudioDrivers(void)
/// ```
int SDL_GetNumAudioDrivers() {
  final _SDL_GetNumAudioDrivers = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumAudioDrivers');
  return _SDL_GetNumAudioDrivers();
}

/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetAudioDriver(int index)
/// ```
String SDL_GetAudioDriver(int index) {
  final _SDL_GetAudioDriver = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('SDL_GetAudioDriver');
  return _SDL_GetAudioDriver(index)!.toDartString();
}

/// @{
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioInit(const char *driver_name)
/// ```
int SDL_AudioInit(String driver_name) {
  final _SDL_AudioInit = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? driver_name),
      int Function(Pointer<Utf8>? driver_name)>('SDL_AudioInit');
  final _driver_namePointer = driver_name.toNativeUtf8();
  final _result = _SDL_AudioInit(_driver_namePointer);
  calloc.free(_driver_namePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_AudioQuit(void)
/// ```
void SDL_AudioQuit() {
  final _SDL_AudioQuit = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_AudioQuit');
  return _SDL_AudioQuit();
}

/// 
/// This function returns the name of the current audio driver, or NULL
/// if no driver has been initialized.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetCurrentAudioDriver(void)
/// ```
String SDL_GetCurrentAudioDriver() {
  final _SDL_GetCurrentAudioDriver = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetCurrentAudioDriver');
  return _SDL_GetCurrentAudioDriver()!.toDartString();
}

/// 
/// This function opens the audio device with the desired parameters, and
/// returns 0 if successful, placing the actual hardware parameters in the
/// structure pointed to by \c obtained.  If \c obtained is NULL, the audio
/// data passed to the callback function will be guaranteed to be in the
/// requested format, and will be automatically converted to the hardware
/// audio format if necessary.  This function returns -1 if it failed
/// to open the audio device, or couldn't set up the audio thread.
/// 
/// When filling in the desired audio spec structure,
/// - \c desired->freq should be the desired audio frequency in samples-per-
/// second.
/// - \c desired->format should be the desired audio format.
/// - \c desired->samples is the desired size of the audio buffer, in
/// samples.  This number should be a power of two, and may be adjusted by
/// the audio driver to a value more suitable for the hardware.  Good values
/// seem to range between 512 and 8096 inclusive, depending on the
/// application and CPU speed.  Smaller values yield faster response time,
/// but can lead to underflow if the application is doing heavy processing
/// and cannot fill the audio buffer in time.  A stereo sample consists of
/// both right and left channels in LR ordering.
/// Note that the number of samples is directly related to time by the
/// following formula:  \code ms = (samples*1000)/freq \endcode
/// - \c desired->size is the size in bytes of the audio buffer, and is
/// calculated by SDL_OpenAudio().
/// - \c desired->silence is the value used to set the buffer to silence,
/// and is calculated by SDL_OpenAudio().
/// - \c desired->callback should be set to a function that will be called
/// when the audio device is ready for more data.  It is passed a pointer
/// to the audio buffer, and the length in bytes of the audio buffer.
/// This function usually runs in a separate thread, and so you should
/// protect data structures that it accesses by calling SDL_LockAudio()
/// and SDL_UnlockAudio() in your code.
/// - \c desired->userdata is passed as the first parameter to your callback
/// function.
/// 
/// The audio device starts out playing silence when it's opened, and should
/// be enabled for playing by calling \c SDL_PauseAudio(0) when you are ready
/// for your audio callback function to be called.  Since the audio driver
/// may modify the requested size of the audio buffer, you should allocate
/// any local mixing buffers after you open the audio device.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_OpenAudio(SDL_AudioSpec * desired, SDL_AudioSpec * obtained)
/// ```
int SDL_OpenAudio(Pointer<SDL_AudioSpec>? desired, Pointer<SDL_AudioSpec>? obtained) {
  final _SDL_OpenAudio = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_AudioSpec>? desired, Pointer<SDL_AudioSpec>? obtained),
      int Function(Pointer<SDL_AudioSpec>? desired, Pointer<SDL_AudioSpec>? obtained)>('SDL_OpenAudio');
  return _SDL_OpenAudio(desired, obtained);
}

/// 
/// Get the number of available devices exposed by the current driver.
/// Only valid after a successfully initializing the audio subsystem.
/// Returns -1 if an explicit list of devices can't be determined; this is
/// not an error. For example, if SDL is set up to talk to a remote audio
/// server, it can't list every one available on the Internet, but it will
/// still allow a specific host to be specified to SDL_OpenAudioDevice().
/// 
/// In many common cases, when this function returns a value <= 0, it can still
/// successfully open the default device (NULL for first argument of
/// SDL_OpenAudioDevice()).
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumAudioDevices(int iscapture)
/// ```
int SDL_GetNumAudioDevices(int iscapture) {
  final _SDL_GetNumAudioDevices = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 iscapture),
      int Function(int iscapture)>('SDL_GetNumAudioDevices');
  return _SDL_GetNumAudioDevices(iscapture);
}

/// 
/// Get the human-readable name of a specific audio device.
/// Must be a value between 0 and (number of audio devices-1).
/// Only valid after a successfully initializing the audio subsystem.
/// The values returned by this function reflect the latest call to
/// SDL_GetNumAudioDevices(); recall that function to redetect available
/// hardware.
/// 
/// The string returned by this function is UTF-8 encoded, read-only, and
/// managed internally. You are not to free it. If you need to keep the
/// string for any length of time, you should make your own copy of it, as it
/// will be invalid next time any of several other SDL functions is called.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetAudioDeviceName(int index, int iscapture)
/// ```
String SDL_GetAudioDeviceName(int index, int iscapture) {
  final _SDL_GetAudioDeviceName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 index, Int32 iscapture),
      Pointer<Utf8>? Function(int index, int iscapture)>('SDL_GetAudioDeviceName');
  return _SDL_GetAudioDeviceName(index, iscapture)!.toDartString();
}

/// 
/// Open a specific audio device. Passing in a device name of NULL requests
/// the most reasonable default (and is equivalent to calling SDL_OpenAudio()).
/// 
/// The device name is a UTF-8 string reported by SDL_GetAudioDeviceName(), but
/// some drivers allow arbitrary and driver-specific strings, such as a
/// hostname/IP address for a remote audio server, or a filename in the
/// diskaudio driver.
/// 
/// \return 0 on error, a valid device ID that is >= 2 on success.
/// 
/// SDL_OpenAudio(), unlike this function, always acts on device ID 1.
/// 
/// ```c
/// extern DECLSPEC SDL_AudioDeviceID SDLCALL SDL_OpenAudioDevice(const char *device, int iscapture, const SDL_AudioSpec * desired, SDL_AudioSpec * obtained, int allowed_changes)
/// ```
int SDL_OpenAudioDevice(String device, int iscapture, Pointer<SDL_AudioSpec>? desired, Pointer<SDL_AudioSpec>? obtained, int allowed_changes) {
  final _SDL_OpenAudioDevice = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8>? device, Int32 iscapture, Pointer<SDL_AudioSpec>? desired, Pointer<SDL_AudioSpec>? obtained, Int32 allowed_changes),
      int Function(Pointer<Utf8>? device, int iscapture, Pointer<SDL_AudioSpec>? desired, Pointer<SDL_AudioSpec>? obtained, int allowed_changes)>('SDL_OpenAudioDevice');
  final _devicePointer = device.toNativeUtf8();
  final _result = _SDL_OpenAudioDevice(_devicePointer, iscapture, desired, obtained, allowed_changes);
  calloc.free(_devicePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioStatus(void)
/// ```
int SDL_GetAudioStatus() {
  final _SDL_GetAudioStatus = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetAudioStatus');
  return _SDL_GetAudioStatus();
}

/// ```c
/// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioDeviceStatus(SDL_AudioDeviceID dev)
/// ```
int SDL_GetAudioDeviceStatus(int dev) {
  final _SDL_GetAudioDeviceStatus = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 dev),
      int Function(int dev)>('SDL_GetAudioDeviceStatus');
  return _SDL_GetAudioDeviceStatus(dev);
}

/// @{
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PauseAudio(int pause_on)
/// ```
void SDL_PauseAudio(int pause_on) {
  final _SDL_PauseAudio = DLL_SDL2.lookupFunction<
      Void Function(Int32 pause_on),
      void Function(int pause_on)>('SDL_PauseAudio');
  return _SDL_PauseAudio(pause_on);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_PauseAudioDevice(SDL_AudioDeviceID dev, int pause_on)
/// ```
void SDL_PauseAudioDevice(int dev, int pause_on) {
  final _SDL_PauseAudioDevice = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dev, Int32 pause_on),
      void Function(int dev, int pause_on)>('SDL_PauseAudioDevice');
  return _SDL_PauseAudioDevice(dev, pause_on);
}

/// 
/// This function loads a WAVE from the data source, automatically freeing
/// that source if \c freesrc is non-zero.  For example, to load a WAVE file,
/// you could do:
/// \code
/// SDL_LoadWAV_RW(SDL_RWFromFile("sample.wav", "rb"), 1, ...);
/// \endcode
/// 
/// If this function succeeds, it returns the given SDL_AudioSpec,
/// filled with the audio data format of the wave data, and sets
/// \c *audio_buf to a malloc()'d buffer containing the audio data,
/// and sets \c *audio_len to the length of that audio buffer, in bytes.
/// You need to free the audio buffer with SDL_FreeWAV() when you are
/// done with it.
/// 
/// This function returns NULL and sets the SDL error message if the
/// wave file cannot be opened, uses an unknown data format, or is
/// corrupt.  Currently raw and MS-ADPCM WAVE files are supported.
/// 
/// ```c
/// extern DECLSPEC SDL_AudioSpec *SDLCALL SDL_LoadWAV_RW(SDL_RWops * src, int freesrc, SDL_AudioSpec * spec, Uint8 ** audio_buf, Uint32 * audio_len)
/// ```
Pointer<SDL_AudioSpec>? SDL_LoadWAV_RW(Pointer<SDL_RWops>? src, int freesrc, Pointer<SDL_AudioSpec>? spec, Pointer<Pointer<Uint8>>? audio_buf, Pointer<Uint32>? audio_len) {
  final _SDL_LoadWAV_RW = DLL_SDL2.lookupFunction<
      Pointer<SDL_AudioSpec>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Pointer<SDL_AudioSpec>? spec, Pointer<Pointer<Uint8>>? audio_buf, Pointer<Uint32>? audio_len),
      Pointer<SDL_AudioSpec>? Function(Pointer<SDL_RWops>? src, int freesrc, Pointer<SDL_AudioSpec>? spec, Pointer<Pointer<Uint8>>? audio_buf, Pointer<Uint32>? audio_len)>('SDL_LoadWAV_RW');
  return _SDL_LoadWAV_RW(src, freesrc, spec, audio_buf, audio_len);
}

/// 
/// This function frees data previously allocated with SDL_LoadWAV_RW()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeWAV(Uint8 * audio_buf)
/// ```
void SDL_FreeWAV(Pointer<Uint8>? audio_buf) {
  final _SDL_FreeWAV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? audio_buf),
      void Function(Pointer<Uint8>? audio_buf)>('SDL_FreeWAV');
  return _SDL_FreeWAV(audio_buf);
}

/// 
/// This function takes a source format and rate and a destination format
/// and rate, and initializes the \c cvt structure with information needed
/// by SDL_ConvertAudio() to convert a buffer of audio data from one format
/// to the other.
/// 
/// \return -1 if the format conversion is not supported, 0 if there's
/// no conversion needed, or 1 if the audio filter is set up.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_BuildAudioCVT(SDL_AudioCVT * cvt, SDL_AudioFormat src_format, Uint8 src_channels, int src_rate, SDL_AudioFormat dst_format, Uint8 dst_channels, int dst_rate)
/// ```
int SDL_BuildAudioCVT(Pointer<SDL_AudioCVT>? cvt, int src_format, int src_channels, int src_rate, int dst_format, int dst_channels, int dst_rate) {
  final _SDL_BuildAudioCVT = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_AudioCVT>? cvt, Uint16 src_format, Uint8 src_channels, Int32 src_rate, Uint16 dst_format, Uint8 dst_channels, Int32 dst_rate),
      int Function(Pointer<SDL_AudioCVT>? cvt, int src_format, int src_channels, int src_rate, int dst_format, int dst_channels, int dst_rate)>('SDL_BuildAudioCVT');
  return _SDL_BuildAudioCVT(cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate);
}

/// 
/// Once you have initialized the \c cvt structure using SDL_BuildAudioCVT(),
/// created an audio buffer \c cvt->buf, and filled it with \c cvt->len bytes of
/// audio data in the source format, this function will convert it in-place
/// to the desired format.
/// 
/// The data conversion may expand the size of the audio data, so the buffer
/// \c cvt->buf should be allocated after the \c cvt structure is initialized by
/// SDL_BuildAudioCVT(), and should be \c cvt->len*cvt->len_mult bytes long.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ConvertAudio(SDL_AudioCVT * cvt)
/// ```
int SDL_ConvertAudio(Pointer<SDL_AudioCVT>? cvt) {
  final _SDL_ConvertAudio = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_AudioCVT>? cvt),
      int Function(Pointer<SDL_AudioCVT>? cvt)>('SDL_ConvertAudio');
  return _SDL_ConvertAudio(cvt);
}

/// 
/// This takes two audio buffers of the playing audio format and mixes
/// them, performing addition, volume adjustment, and overflow clipping.
/// The volume ranges from 0 - 128, and should be set to ::SDL_MIX_MAXVOLUME
/// for full audio volume.  Note this does not change hardware volume.
/// This is provided for convenience -- you can mix your own audio data.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MixAudio(Uint8 * dst, const Uint8 * src, Uint32 len, int volume)
/// ```
void SDL_MixAudio(Pointer<Uint8>? dst, Pointer<Uint8>? src, int len, int volume) {
  final _SDL_MixAudio = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? dst, Pointer<Uint8>? src, Uint32 len, Int32 volume),
      void Function(Pointer<Uint8>? dst, Pointer<Uint8>? src, int len, int volume)>('SDL_MixAudio');
  return _SDL_MixAudio(dst, src, len, volume);
}

/// 
/// This works like SDL_MixAudio(), but you specify the audio format instead of
/// using the format of audio device 1. Thus it can be used when no audio
/// device is open at all.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MixAudioFormat(Uint8 * dst, const Uint8 * src, SDL_AudioFormat format, Uint32 len, int volume)
/// ```
void SDL_MixAudioFormat(Pointer<Uint8>? dst, Pointer<Uint8>? src, int format, int len, int volume) {
  final _SDL_MixAudioFormat = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? dst, Pointer<Uint8>? src, Uint16 format, Uint32 len, Int32 volume),
      void Function(Pointer<Uint8>? dst, Pointer<Uint8>? src, int format, int len, int volume)>('SDL_MixAudioFormat');
  return _SDL_MixAudioFormat(dst, src, format, len, volume);
}

/// @{
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockAudio(void)
/// ```
void SDL_LockAudio() {
  final _SDL_LockAudio = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LockAudio');
  return _SDL_LockAudio();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockAudioDevice(SDL_AudioDeviceID dev)
/// ```
void SDL_LockAudioDevice(int dev) {
  final _SDL_LockAudioDevice = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_LockAudioDevice');
  return _SDL_LockAudioDevice(dev);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockAudio(void)
/// ```
void SDL_UnlockAudio() {
  final _SDL_UnlockAudio = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnlockAudio');
  return _SDL_UnlockAudio();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockAudioDevice(SDL_AudioDeviceID dev)
/// ```
void SDL_UnlockAudioDevice(int dev) {
  final _SDL_UnlockAudioDevice = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_UnlockAudioDevice');
  return _SDL_UnlockAudioDevice(dev);
}

/// 
/// This function shuts down audio processing and closes the audio device.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_CloseAudio(void)
/// ```
void SDL_CloseAudio() {
  final _SDL_CloseAudio = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_CloseAudio');
  return _SDL_CloseAudio();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_CloseAudioDevice(SDL_AudioDeviceID dev)
/// ```
void SDL_CloseAudioDevice(int dev) {
  final _SDL_CloseAudioDevice = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_CloseAudioDevice');
  return _SDL_CloseAudioDevice(dev);
}

