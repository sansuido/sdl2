// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';

final _SDL2 = DynamicLibrary.open(Platform.isWindows ? 'SDL2.dll' : 'libSDL2.so');

/// 
/// This function initializes  the subsystems specified by \c flags
/// Unless the ::SDL_INIT_NOPARACHUTE flag is set, it will install cleanup
/// signal handlers for some commonly ignored fatal signals (like SIGSEGV).
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Init(Uint32 flags)
/// ```
int SDL_Init(int flags) {
  final _SDL_Init = _SDL2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_Init');
  return _SDL_Init(flags);
}
/// 
/// This function initializes specific SDL subsystems
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_InitSubSystem(Uint32 flags)
/// ```
int SDL_InitSubSystem(int flags) {
  final _SDL_InitSubSystem = _SDL2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_InitSubSystem');
  return _SDL_InitSubSystem(flags);
}
/// 
/// This function cleans up specific SDL subsystems
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_QuitSubSystem(Uint32 flags)
/// ```
void SDL_QuitSubSystem(int flags) {
  final _SDL_QuitSubSystem = _SDL2.lookupFunction<
      Void Function(Uint32 flags),
      void Function(int flags)>('SDL_QuitSubSystem');
  return _SDL_QuitSubSystem(flags);
}
/// 
/// This function returns a mask of the specified subsystems which have
/// previously been initialized.
/// 
/// If \c flags is 0, it returns a mask of all initialized subsystems.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_WasInit(Uint32 flags)
/// ```
int SDL_WasInit(int flags) {
  final _SDL_WasInit = _SDL2.lookupFunction<
      Uint32 Function(Uint32 flags),
      int Function(int flags)>('SDL_WasInit');
  return _SDL_WasInit(flags);
}
/// 
/// This function cleans up all initialized subsystems. You should
/// call it upon all exit conditions.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Quit(void)
/// ```
void SDL_Quit() {
  final _SDL_Quit = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_Quit');
  return _SDL_Quit();
}
/// Never call this directly. Use the SDL_assert* macros.
/// ```c
/// extern DECLSPEC SDL_assert_state SDLCALL SDL_ReportAssertion(SDL_assert_data *, const char *, const char *, int)
/// ```
int SDL_ReportAssertion(Pointer<SDL_assert_data>? arg0, String arg1, String arg2, int arg3) {
  final _SDL_ReportAssertion = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_assert_data>? arg0, Pointer<Utf8>? arg1, Pointer<Utf8>? arg2, Int32 arg3),
      int Function(Pointer<SDL_assert_data>? arg0, Pointer<Utf8>? arg1, Pointer<Utf8>? arg2, int arg3)>('SDL_ReportAssertion');
  final _arg1Pointer = arg1.toNativeUtf8();
  final _arg2Pointer = arg2.toNativeUtf8();
  final _result = _SDL_ReportAssertion(arg0, _arg1Pointer, _arg2Pointer, arg3);
  calloc.free(_arg1Pointer);
  calloc.free(_arg2Pointer);
  return _result;
}
/// 
/// \brief Set an application-defined assertion handler.
/// 
/// This allows an app to show its own assertion UI and/or force the
/// response to an assertion failure. If the app doesn't provide this, SDL
/// will try to do the right thing, popping up a system-specific GUI dialog,
/// and probably minimizing any fullscreen windows.
/// 
/// This callback may fire from any thread, but it runs wrapped in a mutex, so
/// it will only fire from one thread at a time.
/// 
/// Setting the callback to NULL restores SDL's original internal handler.
/// 
/// This callback is NOT reset to SDL's internal handler upon SDL_Quit()!
/// 
/// \return SDL_assert_state value of how to handle the assertion failure.
/// 
/// \param handler Callback function, called when an assertion fails.
/// \param userdata A pointer passed to the callback as-is.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetAssertionHandler( SDL_AssertionHandler handler, void *userdata)
/// ```
void SDL_SetAssertionHandler(Pointer<Void>? handler, Pointer<Void>? userdata) {
  final _SDL_SetAssertionHandler = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? handler, Pointer<Void>? userdata),
      void Function(Pointer<Void>? handler, Pointer<Void>? userdata)>('SDL_SetAssertionHandler');
  return _SDL_SetAssertionHandler(handler, userdata);
}
/// 
/// \brief Get a list of all assertion failures.
/// 
/// Get all assertions triggered since last call to SDL_ResetAssertionReport(),
/// or the start of the program.
/// 
/// The proper way to examine this data looks something like this:
/// 
/// <code>
/// const SDL_assert_data *item = SDL_GetAssertionReport();
/// while (item) {
/// printf("'%s', %s (%s:%d), triggered %u times, always ignore: %s.\n",
/// item->condition, item->function, item->filename,
/// item->linenum, item->trigger_count,
/// item->always_ignore ? "yes" : "no");
/// item = item->next;
/// }
/// </code>
/// 
/// \return List of all assertions.
/// \sa SDL_ResetAssertionReport
/// 
/// ```c
/// extern DECLSPEC const SDL_assert_data * SDLCALL SDL_GetAssertionReport(void)
/// ```
Pointer<SDL_assert_data>? SDL_GetAssertionReport() {
  final _SDL_GetAssertionReport = _SDL2.lookupFunction<
      Pointer<SDL_assert_data>? Function(),
      Pointer<SDL_assert_data>? Function()>('SDL_GetAssertionReport');
  return _SDL_GetAssertionReport();
}
/// 
/// \brief Reset the list of all assertion failures.
/// 
/// Reset list of all assertions triggered.
/// 
/// \sa SDL_GetAssertionReport
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ResetAssertionReport(void)
/// ```
void SDL_ResetAssertionReport() {
  final _SDL_ResetAssertionReport = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ResetAssertionReport');
  return _SDL_ResetAssertionReport();
}
/// 
/// \brief Try to lock a spin lock by setting it to a non-zero value.
/// 
/// \param lock Points to the lock.
/// 
/// \return SDL_TRUE if the lock succeeded, SDL_FALSE if the lock is already held.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicTryLock(SDL_SpinLock *lock)
/// ```
int SDL_AtomicTryLock(Pointer<Int32>? lock) {
  final _SDL_AtomicTryLock = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int32>? lock),
      int Function(Pointer<Int32>? lock)>('SDL_AtomicTryLock');
  return _SDL_AtomicTryLock(lock);
}
/// 
/// \brief Lock a spin lock by setting it to a non-zero value.
/// 
/// \param lock Points to the lock.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AtomicLock(SDL_SpinLock *lock)
/// ```
void SDL_AtomicLock(Pointer<Int32>? lock) {
  final _SDL_AtomicLock = _SDL2.lookupFunction<
      Void Function(Pointer<Int32>? lock),
      void Function(Pointer<Int32>? lock)>('SDL_AtomicLock');
  return _SDL_AtomicLock(lock);
}
/// 
/// \brief Unlock a spin lock by setting it to 0. Always returns immediately
/// 
/// \param lock Points to the lock.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AtomicUnlock(SDL_SpinLock *lock)
/// ```
void SDL_AtomicUnlock(Pointer<Int32>? lock) {
  final _SDL_AtomicUnlock = _SDL2.lookupFunction<
      Void Function(Pointer<Int32>? lock),
      void Function(Pointer<Int32>? lock)>('SDL_AtomicUnlock');
  return _SDL_AtomicUnlock(lock);
}
/// The mcr instruction isn't available in thumb mode, use real functions
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MemoryBarrierRelease()
/// ```
void SDL_MemoryBarrierRelease() {
  final _SDL_MemoryBarrierRelease = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_MemoryBarrierRelease');
  return _SDL_MemoryBarrierRelease();
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MemoryBarrierAcquire()
/// ```
void SDL_MemoryBarrierAcquire() {
  final _SDL_MemoryBarrierAcquire = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_MemoryBarrierAcquire');
  return _SDL_MemoryBarrierAcquire();
}
/// 
/// \brief Set an atomic variable to a new value if it is currently an old value.
/// 
/// \return SDL_TRUE if the atomic variable was set, SDL_FALSE otherwise.
/// 
/// \note If you don't know what this function is for, you shouldn't use it!
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCAS(SDL_atomic_t *a, int oldval, int newval)
/// ```
int SDL_AtomicCAS(Pointer<SDL_atomic_t>? a, int oldval, int newval) {
  final _SDL_AtomicCAS = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_atomic_t>? a, Int32 oldval, Int32 newval),
      int Function(Pointer<SDL_atomic_t>? a, int oldval, int newval)>('SDL_AtomicCAS');
  return _SDL_AtomicCAS(a, oldval, newval);
}
/// 
/// \brief Set a pointer to a new value if it is currently an old value.
/// 
/// \return SDL_TRUE if the pointer was set, SDL_FALSE otherwise.
/// 
/// \note If you don't know what this function is for, you shouldn't use it!
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCASPtr(void* *a, void *oldval, void *newval)
/// ```
int SDL_AtomicCASPtr(Pointer<Pointer<Void>>? a, Pointer<Void>? oldval, Pointer<Void>? newval) {
  final _SDL_AtomicCASPtr = _SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Void>>? a, Pointer<Void>? oldval, Pointer<Void>? newval),
      int Function(Pointer<Pointer<Void>>? a, Pointer<Void>? oldval, Pointer<Void>? newval)>('SDL_AtomicCASPtr');
  return _SDL_AtomicCASPtr(a, oldval, newval);
}
/// @{
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumAudioDrivers(void)
/// ```
int SDL_GetNumAudioDrivers() {
  final _SDL_GetNumAudioDrivers = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumAudioDrivers');
  return _SDL_GetNumAudioDrivers();
}
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetAudioDriver(int index)
/// ```
String SDL_GetAudioDriver(int index) {
  final _SDL_GetAudioDriver = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('SDL_GetAudioDriver');
  return _SDL_GetAudioDriver(index)!.toDartString();
}
/// @{
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioInit(const char *driver_name)
/// ```
int SDL_AudioInit(String driver_name) {
  final _SDL_AudioInit = _SDL2.lookupFunction<
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
  final _SDL_AudioQuit = _SDL2.lookupFunction<
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
  final _SDL_GetCurrentAudioDriver = _SDL2.lookupFunction<
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
  final _SDL_OpenAudio = _SDL2.lookupFunction<
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
  final _SDL_GetNumAudioDevices = _SDL2.lookupFunction<
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
  final _SDL_GetAudioDeviceName = _SDL2.lookupFunction<
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
  final _SDL_OpenAudioDevice = _SDL2.lookupFunction<
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
  final _SDL_GetAudioStatus = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetAudioStatus');
  return _SDL_GetAudioStatus();
}
/// ```c
/// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioDeviceStatus(SDL_AudioDeviceID dev)
/// ```
int SDL_GetAudioDeviceStatus(int dev) {
  final _SDL_GetAudioDeviceStatus = _SDL2.lookupFunction<
      Int32 Function(Uint32 dev),
      int Function(int dev)>('SDL_GetAudioDeviceStatus');
  return _SDL_GetAudioDeviceStatus(dev);
}
/// @{
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PauseAudio(int pause_on)
/// ```
void SDL_PauseAudio(int pause_on) {
  final _SDL_PauseAudio = _SDL2.lookupFunction<
      Void Function(Int32 pause_on),
      void Function(int pause_on)>('SDL_PauseAudio');
  return _SDL_PauseAudio(pause_on);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PauseAudioDevice(SDL_AudioDeviceID dev, int pause_on)
/// ```
void SDL_PauseAudioDevice(int dev, int pause_on) {
  final _SDL_PauseAudioDevice = _SDL2.lookupFunction<
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
  final _SDL_LoadWAV_RW = _SDL2.lookupFunction<
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
  final _SDL_FreeWAV = _SDL2.lookupFunction<
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
  final _SDL_BuildAudioCVT = _SDL2.lookupFunction<
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
  final _SDL_ConvertAudio = _SDL2.lookupFunction<
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
  final _SDL_MixAudio = _SDL2.lookupFunction<
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
  final _SDL_MixAudioFormat = _SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? dst, Pointer<Uint8>? src, Uint16 format, Uint32 len, Int32 volume),
      void Function(Pointer<Uint8>? dst, Pointer<Uint8>? src, int format, int len, int volume)>('SDL_MixAudioFormat');
  return _SDL_MixAudioFormat(dst, src, format, len, volume);
}
/// @{
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockAudio(void)
/// ```
void SDL_LockAudio() {
  final _SDL_LockAudio = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LockAudio');
  return _SDL_LockAudio();
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockAudioDevice(SDL_AudioDeviceID dev)
/// ```
void SDL_LockAudioDevice(int dev) {
  final _SDL_LockAudioDevice = _SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_LockAudioDevice');
  return _SDL_LockAudioDevice(dev);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockAudio(void)
/// ```
void SDL_UnlockAudio() {
  final _SDL_UnlockAudio = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnlockAudio');
  return _SDL_UnlockAudio();
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockAudioDevice(SDL_AudioDeviceID dev)
/// ```
void SDL_UnlockAudioDevice(int dev) {
  final _SDL_UnlockAudioDevice = _SDL2.lookupFunction<
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
  final _SDL_CloseAudio = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_CloseAudio');
  return _SDL_CloseAudio();
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_CloseAudioDevice(SDL_AudioDeviceID dev)
/// ```
void SDL_CloseAudioDevice(int dev) {
  final _SDL_CloseAudioDevice = _SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_CloseAudioDevice');
  return _SDL_CloseAudioDevice(dev);
}
/// 
/// \brief Put UTF-8 text into the clipboard
/// 
/// \sa SDL_GetClipboardText()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetClipboardText(const char *text)
/// ```
int SDL_SetClipboardText(String text) {
  final _SDL_SetClipboardText = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? text),
      int Function(Pointer<Utf8>? text)>('SDL_SetClipboardText');
  final _textPointer = text.toNativeUtf8();
  final _result = _SDL_SetClipboardText(_textPointer);
  calloc.free(_textPointer);
  return _result;
}
/// 
/// \brief Get UTF-8 text from the clipboard, which must be freed with SDL_free()
/// 
/// \sa SDL_SetClipboardText()
/// 
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GetClipboardText(void)
/// ```
Pointer<Int8>? SDL_GetClipboardText() {
  final _SDL_GetClipboardText = _SDL2.lookupFunction<
      Pointer<Int8>? Function(),
      Pointer<Int8>? Function()>('SDL_GetClipboardText');
  return _SDL_GetClipboardText();
}
/// 
/// \brief Returns a flag indicating whether the clipboard exists and contains a text string that is non-empty
/// 
/// \sa SDL_GetClipboardText()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasClipboardText(void)
/// ```
int SDL_HasClipboardText() {
  final _SDL_HasClipboardText = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasClipboardText');
  return _SDL_HasClipboardText();
}
/// 
/// This function returns the number of CPU cores available.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetCPUCount(void)
/// ```
int SDL_GetCPUCount() {
  final _SDL_GetCPUCount = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetCPUCount');
  return _SDL_GetCPUCount();
}
/// 
/// This function returns the L1 cache line size of the CPU
/// 
/// This is useful for determining multi-threaded structure padding
/// or SIMD prefetch sizes.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetCPUCacheLineSize(void)
/// ```
int SDL_GetCPUCacheLineSize() {
  final _SDL_GetCPUCacheLineSize = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetCPUCacheLineSize');
  return _SDL_GetCPUCacheLineSize();
}
/// 
/// This function returns true if the CPU has the RDTSC instruction.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasRDTSC(void)
/// ```
int SDL_HasRDTSC() {
  final _SDL_HasRDTSC = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasRDTSC');
  return _SDL_HasRDTSC();
}
/// 
/// This function returns true if the CPU has AltiVec features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasAltiVec(void)
/// ```
int SDL_HasAltiVec() {
  final _SDL_HasAltiVec = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasAltiVec');
  return _SDL_HasAltiVec();
}
/// 
/// This function returns true if the CPU has MMX features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasMMX(void)
/// ```
int SDL_HasMMX() {
  final _SDL_HasMMX = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasMMX');
  return _SDL_HasMMX();
}
/// 
/// This function returns true if the CPU has 3DNow! features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_Has3DNow(void)
/// ```
int SDL_Has3DNow() {
  final _SDL_Has3DNow = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_Has3DNow');
  return _SDL_Has3DNow();
}
/// 
/// This function returns true if the CPU has SSE features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE(void)
/// ```
int SDL_HasSSE() {
  final _SDL_HasSSE = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE');
  return _SDL_HasSSE();
}
/// 
/// This function returns true if the CPU has SSE2 features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE2(void)
/// ```
int SDL_HasSSE2() {
  final _SDL_HasSSE2 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE2');
  return _SDL_HasSSE2();
}
/// 
/// This function returns true if the CPU has SSE3 features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE3(void)
/// ```
int SDL_HasSSE3() {
  final _SDL_HasSSE3 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE3');
  return _SDL_HasSSE3();
}
/// 
/// This function returns true if the CPU has SSE4.1 features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE41(void)
/// ```
int SDL_HasSSE41() {
  final _SDL_HasSSE41 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE41');
  return _SDL_HasSSE41();
}
/// 
/// This function returns true if the CPU has SSE4.2 features.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE42(void)
/// ```
int SDL_HasSSE42() {
  final _SDL_HasSSE42 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE42');
  return _SDL_HasSSE42();
}
/// SDL_SetError() unconditionally returns -1.
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetError(const char *fmt, ...)
/// ```
int SDL_SetError(String fmt, Pointer<Void>? arg1) {
  final _SDL_SetError = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1),
      int Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1)>('SDL_SetError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_SetError(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetError(void)
/// ```
String SDL_GetError() {
  final _SDL_GetError = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetError');
  return _SDL_GetError()!.toDartString();
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearError(void)
/// ```
void SDL_ClearError() {
  final _SDL_ClearError = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearError');
  return _SDL_ClearError();
}
/// SDL_Error() unconditionally returns -1.
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Error(SDL_errorcode code)
/// ```
int SDL_Error(int code) {
  final _SDL_Error = _SDL2.lookupFunction<
      Int32 Function(Int32 code),
      int Function(int code)>('SDL_Error');
  return _SDL_Error(code);
}
/// 
/// Pumps the event loop, gathering events from the input devices.
/// 
/// This function updates the event queue and internal input device state.
/// 
/// This should only be run in the thread that sets the video mode.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PumpEvents(void)
/// ```
void SDL_PumpEvents() {
  final _SDL_PumpEvents = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_PumpEvents');
  return _SDL_PumpEvents();
}
/// 
/// Checks the event queue for messages and optionally returns them.
/// 
/// If \c action is ::SDL_ADDEVENT, up to \c numevents events will be added to
/// the back of the event queue.
/// 
/// If \c action is ::SDL_PEEKEVENT, up to \c numevents events at the front
/// of the event queue, within the specified minimum and maximum type,
/// will be returned and will not be removed from the queue.
/// 
/// If \c action is ::SDL_GETEVENT, up to \c numevents events at the front
/// of the event queue, within the specified minimum and maximum type,
/// will be returned and will be removed from the queue.
/// 
/// \return The number of events actually stored, or -1 if there was an error.
/// 
/// This function is thread-safe.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PeepEvents(SDL_Event * events, int numevents, SDL_eventaction action, Uint32 minType, Uint32 maxType)
/// ```
int SDL_PeepEvents(Pointer<SDL_Event>? events, int numevents, int action, int minType, int maxType) {
  final _SDL_PeepEvents = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? events, Int32 numevents, Int32 action, Uint32 minType, Uint32 maxType),
      int Function(Pointer<SDL_Event>? events, int numevents, int action, int minType, int maxType)>('SDL_PeepEvents');
  return _SDL_PeepEvents(events, numevents, action, minType, maxType);
}
/// 
/// Checks to see if certain event types are in the event queue.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasEvent(Uint32 type)
/// ```
int SDL_HasEvent(int type) {
  final _SDL_HasEvent = _SDL2.lookupFunction<
      Int32 Function(Uint32 type),
      int Function(int type)>('SDL_HasEvent');
  return _SDL_HasEvent(type);
}
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasEvents(Uint32 minType, Uint32 maxType)
/// ```
int SDL_HasEvents(int minType, int maxType) {
  final _SDL_HasEvents = _SDL2.lookupFunction<
      Int32 Function(Uint32 minType, Uint32 maxType),
      int Function(int minType, int maxType)>('SDL_HasEvents');
  return _SDL_HasEvents(minType, maxType);
}
/// 
/// This function clears events from the event queue
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FlushEvent(Uint32 type)
/// ```
void SDL_FlushEvent(int type) {
  final _SDL_FlushEvent = _SDL2.lookupFunction<
      Void Function(Uint32 type),
      void Function(int type)>('SDL_FlushEvent');
  return _SDL_FlushEvent(type);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FlushEvents(Uint32 minType, Uint32 maxType)
/// ```
void SDL_FlushEvents(int minType, int maxType) {
  final _SDL_FlushEvents = _SDL2.lookupFunction<
      Void Function(Uint32 minType, Uint32 maxType),
      void Function(int minType, int maxType)>('SDL_FlushEvents');
  return _SDL_FlushEvents(minType, maxType);
}
/// 
/// \brief Polls for currently pending events.
/// 
/// \return 1 if there are any pending events, or 0 if there are none available.
/// 
/// \param event If not NULL, the next event is removed from the queue and
/// stored in that area.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PollEvent(SDL_Event * event)
/// ```
int SDL_PollEvent(Pointer<SDL_Event>? event) {
  final _SDL_PollEvent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event),
      int Function(Pointer<SDL_Event>? event)>('SDL_PollEvent');
  return _SDL_PollEvent(event);
}
/// 
/// \brief Waits indefinitely for the next available event.
/// 
/// \return 1, or 0 if there was an error while waiting for events.
/// 
/// \param event If not NULL, the next event is removed from the queue and
/// stored in that area.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_WaitEvent(SDL_Event * event)
/// ```
int SDL_WaitEvent(Pointer<SDL_Event>? event) {
  final _SDL_WaitEvent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event),
      int Function(Pointer<SDL_Event>? event)>('SDL_WaitEvent');
  return _SDL_WaitEvent(event);
}
/// 
/// \brief Waits until the specified timeout (in milliseconds) for the next
/// available event.
/// 
/// \return 1, or 0 if there was an error while waiting for events.
/// 
/// \param event If not NULL, the next event is removed from the queue and
/// stored in that area.
/// \param timeout The timeout (in milliseconds) to wait for next event.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_WaitEventTimeout(SDL_Event * event, int timeout)
/// ```
int SDL_WaitEventTimeout(Pointer<SDL_Event>? event, int timeout) {
  final _SDL_WaitEventTimeout = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event, Int32 timeout),
      int Function(Pointer<SDL_Event>? event, int timeout)>('SDL_WaitEventTimeout');
  return _SDL_WaitEventTimeout(event, timeout);
}
/// 
/// \brief Add an event to the event queue.
/// 
/// \return 1 on success, 0 if the event was filtered, or -1 if the event queue
/// was full or there was some other error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PushEvent(SDL_Event * event)
/// ```
int SDL_PushEvent(Pointer<SDL_Event>? event) {
  final _SDL_PushEvent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event),
      int Function(Pointer<SDL_Event>? event)>('SDL_PushEvent');
  return _SDL_PushEvent(event);
}
/// 
/// Sets up a filter to process all events before they change internal state and
/// are posted to the internal event queue.
/// 
/// The filter is prototyped as:
/// \code
/// int SDL_EventFilter(void *userdata, SDL_Event * event);
/// \endcode
/// 
/// If the filter returns 1, then the event will be added to the internal queue.
/// If it returns 0, then the event will be dropped from the queue, but the
/// internal state will still be updated.  This allows selective filtering of
/// dynamically arriving events.
/// 
/// \warning  Be very careful of what you do in the event filter function, as
/// it may run in a different thread!
/// 
/// There is one caveat when dealing with the ::SDL_QuitEvent event type.  The
/// event filter is only called when the window manager desires to close the
/// application window.  If the event filter returns 1, then the window will
/// be closed, otherwise the window will remain open if possible.
/// 
/// If the quit event is generated by an interrupt signal, it will bypass the
/// internal queue and be delivered to the application at the next event poll.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetEventFilter(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_SetEventFilter(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_SetEventFilter = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_SetEventFilter');
  return _SDL_SetEventFilter(filter, userdata);
}
/// 
/// Return the current event filter - can be used to "chain" filters.
/// If there is no event filter set, this function returns SDL_FALSE.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetEventFilter(SDL_EventFilter * filter, void **userdata)
/// ```
int SDL_GetEventFilter(Pointer<Pointer<Void>>? filter, Pointer<Pointer<Void>>? userdata) {
  final _SDL_GetEventFilter = _SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Void>>? filter, Pointer<Pointer<Void>>? userdata),
      int Function(Pointer<Pointer<Void>>? filter, Pointer<Pointer<Void>>? userdata)>('SDL_GetEventFilter');
  return _SDL_GetEventFilter(filter, userdata);
}
/// 
/// Add a function which is called when an event is added to the queue.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AddEventWatch(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_AddEventWatch(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_AddEventWatch = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_AddEventWatch');
  return _SDL_AddEventWatch(filter, userdata);
}
/// 
/// Remove an event watch function added with SDL_AddEventWatch()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DelEventWatch(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_DelEventWatch(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_DelEventWatch = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_DelEventWatch');
  return _SDL_DelEventWatch(filter, userdata);
}
/// 
/// Run the filter function on the current event queue, removing any
/// events for which the filter returns 0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FilterEvents(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_FilterEvents(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_FilterEvents = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_FilterEvents');
  return _SDL_FilterEvents(filter, userdata);
}
/// 
/// This function allows you to set the state of processing certain events.
/// - If \c state is set to ::SDL_IGNORE, that event will be automatically
/// dropped from the event queue and will not event be filtered.
/// - If \c state is set to ::SDL_ENABLE, that event will be processed
/// normally.
/// - If \c state is set to ::SDL_QUERY, SDL_EventState() will return the
/// current processing state of the specified event.
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_EventState(Uint32 type, int state)
/// ```
int SDL_EventState(int type, int state) {
  final _SDL_EventState = _SDL2.lookupFunction<
      Uint8 Function(Uint32 type, Int32 state),
      int Function(int type, int state)>('SDL_EventState');
  return _SDL_EventState(type, state);
}
/// 
/// This function allocates a set of user-defined events, and returns
/// the beginning event number for that set of events.
/// 
/// If there aren't enough user-defined events left, this function
/// returns (Uint32)-1
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_RegisterEvents(int numevents)
/// ```
int SDL_RegisterEvents(int numevents) {
  final _SDL_RegisterEvents = _SDL2.lookupFunction<
      Uint32 Function(Int32 numevents),
      int Function(int numevents)>('SDL_RegisterEvents');
  return _SDL_RegisterEvents(numevents);
}
/// 
/// Add or update an existing mapping configuration
/// 
/// \return 1 if mapping is added, 0 if updated, -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerAddMapping( const char* mappingString )
/// ```
int SDL_GameControllerAddMapping(String mappingString) {
  final _SDL_GameControllerAddMapping = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? mappingString),
      int Function(Pointer<Utf8>? mappingString)>('SDL_GameControllerAddMapping');
  final _mappingStringPointer = mappingString.toNativeUtf8();
  final _result = _SDL_GameControllerAddMapping(_mappingStringPointer);
  calloc.free(_mappingStringPointer);
  return _result;
}
/// 
/// Get a mapping string for a GUID
/// 
/// \return the mapping string.  Must be freed with SDL_free.  Returns NULL if no mapping is available
/// 
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMappingForGUID( SDL_JoystickGUID guid )
/// ```
Pointer<Int8>? SDL_GameControllerMappingForGUID(Pointer<Void>? guid) {
  final _SDL_GameControllerMappingForGUID = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Void>? guid),
      Pointer<Int8>? Function(Pointer<Void>? guid)>('SDL_GameControllerMappingForGUID');
  return _SDL_GameControllerMappingForGUID(guid);
}
/// 
/// Get a mapping string for an open GameController
/// 
/// \return the mapping string.  Must be freed with SDL_free.  Returns NULL if no mapping is available
/// 
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GameControllerMapping( SDL_GameController * gamecontroller )
/// ```
Pointer<Int8>? SDL_GameControllerMapping(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerMapping = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<SDL_GameController>? gamecontroller),
      Pointer<Int8>? Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerMapping');
  return _SDL_GameControllerMapping(gamecontroller);
}
/// 
/// Is the joystick on this index supported by the game controller interface?
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsGameController(int joystick_index)
/// ```
int SDL_IsGameController(int joystick_index) {
  final _SDL_IsGameController = _SDL2.lookupFunction<
      Int32 Function(Int32 joystick_index),
      int Function(int joystick_index)>('SDL_IsGameController');
  return _SDL_IsGameController(joystick_index);
}
/// 
/// Get the implementation dependent name of a game controller.
/// This can be called before any controllers are opened.
/// If no name can be found, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerNameForIndex(int joystick_index)
/// ```
String SDL_GameControllerNameForIndex(int joystick_index) {
  final _SDL_GameControllerNameForIndex = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 joystick_index),
      Pointer<Utf8>? Function(int joystick_index)>('SDL_GameControllerNameForIndex');
  return _SDL_GameControllerNameForIndex(joystick_index)!.toDartString();
}
/// 
/// Open a game controller for use.
/// The index passed as an argument refers to the N'th game controller on the system.
/// This index is the value which will identify this controller in future controller
/// events.
/// 
/// \return A controller identifier, or NULL if an error occurred.
/// 
/// ```c
/// extern DECLSPEC SDL_GameController *SDLCALL SDL_GameControllerOpen(int joystick_index)
/// ```
Pointer<SDL_GameController>? SDL_GameControllerOpen(int joystick_index) {
  final _SDL_GameControllerOpen = _SDL2.lookupFunction<
      Pointer<SDL_GameController>? Function(Int32 joystick_index),
      Pointer<SDL_GameController>? Function(int joystick_index)>('SDL_GameControllerOpen');
  return _SDL_GameControllerOpen(joystick_index);
}
/// 
/// Return the name for this currently opened controller
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GameControllerName(SDL_GameController *gamecontroller)
/// ```
String SDL_GameControllerName(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_GameController>? gamecontroller),
      Pointer<Utf8>? Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerName');
  return _SDL_GameControllerName(gamecontroller)!.toDartString();
}
/// 
/// Returns SDL_TRUE if the controller has been opened and currently connected,
/// or SDL_FALSE if it has not.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerGetAttached(SDL_GameController *gamecontroller)
/// ```
int SDL_GameControllerGetAttached(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerGetAttached = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_GameController>? gamecontroller),
      int Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerGetAttached');
  return _SDL_GameControllerGetAttached(gamecontroller);
}
/// 
/// Get the underlying joystick object used by a controller
/// 
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_GameControllerGetJoystick(SDL_GameController *gamecontroller)
/// ```
Pointer<SDL_Joystick>? SDL_GameControllerGetJoystick(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerGetJoystick = _SDL2.lookupFunction<
      Pointer<SDL_Joystick>? Function(Pointer<SDL_GameController>? gamecontroller),
      Pointer<SDL_Joystick>? Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerGetJoystick');
  return _SDL_GameControllerGetJoystick(gamecontroller);
}
/// 
/// Enable/disable controller event polling.
/// 
/// If controller events are disabled, you must call SDL_GameControllerUpdate()
/// yourself and check the state of the controller when you want controller
/// information.
/// 
/// The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GameControllerEventState(int state)
/// ```
int SDL_GameControllerEventState(int state) {
  final _SDL_GameControllerEventState = _SDL2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_GameControllerEventState');
  return _SDL_GameControllerEventState(state);
}
/// 
/// Update the current state of the open game controllers.
/// 
/// This is called automatically by the event loop if any game controller
/// events are enabled.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerUpdate(void)
/// ```
void SDL_GameControllerUpdate() {
  final _SDL_GameControllerUpdate = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GameControllerUpdate');
  return _SDL_GameControllerUpdate();
}
/// 
/// turn this string into a axis mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerAxis SDLCALL SDL_GameControllerGetAxisFromString(const char *pchString)
/// ```
int SDL_GameControllerGetAxisFromString(String pchString) {
  final _SDL_GameControllerGetAxisFromString = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? pchString),
      int Function(Pointer<Utf8>? pchString)>('SDL_GameControllerGetAxisFromString');
  final _pchStringPointer = pchString.toNativeUtf8();
  final _result = _SDL_GameControllerGetAxisFromString(_pchStringPointer);
  calloc.free(_pchStringPointer);
  return _result;
}
/// 
/// turn this axis enum into a string mapping
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForAxis(SDL_GameControllerAxis axis)
/// ```
String SDL_GameControllerGetStringForAxis(int axis) {
  final _SDL_GameControllerGetStringForAxis = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 axis),
      Pointer<Utf8>? Function(int axis)>('SDL_GameControllerGetStringForAxis');
  return _SDL_GameControllerGetStringForAxis(axis)!.toDartString();
}
/// 
/// Get the SDL joystick layer binding for this controller button mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
Pointer<Void>? SDL_GameControllerGetBindForAxis(Pointer<SDL_GameController>? gamecontroller, int axis) {
  final _SDL_GameControllerGetBindForAxis = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, Int32 axis),
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, int axis)>('SDL_GameControllerGetBindForAxis');
  return _SDL_GameControllerGetBindForAxis(gamecontroller, axis);
}
/// 
/// Get the current state of an axis control on a game controller.
/// 
/// The state is a value ranging from -32768 to 32767.
/// 
/// The axis indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Sint16 SDLCALL SDL_GameControllerGetAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
/// ```
int SDL_GameControllerGetAxis(Pointer<SDL_GameController>? gamecontroller, int axis) {
  final _SDL_GameControllerGetAxis = _SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_GameController>? gamecontroller, Int32 axis),
      int Function(Pointer<SDL_GameController>? gamecontroller, int axis)>('SDL_GameControllerGetAxis');
  return _SDL_GameControllerGetAxis(gamecontroller, axis);
}
/// 
/// turn this string into a button mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerButton SDLCALL SDL_GameControllerGetButtonFromString(const char *pchString)
/// ```
int SDL_GameControllerGetButtonFromString(String pchString) {
  final _SDL_GameControllerGetButtonFromString = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? pchString),
      int Function(Pointer<Utf8>? pchString)>('SDL_GameControllerGetButtonFromString');
  final _pchStringPointer = pchString.toNativeUtf8();
  final _result = _SDL_GameControllerGetButtonFromString(_pchStringPointer);
  calloc.free(_pchStringPointer);
  return _result;
}
/// 
/// turn this button enum into a string mapping
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForButton(SDL_GameControllerButton button)
/// ```
String SDL_GameControllerGetStringForButton(int button) {
  final _SDL_GameControllerGetStringForButton = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 button),
      Pointer<Utf8>? Function(int button)>('SDL_GameControllerGetStringForButton');
  return _SDL_GameControllerGetStringForButton(button)!.toDartString();
}
/// 
/// Get the SDL joystick layer binding for this controller button mapping
/// 
/// ```c
/// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
Pointer<Void>? SDL_GameControllerGetBindForButton(Pointer<SDL_GameController>? gamecontroller, int button) {
  final _SDL_GameControllerGetBindForButton = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, Int32 button),
      Pointer<Void>? Function(Pointer<SDL_GameController>? gamecontroller, int button)>('SDL_GameControllerGetBindForButton');
  return _SDL_GameControllerGetBindForButton(gamecontroller, button);
}
/// 
/// Get the current state of a button on a game controller.
/// 
/// The button indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_GameControllerGetButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
/// ```
int SDL_GameControllerGetButton(Pointer<SDL_GameController>? gamecontroller, int button) {
  final _SDL_GameControllerGetButton = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_GameController>? gamecontroller, Int32 button),
      int Function(Pointer<SDL_GameController>? gamecontroller, int button)>('SDL_GameControllerGetButton');
  return _SDL_GameControllerGetButton(gamecontroller, button);
}
/// 
/// Close a controller previously opened with SDL_GameControllerOpen().
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GameControllerClose(SDL_GameController *gamecontroller)
/// ```
void SDL_GameControllerClose(Pointer<SDL_GameController>? gamecontroller) {
  final _SDL_GameControllerClose = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_GameController>? gamecontroller),
      void Function(Pointer<SDL_GameController>? gamecontroller)>('SDL_GameControllerClose');
  return _SDL_GameControllerClose(gamecontroller);
}
/// 
/// \brief Begin Recording a gesture on the specified touch, or all touches (-1)
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RecordGesture(SDL_TouchID touchId)
/// ```
int SDL_RecordGesture(int touchId) {
  final _SDL_RecordGesture = _SDL2.lookupFunction<
      Int32 Function(Int64 touchId),
      int Function(int touchId)>('SDL_RecordGesture');
  return _SDL_RecordGesture(touchId);
}
/// 
/// \brief Save all currently loaded Dollar Gesture templates
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveAllDollarTemplates(SDL_RWops *src)
/// ```
int SDL_SaveAllDollarTemplates(Pointer<SDL_RWops>? src) {
  final _SDL_SaveAllDollarTemplates = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_SaveAllDollarTemplates');
  return _SDL_SaveAllDollarTemplates(src);
}
/// 
/// \brief Save a currently loaded Dollar Gesture template
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveDollarTemplate(SDL_GestureID gestureId,SDL_RWops *src)
/// ```
int SDL_SaveDollarTemplate(int gestureId, Pointer<SDL_RWops>? src) {
  final _SDL_SaveDollarTemplate = _SDL2.lookupFunction<
      Int32 Function(Int64 gestureId, Pointer<SDL_RWops>? src),
      int Function(int gestureId, Pointer<SDL_RWops>? src)>('SDL_SaveDollarTemplate');
  return _SDL_SaveDollarTemplate(gestureId, src);
}
/// 
/// \brief Load Dollar Gesture templates from a file
/// 
/// 
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LoadDollarTemplates(SDL_TouchID touchId, SDL_RWops *src)
/// ```
int SDL_LoadDollarTemplates(int touchId, Pointer<SDL_RWops>? src) {
  final _SDL_LoadDollarTemplates = _SDL2.lookupFunction<
      Int32 Function(Int64 touchId, Pointer<SDL_RWops>? src),
      int Function(int touchId, Pointer<SDL_RWops>? src)>('SDL_LoadDollarTemplates');
  return _SDL_LoadDollarTemplates(touchId, src);
}
/// 
/// \brief Count the number of haptic devices attached to the system.
/// 
/// \return Number of haptic devices detected on the system.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumHaptics(void)
/// ```
int SDL_NumHaptics() {
  final _SDL_NumHaptics = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumHaptics');
  return _SDL_NumHaptics();
}
/// 
/// \brief Get the implementation dependent name of a Haptic device.
/// 
/// This can be called before any joysticks are opened.
/// If no name can be found, this function returns NULL.
/// 
/// \param device_index Index of the device to get its name.
/// \return Name of the device or NULL on error.
/// 
/// \sa SDL_NumHaptics
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_HapticName(int device_index)
/// ```
String SDL_HapticName(int device_index) {
  final _SDL_HapticName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 device_index),
      Pointer<Utf8>? Function(int device_index)>('SDL_HapticName');
  return _SDL_HapticName(device_index)!.toDartString();
}
/// 
/// \brief Opens a Haptic device for usage.
/// 
/// The index passed as an argument refers to the N'th Haptic device on this
/// system.
/// 
/// When opening a haptic device, its gain will be set to maximum and
/// autocenter will be disabled.  To modify these values use
/// SDL_HapticSetGain() and SDL_HapticSetAutocenter().
/// 
/// \param device_index Index of the device to open.
/// \return Device identifier or NULL on error.
/// 
/// \sa SDL_HapticIndex
/// \sa SDL_HapticOpenFromMouse
/// \sa SDL_HapticOpenFromJoystick
/// \sa SDL_HapticClose
/// \sa SDL_HapticSetGain
/// \sa SDL_HapticSetAutocenter
/// \sa SDL_HapticPause
/// \sa SDL_HapticStopAll
/// 
/// ```c
/// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpen(int device_index)
/// ```
Pointer<SDL_Haptic>? SDL_HapticOpen(int device_index) {
  final _SDL_HapticOpen = _SDL2.lookupFunction<
      Pointer<SDL_Haptic>? Function(Int32 device_index),
      Pointer<SDL_Haptic>? Function(int device_index)>('SDL_HapticOpen');
  return _SDL_HapticOpen(device_index);
}
/// 
/// \brief Checks if the haptic device at index has been opened.
/// 
/// \param device_index Index to check to see if it has been opened.
/// \return 1 if it has been opened or 0 if it hasn't.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_HapticIndex
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticOpened(int device_index)
/// ```
int SDL_HapticOpened(int device_index) {
  final _SDL_HapticOpened = _SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_HapticOpened');
  return _SDL_HapticOpened(device_index);
}
/// 
/// \brief Gets the index of a haptic device.
/// 
/// \param haptic Haptic device to get the index of.
/// \return The index of the haptic device or -1 on error.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_HapticOpened
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticIndex(SDL_Haptic * haptic)
/// ```
int SDL_HapticIndex(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticIndex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticIndex');
  return _SDL_HapticIndex(haptic);
}
/// 
/// \brief Gets whether or not the current mouse has haptic capabilities.
/// 
/// \return SDL_TRUE if the mouse is haptic, SDL_FALSE if it isn't.
/// 
/// \sa SDL_HapticOpenFromMouse
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_MouseIsHaptic(void)
/// ```
int SDL_MouseIsHaptic() {
  final _SDL_MouseIsHaptic = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_MouseIsHaptic');
  return _SDL_MouseIsHaptic();
}
/// 
/// \brief Tries to open a haptic device from the current mouse.
/// 
/// \return The haptic device identifier or NULL on error.
/// 
/// \sa SDL_MouseIsHaptic
/// \sa SDL_HapticOpen
/// 
/// ```c
/// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpenFromMouse(void)
/// ```
Pointer<SDL_Haptic>? SDL_HapticOpenFromMouse() {
  final _SDL_HapticOpenFromMouse = _SDL2.lookupFunction<
      Pointer<SDL_Haptic>? Function(),
      Pointer<SDL_Haptic>? Function()>('SDL_HapticOpenFromMouse');
  return _SDL_HapticOpenFromMouse();
}
/// 
/// \brief Checks to see if a joystick has haptic features.
/// 
/// \param joystick Joystick to test for haptic capabilities.
/// \return 1 if the joystick is haptic, 0 if it isn't
/// or -1 if an error ocurred.
/// 
/// \sa SDL_HapticOpenFromJoystick
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickIsHaptic(SDL_Joystick * joystick)
/// ```
int SDL_JoystickIsHaptic(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickIsHaptic = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickIsHaptic');
  return _SDL_JoystickIsHaptic(joystick);
}
/// 
/// \brief Opens a Haptic device for usage from a Joystick device.
/// 
/// You must still close the haptic device seperately.  It will not be closed
/// with the joystick.
/// 
/// When opening from a joystick you should first close the haptic device before
/// closing the joystick device.  If not, on some implementations the haptic
/// device will also get unallocated and you'll be unable to use force feedback
/// on that device.
/// 
/// \param joystick Joystick to create a haptic device from.
/// \return A valid haptic device identifier on success or NULL on error.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_HapticClose
/// 
/// ```c
/// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpenFromJoystick(SDL_Joystick * joystick)
/// ```
Pointer<SDL_Haptic>? SDL_HapticOpenFromJoystick(Pointer<SDL_Joystick>? joystick) {
  final _SDL_HapticOpenFromJoystick = _SDL2.lookupFunction<
      Pointer<SDL_Haptic>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<SDL_Haptic>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_HapticOpenFromJoystick');
  return _SDL_HapticOpenFromJoystick(joystick);
}
/// 
/// \brief Closes a Haptic device previously opened with SDL_HapticOpen().
/// 
/// \param haptic Haptic device to close.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_HapticClose(SDL_Haptic * haptic)
/// ```
void SDL_HapticClose(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticClose = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Haptic>? haptic),
      void Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticClose');
  return _SDL_HapticClose(haptic);
}
/// 
/// \brief Returns the number of effects a haptic device can store.
/// 
/// On some platforms this isn't fully supported, and therefore is an
/// approximation.  Always check to see if your created effect was actually
/// created and do not rely solely on SDL_HapticNumEffects().
/// 
/// \param haptic The haptic device to query effect max.
/// \return The number of effects the haptic device can store or
/// -1 on error.
/// 
/// \sa SDL_HapticNumEffectsPlaying
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNumEffects(SDL_Haptic * haptic)
/// ```
int SDL_HapticNumEffects(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticNumEffects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticNumEffects');
  return _SDL_HapticNumEffects(haptic);
}
/// 
/// \brief Returns the number of effects a haptic device can play at the same
/// time.
/// 
/// This is not supported on all platforms, but will always return a value.
/// Added here for the sake of completeness.
/// 
/// \param haptic The haptic device to query maximum playing effects.
/// \return The number of effects the haptic device can play at the same time
/// or -1 on error.
/// 
/// \sa SDL_HapticNumEffects
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNumEffectsPlaying(SDL_Haptic * haptic)
/// ```
int SDL_HapticNumEffectsPlaying(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticNumEffectsPlaying = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticNumEffectsPlaying');
  return _SDL_HapticNumEffectsPlaying(haptic);
}
/// 
/// \brief Gets the haptic devices supported features in bitwise matter.
/// 
/// Example:
/// \code
/// if (SDL_HapticQuery(haptic) & SDL_HAPTIC_CONSTANT) {
/// printf("We have constant haptic effect!");
/// }
/// \endcode
/// 
/// \param haptic The haptic device to query.
/// \return Haptic features in bitwise manner (OR'd).
/// 
/// \sa SDL_HapticNumEffects
/// \sa SDL_HapticEffectSupported
/// 
/// ```c
/// extern DECLSPEC unsigned int SDLCALL SDL_HapticQuery(SDL_Haptic * haptic)
/// ```
int SDL_HapticQuery(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticQuery = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticQuery');
  return _SDL_HapticQuery(haptic);
}
/// 
/// \brief Gets the number of haptic axes the device has.
/// 
/// \sa SDL_HapticDirection
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNumAxes(SDL_Haptic * haptic)
/// ```
int SDL_HapticNumAxes(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticNumAxes = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticNumAxes');
  return _SDL_HapticNumAxes(haptic);
}
/// 
/// \brief Checks to see if effect is supported by haptic.
/// 
/// \param haptic Haptic device to check on.
/// \param effect Effect to check to see if it is supported.
/// \return SDL_TRUE if effect is supported, SDL_FALSE if it isn't or -1 on error.
/// 
/// \sa SDL_HapticQuery
/// \sa SDL_HapticNewEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticEffectSupported(SDL_Haptic * haptic, SDL_HapticEffect * effect)
/// ```
int SDL_HapticEffectSupported(Pointer<SDL_Haptic>? haptic, Pointer<SDL_HapticEffect>? effect) {
  final _SDL_HapticEffectSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Pointer<SDL_HapticEffect>? effect),
      int Function(Pointer<SDL_Haptic>? haptic, Pointer<SDL_HapticEffect>? effect)>('SDL_HapticEffectSupported');
  return _SDL_HapticEffectSupported(haptic, effect);
}
/// 
/// \brief Creates a new haptic effect on the device.
/// 
/// \param haptic Haptic device to create the effect on.
/// \param effect Properties of the effect to create.
/// \return The id of the effect on success or -1 on error.
/// 
/// \sa SDL_HapticUpdateEffect
/// \sa SDL_HapticRunEffect
/// \sa SDL_HapticDestroyEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNewEffect(SDL_Haptic * haptic, SDL_HapticEffect * effect)
/// ```
int SDL_HapticNewEffect(Pointer<SDL_Haptic>? haptic, Pointer<SDL_HapticEffect>? effect) {
  final _SDL_HapticNewEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Pointer<SDL_HapticEffect>? effect),
      int Function(Pointer<SDL_Haptic>? haptic, Pointer<SDL_HapticEffect>? effect)>('SDL_HapticNewEffect');
  return _SDL_HapticNewEffect(haptic, effect);
}
/// 
/// \brief Updates the properties of an effect.
/// 
/// Can be used dynamically, although behaviour when dynamically changing
/// direction may be strange.  Specifically the effect may reupload itself
/// and start playing from the start.  You cannot change the type either when
/// running SDL_HapticUpdateEffect().
/// 
/// \param haptic Haptic device that has the effect.
/// \param effect Effect to update.
/// \param data New effect properties to use.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticNewEffect
/// \sa SDL_HapticRunEffect
/// \sa SDL_HapticDestroyEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticUpdateEffect(SDL_Haptic * haptic, int effect, SDL_HapticEffect * data)
/// ```
int SDL_HapticUpdateEffect(Pointer<SDL_Haptic>? haptic, int effect, Pointer<SDL_HapticEffect>? data) {
  final _SDL_HapticUpdateEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Int32 effect, Pointer<SDL_HapticEffect>? data),
      int Function(Pointer<SDL_Haptic>? haptic, int effect, Pointer<SDL_HapticEffect>? data)>('SDL_HapticUpdateEffect');
  return _SDL_HapticUpdateEffect(haptic, effect, data);
}
/// 
/// \brief Runs the haptic effect on its associated haptic device.
/// 
/// If iterations are ::SDL_HAPTIC_INFINITY, it'll run the effect over and over
/// repeating the envelope (attack and fade) every time.  If you only want the
/// effect to last forever, set ::SDL_HAPTIC_INFINITY in the effect's length
/// parameter.
/// 
/// \param haptic Haptic device to run the effect on.
/// \param effect Identifier of the haptic effect to run.
/// \param iterations Number of iterations to run the effect. Use
/// ::SDL_HAPTIC_INFINITY for infinity.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticStopEffect
/// \sa SDL_HapticDestroyEffect
/// \sa SDL_HapticGetEffectStatus
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRunEffect(SDL_Haptic * haptic, int effect, Uint32 iterations)
/// ```
int SDL_HapticRunEffect(Pointer<SDL_Haptic>? haptic, int effect, int iterations) {
  final _SDL_HapticRunEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Int32 effect, Uint32 iterations),
      int Function(Pointer<SDL_Haptic>? haptic, int effect, int iterations)>('SDL_HapticRunEffect');
  return _SDL_HapticRunEffect(haptic, effect, iterations);
}
/// 
/// \brief Stops the haptic effect on its associated haptic device.
/// 
/// \param haptic Haptic device to stop the effect on.
/// \param effect Identifier of the effect to stop.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticRunEffect
/// \sa SDL_HapticDestroyEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticStopEffect(SDL_Haptic * haptic, int effect)
/// ```
int SDL_HapticStopEffect(Pointer<SDL_Haptic>? haptic, int effect) {
  final _SDL_HapticStopEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Int32 effect),
      int Function(Pointer<SDL_Haptic>? haptic, int effect)>('SDL_HapticStopEffect');
  return _SDL_HapticStopEffect(haptic, effect);
}
/// 
/// \brief Destroys a haptic effect on the device.
/// 
/// This will stop the effect if it's running.  Effects are automatically
/// destroyed when the device is closed.
/// 
/// \param haptic Device to destroy the effect on.
/// \param effect Identifier of the effect to destroy.
/// 
/// \sa SDL_HapticNewEffect
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_HapticDestroyEffect(SDL_Haptic * haptic, int effect)
/// ```
void SDL_HapticDestroyEffect(Pointer<SDL_Haptic>? haptic, int effect) {
  final _SDL_HapticDestroyEffect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Haptic>? haptic, Int32 effect),
      void Function(Pointer<SDL_Haptic>? haptic, int effect)>('SDL_HapticDestroyEffect');
  return _SDL_HapticDestroyEffect(haptic, effect);
}
/// 
/// \brief Gets the status of the current effect on the haptic device.
/// 
/// Device must support the ::SDL_HAPTIC_STATUS feature.
/// 
/// \param haptic Haptic device to query the effect status on.
/// \param effect Identifier of the effect to query its status.
/// \return 0 if it isn't playing, 1 if it is playing or -1 on error.
/// 
/// \sa SDL_HapticRunEffect
/// \sa SDL_HapticStopEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticGetEffectStatus(SDL_Haptic * haptic, int effect)
/// ```
int SDL_HapticGetEffectStatus(Pointer<SDL_Haptic>? haptic, int effect) {
  final _SDL_HapticGetEffectStatus = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Int32 effect),
      int Function(Pointer<SDL_Haptic>? haptic, int effect)>('SDL_HapticGetEffectStatus');
  return _SDL_HapticGetEffectStatus(haptic, effect);
}
/// 
/// \brief Sets the global gain of the device.
/// 
/// Device must support the ::SDL_HAPTIC_GAIN feature.
/// 
/// The user may specify the maximum gain by setting the environment variable
/// SDL_HAPTIC_GAIN_MAX which should be between 0 and 100.  All calls to
/// SDL_HapticSetGain() will scale linearly using SDL_HAPTIC_GAIN_MAX as the
/// maximum.
/// 
/// \param haptic Haptic device to set the gain on.
/// \param gain Value to set the gain to, should be between 0 and 100.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticSetGain(SDL_Haptic * haptic, int gain)
/// ```
int SDL_HapticSetGain(Pointer<SDL_Haptic>? haptic, int gain) {
  final _SDL_HapticSetGain = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Int32 gain),
      int Function(Pointer<SDL_Haptic>? haptic, int gain)>('SDL_HapticSetGain');
  return _SDL_HapticSetGain(haptic, gain);
}
/// 
/// \brief Sets the global autocenter of the device.
/// 
/// Autocenter should be between 0 and 100.  Setting it to 0 will disable
/// autocentering.
/// 
/// Device must support the ::SDL_HAPTIC_AUTOCENTER feature.
/// 
/// \param haptic Haptic device to set autocentering on.
/// \param autocenter Value to set autocenter to, 0 disables autocentering.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticSetAutocenter(SDL_Haptic * haptic, int autocenter)
/// ```
int SDL_HapticSetAutocenter(Pointer<SDL_Haptic>? haptic, int autocenter) {
  final _SDL_HapticSetAutocenter = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Int32 autocenter),
      int Function(Pointer<SDL_Haptic>? haptic, int autocenter)>('SDL_HapticSetAutocenter');
  return _SDL_HapticSetAutocenter(haptic, autocenter);
}
/// 
/// \brief Pauses a haptic device.
/// 
/// Device must support the ::SDL_HAPTIC_PAUSE feature.  Call
/// SDL_HapticUnpause() to resume playback.
/// 
/// Do not modify the effects nor add new ones while the device is paused.
/// That can cause all sorts of weird errors.
/// 
/// \param haptic Haptic device to pause.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticUnpause
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticPause(SDL_Haptic * haptic)
/// ```
int SDL_HapticPause(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticPause = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticPause');
  return _SDL_HapticPause(haptic);
}
/// 
/// \brief Unpauses a haptic device.
/// 
/// Call to unpause after SDL_HapticPause().
/// 
/// \param haptic Haptic device to pause.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticPause
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticUnpause(SDL_Haptic * haptic)
/// ```
int SDL_HapticUnpause(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticUnpause = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticUnpause');
  return _SDL_HapticUnpause(haptic);
}
/// 
/// \brief Stops all the currently playing effects on a haptic device.
/// 
/// \param haptic Haptic device to stop.
/// \return 0 on success or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticStopAll(SDL_Haptic * haptic)
/// ```
int SDL_HapticStopAll(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticStopAll = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticStopAll');
  return _SDL_HapticStopAll(haptic);
}
/// 
/// \brief Checks to see if rumble is supported on a haptic device.
/// 
/// \param haptic Haptic device to check to see if it supports rumble.
/// \return SDL_TRUE if effect is supported, SDL_FALSE if it isn't or -1 on error.
/// 
/// \sa SDL_HapticRumbleInit
/// \sa SDL_HapticRumblePlay
/// \sa SDL_HapticRumbleStop
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumbleSupported(SDL_Haptic * haptic)
/// ```
int SDL_HapticRumbleSupported(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticRumbleSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticRumbleSupported');
  return _SDL_HapticRumbleSupported(haptic);
}
/// 
/// \brief Initializes the haptic device for simple rumble playback.
/// 
/// \param haptic Haptic device to initialize for simple rumble playback.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_HapticRumbleSupported
/// \sa SDL_HapticRumblePlay
/// \sa SDL_HapticRumbleStop
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumbleInit(SDL_Haptic * haptic)
/// ```
int SDL_HapticRumbleInit(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticRumbleInit = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticRumbleInit');
  return _SDL_HapticRumbleInit(haptic);
}
/// 
/// \brief Runs simple rumble on a haptic device
/// 
/// \param haptic Haptic device to play rumble effect on.
/// \param strength Strength of the rumble to play as a 0-1 float value.
/// \param length Length of the rumble to play in milliseconds.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticRumbleSupported
/// \sa SDL_HapticRumbleInit
/// \sa SDL_HapticRumbleStop
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumblePlay(SDL_Haptic * haptic, float strength, Uint32 length )
/// ```
int SDL_HapticRumblePlay(Pointer<SDL_Haptic>? haptic, double strength, int length) {
  final _SDL_HapticRumblePlay = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic, Float strength, Uint32 length),
      int Function(Pointer<SDL_Haptic>? haptic, double strength, int length)>('SDL_HapticRumblePlay');
  return _SDL_HapticRumblePlay(haptic, strength, length);
}
/// 
/// \brief Stops the simple rumble on a haptic device.
/// 
/// \param haptic Haptic to stop the rumble on.
/// \return 0 on success or -1 on error.
/// 
/// \sa SDL_HapticRumbleSupported
/// \sa SDL_HapticRumbleInit
/// \sa SDL_HapticRumblePlay
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumbleStop(SDL_Haptic * haptic)
/// ```
int SDL_HapticRumbleStop(Pointer<SDL_Haptic>? haptic) {
  final _SDL_HapticRumbleStop = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticRumbleStop');
  return _SDL_HapticRumbleStop(haptic);
}
/// 
/// \brief Set a hint with a specific priority
/// 
/// The priority controls the behavior when setting a hint that already
/// has a value.  Hints will replace existing hints of their priority and
/// lower.  Environment variables are considered to have override priority.
/// 
/// \return SDL_TRUE if the hint was set, SDL_FALSE otherwise
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority)
/// ```
int SDL_SetHintWithPriority(String name, String value, int priority) {
  final _SDL_SetHintWithPriority = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value, Int32 priority),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value, int priority)>('SDL_SetHintWithPriority');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_SetHintWithPriority(_namePointer, _valuePointer, priority);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}
/// 
/// \brief Set a hint with normal priority
/// 
/// \return SDL_TRUE if the hint was set, SDL_FALSE otherwise
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_SetHint(const char *name, const char *value)
/// ```
int SDL_SetHint(String name, String value) {
  final _SDL_SetHint = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value)>('SDL_SetHint');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_SetHint(_namePointer, _valuePointer);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}
/// 
/// \brief Get a hint
/// 
/// \return The string value of a hint variable.
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetHint(const char *name)
/// ```
String SDL_GetHint(String name) {
  final _SDL_GetHint = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<Utf8>? name),
      Pointer<Utf8>? Function(Pointer<Utf8>? name)>('SDL_GetHint');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetHint(_namePointer)!.toDartString();
  calloc.free(_namePointer);
  return _result;
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata)
/// ```
void SDL_AddHintCallback(String name, Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_AddHintCallback = _SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_AddHintCallback');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_AddHintCallback(_namePointer, callback, userdata);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// \brief Remove a function watching a particular hint
/// 
/// \param name The hint being watched
/// \param callback The function being called when the hint value changes
/// \param userdata A pointer being passed to the callback function
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DelHintCallback(const char *name, SDL_HintCallback callback, void *userdata)
/// ```
void SDL_DelHintCallback(String name, Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_DelHintCallback = _SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Utf8>? name, Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_DelHintCallback');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_DelHintCallback(_namePointer, callback, userdata);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// \brief  Clear all hints
/// 
/// This function is called during SDL_Quit() to free stored hints.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearHints(void)
/// ```
void SDL_ClearHints() {
  final _SDL_ClearHints = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearHints');
  return _SDL_ClearHints();
}
/// 
/// Count the number of joysticks attached to the system right now
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumJoysticks(void)
/// ```
int SDL_NumJoysticks() {
  final _SDL_NumJoysticks = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumJoysticks');
  return _SDL_NumJoysticks();
}
/// 
/// Get the implementation dependent name of a joystick.
/// This can be called before any joysticks are opened.
/// If no name can be found, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickNameForIndex(int device_index)
/// ```
String SDL_JoystickNameForIndex(int device_index) {
  final _SDL_JoystickNameForIndex = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 device_index),
      Pointer<Utf8>? Function(int device_index)>('SDL_JoystickNameForIndex');
  return _SDL_JoystickNameForIndex(device_index)!.toDartString();
}
/// 
/// Open a joystick for use.
/// The index passed as an argument refers tothe N'th joystick on the system.
/// This index is the value which will identify this joystick in future joystick
/// events.
/// 
/// \return A joystick identifier, or NULL if an error occurred.
/// 
/// ```c
/// extern DECLSPEC SDL_Joystick *SDLCALL SDL_JoystickOpen(int device_index)
/// ```
Pointer<SDL_Joystick>? SDL_JoystickOpen(int device_index) {
  final _SDL_JoystickOpen = _SDL2.lookupFunction<
      Pointer<SDL_Joystick>? Function(Int32 device_index),
      Pointer<SDL_Joystick>? Function(int device_index)>('SDL_JoystickOpen');
  return _SDL_JoystickOpen(device_index);
}
/// 
/// Return the name for this currently opened joystick.
/// If no name can be found, this function returns NULL.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_JoystickName(SDL_Joystick * joystick)
/// ```
String SDL_JoystickName(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Utf8>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickName');
  return _SDL_JoystickName(joystick)!.toDartString();
}
/// 
/// Return the GUID for the joystick at this index
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetDeviceGUID(int device_index)
/// ```
Pointer<Void>? SDL_JoystickGetDeviceGUID(int device_index) {
  final _SDL_JoystickGetDeviceGUID = _SDL2.lookupFunction<
      Pointer<Void>? Function(Int32 device_index),
      Pointer<Void>? Function(int device_index)>('SDL_JoystickGetDeviceGUID');
  return _SDL_JoystickGetDeviceGUID(device_index);
}
/// 
/// Return the GUID for this opened joystick
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUID(SDL_Joystick * joystick)
/// ```
Pointer<Void>? SDL_JoystickGetGUID(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetGUID = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Joystick>? joystick),
      Pointer<Void>? Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetGUID');
  return _SDL_JoystickGetGUID(joystick);
}
/// 
/// Return a string representation for this guid. pszGUID must point to at least 33 bytes
/// (32 for the string plus a NULL terminator).
/// 
/// ```c
/// extern DECLSPEC void SDL_JoystickGetGUIDString(SDL_JoystickGUID guid, char *pszGUID, int cbGUID)
/// ```
void SDL_JoystickGetGUIDString(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID) {
  final _SDL_JoystickGetGUIDString = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, Int32 cbGUID),
      void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID)>('SDL_JoystickGetGUIDString');
  return _SDL_JoystickGetGUIDString(guid, pszGUID, cbGUID);
}
/// 
/// convert a string into a joystick formatted guid
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUIDFromString(const char *pchGUID)
/// ```
Pointer<Void>? SDL_JoystickGetGUIDFromString(String pchGUID) {
  final _SDL_JoystickGetGUIDFromString = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? pchGUID),
      Pointer<Void>? Function(Pointer<Utf8>? pchGUID)>('SDL_JoystickGetGUIDFromString');
  final _pchGUIDPointer = pchGUID.toNativeUtf8();
  final _result = _SDL_JoystickGetGUIDFromString(_pchGUIDPointer);
  calloc.free(_pchGUIDPointer);
  return _result;
}
/// 
/// Returns SDL_TRUE if the joystick has been opened and currently connected, or SDL_FALSE if it has not.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickGetAttached(SDL_Joystick * joystick)
/// ```
int SDL_JoystickGetAttached(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickGetAttached = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickGetAttached');
  return _SDL_JoystickGetAttached(joystick);
}
/// 
/// Get the instance ID of an opened joystick or -1 if the joystick is invalid.
/// 
/// ```c
/// extern DECLSPEC SDL_JoystickID SDLCALL SDL_JoystickInstanceID(SDL_Joystick * joystick)
/// ```
int SDL_JoystickInstanceID(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickInstanceID = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickInstanceID');
  return _SDL_JoystickInstanceID(joystick);
}
/// 
/// Get the number of general axis controls on a joystick.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumAxes(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumAxes(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumAxes = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumAxes');
  return _SDL_JoystickNumAxes(joystick);
}
/// 
/// Get the number of trackballs on a joystick.
/// 
/// Joystick trackballs have only relative motion events associated
/// with them and their state cannot be polled.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumBalls(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumBalls(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumBalls = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumBalls');
  return _SDL_JoystickNumBalls(joystick);
}
/// 
/// Get the number of POV hats on a joystick.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumHats(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumHats(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumHats = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumHats');
  return _SDL_JoystickNumHats(joystick);
}
/// 
/// Get the number of buttons on a joystick.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickNumButtons(SDL_Joystick * joystick)
/// ```
int SDL_JoystickNumButtons(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickNumButtons = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick),
      int Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickNumButtons');
  return _SDL_JoystickNumButtons(joystick);
}
/// 
/// Update the current state of the open joysticks.
/// 
/// This is called automatically by the event loop if any joystick
/// events are enabled.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickUpdate(void)
/// ```
void SDL_JoystickUpdate() {
  final _SDL_JoystickUpdate = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_JoystickUpdate');
  return _SDL_JoystickUpdate();
}
/// 
/// Enable/disable joystick event polling.
/// 
/// If joystick events are disabled, you must call SDL_JoystickUpdate()
/// yourself and check the state of the joystick when you want joystick
/// information.
/// 
/// The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickEventState(int state)
/// ```
int SDL_JoystickEventState(int state) {
  final _SDL_JoystickEventState = _SDL2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_JoystickEventState');
  return _SDL_JoystickEventState(state);
}
/// 
/// Get the current state of an axis control on a joystick.
/// 
/// The state is a value ranging from -32768 to 32767.
/// 
/// The axis indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Sint16 SDLCALL SDL_JoystickGetAxis(SDL_Joystick * joystick, int axis)
/// ```
int SDL_JoystickGetAxis(Pointer<SDL_Joystick>? joystick, int axis) {
  final _SDL_JoystickGetAxis = _SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_Joystick>? joystick, Int32 axis),
      int Function(Pointer<SDL_Joystick>? joystick, int axis)>('SDL_JoystickGetAxis');
  return _SDL_JoystickGetAxis(joystick, axis);
}
/// 
/// Get the current state of a POV hat on a joystick.
/// 
/// The hat indices start at index 0.
/// 
/// \return The return value is one of the following positions:
/// - ::SDL_HAT_CENTERED
/// - ::SDL_HAT_UP
/// - ::SDL_HAT_RIGHT
/// - ::SDL_HAT_DOWN
/// - ::SDL_HAT_LEFT
/// - ::SDL_HAT_RIGHTUP
/// - ::SDL_HAT_RIGHTDOWN
/// - ::SDL_HAT_LEFTUP
/// - ::SDL_HAT_LEFTDOWN
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetHat(SDL_Joystick * joystick, int hat)
/// ```
int SDL_JoystickGetHat(Pointer<SDL_Joystick>? joystick, int hat) {
  final _SDL_JoystickGetHat = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick>? joystick, Int32 hat),
      int Function(Pointer<SDL_Joystick>? joystick, int hat)>('SDL_JoystickGetHat');
  return _SDL_JoystickGetHat(joystick, hat);
}
/// 
/// Get the ball axis change since the last poll.
/// 
/// \return 0, or -1 if you passed it invalid parameters.
/// 
/// The ball indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickGetBall(SDL_Joystick * joystick, int ball, int *dx, int *dy)
/// ```
int SDL_JoystickGetBall(Pointer<SDL_Joystick>? joystick, int ball, Pointer<Int32>? dx, Pointer<Int32>? dy) {
  final _SDL_JoystickGetBall = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick>? joystick, Int32 ball, Pointer<Int32>? dx, Pointer<Int32>? dy),
      int Function(Pointer<SDL_Joystick>? joystick, int ball, Pointer<Int32>? dx, Pointer<Int32>? dy)>('SDL_JoystickGetBall');
  return _SDL_JoystickGetBall(joystick, ball, dx, dy);
}
/// 
/// Get the current state of a button on a joystick.
/// 
/// The button indices start at index 0.
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetButton(SDL_Joystick * joystick, int button)
/// ```
int SDL_JoystickGetButton(Pointer<SDL_Joystick>? joystick, int button) {
  final _SDL_JoystickGetButton = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick>? joystick, Int32 button),
      int Function(Pointer<SDL_Joystick>? joystick, int button)>('SDL_JoystickGetButton');
  return _SDL_JoystickGetButton(joystick, button);
}
/// 
/// Close a joystick previously opened with SDL_JoystickOpen().
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_JoystickClose(SDL_Joystick * joystick)
/// ```
void SDL_JoystickClose(Pointer<SDL_Joystick>? joystick) {
  final _SDL_JoystickClose = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Joystick>? joystick),
      void Function(Pointer<SDL_Joystick>? joystick)>('SDL_JoystickClose');
  return _SDL_JoystickClose(joystick);
}
/// 
/// \brief Get the window which currently has keyboard focus.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetKeyboardFocus(void)
/// ```
Pointer<SDL_Window>? SDL_GetKeyboardFocus() {
  final _SDL_GetKeyboardFocus = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GetKeyboardFocus');
  return _SDL_GetKeyboardFocus();
}
/// 
/// \brief Get a snapshot of the current state of the keyboard.
/// 
/// \param numkeys if non-NULL, receives the length of the returned array.
/// 
/// \return An array of key states. Indexes into this array are obtained by using ::SDL_Scancode values.
/// 
/// \b Example:
/// \code
/// const Uint8 *state = SDL_GetKeyboardState(NULL);
/// if ( state[SDL_SCANCODE_RETURN] )   {
/// printf("<RETURN> is pressed.\n");
/// }
/// \endcode
/// 
/// ```c
/// extern DECLSPEC const Uint8 *SDLCALL SDL_GetKeyboardState(int *numkeys)
/// ```
Pointer<Uint8>? SDL_GetKeyboardState(Pointer<Int32>? numkeys) {
  final _SDL_GetKeyboardState = _SDL2.lookupFunction<
      Pointer<Uint8>? Function(Pointer<Int32>? numkeys),
      Pointer<Uint8>? Function(Pointer<Int32>? numkeys)>('SDL_GetKeyboardState');
  return _SDL_GetKeyboardState(numkeys);
}
/// 
/// \brief Get the current key modifier state for the keyboard.
/// 
/// ```c
/// extern DECLSPEC SDL_Keymod SDLCALL SDL_GetModState(void)
/// ```
int SDL_GetModState() {
  final _SDL_GetModState = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetModState');
  return _SDL_GetModState();
}
/// 
/// \brief Set the current key modifier state for the keyboard.
/// 
/// \note This does not change the keyboard state, only the key modifier flags.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetModState(SDL_Keymod modstate)
/// ```
void SDL_SetModState(int modstate) {
  final _SDL_SetModState = _SDL2.lookupFunction<
      Void Function(Int32 modstate),
      void Function(int modstate)>('SDL_SetModState');
  return _SDL_SetModState(modstate);
}
/// 
/// \brief Get the key code corresponding to the given scancode according
/// to the current keyboard layout.
/// 
/// See ::SDL_Keycode for details.
/// 
/// \sa SDL_GetKeyName()
/// 
/// ```c
/// extern DECLSPEC SDL_Keycode SDLCALL SDL_GetKeyFromScancode(SDL_Scancode scancode)
/// ```
int SDL_GetKeyFromScancode(int scancode) {
  final _SDL_GetKeyFromScancode = _SDL2.lookupFunction<
      Int32 Function(Int32 scancode),
      int Function(int scancode)>('SDL_GetKeyFromScancode');
  return _SDL_GetKeyFromScancode(scancode);
}
/// 
/// \brief Get the scancode corresponding to the given key code according to the
/// current keyboard layout.
/// 
/// See ::SDL_Scancode for details.
/// 
/// \sa SDL_GetScancodeName()
/// 
/// ```c
/// extern DECLSPEC SDL_Scancode SDLCALL SDL_GetScancodeFromKey(SDL_Keycode key)
/// ```
int SDL_GetScancodeFromKey(int key) {
  final _SDL_GetScancodeFromKey = _SDL2.lookupFunction<
      Int32 Function(Int32 key),
      int Function(int key)>('SDL_GetScancodeFromKey');
  return _SDL_GetScancodeFromKey(key);
}
/// 
/// \brief Get a human-readable name for a scancode.
/// 
/// \return A pointer to the name for the scancode.
/// If the scancode doesn't have a name, this function returns
/// an empty string ("").
/// 
/// \sa SDL_Scancode
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetScancodeName(SDL_Scancode scancode)
/// ```
String SDL_GetScancodeName(int scancode) {
  final _SDL_GetScancodeName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 scancode),
      Pointer<Utf8>? Function(int scancode)>('SDL_GetScancodeName');
  return _SDL_GetScancodeName(scancode)!.toDartString();
}
/// 
/// \brief Get a scancode from a human-readable name
/// 
/// \return scancode, or SDL_SCANCODE_UNKNOWN if the name wasn't recognized
/// 
/// \sa SDL_Scancode
/// 
/// ```c
/// extern DECLSPEC SDL_Scancode SDLCALL SDL_GetScancodeFromName(const char *name)
/// ```
int SDL_GetScancodeFromName(String name) {
  final _SDL_GetScancodeFromName = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('SDL_GetScancodeFromName');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetScancodeFromName(_namePointer);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// \brief Get a human-readable name for a key.
/// 
/// \return A pointer to a UTF-8 string that stays valid at least until the next
/// call to this function. If you need it around any longer, you must
/// copy it.  If the key doesn't have a name, this function returns an
/// empty string ("").
/// 
/// \sa SDL_Key
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetKeyName(SDL_Keycode key)
/// ```
String SDL_GetKeyName(int key) {
  final _SDL_GetKeyName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 key),
      Pointer<Utf8>? Function(int key)>('SDL_GetKeyName');
  return _SDL_GetKeyName(key)!.toDartString();
}
/// 
/// \brief Get a key code from a human-readable name
/// 
/// \return key code, or SDLK_UNKNOWN if the name wasn't recognized
/// 
/// \sa SDL_Keycode
/// 
/// ```c
/// extern DECLSPEC SDL_Keycode SDLCALL SDL_GetKeyFromName(const char *name)
/// ```
int SDL_GetKeyFromName(String name) {
  final _SDL_GetKeyFromName = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name),
      int Function(Pointer<Utf8>? name)>('SDL_GetKeyFromName');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetKeyFromName(_namePointer);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// \brief Start accepting Unicode text input events.
/// This function will show the on-screen keyboard if supported.
/// 
/// \sa SDL_StopTextInput()
/// \sa SDL_SetTextInputRect()
/// \sa SDL_HasScreenKeyboardSupport()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_StartTextInput(void)
/// ```
void SDL_StartTextInput() {
  final _SDL_StartTextInput = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_StartTextInput');
  return _SDL_StartTextInput();
}
/// 
/// \brief Return whether or not Unicode text input events are enabled.
/// 
/// \sa SDL_StartTextInput()
/// \sa SDL_StopTextInput()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsTextInputActive(void)
/// ```
int SDL_IsTextInputActive() {
  final _SDL_IsTextInputActive = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsTextInputActive');
  return _SDL_IsTextInputActive();
}
/// 
/// \brief Stop receiving any text input events.
/// This function will hide the on-screen keyboard if supported.
/// 
/// \sa SDL_StartTextInput()
/// \sa SDL_HasScreenKeyboardSupport()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_StopTextInput(void)
/// ```
void SDL_StopTextInput() {
  final _SDL_StopTextInput = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_StopTextInput');
  return _SDL_StopTextInput();
}
/// 
/// \brief Set the rectangle used to type Unicode text inputs.
/// This is used as a hint for IME and on-screen keyboard placement.
/// 
/// \sa SDL_StartTextInput()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetTextInputRect(SDL_Rect *rect)
/// ```
void SDL_SetTextInputRect(Pointer<SDL_Rect>? rect) {
  final _SDL_SetTextInputRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Rect>? rect)>('SDL_SetTextInputRect');
  return _SDL_SetTextInputRect(rect);
}
/// 
/// \brief Returns whether the platform has some screen keyboard support.
/// 
/// \return SDL_TRUE if some keyboard support is available else SDL_FALSE.
/// 
/// \note Not all screen keyboard functions are supported on all platforms.
/// 
/// \sa SDL_IsScreenKeyboardShown()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasScreenKeyboardSupport(void)
/// ```
int SDL_HasScreenKeyboardSupport() {
  final _SDL_HasScreenKeyboardSupport = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasScreenKeyboardSupport');
  return _SDL_HasScreenKeyboardSupport();
}
/// 
/// \brief Returns whether the screen keyboard is shown for given window.
/// 
/// \param window The window for which screen keyboard should be queried.
/// 
/// \return SDL_TRUE if screen keyboard is shown else SDL_FALSE.
/// 
/// \sa SDL_HasScreenKeyboardSupport()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsScreenKeyboardShown(SDL_Window *window)
/// ```
int SDL_IsScreenKeyboardShown(Pointer<SDL_Window>? window) {
  final _SDL_IsScreenKeyboardShown = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_IsScreenKeyboardShown');
  return _SDL_IsScreenKeyboardShown(window);
}
/// 
/// This function dynamically loads a shared object and returns a pointer
/// to the object handle (or NULL if there was an error).
/// The 'sofile' parameter is a system dependent name of the object file.
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_LoadObject(const char *sofile)
/// ```
Pointer<Void>? SDL_LoadObject(String sofile) {
  final _SDL_LoadObject = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? sofile),
      Pointer<Void>? Function(Pointer<Utf8>? sofile)>('SDL_LoadObject');
  final _sofilePointer = sofile.toNativeUtf8();
  final _result = _SDL_LoadObject(_sofilePointer);
  calloc.free(_sofilePointer);
  return _result;
}
/// 
/// Given an object handle, this function looks up the address of the
/// named function in the shared object and returns it.  This address
/// is no longer valid after calling SDL_UnloadObject().
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_LoadFunction(void *handle, const char *name)
/// ```
Pointer<Void>? SDL_LoadFunction(Pointer<Void>? handle, String name) {
  final _SDL_LoadFunction = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? handle, Pointer<Utf8>? name),
      Pointer<Void>? Function(Pointer<Void>? handle, Pointer<Utf8>? name)>('SDL_LoadFunction');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_LoadFunction(handle, _namePointer);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// Unload a shared object from memory.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnloadObject(void *handle)
/// ```
void SDL_UnloadObject(Pointer<Void>? handle) {
  final _SDL_UnloadObject = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? handle),
      void Function(Pointer<Void>? handle)>('SDL_UnloadObject');
  return _SDL_UnloadObject(handle);
}
/// 
/// \brief Set the priority of all log categories
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogSetAllPriority(SDL_LogPriority priority)
/// ```
void SDL_LogSetAllPriority(int priority) {
  final _SDL_LogSetAllPriority = _SDL2.lookupFunction<
      Void Function(Int32 priority),
      void Function(int priority)>('SDL_LogSetAllPriority');
  return _SDL_LogSetAllPriority(priority);
}
/// 
/// \brief Set the priority of a particular log category
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogSetPriority(int category, SDL_LogPriority priority)
/// ```
void SDL_LogSetPriority(int category, int priority) {
  final _SDL_LogSetPriority = _SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority),
      void Function(int category, int priority)>('SDL_LogSetPriority');
  return _SDL_LogSetPriority(category, priority);
}
/// 
/// \brief Get the priority of a particular log category
/// 
/// ```c
/// extern DECLSPEC SDL_LogPriority SDLCALL SDL_LogGetPriority(int category)
/// ```
int SDL_LogGetPriority(int category) {
  final _SDL_LogGetPriority = _SDL2.lookupFunction<
      Int32 Function(Int32 category),
      int Function(int category)>('SDL_LogGetPriority');
  return _SDL_LogGetPriority(category);
}
/// 
/// \brief Reset all priorities to default.
/// 
/// \note This is called in SDL_Quit().
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogResetPriorities(void)
/// ```
void SDL_LogResetPriorities() {
  final _SDL_LogResetPriorities = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LogResetPriorities');
  return _SDL_LogResetPriorities();
}
/// 
/// \brief Log a message with SDL_LOG_CATEGORY_APPLICATION and SDL_LOG_PRIORITY_INFO
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Log(const char *fmt, ...)
/// ```
void SDL_Log(String fmt, Pointer<Void>? arg1) {
  final _SDL_Log = _SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1),
      void Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1)>('SDL_Log');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_Log(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with SDL_LOG_PRIORITY_VERBOSE
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogVerbose(int category, const char *fmt, ...)
/// ```
void SDL_LogVerbose(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogVerbose = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogVerbose');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogVerbose(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with SDL_LOG_PRIORITY_DEBUG
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogDebug(int category, const char *fmt, ...)
/// ```
void SDL_LogDebug(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogDebug = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogDebug');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogDebug(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with SDL_LOG_PRIORITY_INFO
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogInfo(int category, const char *fmt, ...)
/// ```
void SDL_LogInfo(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogInfo = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogInfo');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogInfo(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with SDL_LOG_PRIORITY_WARN
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogWarn(int category, const char *fmt, ...)
/// ```
void SDL_LogWarn(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogWarn = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogWarn');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogWarn(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with SDL_LOG_PRIORITY_ERROR
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogError(int category, const char *fmt, ...)
/// ```
void SDL_LogError(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogError = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogError(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with SDL_LOG_PRIORITY_CRITICAL
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogCritical(int category, const char *fmt, ...)
/// ```
void SDL_LogCritical(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogCritical = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogCritical');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogCritical(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with the specified category and priority.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogMessage(int category, SDL_LogPriority priority, const char *fmt, ...)
/// ```
void SDL_LogMessage(int category, int priority, String fmt, Pointer<Void>? arg3) {
  final _SDL_LogMessage = _SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8>? fmt, Pointer<Void>? arg3),
      void Function(int category, int priority, Pointer<Utf8>? fmt, Pointer<Void>? arg3)>('SDL_LogMessage');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogMessage(category, priority, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Log a message with the specified category and priority.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogMessageV(int category, SDL_LogPriority priority, const char *fmt, va_list ap)
/// ```
void SDL_LogMessageV(int category, int priority, String fmt, Pointer<Void>? ap) {
  final _SDL_LogMessageV = _SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      void Function(int category, int priority, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_LogMessageV');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogMessageV(category, priority, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}
/// 
/// \brief Get the current log output function.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogGetOutputFunction(SDL_LogOutputFunction *callback, void **userdata)
/// ```
void SDL_LogGetOutputFunction(Pointer<Pointer<Void>>? callback, Pointer<Pointer<Void>>? userdata) {
  final _SDL_LogGetOutputFunction = _SDL2.lookupFunction<
      Void Function(Pointer<Pointer<Void>>? callback, Pointer<Pointer<Void>>? userdata),
      void Function(Pointer<Pointer<Void>>? callback, Pointer<Pointer<Void>>? userdata)>('SDL_LogGetOutputFunction');
  return _SDL_LogGetOutputFunction(callback, userdata);
}
/// 
/// \brief This function allows you to replace the default log output
/// function with one of your own.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogSetOutputFunction(SDL_LogOutputFunction callback, void *userdata)
/// ```
void SDL_LogSetOutputFunction(Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_LogSetOutputFunction = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_LogSetOutputFunction');
  return _SDL_LogSetOutputFunction(callback, userdata);
}
/// 
/// This is called by the real SDL main function to let the rest of the
/// library know that initialization was done properly.
/// 
/// Calling this yourself without knowing what you're doing can cause
/// crashes and hard to diagnose problems with your application.
/// /
/// ```c
/// extern DECLSPEC void SDL_SetMainReady(void)
/// ```
void SDL_SetMainReady() {
  final _SDL_SetMainReady = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_SetMainReady');
  return _SDL_SetMainReady();
}
/// 
/// This can be called to set the application class at startup
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RegisterApp(char *name, Uint32 style, void *hInst)
/// ```
int SDL_RegisterApp(Pointer<Int8>? name, int style, Pointer<Void>? hInst) {
  final _SDL_RegisterApp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int8>? name, Uint32 style, Pointer<Void>? hInst),
      int Function(Pointer<Int8>? name, int style, Pointer<Void>? hInst)>('SDL_RegisterApp');
  return _SDL_RegisterApp(name, style, hInst);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnregisterApp(void)
/// ```
void SDL_UnregisterApp() {
  final _SDL_UnregisterApp = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnregisterApp');
  return _SDL_UnregisterApp();
}
/// 
/// \brief Create a modal message box.
/// 
/// \param messageboxdata The SDL_MessageBoxData structure with title, text, etc.
/// \param buttonid The pointer to which user id of hit button should be copied.
/// 
/// \return -1 on error, otherwise 0 and buttonid contains user id of button
/// hit or -1 if dialog was closed.
/// 
/// \note This function should be called on the thread that created the parent
/// window, or on the main thread if the messagebox has no parent.  It will
/// block execution of that thread until the user clicks a button or
/// closes the messagebox.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid)
/// ```
int SDL_ShowMessageBox(Pointer<SDL_MessageBoxData>? messageboxdata, Pointer<Int32>? buttonid) {
  final _SDL_ShowMessageBox = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_MessageBoxData>? messageboxdata, Pointer<Int32>? buttonid),
      int Function(Pointer<SDL_MessageBoxData>? messageboxdata, Pointer<Int32>? buttonid)>('SDL_ShowMessageBox');
  return _SDL_ShowMessageBox(messageboxdata, buttonid);
}
/// 
/// \brief Create a simple modal message box
/// 
/// \param flags    ::SDL_MessageBoxFlags
/// \param title    UTF-8 title text
/// \param message  UTF-8 message text
/// \param window   The parent window, or NULL for no parent
/// 
/// \return 0 on success, -1 on error
/// 
/// \sa SDL_ShowMessageBox
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ShowSimpleMessageBox(Uint32 flags, const char *title, const char *message, SDL_Window *window)
/// ```
int SDL_ShowSimpleMessageBox(int flags, String title, String message, Pointer<SDL_Window>? window) {
  final _SDL_ShowSimpleMessageBox = _SDL2.lookupFunction<
      Int32 Function(Uint32 flags, Pointer<Utf8>? title, Pointer<Utf8>? message, Pointer<SDL_Window>? window),
      int Function(int flags, Pointer<Utf8>? title, Pointer<Utf8>? message, Pointer<SDL_Window>? window)>('SDL_ShowSimpleMessageBox');
  final _titlePointer = title.toNativeUtf8();
  final _messagePointer = message.toNativeUtf8();
  final _result = _SDL_ShowSimpleMessageBox(flags, _titlePointer, _messagePointer, window);
  calloc.free(_titlePointer);
  calloc.free(_messagePointer);
  return _result;
}
/// 
/// \brief Get the window which currently has mouse focus.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetMouseFocus(void)
/// ```
Pointer<SDL_Window>? SDL_GetMouseFocus() {
  final _SDL_GetMouseFocus = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GetMouseFocus');
  return _SDL_GetMouseFocus();
}
/// 
/// \brief Retrieve the current state of the mouse.
/// 
/// The current button state is returned as a button bitmask, which can
/// be tested using the SDL_BUTTON(X) macros, and x and y are set to the
/// mouse cursor position relative to the focus window for the currently
/// selected mouse.  You can pass NULL for either x or y.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetMouseState(int *x, int *y)
/// ```
int SDL_GetMouseState(Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetMouseState = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32>? x, Pointer<Int32>? y),
      int Function(Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetMouseState');
  return _SDL_GetMouseState(x, y);
}
/// 
/// \brief Retrieve the relative state of the mouse.
/// 
/// The current button state is returned as a button bitmask, which can
/// be tested using the SDL_BUTTON(X) macros, and x and y are set to the
/// mouse deltas since the last call to SDL_GetRelativeMouseState().
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetRelativeMouseState(int *x, int *y)
/// ```
int SDL_GetRelativeMouseState(Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetRelativeMouseState = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32>? x, Pointer<Int32>? y),
      int Function(Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetRelativeMouseState');
  return _SDL_GetRelativeMouseState(x, y);
}
/// 
/// \brief Moves the mouse to the given position within the window.
/// 
/// \param window The window to move the mouse into, or NULL for the current mouse focus
/// \param x The x coordinate within the window
/// \param y The y coordinate within the window
/// 
/// \note This function generates a mouse motion event
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_WarpMouseInWindow(SDL_Window * window, int x, int y)
/// ```
void SDL_WarpMouseInWindow(Pointer<SDL_Window>? window, int x, int y) {
  final _SDL_WarpMouseInWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 x, Int32 y),
      void Function(Pointer<SDL_Window>? window, int x, int y)>('SDL_WarpMouseInWindow');
  return _SDL_WarpMouseInWindow(window, x, y);
}
/// 
/// \brief Set relative mouse mode.
/// 
/// \param enabled Whether or not to enable relative mode
/// 
/// \return 0 on success, or -1 if relative mode is not supported.
/// 
/// While the mouse is in relative mode, the cursor is hidden, and the
/// driver will try to report continuous motion in the current window.
/// Only relative motion events will be delivered, the mouse position
/// will not change.
/// 
/// \note This function will flush any pending mouse motion.
/// 
/// \sa SDL_GetRelativeMouseMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRelativeMouseMode(SDL_bool enabled)
/// ```
int SDL_SetRelativeMouseMode(int enabled) {
  final _SDL_SetRelativeMouseMode = _SDL2.lookupFunction<
      Int32 Function(Int32 enabled),
      int Function(int enabled)>('SDL_SetRelativeMouseMode');
  return _SDL_SetRelativeMouseMode(enabled);
}
/// 
/// \brief Query whether relative mouse mode is enabled.
/// 
/// \sa SDL_SetRelativeMouseMode()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetRelativeMouseMode(void)
/// ```
int SDL_GetRelativeMouseMode() {
  final _SDL_GetRelativeMouseMode = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetRelativeMouseMode');
  return _SDL_GetRelativeMouseMode();
}
/// 
/// \brief Create a cursor, using the specified bitmap data and
/// mask (in MSB format).
/// 
/// The cursor width must be a multiple of 8 bits.
/// 
/// The cursor is created in black and white according to the following:
/// <table>
/// <tr><td> data </td><td> mask </td><td> resulting pixel on screen </td></tr>
/// <tr><td>  0   </td><td>  1   </td><td> White </td></tr>
/// <tr><td>  1   </td><td>  1   </td><td> Black </td></tr>
/// <tr><td>  0   </td><td>  0   </td><td> Transparent </td></tr>
/// <tr><td>  1   </td><td>  0   </td><td> Inverted color if possible, black
/// if not. </td></tr>
/// </table>
/// 
/// \sa SDL_FreeCursor()
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateCursor(const Uint8 * data, const Uint8 * mask, int w, int h, int hot_x, int hot_y)
/// ```
Pointer<SDL_Cursor>? SDL_CreateCursor(Pointer<Uint8>? data, Pointer<Uint8>? mask, int w, int h, int hot_x, int hot_y) {
  final _SDL_CreateCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(Pointer<Uint8>? data, Pointer<Uint8>? mask, Int32 w, Int32 h, Int32 hot_x, Int32 hot_y),
      Pointer<SDL_Cursor>? Function(Pointer<Uint8>? data, Pointer<Uint8>? mask, int w, int h, int hot_x, int hot_y)>('SDL_CreateCursor');
  return _SDL_CreateCursor(data, mask, w, h, hot_x, hot_y);
}
/// 
/// \brief Create a color cursor.
/// 
/// \sa SDL_FreeCursor()
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y)
/// ```
Pointer<SDL_Cursor>? SDL_CreateColorCursor(Pointer<SDL_Surface>? surface, int hot_x, int hot_y) {
  final _SDL_CreateColorCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(Pointer<SDL_Surface>? surface, Int32 hot_x, Int32 hot_y),
      Pointer<SDL_Cursor>? Function(Pointer<SDL_Surface>? surface, int hot_x, int hot_y)>('SDL_CreateColorCursor');
  return _SDL_CreateColorCursor(surface, hot_x, hot_y);
}
/// 
/// \brief Create a system cursor.
/// 
/// \sa SDL_FreeCursor()
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateSystemCursor(SDL_SystemCursor id)
/// ```
Pointer<SDL_Cursor>? SDL_CreateSystemCursor(int id) {
  final _SDL_CreateSystemCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(Int32 id),
      Pointer<SDL_Cursor>? Function(int id)>('SDL_CreateSystemCursor');
  return _SDL_CreateSystemCursor(id);
}
/// 
/// \brief Set the active cursor.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetCursor(SDL_Cursor * cursor)
/// ```
void SDL_SetCursor(Pointer<SDL_Cursor>? cursor) {
  final _SDL_SetCursor = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Cursor>? cursor),
      void Function(Pointer<SDL_Cursor>? cursor)>('SDL_SetCursor');
  return _SDL_SetCursor(cursor);
}
/// 
/// \brief Return the active cursor.
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_GetCursor(void)
/// ```
Pointer<SDL_Cursor>? SDL_GetCursor() {
  final _SDL_GetCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(),
      Pointer<SDL_Cursor>? Function()>('SDL_GetCursor');
  return _SDL_GetCursor();
}
/// 
/// \brief Return the default cursor.
/// 
/// ```c
/// extern DECLSPEC SDL_Cursor *SDLCALL SDL_GetDefaultCursor(void)
/// ```
Pointer<SDL_Cursor>? SDL_GetDefaultCursor() {
  final _SDL_GetDefaultCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor>? Function(),
      Pointer<SDL_Cursor>? Function()>('SDL_GetDefaultCursor');
  return _SDL_GetDefaultCursor();
}
/// 
/// \brief Frees a cursor created with SDL_CreateCursor().
/// 
/// \sa SDL_CreateCursor()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeCursor(SDL_Cursor * cursor)
/// ```
void SDL_FreeCursor(Pointer<SDL_Cursor>? cursor) {
  final _SDL_FreeCursor = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Cursor>? cursor),
      void Function(Pointer<SDL_Cursor>? cursor)>('SDL_FreeCursor');
  return _SDL_FreeCursor(cursor);
}
/// 
/// \brief Toggle whether or not the cursor is shown.
/// 
/// \param toggle 1 to show the cursor, 0 to hide it, -1 to query the current
/// state.
/// 
/// \return 1 if the cursor is shown, or 0 if the cursor is hidden.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ShowCursor(int toggle)
/// ```
int SDL_ShowCursor(int toggle) {
  final _SDL_ShowCursor = _SDL2.lookupFunction<
      Int32 Function(Int32 toggle),
      int Function(int toggle)>('SDL_ShowCursor');
  return _SDL_ShowCursor(toggle);
}
/// 
/// Create a mutex, initialized unlocked.
/// 
/// ```c
/// extern DECLSPEC SDL_mutex *SDLCALL SDL_CreateMutex(void)
/// ```
Pointer<SDL_mutex>? SDL_CreateMutex() {
  final _SDL_CreateMutex = _SDL2.lookupFunction<
      Pointer<SDL_mutex>? Function(),
      Pointer<SDL_mutex>? Function()>('SDL_CreateMutex');
  return _SDL_CreateMutex();
}
/// 
/// Lock the mutex.
/// 
/// \return 0, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockMutex(SDL_mutex * mutex)
/// ```
int SDL_LockMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_LockMutex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_mutex>? mutex)>('SDL_LockMutex');
  return _SDL_LockMutex(mutex);
}
/// 
/// Try to lock the mutex
/// 
/// \return 0, SDL_MUTEX_TIMEDOUT, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_TryLockMutex(SDL_mutex * mutex)
/// ```
int SDL_TryLockMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_TryLockMutex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_mutex>? mutex)>('SDL_TryLockMutex');
  return _SDL_TryLockMutex(mutex);
}
/// 
/// Unlock the mutex.
/// 
/// \return 0, or -1 on error.
/// 
/// \warning It is an error to unlock a mutex that has not been locked by
/// the current thread, and doing so results in undefined behavior.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UnlockMutex(SDL_mutex * mutex)
/// ```
int SDL_UnlockMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_UnlockMutex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_mutex>? mutex)>('SDL_UnlockMutex');
  return _SDL_UnlockMutex(mutex);
}
/// 
/// Destroy a mutex.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyMutex(SDL_mutex * mutex)
/// ```
void SDL_DestroyMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_DestroyMutex = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_mutex>? mutex),
      void Function(Pointer<SDL_mutex>? mutex)>('SDL_DestroyMutex');
  return _SDL_DestroyMutex(mutex);
}
/// 
/// Create a semaphore, initialized with value, returns NULL on failure.
/// 
/// ```c
/// extern DECLSPEC SDL_sem *SDLCALL SDL_CreateSemaphore(Uint32 initial_value)
/// ```
Pointer<SDL_sem>? SDL_CreateSemaphore(int initial_value) {
  final _SDL_CreateSemaphore = _SDL2.lookupFunction<
      Pointer<SDL_sem>? Function(Uint32 initial_value),
      Pointer<SDL_sem>? Function(int initial_value)>('SDL_CreateSemaphore');
  return _SDL_CreateSemaphore(initial_value);
}
/// 
/// Destroy a semaphore.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroySemaphore(SDL_sem * sem)
/// ```
void SDL_DestroySemaphore(Pointer<SDL_sem>? sem) {
  final _SDL_DestroySemaphore = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_sem>? sem),
      void Function(Pointer<SDL_sem>? sem)>('SDL_DestroySemaphore');
  return _SDL_DestroySemaphore(sem);
}
/// 
/// This function suspends the calling thread until the semaphore pointed
/// to by \c sem has a positive count. It then atomically decreases the
/// semaphore count.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemWait(SDL_sem * sem)
/// ```
int SDL_SemWait(Pointer<SDL_sem>? sem) {
  final _SDL_SemWait = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemWait');
  return _SDL_SemWait(sem);
}
/// 
/// Non-blocking variant of SDL_SemWait().
/// 
/// \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait would
/// block, and -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemTryWait(SDL_sem * sem)
/// ```
int SDL_SemTryWait(Pointer<SDL_sem>? sem) {
  final _SDL_SemTryWait = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemTryWait');
  return _SDL_SemTryWait(sem);
}
/// 
/// Variant of SDL_SemWait() with a timeout in milliseconds.
/// 
/// \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait does not
/// succeed in the allotted time, and -1 on error.
/// 
/// \warning On some platforms this function is implemented by looping with a
/// delay of 1 ms, and so should be avoided if possible.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemWaitTimeout(SDL_sem * sem, Uint32 ms)
/// ```
int SDL_SemWaitTimeout(Pointer<SDL_sem>? sem, int ms) {
  final _SDL_SemWaitTimeout = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem, Uint32 ms),
      int Function(Pointer<SDL_sem>? sem, int ms)>('SDL_SemWaitTimeout');
  return _SDL_SemWaitTimeout(sem, ms);
}
/// 
/// Atomically increases the semaphore's count (not blocking).
/// 
/// \return 0, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemPost(SDL_sem * sem)
/// ```
int SDL_SemPost(Pointer<SDL_sem>? sem) {
  final _SDL_SemPost = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemPost');
  return _SDL_SemPost(sem);
}
/// 
/// Returns the current count of the semaphore.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_SemValue(SDL_sem * sem)
/// ```
int SDL_SemValue(Pointer<SDL_sem>? sem) {
  final _SDL_SemValue = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemValue');
  return _SDL_SemValue(sem);
}
/// 
/// Create a condition variable.
/// 
/// Typical use of condition variables:
/// 
/// Thread A:
/// SDL_LockMutex(lock);
/// while ( ! condition ) {
/// SDL_CondWait(cond, lock);
/// }
/// SDL_UnlockMutex(lock);
/// 
/// Thread B:
/// SDL_LockMutex(lock);
/// ...
/// condition = true;
/// ...
/// SDL_CondSignal(cond);
/// SDL_UnlockMutex(lock);
/// 
/// There is some discussion whether to signal the condition variable
/// with the mutex locked or not.  There is some potential performance
/// benefit to unlocking first on some platforms, but there are some
/// potential race conditions depending on how your code is structured.
/// 
/// In general it's safer to signal the condition variable while the
/// mutex is locked.
/// 
/// ```c
/// extern DECLSPEC SDL_cond *SDLCALL SDL_CreateCond(void)
/// ```
Pointer<SDL_cond>? SDL_CreateCond() {
  final _SDL_CreateCond = _SDL2.lookupFunction<
      Pointer<SDL_cond>? Function(),
      Pointer<SDL_cond>? Function()>('SDL_CreateCond');
  return _SDL_CreateCond();
}
/// 
/// Destroy a condition variable.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyCond(SDL_cond * cond)
/// ```
void SDL_DestroyCond(Pointer<SDL_cond>? cond) {
  final _SDL_DestroyCond = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_cond>? cond),
      void Function(Pointer<SDL_cond>? cond)>('SDL_DestroyCond');
  return _SDL_DestroyCond(cond);
}
/// 
/// Restart one of the threads that are waiting on the condition variable.
/// 
/// \return 0 or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondSignal(SDL_cond * cond)
/// ```
int SDL_CondSignal(Pointer<SDL_cond>? cond) {
  final _SDL_CondSignal = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond),
      int Function(Pointer<SDL_cond>? cond)>('SDL_CondSignal');
  return _SDL_CondSignal(cond);
}
/// 
/// Restart all threads that are waiting on the condition variable.
/// 
/// \return 0 or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondBroadcast(SDL_cond * cond)
/// ```
int SDL_CondBroadcast(Pointer<SDL_cond>? cond) {
  final _SDL_CondBroadcast = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond),
      int Function(Pointer<SDL_cond>? cond)>('SDL_CondBroadcast');
  return _SDL_CondBroadcast(cond);
}
/// 
/// Wait on the condition variable, unlocking the provided mutex.
/// 
/// \warning The mutex must be locked before entering this function!
/// 
/// The mutex is re-locked once the condition variable is signaled.
/// 
/// \return 0 when it is signaled, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondWait(SDL_cond * cond, SDL_mutex * mutex)
/// ```
int SDL_CondWait(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex) {
  final _SDL_CondWait = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex)>('SDL_CondWait');
  return _SDL_CondWait(cond, mutex);
}
/// 
/// Waits for at most \c ms milliseconds, and returns 0 if the condition
/// variable is signaled, ::SDL_MUTEX_TIMEDOUT if the condition is not
/// signaled in the allotted time, and -1 on error.
/// 
/// \warning On some platforms this function is implemented by looping with a
/// delay of 1 ms, and so should be avoided if possible.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondWaitTimeout(SDL_cond * cond, SDL_mutex * mutex, Uint32 ms)
/// ```
int SDL_CondWaitTimeout(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex, int ms) {
  final _SDL_CondWaitTimeout = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex, Uint32 ms),
      int Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex, int ms)>('SDL_CondWaitTimeout');
  return _SDL_CondWaitTimeout(cond, mutex, ms);
}
/// 
/// \brief Get the human readable name of a pixel format
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GetPixelFormatName(Uint32 format)
/// ```
String SDL_GetPixelFormatName(int format) {
  final _SDL_GetPixelFormatName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Uint32 format),
      Pointer<Utf8>? Function(int format)>('SDL_GetPixelFormatName');
  return _SDL_GetPixelFormatName(format)!.toDartString();
}
/// 
/// \brief Convert one of the enumerated pixel formats to a bpp and RGBA masks.
/// 
/// \return SDL_TRUE, or SDL_FALSE if the conversion wasn't possible.
/// 
/// \sa SDL_MasksToPixelFormatEnum()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_PixelFormatEnumToMasks(Uint32 format, int *bpp, Uint32 * Rmask, Uint32 * Gmask, Uint32 * Bmask, Uint32 * Amask)
/// ```
int SDL_PixelFormatEnumToMasks(int format, Pointer<Int32>? bpp, Pointer<Uint32>? Rmask, Pointer<Uint32>? Gmask, Pointer<Uint32>? Bmask, Pointer<Uint32>? Amask) {
  final _SDL_PixelFormatEnumToMasks = _SDL2.lookupFunction<
      Int32 Function(Uint32 format, Pointer<Int32>? bpp, Pointer<Uint32>? Rmask, Pointer<Uint32>? Gmask, Pointer<Uint32>? Bmask, Pointer<Uint32>? Amask),
      int Function(int format, Pointer<Int32>? bpp, Pointer<Uint32>? Rmask, Pointer<Uint32>? Gmask, Pointer<Uint32>? Bmask, Pointer<Uint32>? Amask)>('SDL_PixelFormatEnumToMasks');
  return _SDL_PixelFormatEnumToMasks(format, bpp, Rmask, Gmask, Bmask, Amask);
}
/// 
/// \brief Convert a bpp and RGBA masks to an enumerated pixel format.
/// 
/// \return The pixel format, or ::SDL_PIXELFORMAT_UNKNOWN if the conversion
/// wasn't possible.
/// 
/// \sa SDL_PixelFormatEnumToMasks()
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_MasksToPixelFormatEnum(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
int SDL_MasksToPixelFormatEnum(int bpp, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_MasksToPixelFormatEnum = _SDL2.lookupFunction<
      Uint32 Function(Int32 bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      int Function(int bpp, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_MasksToPixelFormatEnum');
  return _SDL_MasksToPixelFormatEnum(bpp, Rmask, Gmask, Bmask, Amask);
}
/// 
/// \brief Create an SDL_PixelFormat structure from a pixel format enum.
/// 
/// ```c
/// extern DECLSPEC SDL_PixelFormat * SDLCALL SDL_AllocFormat(Uint32 pixel_format)
/// ```
Pointer<SDL_PixelFormat>? SDL_AllocFormat(int pixel_format) {
  final _SDL_AllocFormat = _SDL2.lookupFunction<
      Pointer<SDL_PixelFormat>? Function(Uint32 pixel_format),
      Pointer<SDL_PixelFormat>? Function(int pixel_format)>('SDL_AllocFormat');
  return _SDL_AllocFormat(pixel_format);
}
/// 
/// \brief Free an SDL_PixelFormat structure.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeFormat(SDL_PixelFormat *format)
/// ```
void SDL_FreeFormat(Pointer<SDL_PixelFormat>? format) {
  final _SDL_FreeFormat = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_PixelFormat>? format),
      void Function(Pointer<SDL_PixelFormat>? format)>('SDL_FreeFormat');
  return _SDL_FreeFormat(format);
}
/// 
/// \brief Create a palette structure with the specified number of color
/// entries.
/// 
/// \return A new palette, or NULL if there wasn't enough memory.
/// 
/// \note The palette entries are initialized to white.
/// 
/// \sa SDL_FreePalette()
/// 
/// ```c
/// extern DECLSPEC SDL_Palette *SDLCALL SDL_AllocPalette(int ncolors)
/// ```
Pointer<SDL_Palette>? SDL_AllocPalette(int ncolors) {
  final _SDL_AllocPalette = _SDL2.lookupFunction<
      Pointer<SDL_Palette>? Function(Int32 ncolors),
      Pointer<SDL_Palette>? Function(int ncolors)>('SDL_AllocPalette');
  return _SDL_AllocPalette(ncolors);
}
/// 
/// \brief Set the palette for a pixel format structure.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetPixelFormatPalette(SDL_PixelFormat * format, SDL_Palette *palette)
/// ```
int SDL_SetPixelFormatPalette(Pointer<SDL_PixelFormat>? format, Pointer<SDL_Palette>? palette) {
  final _SDL_SetPixelFormatPalette = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_PixelFormat>? format, Pointer<SDL_Palette>? palette),
      int Function(Pointer<SDL_PixelFormat>? format, Pointer<SDL_Palette>? palette)>('SDL_SetPixelFormatPalette');
  return _SDL_SetPixelFormatPalette(format, palette);
}
/// 
/// \brief Set a range of colors in a palette.
/// 
/// \param palette    The palette to modify.
/// \param colors     An array of colors to copy into the palette.
/// \param firstcolor The index of the first palette entry to modify.
/// \param ncolors    The number of entries to modify.
/// 
/// \return 0 on success, or -1 if not all of the colors could be set.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetPaletteColors(SDL_Palette * palette, const SDL_Color * colors, int firstcolor, int ncolors)
/// ```
int SDL_SetPaletteColors(Pointer<SDL_Palette>? palette, Pointer<SDL_Color>? colors, int firstcolor, int ncolors) {
  final _SDL_SetPaletteColors = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Palette>? palette, Pointer<SDL_Color>? colors, Int32 firstcolor, Int32 ncolors),
      int Function(Pointer<SDL_Palette>? palette, Pointer<SDL_Color>? colors, int firstcolor, int ncolors)>('SDL_SetPaletteColors');
  return _SDL_SetPaletteColors(palette, colors, firstcolor, ncolors);
}
/// 
/// \brief Free a palette created with SDL_AllocPalette().
/// 
/// \sa SDL_AllocPalette()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreePalette(SDL_Palette * palette)
/// ```
void SDL_FreePalette(Pointer<SDL_Palette>? palette) {
  final _SDL_FreePalette = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Palette>? palette),
      void Function(Pointer<SDL_Palette>? palette)>('SDL_FreePalette');
  return _SDL_FreePalette(palette);
}
/// 
/// \brief Maps an RGB triple to an opaque pixel value for a given pixel format.
/// 
/// \sa SDL_MapRGBA
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_MapRGB(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b)
/// ```
int SDL_MapRGB(Pointer<SDL_PixelFormat>? format, int r, int g, int b) {
  final _SDL_MapRGB = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_PixelFormat>? format, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_PixelFormat>? format, int r, int g, int b)>('SDL_MapRGB');
  return _SDL_MapRGB(format, r, g, b);
}
/// 
/// \brief Maps an RGBA quadruple to a pixel value for a given pixel format.
/// 
/// \sa SDL_MapRGB
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_MapRGBA(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int SDL_MapRGBA(Pointer<SDL_PixelFormat>? format, int r, int g, int b, int a) {
  final _SDL_MapRGBA = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_PixelFormat>? format, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_PixelFormat>? format, int r, int g, int b, int a)>('SDL_MapRGBA');
  return _SDL_MapRGBA(format, r, g, b, a);
}
/// 
/// \brief Get the RGB components from a pixel of the specified format.
/// 
/// \sa SDL_GetRGBA
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetRGB(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b)
/// ```
void SDL_GetRGB(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b) {
  final _SDL_GetRGB = _SDL2.lookupFunction<
      Void Function(Uint32 pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b),
      void Function(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b)>('SDL_GetRGB');
  return _SDL_GetRGB(pixel, format, r, g, b);
}
/// 
/// \brief Get the RGBA components from a pixel of the specified format.
/// 
/// \sa SDL_GetRGB
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetRGBA(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
/// ```
void SDL_GetRGBA(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a) {
  final _SDL_GetRGBA = _SDL2.lookupFunction<
      Void Function(Uint32 pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a),
      void Function(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a)>('SDL_GetRGBA');
  return _SDL_GetRGBA(pixel, format, r, g, b, a);
}
/// 
/// \brief Calculate a 256 entry gamma ramp for a gamma value.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_CalculateGammaRamp(float gamma, Uint16 * ramp)
/// ```
void SDL_CalculateGammaRamp(double gamma, Pointer<Uint16>? ramp) {
  final _SDL_CalculateGammaRamp = _SDL2.lookupFunction<
      Void Function(Float gamma, Pointer<Uint16>? ramp),
      void Function(double gamma, Pointer<Uint16>? ramp)>('SDL_CalculateGammaRamp');
  return _SDL_CalculateGammaRamp(gamma, ramp);
}
/// 
/// \brief Gets the name of the platform.
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetPlatform (void)
/// ```
String SDL_GetPlatform() {
  final _SDL_GetPlatform = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetPlatform');
  return _SDL_GetPlatform()!.toDartString();
}
/// 
/// \brief Get the current power supply details.
/// 
/// \param secs Seconds of battery life left. You can pass a NULL here if
/// you don't care. Will return -1 if we can't determine a
/// value, or we're not running on a battery.
/// 
/// \param pct Percentage of battery life left, between 0 and 100. You can
/// pass a NULL here if you don't care. Will return -1 if we
/// can't determine a value, or we're not running on a battery.
/// 
/// \return The state of the battery (if any).
/// 
/// ```c
/// extern DECLSPEC SDL_PowerState SDLCALL SDL_GetPowerInfo(int *secs, int *pct)
/// ```
int SDL_GetPowerInfo(Pointer<Int32>? secs, Pointer<Int32>? pct) {
  final _SDL_GetPowerInfo = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int32>? secs, Pointer<Int32>? pct),
      int Function(Pointer<Int32>? secs, Pointer<Int32>? pct)>('SDL_GetPowerInfo');
  return _SDL_GetPowerInfo(secs, pct);
}
/// 
/// \brief Determine whether two rectangles intersect.
/// 
/// \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasIntersection(const SDL_Rect * A, const SDL_Rect * B)
/// ```
int SDL_HasIntersection(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B) {
  final _SDL_HasIntersection = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B),
      int Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B)>('SDL_HasIntersection');
  return _SDL_HasIntersection(A, B);
}
/// 
/// \brief Calculate the intersection of two rectangles.
/// 
/// \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result)
/// ```
int SDL_IntersectRect(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result) {
  final _SDL_IntersectRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result),
      int Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result)>('SDL_IntersectRect');
  return _SDL_IntersectRect(A, B, result);
}
/// 
/// \brief Calculate the union of two rectangles.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnionRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result)
/// ```
void SDL_UnionRect(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result) {
  final _SDL_UnionRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result),
      void Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result)>('SDL_UnionRect');
  return _SDL_UnionRect(A, B, result);
}
/// 
/// \brief Calculate a minimal rectangle enclosing a set of points
/// 
/// \return SDL_TRUE if any points were within the clipping rect
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_EnclosePoints(const SDL_Point * points, int count, const SDL_Rect * clip, SDL_Rect * result)
/// ```
int SDL_EnclosePoints(Pointer<SDL_Point>? points, int count, Pointer<SDL_Rect>? clip, Pointer<SDL_Rect>? result) {
  final _SDL_EnclosePoints = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Point>? points, Int32 count, Pointer<SDL_Rect>? clip, Pointer<SDL_Rect>? result),
      int Function(Pointer<SDL_Point>? points, int count, Pointer<SDL_Rect>? clip, Pointer<SDL_Rect>? result)>('SDL_EnclosePoints');
  return _SDL_EnclosePoints(points, count, clip, result);
}
/// 
/// \brief Calculate the intersection of a rectangle and line segment.
/// 
/// \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectRectAndLine(const SDL_Rect * rect, int *X1, int *Y1, int *X2, int *Y2)
/// ```
int SDL_IntersectRectAndLine(Pointer<SDL_Rect>? rect, Pointer<Int32>? X1, Pointer<Int32>? Y1, Pointer<Int32>? X2, Pointer<Int32>? Y2) {
  final _SDL_IntersectRectAndLine = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? rect, Pointer<Int32>? X1, Pointer<Int32>? Y1, Pointer<Int32>? X2, Pointer<Int32>? Y2),
      int Function(Pointer<SDL_Rect>? rect, Pointer<Int32>? X1, Pointer<Int32>? Y1, Pointer<Int32>? X2, Pointer<Int32>? Y2)>('SDL_IntersectRectAndLine');
  return _SDL_IntersectRectAndLine(rect, X1, Y1, X2, Y2);
}
/// 
/// \brief Get the number of 2D rendering drivers available for the current
/// display.
/// 
/// A render driver is a set of code that handles rendering and texture
/// management on a particular display.  Normally there is only one, but
/// some drivers may have several available with different capabilities.
/// 
/// \sa SDL_GetRenderDriverInfo()
/// \sa SDL_CreateRenderer()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumRenderDrivers(void)
/// ```
int SDL_GetNumRenderDrivers() {
  final _SDL_GetNumRenderDrivers = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumRenderDrivers');
  return _SDL_GetNumRenderDrivers();
}
/// 
/// \brief Get information about a specific 2D rendering driver for the current
/// display.
/// 
/// \param index The index of the driver to query information about.
/// \param info  A pointer to an SDL_RendererInfo struct to be filled with
/// information on the rendering driver.
/// 
/// \return 0 on success, -1 if the index was out of range.
/// 
/// \sa SDL_CreateRenderer()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRenderDriverInfo(int index, SDL_RendererInfo * info)
/// ```
int SDL_GetRenderDriverInfo(int index, Pointer<SDL_RendererInfo>? info) {
  final _SDL_GetRenderDriverInfo = _SDL2.lookupFunction<
      Int32 Function(Int32 index, Pointer<SDL_RendererInfo>? info),
      int Function(int index, Pointer<SDL_RendererInfo>? info)>('SDL_GetRenderDriverInfo');
  return _SDL_GetRenderDriverInfo(index, info);
}
/// 
/// \brief Create a window and default renderer
/// 
/// \param width    The width of the window
/// \param height   The height of the window
/// \param window_flags The flags used to create the window
/// \param window   A pointer filled with the window, or NULL on error
/// \param renderer A pointer filled with the renderer, or NULL on error
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CreateWindowAndRenderer( int width, int height, Uint32 window_flags, SDL_Window **window, SDL_Renderer **renderer)
/// ```
int SDL_CreateWindowAndRenderer(int width, int height, int window_flags, Pointer<Pointer<SDL_Window>>? window, Pointer<Pointer<SDL_Renderer>>? renderer) {
  final _SDL_CreateWindowAndRenderer = _SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 window_flags, Pointer<Pointer<SDL_Window>>? window, Pointer<Pointer<SDL_Renderer>>? renderer),
      int Function(int width, int height, int window_flags, Pointer<Pointer<SDL_Window>>? window, Pointer<Pointer<SDL_Renderer>>? renderer)>('SDL_CreateWindowAndRenderer');
  return _SDL_CreateWindowAndRenderer(width, height, window_flags, window, renderer);
}
/// 
/// \brief Create a 2D rendering context for a window.
/// 
/// \param window The window where rendering is displayed.
/// \param index    The index of the rendering driver to initialize, or -1 to
/// initialize the first one supporting the requested flags.
/// \param flags    ::SDL_RendererFlags.
/// 
/// \return A valid rendering context or NULL if there was an error.
/// 
/// \sa SDL_CreateSoftwareRenderer()
/// \sa SDL_GetRendererInfo()
/// \sa SDL_DestroyRenderer()
/// 
/// ```c
/// extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateRenderer(SDL_Window * window, int index, Uint32 flags)
/// ```
Pointer<SDL_Renderer>? SDL_CreateRenderer(Pointer<SDL_Window>? window, int index, int flags) {
  final _SDL_CreateRenderer = _SDL2.lookupFunction<
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window, Int32 index, Uint32 flags),
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window, int index, int flags)>('SDL_CreateRenderer');
  return _SDL_CreateRenderer(window, index, flags);
}
/// 
/// \brief Create a 2D software rendering context for a surface.
/// 
/// \param surface The surface where rendering is done.
/// 
/// \return A valid rendering context or NULL if there was an error.
/// 
/// \sa SDL_CreateRenderer()
/// \sa SDL_DestroyRenderer()
/// 
/// ```c
/// extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateSoftwareRenderer(SDL_Surface * surface)
/// ```
Pointer<SDL_Renderer>? SDL_CreateSoftwareRenderer(Pointer<SDL_Surface>? surface) {
  final _SDL_CreateSoftwareRenderer = _SDL2.lookupFunction<
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Surface>? surface),
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Surface>? surface)>('SDL_CreateSoftwareRenderer');
  return _SDL_CreateSoftwareRenderer(surface);
}
/// 
/// \brief Get the renderer associated with a window.
/// 
/// ```c
/// extern DECLSPEC SDL_Renderer * SDLCALL SDL_GetRenderer(SDL_Window * window)
/// ```
Pointer<SDL_Renderer>? SDL_GetRenderer(Pointer<SDL_Window>? window) {
  final _SDL_GetRenderer = _SDL2.lookupFunction<
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window),
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window)>('SDL_GetRenderer');
  return _SDL_GetRenderer(window);
}
/// 
/// \brief Get information about a rendering context.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRendererInfo(SDL_Renderer * renderer, SDL_RendererInfo * info)
/// ```
int SDL_GetRendererInfo(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RendererInfo>? info) {
  final _SDL_GetRendererInfo = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RendererInfo>? info),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RendererInfo>? info)>('SDL_GetRendererInfo');
  return _SDL_GetRendererInfo(renderer, info);
}
/// 
/// \brief Get the output size of a rendering context.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRendererOutputSize(SDL_Renderer * renderer, int *w, int *h)
/// ```
int SDL_GetRendererOutputSize(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetRendererOutputSize = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetRendererOutputSize');
  return _SDL_GetRendererOutputSize(renderer, w, h);
}
/// 
/// \brief Create a texture for a rendering context.
/// 
/// \param renderer The renderer.
/// \param format The format of the texture.
/// \param access One of the enumerated values in ::SDL_TextureAccess.
/// \param w      The width of the texture in pixels.
/// \param h      The height of the texture in pixels.
/// 
/// \return The created texture is returned, or 0 if no rendering context was
/// active,  the format was unsupported, or the width or height were out
/// of range.
/// 
/// \sa SDL_QueryTexture()
/// \sa SDL_UpdateTexture()
/// \sa SDL_DestroyTexture()
/// 
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL SDL_CreateTexture(SDL_Renderer * renderer, Uint32 format, int access, int w, int h)
/// ```
Pointer<SDL_Texture>? SDL_CreateTexture(Pointer<SDL_Renderer>? renderer, int format, int access, int w, int h) {
  final _SDL_CreateTexture = _SDL2.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Uint32 format, Int32 access, Int32 w, Int32 h),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, int format, int access, int w, int h)>('SDL_CreateTexture');
  return _SDL_CreateTexture(renderer, format, access, w, h);
}
/// 
/// \brief Create a texture from an existing surface.
/// 
/// \param renderer The renderer.
/// \param surface The surface containing pixel data used to fill the texture.
/// 
/// \return The created texture is returned, or 0 on error.
/// 
/// \note The surface is not modified or freed by this function.
/// 
/// \sa SDL_QueryTexture()
/// \sa SDL_DestroyTexture()
/// 
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL SDL_CreateTextureFromSurface(SDL_Renderer * renderer, SDL_Surface * surface)
/// ```
Pointer<SDL_Texture>? SDL_CreateTextureFromSurface(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Surface>? surface) {
  final _SDL_CreateTextureFromSurface = _SDL2.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Surface>? surface),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Surface>? surface)>('SDL_CreateTextureFromSurface');
  return _SDL_CreateTextureFromSurface(renderer, surface);
}
/// 
/// \brief Query the attributes of a texture
/// 
/// \param texture A texture to be queried.
/// \param format  A pointer filled in with the raw format of the texture.  The
/// actual format may differ, but pixel transfers will use this
/// format.
/// \param access  A pointer filled in with the actual access to the texture.
/// \param w       A pointer filled in with the width of the texture in pixels.
/// \param h       A pointer filled in with the height of the texture in pixels.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_QueryTexture(SDL_Texture * texture, Uint32 * format, int *access, int *w, int *h)
/// ```
int SDL_QueryTexture(Pointer<SDL_Texture>? texture, Pointer<Uint32>? format, Pointer<Int32>? access, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_QueryTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Uint32>? format, Pointer<Int32>? access, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Uint32>? format, Pointer<Int32>? access, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_QueryTexture');
  return _SDL_QueryTexture(texture, format, access, w, h);
}
/// 
/// \brief Set an additional color value used in render copy operations.
/// 
/// \param texture The texture to update.
/// \param r       The red color value multiplied into copy operations.
/// \param g       The green color value multiplied into copy operations.
/// \param b       The blue color value multiplied into copy operations.
/// 
/// \return 0 on success, or -1 if the texture is not valid or color modulation
/// is not supported.
/// 
/// \sa SDL_GetTextureColorMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureColorMod(SDL_Texture * texture, Uint8 r, Uint8 g, Uint8 b)
/// ```
int SDL_SetTextureColorMod(Pointer<SDL_Texture>? texture, int r, int g, int b) {
  final _SDL_SetTextureColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_Texture>? texture, int r, int g, int b)>('SDL_SetTextureColorMod');
  return _SDL_SetTextureColorMod(texture, r, g, b);
}
/// 
/// \brief Get the additional color value used in render copy operations.
/// 
/// \param texture The texture to query.
/// \param r         A pointer filled in with the current red color value.
/// \param g         A pointer filled in with the current green color value.
/// \param b         A pointer filled in with the current blue color value.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \sa SDL_SetTextureColorMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureColorMod(SDL_Texture * texture, Uint8 * r, Uint8 * g, Uint8 * b)
/// ```
int SDL_GetTextureColorMod(Pointer<SDL_Texture>? texture, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b) {
  final _SDL_GetTextureColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b)>('SDL_GetTextureColorMod');
  return _SDL_GetTextureColorMod(texture, r, g, b);
}
/// 
/// \brief Set an additional alpha value used in render copy operations.
/// 
/// \param texture The texture to update.
/// \param alpha     The alpha value multiplied into copy operations.
/// 
/// \return 0 on success, or -1 if the texture is not valid or alpha modulation
/// is not supported.
/// 
/// \sa SDL_GetTextureAlphaMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureAlphaMod(SDL_Texture * texture, Uint8 alpha)
/// ```
int SDL_SetTextureAlphaMod(Pointer<SDL_Texture>? texture, int alpha) {
  final _SDL_SetTextureAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Uint8 alpha),
      int Function(Pointer<SDL_Texture>? texture, int alpha)>('SDL_SetTextureAlphaMod');
  return _SDL_SetTextureAlphaMod(texture, alpha);
}
/// 
/// \brief Get the additional alpha value used in render copy operations.
/// 
/// \param texture The texture to query.
/// \param alpha     A pointer filled in with the current alpha value.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \sa SDL_SetTextureAlphaMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureAlphaMod(SDL_Texture * texture, Uint8 * alpha)
/// ```
int SDL_GetTextureAlphaMod(Pointer<SDL_Texture>? texture, Pointer<Uint8>? alpha) {
  final _SDL_GetTextureAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? alpha),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? alpha)>('SDL_GetTextureAlphaMod');
  return _SDL_GetTextureAlphaMod(texture, alpha);
}
/// 
/// \brief Set the blend mode used for texture copy operations.
/// 
/// \param texture The texture to update.
/// \param blendMode ::SDL_BlendMode to use for texture blending.
/// 
/// \return 0 on success, or -1 if the texture is not valid or the blend mode is
/// not supported.
/// 
/// \note If the blend mode is not supported, the closest supported mode is
/// chosen.
/// 
/// \sa SDL_GetTextureBlendMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode blendMode)
/// ```
int SDL_SetTextureBlendMode(Pointer<SDL_Texture>? texture, int blendMode) {
  final _SDL_SetTextureBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Int32 blendMode),
      int Function(Pointer<SDL_Texture>? texture, int blendMode)>('SDL_SetTextureBlendMode');
  return _SDL_SetTextureBlendMode(texture, blendMode);
}
/// 
/// \brief Get the blend mode used for texture copy operations.
/// 
/// \param texture   The texture to query.
/// \param blendMode A pointer filled in with the current blend mode.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \sa SDL_SetTextureBlendMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode *blendMode)
/// ```
int SDL_GetTextureBlendMode(Pointer<SDL_Texture>? texture, Pointer<Int32>? blendMode) {
  final _SDL_GetTextureBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Int32>? blendMode),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Int32>? blendMode)>('SDL_GetTextureBlendMode');
  return _SDL_GetTextureBlendMode(texture, blendMode);
}
/// 
/// \brief Update the given texture rectangle with new pixel data.
/// 
/// \param texture   The texture to update
/// \param rect      A pointer to the rectangle of pixels to update, or NULL to
/// update the entire texture.
/// \param pixels    The raw pixel data.
/// \param pitch     The number of bytes between rows of pixel data.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \note This is a fairly slow function.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateTexture(SDL_Texture * texture, const SDL_Rect * rect, const void *pixels, int pitch)
/// ```
int SDL_UpdateTexture(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Void>? pixels, int pitch) {
  final _SDL_UpdateTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Void>? pixels, Int32 pitch),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Void>? pixels, int pitch)>('SDL_UpdateTexture');
  return _SDL_UpdateTexture(texture, rect, pixels, pitch);
}
/// 
/// \brief Lock a portion of the texture for write-only pixel access.
/// 
/// \param texture   The texture to lock for access, which was created with
/// ::SDL_TEXTUREACCESS_STREAMING.
/// \param rect      A pointer to the rectangle to lock for access. If the rect
/// is NULL, the entire texture will be locked.
/// \param pixels    This is filled in with a pointer to the locked pixels,
/// appropriately offset by the locked area.
/// \param pitch     This is filled in with the pitch of the locked pixels.
/// 
/// \return 0 on success, or -1 if the texture is not valid or was not created with ::SDL_TEXTUREACCESS_STREAMING.
/// 
/// \sa SDL_UnlockTexture()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockTexture(SDL_Texture * texture, const SDL_Rect * rect, void **pixels, int *pitch)
/// ```
int SDL_LockTexture(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<Void>>? pixels, Pointer<Int32>? pitch) {
  final _SDL_LockTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<Void>>? pixels, Pointer<Int32>? pitch),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<Void>>? pixels, Pointer<Int32>? pitch)>('SDL_LockTexture');
  return _SDL_LockTexture(texture, rect, pixels, pitch);
}
/// 
/// \brief Unlock a texture, uploading the changes to video memory, if needed.
/// 
/// \sa SDL_LockTexture()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockTexture(SDL_Texture * texture)
/// ```
void SDL_UnlockTexture(Pointer<SDL_Texture>? texture) {
  final _SDL_UnlockTexture = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Texture>? texture),
      void Function(Pointer<SDL_Texture>? texture)>('SDL_UnlockTexture');
  return _SDL_UnlockTexture(texture);
}
/// 
/// \brief Determines whether a window supports the use of render targets
/// 
/// \param renderer The renderer that will be checked
/// 
/// \return SDL_TRUE if supported, SDL_FALSE if not.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_RenderTargetSupported(SDL_Renderer *renderer)
/// ```
int SDL_RenderTargetSupported(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderTargetSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderTargetSupported');
  return _SDL_RenderTargetSupported(renderer);
}
/// 
/// \brief Set a texture as the current rendering target.
/// 
/// \param renderer The renderer.
/// \param texture The targeted texture, which must be created with the SDL_TEXTUREACCESS_TARGET flag, or NULL for the default render target
/// 
/// \return 0 on success, or -1 on error
/// 
/// \sa SDL_GetRenderTarget()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture)
/// ```
int SDL_SetRenderTarget(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture) {
  final _SDL_SetRenderTarget = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture)>('SDL_SetRenderTarget');
  return _SDL_SetRenderTarget(renderer, texture);
}
/// 
/// \brief Get the current render target or NULL for the default render target.
/// 
/// \return The current render target
/// 
/// \sa SDL_SetRenderTarget()
/// 
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL SDL_GetRenderTarget(SDL_Renderer *renderer)
/// ```
Pointer<SDL_Texture>? SDL_GetRenderTarget(Pointer<SDL_Renderer>? renderer) {
  final _SDL_GetRenderTarget = _SDL2.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_GetRenderTarget');
  return _SDL_GetRenderTarget(renderer);
}
/// 
/// \brief Set device independent resolution for rendering
/// 
/// \param renderer The renderer for which resolution should be set.
/// \param w      The width of the logical resolution
/// \param h      The height of the logical resolution
/// 
/// This function uses the viewport and scaling functionality to allow a fixed logical
/// resolution for rendering, regardless of the actual output resolution.  If the actual
/// output resolution doesn't have the same aspect ratio the output rendering will be
/// centered within the output display.
/// 
/// If the output display is a window, mouse events in the window will be filtered
/// and scaled so they seem to arrive within the logical resolution.
/// 
/// \note If this function results in scaling or subpixel drawing by the
/// rendering backend, it will be handled using the appropriate
/// quality hints.
/// 
/// \sa SDL_RenderGetLogicalSize()
/// \sa SDL_RenderSetScale()
/// \sa SDL_RenderSetViewport()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetLogicalSize(SDL_Renderer * renderer, int w, int h)
/// ```
int SDL_RenderSetLogicalSize(Pointer<SDL_Renderer>? renderer, int w, int h) {
  final _SDL_RenderSetLogicalSize = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 w, Int32 h),
      int Function(Pointer<SDL_Renderer>? renderer, int w, int h)>('SDL_RenderSetLogicalSize');
  return _SDL_RenderSetLogicalSize(renderer, w, h);
}
/// 
/// \brief Get device independent resolution for rendering
/// 
/// \param renderer The renderer from which resolution should be queried.
/// \param w      A pointer filled with the width of the logical resolution
/// \param h      A pointer filled with the height of the logical resolution
/// 
/// \sa SDL_RenderSetLogicalSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetLogicalSize(SDL_Renderer * renderer, int *w, int *h)
/// ```
void SDL_RenderGetLogicalSize(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_RenderGetLogicalSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_RenderGetLogicalSize');
  return _SDL_RenderGetLogicalSize(renderer, w, h);
}
/// 
/// \brief Set the drawing area for rendering on the current target.
/// 
/// \param renderer The renderer for which the drawing area should be set.
/// \param rect The rectangle representing the drawing area, or NULL to set the viewport to the entire target.
/// 
/// The x,y of the viewport rect represents the origin for rendering.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \note If the window associated with the renderer is resized, the viewport is automatically reset.
/// 
/// \sa SDL_RenderGetViewport()
/// \sa SDL_RenderSetLogicalSize()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetViewport(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderSetViewport(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderSetViewport = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderSetViewport');
  return _SDL_RenderSetViewport(renderer, rect);
}
/// 
/// \brief Get the drawing area for the current target.
/// 
/// \sa SDL_RenderSetViewport()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetViewport(SDL_Renderer * renderer, SDL_Rect * rect)
/// ```
void SDL_RenderGetViewport(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderGetViewport = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderGetViewport');
  return _SDL_RenderGetViewport(renderer, rect);
}
/// 
/// \brief Set the clip rectangle for the current target.
/// 
/// \param renderer The renderer for which clip rectangle should be set.
/// \param rect   A pointer to the rectangle to set as the clip rectangle, or
/// NULL to disable clipping.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \sa SDL_RenderGetClipRect()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetClipRect(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderSetClipRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderSetClipRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderSetClipRect');
  return _SDL_RenderSetClipRect(renderer, rect);
}
/// 
/// \brief Get the clip rectangle for the current target.
/// 
/// \param renderer The renderer from which clip rectangle should be queried.
/// \param rect   A pointer filled in with the current clip rectangle, or
/// an empty rectangle if clipping is disabled.
/// 
/// \sa SDL_RenderSetClipRect()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetClipRect(SDL_Renderer * renderer, SDL_Rect * rect)
/// ```
void SDL_RenderGetClipRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderGetClipRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderGetClipRect');
  return _SDL_RenderGetClipRect(renderer, rect);
}
/// 
/// \brief Set the drawing scale for rendering on the current target.
/// 
/// \param renderer The renderer for which the drawing scale should be set.
/// \param scaleX The horizontal scaling factor
/// \param scaleY The vertical scaling factor
/// 
/// The drawing coordinates are scaled by the x/y scaling factors
/// before they are used by the renderer.  This allows resolution
/// independent drawing with a single coordinate system.
/// 
/// \note If this results in scaling or subpixel drawing by the
/// rendering backend, it will be handled using the appropriate
/// quality hints.  For best results use integer scaling factors.
/// 
/// \sa SDL_RenderGetScale()
/// \sa SDL_RenderSetLogicalSize()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetScale(SDL_Renderer * renderer, float scaleX, float scaleY)
/// ```
int SDL_RenderSetScale(Pointer<SDL_Renderer>? renderer, double scaleX, double scaleY) {
  final _SDL_RenderSetScale = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Float scaleX, Float scaleY),
      int Function(Pointer<SDL_Renderer>? renderer, double scaleX, double scaleY)>('SDL_RenderSetScale');
  return _SDL_RenderSetScale(renderer, scaleX, scaleY);
}
/// 
/// \brief Get the drawing scale for the current target.
/// 
/// \param renderer The renderer from which drawing scale should be queried.
/// \param scaleX A pointer filled in with the horizontal scaling factor
/// \param scaleY A pointer filled in with the vertical scaling factor
/// 
/// \sa SDL_RenderSetScale()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetScale(SDL_Renderer * renderer, float *scaleX, float *scaleY)
/// ```
void SDL_RenderGetScale(Pointer<SDL_Renderer>? renderer, Pointer<Float>? scaleX, Pointer<Float>? scaleY) {
  final _SDL_RenderGetScale = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<Float>? scaleX, Pointer<Float>? scaleY),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<Float>? scaleX, Pointer<Float>? scaleY)>('SDL_RenderGetScale');
  return _SDL_RenderGetScale(renderer, scaleX, scaleY);
}
/// 
/// \brief Set the color used for drawing operations (Rect, Line and Clear).
/// 
/// \param renderer The renderer for which drawing color should be set.
/// \param r The red value used to draw on the rendering target.
/// \param g The green value used to draw on the rendering target.
/// \param b The blue value used to draw on the rendering target.
/// \param a The alpha value used to draw on the rendering target, usually
/// ::SDL_ALPHA_OPAQUE (255).
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDL_SetRenderDrawColor(SDL_Renderer * renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int SDL_SetRenderDrawColor(Pointer<SDL_Renderer>? renderer, int r, int g, int b, int a) {
  final _SDL_SetRenderDrawColor = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_Renderer>? renderer, int r, int g, int b, int a)>('SDL_SetRenderDrawColor');
  return _SDL_SetRenderDrawColor(renderer, r, g, b, a);
}
/// 
/// \brief Get the color used for drawing operations (Rect, Line and Clear).
/// 
/// \param renderer The renderer from which drawing color should be queried.
/// \param r A pointer to the red value used to draw on the rendering target.
/// \param g A pointer to the green value used to draw on the rendering target.
/// \param b A pointer to the blue value used to draw on the rendering target.
/// \param a A pointer to the alpha value used to draw on the rendering target,
/// usually ::SDL_ALPHA_OPAQUE (255).
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDL_GetRenderDrawColor(SDL_Renderer * renderer, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
/// ```
int SDL_GetRenderDrawColor(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a) {
  final _SDL_GetRenderDrawColor = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a)>('SDL_GetRenderDrawColor');
  return _SDL_GetRenderDrawColor(renderer, r, g, b, a);
}
/// 
/// \brief Set the blend mode used for drawing operations (Fill and Line).
/// 
/// \param renderer The renderer for which blend mode should be set.
/// \param blendMode ::SDL_BlendMode to use for blending.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \note If the blend mode is not supported, the closest supported mode is
/// chosen.
/// 
/// \sa SDL_GetRenderDrawBlendMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode blendMode)
/// ```
int SDL_SetRenderDrawBlendMode(Pointer<SDL_Renderer>? renderer, int blendMode) {
  final _SDL_SetRenderDrawBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 blendMode),
      int Function(Pointer<SDL_Renderer>? renderer, int blendMode)>('SDL_SetRenderDrawBlendMode');
  return _SDL_SetRenderDrawBlendMode(renderer, blendMode);
}
/// 
/// \brief Get the blend mode used for drawing operations.
/// 
/// \param renderer The renderer from which blend mode should be queried.
/// \param blendMode A pointer filled in with the current blend mode.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \sa SDL_SetRenderDrawBlendMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode *blendMode)
/// ```
int SDL_GetRenderDrawBlendMode(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? blendMode) {
  final _SDL_GetRenderDrawBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? blendMode),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? blendMode)>('SDL_GetRenderDrawBlendMode');
  return _SDL_GetRenderDrawBlendMode(renderer, blendMode);
}
/// 
/// \brief Clear the current rendering target with the drawing color
/// 
/// This function clears the entire rendering target, ignoring the viewport.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderClear(SDL_Renderer * renderer)
/// ```
int SDL_RenderClear(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderClear = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderClear');
  return _SDL_RenderClear(renderer);
}
/// 
/// \brief Draw a point on the current rendering target.
/// 
/// \param renderer The renderer which should draw a point.
/// \param x The x coordinate of the point.
/// \param y The y coordinate of the point.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawPoint(SDL_Renderer * renderer, int x, int y)
/// ```
int SDL_RenderDrawPoint(Pointer<SDL_Renderer>? renderer, int x, int y) {
  final _SDL_RenderDrawPoint = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 x, Int32 y),
      int Function(Pointer<SDL_Renderer>? renderer, int x, int y)>('SDL_RenderDrawPoint');
  return _SDL_RenderDrawPoint(renderer, x, y);
}
/// 
/// \brief Draw multiple points on the current rendering target.
/// 
/// \param renderer The renderer which should draw multiple points.
/// \param points The points to draw
/// \param count The number of points to draw
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawPoints(SDL_Renderer * renderer, const SDL_Point * points, int count)
/// ```
int SDL_RenderDrawPoints(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count) {
  final _SDL_RenderDrawPoints = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count)>('SDL_RenderDrawPoints');
  return _SDL_RenderDrawPoints(renderer, points, count);
}
/// 
/// \brief Draw a line on the current rendering target.
/// 
/// \param renderer The renderer which should draw a line.
/// \param x1 The x coordinate of the start point.
/// \param y1 The y coordinate of the start point.
/// \param x2 The x coordinate of the end point.
/// \param y2 The y coordinate of the end point.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawLine(SDL_Renderer * renderer, int x1, int y1, int x2, int y2)
/// ```
int SDL_RenderDrawLine(Pointer<SDL_Renderer>? renderer, int x1, int y1, int x2, int y2) {
  final _SDL_RenderDrawLine = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 x1, Int32 y1, Int32 x2, Int32 y2),
      int Function(Pointer<SDL_Renderer>? renderer, int x1, int y1, int x2, int y2)>('SDL_RenderDrawLine');
  return _SDL_RenderDrawLine(renderer, x1, y1, x2, y2);
}
/// 
/// \brief Draw a series of connected lines on the current rendering target.
/// 
/// \param renderer The renderer which should draw multiple lines.
/// \param points The points along the lines
/// \param count The number of points, drawing count-1 lines
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawLines(SDL_Renderer * renderer, const SDL_Point * points, int count)
/// ```
int SDL_RenderDrawLines(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count) {
  final _SDL_RenderDrawLines = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count)>('SDL_RenderDrawLines');
  return _SDL_RenderDrawLines(renderer, points, count);
}
/// 
/// \brief Draw a rectangle on the current rendering target.
/// 
/// \param renderer The renderer which should draw a rectangle.
/// \param rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawRect(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderDrawRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderDrawRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderDrawRect');
  return _SDL_RenderDrawRect(renderer, rect);
}
/// 
/// \brief Draw some number of rectangles on the current rendering target.
/// 
/// \param renderer The renderer which should draw multiple rectangles.
/// \param rects A pointer to an array of destination rectangles.
/// \param count The number of rectangles.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count)
/// ```
int SDL_RenderDrawRects(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count) {
  final _SDL_RenderDrawRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count)>('SDL_RenderDrawRects');
  return _SDL_RenderDrawRects(renderer, rects, count);
}
/// 
/// \brief Fill a rectangle on the current rendering target with the drawing color.
/// 
/// \param renderer The renderer which should fill a rectangle.
/// \param rect A pointer to the destination rectangle, or NULL for the entire
/// rendering target.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFillRect(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderFillRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderFillRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderFillRect');
  return _SDL_RenderFillRect(renderer, rect);
}
/// 
/// \brief Fill some number of rectangles on the current rendering target with the drawing color.
/// 
/// \param renderer The renderer which should fill multiple rectangles.
/// \param rects A pointer to an array of destination rectangles.
/// \param count The number of rectangles.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFillRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count)
/// ```
int SDL_RenderFillRects(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count) {
  final _SDL_RenderFillRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count)>('SDL_RenderFillRects');
  return _SDL_RenderFillRects(renderer, rects, count);
}
/// 
/// \brief Copy a portion of the texture to the current rendering target.
/// 
/// \param renderer The renderer which should copy parts of a texture.
/// \param texture The source texture.
/// \param srcrect   A pointer to the source rectangle, or NULL for the entire
/// texture.
/// \param dstrect   A pointer to the destination rectangle, or NULL for the
/// entire rendering target.
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderCopy(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect)
/// ```
int SDL_RenderCopy(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect) {
  final _SDL_RenderCopy = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect)>('SDL_RenderCopy');
  return _SDL_RenderCopy(renderer, texture, srcrect, dstrect);
}
/// 
/// \brief Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center
/// 
/// \param renderer The renderer which should copy parts of a texture.
/// \param texture The source texture.
/// \param srcrect   A pointer to the source rectangle, or NULL for the entire
/// texture.
/// \param dstrect   A pointer to the destination rectangle, or NULL for the
/// entire rendering target.
/// \param angle    An angle in degrees that indicates the rotation that will be applied to dstrect
/// \param center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done aroud dstrect.w/2, dstrect.h/2)
/// \param flip     An SDL_RendererFlip value stating which flipping actions should be performed on the texture
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderCopyEx(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect, const double angle, const SDL_Point *center, const SDL_RendererFlip flip)
/// ```
int SDL_RenderCopyEx(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect, double angle, Pointer<SDL_Point>? center, int flip) {
  final _SDL_RenderCopyEx = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect, Double angle, Pointer<SDL_Point>? center, Int32 flip),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect, double angle, Pointer<SDL_Point>? center, int flip)>('SDL_RenderCopyEx');
  return _SDL_RenderCopyEx(renderer, texture, srcrect, dstrect, angle, center, flip);
}
/// 
/// \brief Read pixels from the current rendering target.
/// 
/// \param renderer The renderer from which pixels should be read.
/// \param rect   A pointer to the rectangle to read, or NULL for the entire
/// render target.
/// \param format The desired format of the pixel data, or 0 to use the format
/// of the rendering target
/// \param pixels A pointer to be filled in with the pixel data
/// \param pitch  The pitch of the pixels parameter.
/// 
/// \return 0 on success, or -1 if pixel reading is not supported.
/// 
/// \warning This is a very slow operation, and should not be used frequently.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderReadPixels(SDL_Renderer * renderer, const SDL_Rect * rect, Uint32 format, void *pixels, int pitch)
/// ```
int SDL_RenderReadPixels(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect, int format, Pointer<Void>? pixels, int pitch) {
  final _SDL_RenderReadPixels = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect, Uint32 format, Pointer<Void>? pixels, Int32 pitch),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect, int format, Pointer<Void>? pixels, int pitch)>('SDL_RenderReadPixels');
  return _SDL_RenderReadPixels(renderer, rect, format, pixels, pitch);
}
/// 
/// \brief Update the screen with rendering performed.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderPresent(SDL_Renderer * renderer)
/// ```
void SDL_RenderPresent(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderPresent = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer),
      void Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderPresent');
  return _SDL_RenderPresent(renderer);
}
/// 
/// \brief Destroy the specified texture.
/// 
/// \sa SDL_CreateTexture()
/// \sa SDL_CreateTextureFromSurface()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyTexture(SDL_Texture * texture)
/// ```
void SDL_DestroyTexture(Pointer<SDL_Texture>? texture) {
  final _SDL_DestroyTexture = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Texture>? texture),
      void Function(Pointer<SDL_Texture>? texture)>('SDL_DestroyTexture');
  return _SDL_DestroyTexture(texture);
}
/// 
/// \brief Destroy the rendering context for a window and free associated
/// textures.
/// 
/// \sa SDL_CreateRenderer()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyRenderer(SDL_Renderer * renderer)
/// ```
void SDL_DestroyRenderer(Pointer<SDL_Renderer>? renderer) {
  final _SDL_DestroyRenderer = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer),
      void Function(Pointer<SDL_Renderer>? renderer)>('SDL_DestroyRenderer');
  return _SDL_DestroyRenderer(renderer);
}
/// 
/// \brief Bind the texture to the current OpenGL/ES/ES2 context for use with
/// OpenGL instructions.
/// 
/// \param texture  The SDL texture to bind
/// \param texw     A pointer to a float that will be filled with the texture width
/// \param texh     A pointer to a float that will be filled with the texture height
/// 
/// \return 0 on success, or -1 if the operation is not supported
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_BindTexture(SDL_Texture *texture, float *texw, float *texh)
/// ```
int SDL_GL_BindTexture(Pointer<SDL_Texture>? texture, Pointer<Float>? texw, Pointer<Float>? texh) {
  final _SDL_GL_BindTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Float>? texw, Pointer<Float>? texh),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Float>? texw, Pointer<Float>? texh)>('SDL_GL_BindTexture');
  return _SDL_GL_BindTexture(texture, texw, texh);
}
/// 
/// \brief Unbind a texture from the current OpenGL/ES/ES2 context.
/// 
/// \param texture  The SDL texture to unbind
/// 
/// \return 0 on success, or -1 if the operation is not supported
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_UnbindTexture(SDL_Texture *texture)
/// ```
int SDL_GL_UnbindTexture(Pointer<SDL_Texture>? texture) {
  final _SDL_GL_UnbindTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture),
      int Function(Pointer<SDL_Texture>? texture)>('SDL_GL_UnbindTexture');
  return _SDL_GL_UnbindTexture(texture);
}
/// @{
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFile(const char *file, const char *mode)
/// ```
Pointer<SDL_RWops>? SDL_RWFromFile(String file, String mode) {
  final _SDL_RWFromFile = _SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<Utf8>? file, Pointer<Utf8>? mode),
      Pointer<SDL_RWops>? Function(Pointer<Utf8>? file, Pointer<Utf8>? mode)>('SDL_RWFromFile');
  final _filePointer = file.toNativeUtf8();
  final _modePointer = mode.toNativeUtf8();
  final _result = _SDL_RWFromFile(_filePointer, _modePointer);
  calloc.free(_filePointer);
  calloc.free(_modePointer);
  return _result;
}
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFP(FILE * fp, SDL_bool autoclose)
/// ```
Pointer<SDL_RWops>? SDL_RWFromFP(Pointer<IntPtr>? fp, int autoclose) {
  final _SDL_RWFromFP = _SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<IntPtr>? fp, Int32 autoclose),
      Pointer<SDL_RWops>? Function(Pointer<IntPtr>? fp, int autoclose)>('SDL_RWFromFP');
  return _SDL_RWFromFP(fp, autoclose);
}
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromMem(void *mem, int size)
/// ```
Pointer<SDL_RWops>? SDL_RWFromMem(Pointer<Void>? mem, int size) {
  final _SDL_RWFromMem = _SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, Int32 size),
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, int size)>('SDL_RWFromMem');
  return _SDL_RWFromMem(mem, size);
}
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromConstMem(const void *mem, int size)
/// ```
Pointer<SDL_RWops>? SDL_RWFromConstMem(Pointer<Void>? mem, int size) {
  final _SDL_RWFromConstMem = _SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, Int32 size),
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, int size)>('SDL_RWFromConstMem');
  return _SDL_RWFromConstMem(mem, size);
}
/// RWFrom functions
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_AllocRW(void)
/// ```
Pointer<SDL_RWops>? SDL_AllocRW() {
  final _SDL_AllocRW = _SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(),
      Pointer<SDL_RWops>? Function()>('SDL_AllocRW');
  return _SDL_AllocRW();
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeRW(SDL_RWops * area)
/// ```
void SDL_FreeRW(Pointer<SDL_RWops>? area) {
  final _SDL_FreeRW = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_RWops>? area),
      void Function(Pointer<SDL_RWops>? area)>('SDL_FreeRW');
  return _SDL_FreeRW(area);
}
/// @{
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_ReadU8(SDL_RWops * src)
/// ```
int SDL_ReadU8(Pointer<SDL_RWops>? src) {
  final _SDL_ReadU8 = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadU8');
  return _SDL_ReadU8(src);
}
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_ReadLE16(SDL_RWops * src)
/// ```
int SDL_ReadLE16(Pointer<SDL_RWops>? src) {
  final _SDL_ReadLE16 = _SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadLE16');
  return _SDL_ReadLE16(src);
}
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_ReadBE16(SDL_RWops * src)
/// ```
int SDL_ReadBE16(Pointer<SDL_RWops>? src) {
  final _SDL_ReadBE16 = _SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadBE16');
  return _SDL_ReadBE16(src);
}
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_ReadLE32(SDL_RWops * src)
/// ```
int SDL_ReadLE32(Pointer<SDL_RWops>? src) {
  final _SDL_ReadLE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadLE32');
  return _SDL_ReadLE32(src);
}
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_ReadBE32(SDL_RWops * src)
/// ```
int SDL_ReadBE32(Pointer<SDL_RWops>? src) {
  final _SDL_ReadBE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadBE32');
  return _SDL_ReadBE32(src);
}
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_ReadLE64(SDL_RWops * src)
/// ```
int SDL_ReadLE64(Pointer<SDL_RWops>? src) {
  final _SDL_ReadLE64 = _SDL2.lookupFunction<
      Uint64 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadLE64');
  return _SDL_ReadLE64(src);
}
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_ReadBE64(SDL_RWops * src)
/// ```
int SDL_ReadBE64(Pointer<SDL_RWops>? src) {
  final _SDL_ReadBE64 = _SDL2.lookupFunction<
      Uint64 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadBE64');
  return _SDL_ReadBE64(src);
}
/// @{
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteU8(SDL_RWops * dst, Uint8 value)
/// ```
int SDL_WriteU8(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteU8 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint8 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteU8');
  return _SDL_WriteU8(dst, value);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE16(SDL_RWops * dst, Uint16 value)
/// ```
int SDL_WriteLE16(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteLE16 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint16 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteLE16');
  return _SDL_WriteLE16(dst, value);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE16(SDL_RWops * dst, Uint16 value)
/// ```
int SDL_WriteBE16(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteBE16 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint16 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteBE16');
  return _SDL_WriteBE16(dst, value);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE32(SDL_RWops * dst, Uint32 value)
/// ```
int SDL_WriteLE32(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteLE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint32 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteLE32');
  return _SDL_WriteLE32(dst, value);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE32(SDL_RWops * dst, Uint32 value)
/// ```
int SDL_WriteBE32(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteBE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint32 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteBE32');
  return _SDL_WriteBE32(dst, value);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE64(SDL_RWops * dst, Uint64 value)
/// ```
int SDL_WriteLE64(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteLE64 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint64 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteLE64');
  return _SDL_WriteLE64(dst, value);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE64(SDL_RWops * dst, Uint64 value)
/// ```
int SDL_WriteBE64(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteBE64 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint64 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteBE64');
  return _SDL_WriteBE64(dst, value);
}
/// 
/// \brief Create a window that can be shaped with the specified position, dimensions, and flags.
/// 
/// \param title The title of the window, in UTF-8 encoding.
/// \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param w     The width of the window.
/// \param h     The height of the window.
/// \param flags The flags for the window, a mask of SDL_WINDOW_BORDERLESS with any of the following:
/// ::SDL_WINDOW_OPENGL,     ::SDL_WINDOW_INPUT_GRABBED,
/// ::SDL_WINDOW_HIDDEN,     ::SDL_WINDOW_RESIZABLE,
/// ::SDL_WINDOW_MAXIMIZED,  ::SDL_WINDOW_MINIMIZED,
/// ::SDL_WINDOW_BORDERLESS is always set, and ::SDL_WINDOW_FULLSCREEN is always unset.
/// 
/// \return The window created, or NULL if window creation failed.
/// 
/// \sa SDL_DestroyWindow()
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateShapedWindow(const char *title,unsigned int x,unsigned int y,unsigned int w,unsigned int h,Uint32 flags)
/// ```
Pointer<SDL_Window>? SDL_CreateShapedWindow(String title, int x, int y, int w, int h, int flags) {
  final _SDL_CreateShapedWindow = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, Uint32 x, Uint32 y, Uint32 w, Uint32 h, Uint32 flags),
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, int x, int y, int w, int h, int flags)>('SDL_CreateShapedWindow');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_CreateShapedWindow(_titlePointer, x, y, w, h, flags);
  calloc.free(_titlePointer);
  return _result;
}
/// 
/// \brief Return whether the given window is a shaped window.
/// 
/// \param window The window to query for being shaped.
/// 
/// \return SDL_TRUE if the window is a window that can be shaped, SDL_FALSE if the window is unshaped or NULL.
/// \sa SDL_CreateShapedWindow
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsShapedWindow(const SDL_Window *window)
/// ```
int SDL_IsShapedWindow(Pointer<SDL_Window>? window) {
  final _SDL_IsShapedWindow = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_IsShapedWindow');
  return _SDL_IsShapedWindow(window);
}
/// 
/// \brief Set the shape and parameters of a shaped window.
/// 
/// \param window The shaped window whose parameters should be set.
/// \param shape A surface encoding the desired shape for the window.
/// \param shape_mode The parameters to set for the shaped window.
/// 
/// \return 0 on success, SDL_INVALID_SHAPE_ARGUMENT on invalid an invalid shape argument, or SDL_NONSHAPEABLE_WINDOW
/// if the SDL_Window* given does not reference a valid shaped window.
/// 
/// \sa SDL_WindowShapeMode
/// \sa SDL_GetShapedWindowMode.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowShape(SDL_Window *window,SDL_Surface *shape,SDL_WindowShapeMode *shape_mode)
/// ```
int SDL_SetWindowShape(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? shape, Pointer<SDL_WindowShapeMode>? shape_mode) {
  final _SDL_SetWindowShape = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? shape, Pointer<SDL_WindowShapeMode>? shape_mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? shape, Pointer<SDL_WindowShapeMode>? shape_mode)>('SDL_SetWindowShape');
  return _SDL_SetWindowShape(window, shape, shape_mode);
}
/// 
/// \brief Get the shape parameters of a shaped window.
/// 
/// \param window The shaped window whose parameters should be retrieved.
/// \param shape_mode An empty shape-mode structure to fill, or NULL to check whether the window has a shape.
/// 
/// \return 0 if the window has a shape and, provided shape_mode was not NULL, shape_mode has been filled with the mode
/// data, SDL_NONSHAPEABLE_WINDOW if the SDL_Window given is not a shaped window, or SDL_WINDOW_LACKS_SHAPE if
/// the SDL_Window* given is a shapeable window currently lacking a shape.
/// 
/// \sa SDL_WindowShapeMode
/// \sa SDL_SetWindowShape
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetShapedWindowMode(SDL_Window *window,SDL_WindowShapeMode *shape_mode)
/// ```
int SDL_GetShapedWindowMode(Pointer<SDL_Window>? window, Pointer<SDL_WindowShapeMode>? shape_mode) {
  final _SDL_GetShapedWindowMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_WindowShapeMode>? shape_mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_WindowShapeMode>? shape_mode)>('SDL_GetShapedWindowMode');
  return _SDL_GetShapedWindowMode(window, shape_mode);
}
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_malloc(size_t size)
/// ```
Pointer<Void>? SDL_malloc(int size) {
  final _SDL_malloc = _SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 size),
      Pointer<Void>? Function(int size)>('SDL_malloc');
  return _SDL_malloc(size);
}
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_calloc(size_t nmemb, size_t size)
/// ```
Pointer<Void>? SDL_calloc(int nmemb, int size) {
  final _SDL_calloc = _SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 nmemb, Uint32 size),
      Pointer<Void>? Function(int nmemb, int size)>('SDL_calloc');
  return _SDL_calloc(nmemb, size);
}
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_realloc(void *mem, size_t size)
/// ```
Pointer<Void>? SDL_realloc(Pointer<Void>? mem, int size) {
  final _SDL_realloc = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? mem, Uint32 size),
      Pointer<Void>? Function(Pointer<Void>? mem, int size)>('SDL_realloc');
  return _SDL_realloc(mem, size);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_free(void *mem)
/// ```
void SDL_free(Pointer<Void>? mem) {
  final _SDL_free = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? mem),
      void Function(Pointer<Void>? mem)>('SDL_free');
  return _SDL_free(mem);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_getenv(const char *name)
/// ```
Pointer<Int8>? SDL_getenv(String name) {
  final _SDL_getenv = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? name),
      Pointer<Int8>? Function(Pointer<Utf8>? name)>('SDL_getenv');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_getenv(_namePointer);
  calloc.free(_namePointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_setenv(const char *name, const char *value, int overwrite)
/// ```
int SDL_setenv(String name, String value, int overwrite) {
  final _SDL_setenv = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value, Int32 overwrite),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value, int overwrite)>('SDL_setenv');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_setenv(_namePointer, _valuePointer, overwrite);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_qsort(void *base, size_t nmemb, size_t size, int (*compare) (const void *, const void *))
/// ```
void SDL_qsort(Pointer<Void>? base, int nmemb, int size, Pointer<Void>? compare) {
  final _SDL_qsort = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? base, Uint32 nmemb, Uint32 size, Pointer<Void>? compare),
      void Function(Pointer<Void>? base, int nmemb, int size, Pointer<Void>? compare)>('SDL_qsort');
  return _SDL_qsort(base, nmemb, size, compare);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_abs(int x)
/// ```
int SDL_abs(int x) {
  final _SDL_abs = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_abs');
  return _SDL_abs(x);
}
/// !!! FIXME: Maybe we do forceinline functions of SDL_mini, SDL_minf, etc?
/// ```c
/// extern DECLSPEC int SDLCALL SDL_isdigit(int x)
/// ```
int SDL_isdigit(int x) {
  final _SDL_isdigit = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isdigit');
  return _SDL_isdigit(x);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_isspace(int x)
/// ```
int SDL_isspace(int x) {
  final _SDL_isspace = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isspace');
  return _SDL_isspace(x);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_toupper(int x)
/// ```
int SDL_toupper(int x) {
  final _SDL_toupper = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_toupper');
  return _SDL_toupper(x);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_tolower(int x)
/// ```
int SDL_tolower(int x) {
  final _SDL_tolower = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_tolower');
  return _SDL_tolower(x);
}
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memset(void *dst, int c, size_t len)
/// ```
Pointer<Void>? SDL_memset(Pointer<Void>? dst, int c, int len) {
  final _SDL_memset = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? dst, Int32 c, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? dst, int c, int len)>('SDL_memset');
  return _SDL_memset(dst, c, len);
}
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memcpy(void *dst, const void *src, size_t len)
/// ```
Pointer<Void>? SDL_memcpy(Pointer<Void>? dst, Pointer<Void>? src, int len) {
  final _SDL_memcpy = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, int len)>('SDL_memcpy');
  return _SDL_memcpy(dst, src, len);
}
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memmove(void *dst, const void *src, size_t len)
/// ```
Pointer<Void>? SDL_memmove(Pointer<Void>? dst, Pointer<Void>? src, int len) {
  final _SDL_memmove = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, int len)>('SDL_memmove');
  return _SDL_memmove(dst, src, len);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_memcmp(const void *s1, const void *s2, size_t len)
/// ```
int SDL_memcmp(Pointer<Void>? s1, Pointer<Void>? s2, int len) {
  final _SDL_memcmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? s1, Pointer<Void>? s2, Uint32 len),
      int Function(Pointer<Void>? s1, Pointer<Void>? s2, int len)>('SDL_memcmp');
  return _SDL_memcmp(s1, s2, len);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslen(const wchar_t *wstr)
/// ```
int SDL_wcslen(Pointer<Int16>? wstr) {
  final _SDL_wcslen = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16>? wstr),
      int Function(Pointer<Int16>? wstr)>('SDL_wcslen');
  return _SDL_wcslen(wstr);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslcpy(wchar_t *dst, const wchar_t *src, size_t maxlen)
/// ```
int SDL_wcslcpy(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen) {
  final _SDL_wcslcpy = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16>? dst, Pointer<Int16>? src, Uint32 maxlen),
      int Function(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen)>('SDL_wcslcpy');
  return _SDL_wcslcpy(dst, src, maxlen);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslcat(wchar_t *dst, const wchar_t *src, size_t maxlen)
/// ```
int SDL_wcslcat(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen) {
  final _SDL_wcslcat = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16>? dst, Pointer<Int16>? src, Uint32 maxlen),
      int Function(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen)>('SDL_wcslcat');
  return _SDL_wcslcat(dst, src, maxlen);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlen(const char *str)
/// ```
int SDL_strlen(String str) {
  final _SDL_strlen = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8>? str),
      int Function(Pointer<Utf8>? str)>('SDL_strlen');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strlen(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlcpy(char *dst, const char *src, size_t maxlen)
/// ```
int SDL_strlcpy(Pointer<Int8>? dst, String src, int maxlen) {
  final _SDL_strlcpy = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8>? dst, Pointer<Utf8>? src, Uint32 maxlen),
      int Function(Pointer<Int8>? dst, Pointer<Utf8>? src, int maxlen)>('SDL_strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcpy(dst, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_utf8strlcpy(char *dst, const char *src, size_t dst_bytes)
/// ```
int SDL_utf8strlcpy(Pointer<Int8>? dst, String src, int dst_bytes) {
  final _SDL_utf8strlcpy = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8>? dst, Pointer<Utf8>? src, Uint32 dst_bytes),
      int Function(Pointer<Int8>? dst, Pointer<Utf8>? src, int dst_bytes)>('SDL_utf8strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_utf8strlcpy(dst, _srcPointer, dst_bytes);
  calloc.free(_srcPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlcat(char *dst, const char *src, size_t maxlen)
/// ```
int SDL_strlcat(Pointer<Int8>? dst, String src, int maxlen) {
  final _SDL_strlcat = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8>? dst, Pointer<Utf8>? src, Uint32 maxlen),
      int Function(Pointer<Int8>? dst, Pointer<Utf8>? src, int maxlen)>('SDL_strlcat');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcat(dst, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strdup(const char *str)
/// ```
Pointer<Int8>? SDL_strdup(String str) {
  final _SDL_strdup = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? str),
      Pointer<Int8>? Function(Pointer<Utf8>? str)>('SDL_strdup');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strdup(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strrev(char *str)
/// ```
Pointer<Int8>? SDL_strrev(Pointer<Int8>? str) {
  final _SDL_strrev = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? str),
      Pointer<Int8>? Function(Pointer<Int8>? str)>('SDL_strrev');
  return _SDL_strrev(str);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strupr(char *str)
/// ```
Pointer<Int8>? SDL_strupr(Pointer<Int8>? str) {
  final _SDL_strupr = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? str),
      Pointer<Int8>? Function(Pointer<Int8>? str)>('SDL_strupr');
  return _SDL_strupr(str);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strlwr(char *str)
/// ```
Pointer<Int8>? SDL_strlwr(Pointer<Int8>? str) {
  final _SDL_strlwr = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? str),
      Pointer<Int8>? Function(Pointer<Int8>? str)>('SDL_strlwr');
  return _SDL_strlwr(str);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strchr(const char *str, int c)
/// ```
Pointer<Int8>? SDL_strchr(String str, int c) {
  final _SDL_strchr = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? str, Int32 c),
      Pointer<Int8>? Function(Pointer<Utf8>? str, int c)>('SDL_strchr');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strchr(_strPointer, c);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strrchr(const char *str, int c)
/// ```
Pointer<Int8>? SDL_strrchr(String str, int c) {
  final _SDL_strrchr = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? str, Int32 c),
      Pointer<Int8>? Function(Pointer<Utf8>? str, int c)>('SDL_strrchr');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strrchr(_strPointer, c);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strstr(const char *haystack, const char *needle)
/// ```
Pointer<Int8>? SDL_strstr(String haystack, String needle) {
  final _SDL_strstr = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? haystack, Pointer<Utf8>? needle),
      Pointer<Int8>? Function(Pointer<Utf8>? haystack, Pointer<Utf8>? needle)>('SDL_strstr');
  final _haystackPointer = haystack.toNativeUtf8();
  final _needlePointer = needle.toNativeUtf8();
  final _result = _SDL_strstr(_haystackPointer, _needlePointer);
  calloc.free(_haystackPointer);
  calloc.free(_needlePointer);
  return _result;
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_itoa(int value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_itoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_itoa = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Int32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_itoa');
  return _SDL_itoa(value, str, radix);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_uitoa(unsigned int value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_uitoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_uitoa = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Uint32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_uitoa');
  return _SDL_uitoa(value, str, radix);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_ltoa(long value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_ltoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_ltoa = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Int32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_ltoa');
  return _SDL_ltoa(value, str, radix);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_ultoa(unsigned long value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_ultoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_ultoa = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Uint32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_ultoa');
  return _SDL_ultoa(value, str, radix);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_lltoa(Sint64 value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_lltoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_lltoa = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Int64 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_lltoa');
  return _SDL_lltoa(value, str, radix);
}
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_ulltoa(Uint64 value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_ulltoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_ulltoa = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Uint64 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_ulltoa');
  return _SDL_ulltoa(value, str, radix);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_atoi(const char *str)
/// ```
int SDL_atoi(String str) {
  final _SDL_atoi = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str),
      int Function(Pointer<Utf8>? str)>('SDL_atoi');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_atoi(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_atof(const char *str)
/// ```
double SDL_atof(String str) {
  final _SDL_atof = _SDL2.lookupFunction<
      Double Function(Pointer<Utf8>? str),
      double Function(Pointer<Utf8>? str)>('SDL_atof');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_atof(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC long SDLCALL SDL_strtol(const char *str, char **endp, int base)
/// ```
int SDL_strtol(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtol = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtol');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtol(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC unsigned long SDLCALL SDL_strtoul(const char *str, char **endp, int base)
/// ```
int SDL_strtoul(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtoul = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtoul');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoul(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC Sint64 SDLCALL SDL_strtoll(const char *str, char **endp, int base)
/// ```
int SDL_strtoll(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtoll = _SDL2.lookupFunction<
      Int64 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtoll');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoll(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_strtoull(const char *str, char **endp, int base)
/// ```
int SDL_strtoull(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtoull = _SDL2.lookupFunction<
      Uint64 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtoull');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoull(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_strtod(const char *str, char **endp)
/// ```
double SDL_strtod(String str, Pointer<Pointer<Int8>>? endp) {
  final _SDL_strtod = _SDL2.lookupFunction<
      Double Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp),
      double Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp)>('SDL_strtod');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtod(_strPointer, endp);
  calloc.free(_strPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_strcmp(const char *str1, const char *str2)
/// ```
int SDL_strcmp(String str1, String str2) {
  final _SDL_strcmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2)>('SDL_strcmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strcmp(_str1Pointer, _str2Pointer);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_strncmp(const char *str1, const char *str2, size_t maxlen)
/// ```
int SDL_strncmp(String str1, String str2, int maxlen) {
  final _SDL_strncmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, Uint32 maxlen),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, int maxlen)>('SDL_strncmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strncmp(_str1Pointer, _str2Pointer, maxlen);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_strcasecmp(const char *str1, const char *str2)
/// ```
int SDL_strcasecmp(String str1, String str2) {
  final _SDL_strcasecmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2)>('SDL_strcasecmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strcasecmp(_str1Pointer, _str2Pointer);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_strncasecmp(const char *str1, const char *str2, size_t len)
/// ```
int SDL_strncasecmp(String str1, String str2, int len) {
  final _SDL_strncasecmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, Uint32 len),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, int len)>('SDL_strncasecmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strncasecmp(_str1Pointer, _str2Pointer, len);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_sscanf(const char *text, const char *fmt, ...)
/// ```
int SDL_sscanf(String text, String fmt, Pointer<Void>? arg2) {
  final _SDL_sscanf = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? text, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      int Function(Pointer<Utf8>? text, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_sscanf');
  final _textPointer = text.toNativeUtf8();
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_sscanf(_textPointer, _fmtPointer, arg2);
  calloc.free(_textPointer);
  calloc.free(_fmtPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_snprintf(char *text, size_t maxlen, const char *fmt, ...)
/// ```
int SDL_snprintf(Pointer<Int8>? text, int maxlen, String fmt, Pointer<Void>? arg3) {
  final _SDL_snprintf = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int8>? text, Uint32 maxlen, Pointer<Utf8>? fmt, Pointer<Void>? arg3),
      int Function(Pointer<Int8>? text, int maxlen, Pointer<Utf8>? fmt, Pointer<Void>? arg3)>('SDL_snprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_snprintf(text, maxlen, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_vsnprintf(char *text, size_t maxlen, const char *fmt, va_list ap)
/// ```
int SDL_vsnprintf(Pointer<Int8>? text, int maxlen, String fmt, Pointer<Void>? ap) {
  final _SDL_vsnprintf = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int8>? text, Uint32 maxlen, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      int Function(Pointer<Int8>? text, int maxlen, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_vsnprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_vsnprintf(text, maxlen, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_atan(double x)
/// ```
double SDL_atan(double x) {
  final _SDL_atan = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_atan');
  return _SDL_atan(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_atan2(double x, double y)
/// ```
double SDL_atan2(double x, double y) {
  final _SDL_atan2 = _SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_atan2');
  return _SDL_atan2(x, y);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_ceil(double x)
/// ```
double SDL_ceil(double x) {
  final _SDL_ceil = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_ceil');
  return _SDL_ceil(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_copysign(double x, double y)
/// ```
double SDL_copysign(double x, double y) {
  final _SDL_copysign = _SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_copysign');
  return _SDL_copysign(x, y);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_cos(double x)
/// ```
double SDL_cos(double x) {
  final _SDL_cos = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_cos');
  return _SDL_cos(x);
}
/// ```c
/// extern DECLSPEC float SDLCALL SDL_cosf(float x)
/// ```
double SDL_cosf(double x) {
  final _SDL_cosf = _SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_cosf');
  return _SDL_cosf(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_fabs(double x)
/// ```
double SDL_fabs(double x) {
  final _SDL_fabs = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_fabs');
  return _SDL_fabs(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_floor(double x)
/// ```
double SDL_floor(double x) {
  final _SDL_floor = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_floor');
  return _SDL_floor(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_log(double x)
/// ```
double SDL_log(double x) {
  final _SDL_log = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_log');
  return _SDL_log(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_pow(double x, double y)
/// ```
double SDL_pow(double x, double y) {
  final _SDL_pow = _SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_pow');
  return _SDL_pow(x, y);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_scalbn(double x, int n)
/// ```
double SDL_scalbn(double x, int n) {
  final _SDL_scalbn = _SDL2.lookupFunction<
      Double Function(Double x, Int32 n),
      double Function(double x, int n)>('SDL_scalbn');
  return _SDL_scalbn(x, n);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_sin(double x)
/// ```
double SDL_sin(double x) {
  final _SDL_sin = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_sin');
  return _SDL_sin(x);
}
/// ```c
/// extern DECLSPEC float SDLCALL SDL_sinf(float x)
/// ```
double SDL_sinf(double x) {
  final _SDL_sinf = _SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_sinf');
  return _SDL_sinf(x);
}
/// ```c
/// extern DECLSPEC double SDLCALL SDL_sqrt(double x)
/// ```
double SDL_sqrt(double x) {
  final _SDL_sqrt = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_sqrt');
  return _SDL_sqrt(x);
}
/// ```c
/// extern DECLSPEC SDL_iconv_t SDLCALL SDL_iconv_open(const char *tocode, const char *fromcode)
/// ```
Pointer<Void>? SDL_iconv_open(String tocode, String fromcode) {
  final _SDL_iconv_open = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode),
      Pointer<Void>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode)>('SDL_iconv_open');
  final _tocodePointer = tocode.toNativeUtf8();
  final _fromcodePointer = fromcode.toNativeUtf8();
  final _result = _SDL_iconv_open(_tocodePointer, _fromcodePointer);
  calloc.free(_tocodePointer);
  calloc.free(_fromcodePointer);
  return _result;
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_iconv_close(SDL_iconv_t cd)
/// ```
int SDL_iconv_close(Pointer<Void>? cd) {
  final _SDL_iconv_close = _SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? cd),
      int Function(Pointer<Void>? cd)>('SDL_iconv_close');
  return _SDL_iconv_close(cd);
}
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_iconv(SDL_iconv_t cd, const char **inbuf, size_t * inbytesleft, char **outbuf, size_t * outbytesleft)
/// ```
int SDL_iconv(Pointer<Void>? cd, Pointer<Pointer<Int8>>? inbuf, Pointer<Uint32>? inbytesleft, Pointer<Pointer<Int8>>? outbuf, Pointer<Uint32>? outbytesleft) {
  final _SDL_iconv = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? cd, Pointer<Pointer<Int8>>? inbuf, Pointer<Uint32>? inbytesleft, Pointer<Pointer<Int8>>? outbuf, Pointer<Uint32>? outbytesleft),
      int Function(Pointer<Void>? cd, Pointer<Pointer<Int8>>? inbuf, Pointer<Uint32>? inbytesleft, Pointer<Pointer<Int8>>? outbuf, Pointer<Uint32>? outbytesleft)>('SDL_iconv');
  return _SDL_iconv(cd, inbuf, inbytesleft, outbuf, outbytesleft);
}
/// 
/// This function converts a string between encodings in one pass, returning a
/// string that must be freed with SDL_free() or NULL on error.
/// 
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_iconv_string(const char *tocode, const char *fromcode, const char *inbuf, size_t inbytesleft)
/// ```
Pointer<Int8>? SDL_iconv_string(String tocode, String fromcode, String inbuf, int inbytesleft) {
  final _SDL_iconv_string = _SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode, Pointer<Utf8>? inbuf, Uint32 inbytesleft),
      Pointer<Int8>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode, Pointer<Utf8>? inbuf, int inbytesleft)>('SDL_iconv_string');
  final _tocodePointer = tocode.toNativeUtf8();
  final _fromcodePointer = fromcode.toNativeUtf8();
  final _inbufPointer = inbuf.toNativeUtf8();
  final _result = _SDL_iconv_string(_tocodePointer, _fromcodePointer, _inbufPointer, inbytesleft);
  calloc.free(_tocodePointer);
  calloc.free(_fromcodePointer);
  calloc.free(_inbufPointer);
  return _result;
}
/// 
/// Allocate and free an RGB surface.
/// 
/// If the depth is 4 or 8 bits, an empty palette is allocated for the surface.
/// If the depth is greater than 8 bits, the pixel format is set using the
/// flags '[RGB]mask'.
/// 
/// If the function runs out of memory, it will return NULL.
/// 
/// \param flags The \c flags are obsolete and should be set to 0.
/// \param width The width in pixels of the surface to create.
/// \param height The height in pixels of the surface to create.
/// \param depth The depth in bits of the surface to create.
/// \param Rmask The red mask of the surface to create.
/// \param Gmask The green mask of the surface to create.
/// \param Bmask The blue mask of the surface to create.
/// \param Amask The alpha mask of the surface to create.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurface (Uint32 flags, int width, int height, int depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurface(int flags, int width, int height, int depth, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurface = _SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Uint32 flags, Int32 width, Int32 height, Int32 depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface>? Function(int flags, int width, int height, int depth, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurface');
  return _SDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask);
}
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurfaceFrom(void *pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurfaceFrom(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurfaceFrom = _SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, Int32 width, Int32 height, Int32 depth, Int32 pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurfaceFrom');
  return _SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeSurface(SDL_Surface * surface)
/// ```
void SDL_FreeSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_FreeSurface = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface>? surface),
      void Function(Pointer<SDL_Surface>? surface)>('SDL_FreeSurface');
  return _SDL_FreeSurface(surface);
}
/// 
/// \brief Set the palette used by a surface.
/// 
/// \return 0, or -1 if the surface format doesn't use a palette.
/// 
/// \note A single palette can be shared with many surfaces.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfacePalette(SDL_Surface * surface, SDL_Palette * palette)
/// ```
int SDL_SetSurfacePalette(Pointer<SDL_Surface>? surface, Pointer<SDL_Palette>? palette) {
  final _SDL_SetSurfacePalette = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Palette>? palette),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Palette>? palette)>('SDL_SetSurfacePalette');
  return _SDL_SetSurfacePalette(surface, palette);
}
/// 
/// \brief Sets up a surface for directly accessing the pixels.
/// 
/// Between calls to SDL_LockSurface() / SDL_UnlockSurface(), you can write
/// to and read from \c surface->pixels, using the pixel format stored in
/// \c surface->format.  Once you are done accessing the surface, you should
/// use SDL_UnlockSurface() to release it.
/// 
/// Not all surfaces require locking.  If SDL_MUSTLOCK(surface) evaluates
/// to 0, then you can read and write to the surface at any time, and the
/// pixel format of the surface will not change.
/// 
/// No operating system or library calls should be made between lock/unlock
/// pairs, as critical system locks may be held during this time.
/// 
/// SDL_LockSurface() returns 0, or -1 if the surface couldn't be locked.
/// 
/// \sa SDL_UnlockSurface()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockSurface(SDL_Surface * surface)
/// ```
int SDL_LockSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_LockSurface = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface),
      int Function(Pointer<SDL_Surface>? surface)>('SDL_LockSurface');
  return _SDL_LockSurface(surface);
}
/// * \sa SDL_LockSurface()
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockSurface(SDL_Surface * surface)
/// ```
void SDL_UnlockSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_UnlockSurface = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface>? surface),
      void Function(Pointer<SDL_Surface>? surface)>('SDL_UnlockSurface');
  return _SDL_UnlockSurface(surface);
}
/// 
/// Load a surface from a seekable SDL data stream (memory or file).
/// 
/// If \c freesrc is non-zero, the stream will be closed after being read.
/// 
/// The new surface should be freed with SDL_FreeSurface().
/// 
/// \return the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_LoadBMP_RW(SDL_RWops * src, int freesrc)
/// ```
Pointer<SDL_Surface>? SDL_LoadBMP_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _SDL_LoadBMP_RW = _SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, int freesrc)>('SDL_LoadBMP_RW');
  return _SDL_LoadBMP_RW(src, freesrc);
}
/// 
/// Save a surface to a seekable SDL data stream (memory or file).
/// 
/// If \c freedst is non-zero, the stream will be closed after being written.
/// 
/// \return 0 if successful or -1 if there was an error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveBMP_RW (SDL_Surface * surface, SDL_RWops * dst, int freedst)
/// ```
int SDL_SaveBMP_RW(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst) {
  final _SDL_SaveBMP_RW = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, Int32 freedst),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst)>('SDL_SaveBMP_RW');
  return _SDL_SaveBMP_RW(surface, dst, freedst);
}
/// 
/// \brief Sets the RLE acceleration hint for a surface.
/// 
/// \return 0 on success, or -1 if the surface is not valid
/// 
/// \note If RLE is enabled, colorkey and alpha blending blits are much faster,
/// but the surface must be locked before directly accessing the pixels.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceRLE(SDL_Surface * surface, int flag)
/// ```
int SDL_SetSurfaceRLE(Pointer<SDL_Surface>? surface, int flag) {
  final _SDL_SetSurfaceRLE = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Int32 flag),
      int Function(Pointer<SDL_Surface>? surface, int flag)>('SDL_SetSurfaceRLE');
  return _SDL_SetSurfaceRLE(surface, flag);
}
/// 
/// \brief Sets the color key (transparent pixel) in a blittable surface.
/// 
/// \param surface The surface to update
/// \param flag Non-zero to enable colorkey and 0 to disable colorkey
/// \param key The transparent pixel in the native surface format
/// 
/// \return 0 on success, or -1 if the surface is not valid
/// 
/// You can pass SDL_RLEACCEL to enable RLE accelerated blits.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetColorKey(SDL_Surface * surface, int flag, Uint32 key)
/// ```
int SDL_SetColorKey(Pointer<SDL_Surface>? surface, int flag, int key) {
  final _SDL_SetColorKey = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Int32 flag, Uint32 key),
      int Function(Pointer<SDL_Surface>? surface, int flag, int key)>('SDL_SetColorKey');
  return _SDL_SetColorKey(surface, flag, key);
}
/// 
/// \brief Gets the color key (transparent pixel) in a blittable surface.
/// 
/// \param surface The surface to update
/// \param key A pointer filled in with the transparent pixel in the native
/// surface format
/// 
/// \return 0 on success, or -1 if the surface is not valid or colorkey is not
/// enabled.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetColorKey(SDL_Surface * surface, Uint32 * key)
/// ```
int SDL_GetColorKey(Pointer<SDL_Surface>? surface, Pointer<Uint32>? key) {
  final _SDL_GetColorKey = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Uint32>? key),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Uint32>? key)>('SDL_GetColorKey');
  return _SDL_GetColorKey(surface, key);
}
/// 
/// \brief Set an additional color value used in blit operations.
/// 
/// \param surface The surface to update.
/// \param r The red color value multiplied into blit operations.
/// \param g The green color value multiplied into blit operations.
/// \param b The blue color value multiplied into blit operations.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_GetSurfaceColorMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceColorMod(SDL_Surface * surface, Uint8 r, Uint8 g, Uint8 b)
/// ```
int SDL_SetSurfaceColorMod(Pointer<SDL_Surface>? surface, int r, int g, int b) {
  final _SDL_SetSurfaceColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_Surface>? surface, int r, int g, int b)>('SDL_SetSurfaceColorMod');
  return _SDL_SetSurfaceColorMod(surface, r, g, b);
}
/// 
/// \brief Get the additional color value used in blit operations.
/// 
/// \param surface The surface to query.
/// \param r A pointer filled in with the current red color value.
/// \param g A pointer filled in with the current green color value.
/// \param b A pointer filled in with the current blue color value.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_SetSurfaceColorMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSurfaceColorMod(SDL_Surface * surface, Uint8 * r, Uint8 * g, Uint8 * b)
/// ```
int SDL_GetSurfaceColorMod(Pointer<SDL_Surface>? surface, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b) {
  final _SDL_GetSurfaceColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b)>('SDL_GetSurfaceColorMod');
  return _SDL_GetSurfaceColorMod(surface, r, g, b);
}
/// 
/// \brief Set an additional alpha value used in blit operations.
/// 
/// \param surface The surface to update.
/// \param alpha The alpha value multiplied into blit operations.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_GetSurfaceAlphaMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceAlphaMod(SDL_Surface * surface, Uint8 alpha)
/// ```
int SDL_SetSurfaceAlphaMod(Pointer<SDL_Surface>? surface, int alpha) {
  final _SDL_SetSurfaceAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Uint8 alpha),
      int Function(Pointer<SDL_Surface>? surface, int alpha)>('SDL_SetSurfaceAlphaMod');
  return _SDL_SetSurfaceAlphaMod(surface, alpha);
}
/// 
/// \brief Get the additional alpha value used in blit operations.
/// 
/// \param surface The surface to query.
/// \param alpha A pointer filled in with the current alpha value.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_SetSurfaceAlphaMod()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSurfaceAlphaMod(SDL_Surface * surface, Uint8 * alpha)
/// ```
int SDL_GetSurfaceAlphaMod(Pointer<SDL_Surface>? surface, Pointer<Uint8>? alpha) {
  final _SDL_GetSurfaceAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? alpha),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? alpha)>('SDL_GetSurfaceAlphaMod');
  return _SDL_GetSurfaceAlphaMod(surface, alpha);
}
/// 
/// \brief Set the blend mode used for blit operations.
/// 
/// \param surface The surface to update.
/// \param blendMode ::SDL_BlendMode to use for blit blending.
/// 
/// \return 0 on success, or -1 if the parameters are not valid.
/// 
/// \sa SDL_GetSurfaceBlendMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode blendMode)
/// ```
int SDL_SetSurfaceBlendMode(Pointer<SDL_Surface>? surface, int blendMode) {
  final _SDL_SetSurfaceBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Int32 blendMode),
      int Function(Pointer<SDL_Surface>? surface, int blendMode)>('SDL_SetSurfaceBlendMode');
  return _SDL_SetSurfaceBlendMode(surface, blendMode);
}
/// 
/// \brief Get the blend mode used for blit operations.
/// 
/// \param surface   The surface to query.
/// \param blendMode A pointer filled in with the current blend mode.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_SetSurfaceBlendMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode *blendMode)
/// ```
int SDL_GetSurfaceBlendMode(Pointer<SDL_Surface>? surface, Pointer<Int32>? blendMode) {
  final _SDL_GetSurfaceBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Int32>? blendMode),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Int32>? blendMode)>('SDL_GetSurfaceBlendMode');
  return _SDL_GetSurfaceBlendMode(surface, blendMode);
}
/// 
/// Sets the clipping rectangle for the destination surface in a blit.
/// 
/// If the clip rectangle is NULL, clipping will be disabled.
/// 
/// If the clip rectangle doesn't intersect the surface, the function will
/// return SDL_FALSE and blits will be completely clipped.  Otherwise the
/// function returns SDL_TRUE and blits to the surface will be clipped to
/// the intersection of the surface area and the clipping rectangle.
/// 
/// Note that blits are automatically clipped to the edges of the source
/// and destination surfaces.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_SetClipRect(SDL_Surface * surface, const SDL_Rect * rect)
/// ```
int SDL_SetClipRect(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect) {
  final _SDL_SetClipRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect)>('SDL_SetClipRect');
  return _SDL_SetClipRect(surface, rect);
}
/// 
/// Gets the clipping rectangle for the destination surface in a blit.
/// 
/// \c rect must be a pointer to a valid rectangle which will be filled
/// with the correct values.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetClipRect(SDL_Surface * surface, SDL_Rect * rect)
/// ```
void SDL_GetClipRect(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect) {
  final _SDL_GetClipRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect)>('SDL_GetClipRect');
  return _SDL_GetClipRect(surface, rect);
}
/// 
/// Creates a new surface of the specified format, and then copies and maps
/// the given surface to it so the blit of the converted surface will be as
/// fast as possible.  If this function fails, it returns NULL.
/// 
/// The \c flags parameter is passed to SDL_CreateRGBSurface() and has those
/// semantics.  You can also pass ::SDL_RLEACCEL in the flags parameter and
/// SDL will try to RLE accelerate colorkey and alpha blits in the resulting
/// surface.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurface (SDL_Surface * src, SDL_PixelFormat * fmt, Uint32 flags)
/// ```
Pointer<SDL_Surface>? SDL_ConvertSurface(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, int flags) {
  final _SDL_ConvertSurface = _SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, Uint32 flags),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, int flags)>('SDL_ConvertSurface');
  return _SDL_ConvertSurface(src, fmt, flags);
}
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurfaceFormat (SDL_Surface * src, Uint32 pixel_format, Uint32 flags)
/// ```
Pointer<SDL_Surface>? SDL_ConvertSurfaceFormat(Pointer<SDL_Surface>? src, int pixel_format, int flags) {
  final _SDL_ConvertSurfaceFormat = _SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Uint32 pixel_format, Uint32 flags),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, int pixel_format, int flags)>('SDL_ConvertSurfaceFormat');
  return _SDL_ConvertSurfaceFormat(src, pixel_format, flags);
}
/// 
/// \brief Copy a block of pixels of one format to another format
/// 
/// \return 0 on success, or -1 if there was an error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ConvertPixels(int width, int height, Uint32 src_format, const void * src, int src_pitch, Uint32 dst_format, void * dst, int dst_pitch)
/// ```
int SDL_ConvertPixels(int width, int height, int src_format, Pointer<Void>? src, int src_pitch, int dst_format, Pointer<Void>? dst, int dst_pitch) {
  final _SDL_ConvertPixels = _SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 src_format, Pointer<Void>? src, Int32 src_pitch, Uint32 dst_format, Pointer<Void>? dst, Int32 dst_pitch),
      int Function(int width, int height, int src_format, Pointer<Void>? src, int src_pitch, int dst_format, Pointer<Void>? dst, int dst_pitch)>('SDL_ConvertPixels');
  return _SDL_ConvertPixels(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch);
}
/// 
/// Performs a fast fill of the given rectangle with \c color.
/// 
/// If \c rect is NULL, the whole surface will be filled with \c color.
/// 
/// The color should be a pixel of the format used by the surface, and
/// can be generated by the SDL_MapRGB() function.
/// 
/// \return 0 on success, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_FillRect (SDL_Surface * dst, const SDL_Rect * rect, Uint32 color)
/// ```
int SDL_FillRect(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rect, int color) {
  final _SDL_FillRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rect, Uint32 color),
      int Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rect, int color)>('SDL_FillRect');
  return _SDL_FillRect(dst, rect, color);
}
/// ```c
/// extern DECLSPEC int SDLCALL SDL_FillRects (SDL_Surface * dst, const SDL_Rect * rects, int count, Uint32 color)
/// ```
int SDL_FillRects(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rects, int count, int color) {
  final _SDL_FillRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rects, Int32 count, Uint32 color),
      int Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rects, int count, int color)>('SDL_FillRects');
  return _SDL_FillRects(dst, rects, count, color);
}
/// 
/// This is the public blit function, SDL_BlitSurface(), and it performs
/// rectangle validation and clipping before passing it to SDL_LowerBlit()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpperBlit (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_UpperBlit(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_UpperBlit = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_UpperBlit');
  return _SDL_UpperBlit(src, srcrect, dst, dstrect);
}
/// 
/// This is a semi-private blit function and it performs low-level surface
/// blitting only.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LowerBlit (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_LowerBlit(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_LowerBlit = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_LowerBlit');
  return _SDL_LowerBlit(src, srcrect, dst, dstrect);
}
/// 
/// \brief Perform a fast, low quality, stretch blit between two surfaces of the
/// same pixel format.
/// 
/// \note This function uses a static buffer, and is not thread-safe.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SoftStretch(SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, const SDL_Rect * dstrect)
/// ```
int SDL_SoftStretch(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_SoftStretch = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_SoftStretch');
  return _SDL_SoftStretch(src, srcrect, dst, dstrect);
}
/// 
/// This is the public scaled blit function, SDL_BlitScaled(), and it performs
/// rectangle validation and clipping before passing it to SDL_LowerBlitScaled()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpperBlitScaled (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_UpperBlitScaled(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_UpperBlitScaled = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_UpperBlitScaled');
  return _SDL_UpperBlitScaled(src, srcrect, dst, dstrect);
}
/// 
/// This is a semi-private blit function and it performs low-level surface
/// scaled blitting only.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LowerBlitScaled (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_LowerBlitScaled(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_LowerBlitScaled = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_LowerBlitScaled');
  return _SDL_LowerBlitScaled(src, srcrect, dst, dstrect);
}
/// Platform specific functions for iOS
/// ```c
/// extern DECLSPEC int SDLCALL SDL_iPhoneSetAnimationCallback(SDL_Window * window, int interval, void (*callback)(void*), void *callbackParam)
/// ```
int SDL_iPhoneSetAnimationCallback(Pointer<SDL_Window>? window, int interval, Pointer<Void>? callback, Pointer<Void>? callbackParam) {
  final _SDL_iPhoneSetAnimationCallback = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Int32 interval, Pointer<Void>? callback, Pointer<Void>? callbackParam),
      int Function(Pointer<SDL_Window>? window, int interval, Pointer<Void>? callback, Pointer<Void>? callbackParam)>('SDL_iPhoneSetAnimationCallback');
  return _SDL_iPhoneSetAnimationCallback(window, interval, callback, callbackParam);
}
/// ```c
/// extern DECLSPEC void SDLCALL SDL_iPhoneSetEventPump(SDL_bool enabled)
/// ```
void SDL_iPhoneSetEventPump(int enabled) {
  final _SDL_iPhoneSetEventPump = _SDL2.lookupFunction<
      Void Function(Int32 enabled),
      void Function(int enabled)>('SDL_iPhoneSetEventPump');
  return _SDL_iPhoneSetEventPump(enabled);
}
/// Get the JNI environment for the current thread
/// This returns JNIEnv*, but the prototype is void* so we don't need jni.h
/// /
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_AndroidGetJNIEnv()
/// ```
Pointer<Void>? SDL_AndroidGetJNIEnv() {
  final _SDL_AndroidGetJNIEnv = _SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_AndroidGetJNIEnv');
  return _SDL_AndroidGetJNIEnv();
}
/// Get the SDL Activity object for the application
/// This returns jobject, but the prototype is void* so we don't need jni.h
/// The jobject returned by SDL_AndroidGetActivity is a local reference.
/// It is the caller's responsibility to properly release it
/// (using env->Push/PopLocalFrame or manually with env->DeleteLocalRef)
/// /
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_AndroidGetActivity()
/// ```
Pointer<Void>? SDL_AndroidGetActivity() {
  final _SDL_AndroidGetActivity = _SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_AndroidGetActivity');
  return _SDL_AndroidGetActivity();
}
/// Get the path used for internal storage for this application.
/// This path is unique to your application and cannot be written to
/// by other applications.
/// /
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_AndroidGetInternalStoragePath()
/// ```
String SDL_AndroidGetInternalStoragePath() {
  final _SDL_AndroidGetInternalStoragePath = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_AndroidGetInternalStoragePath');
  return _SDL_AndroidGetInternalStoragePath()!.toDartString();
}
/// Get the current state of external storage, a bitmask of these values:
/// SDL_ANDROID_EXTERNAL_STORAGE_READ
/// SDL_ANDROID_EXTERNAL_STORAGE_WRITE
/// If external storage is currently unavailable, this will return 0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AndroidGetExternalStorageState()
/// ```
int SDL_AndroidGetExternalStorageState() {
  final _SDL_AndroidGetExternalStorageState = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_AndroidGetExternalStorageState');
  return _SDL_AndroidGetExternalStorageState();
}
/// Get the path used for external storage for this application.
/// This path is unique to your application, but is public and can be
/// written to by other applications.
/// /
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_AndroidGetExternalStoragePath()
/// ```
String SDL_AndroidGetExternalStoragePath() {
  final _SDL_AndroidGetExternalStoragePath = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_AndroidGetExternalStoragePath');
  return _SDL_AndroidGetExternalStoragePath()!.toDartString();
}
/// 
/// \brief This function allows access to driver-dependent window information.
/// 
/// \param window The window about which information is being requested
/// \param info This structure must be initialized with the SDL version, and is
/// then filled in with information about the given window.
/// 
/// \return SDL_TRUE if the function is implemented and the version member of
/// the \c info struct is valid, SDL_FALSE otherwise.
/// 
/// You typically use this function like this:
/// \code
/// SDL_SysWMinfo info;
/// SDL_VERSION(&info.version);
/// if ( SDL_GetWindowWMInfo(window, &info) ) { ... }
/// \endcode
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowWMInfo(SDL_Window * window, SDL_SysWMinfo * info)
/// ```
int SDL_GetWindowWMInfo(Pointer<SDL_Window>? window, Pointer<SDL_SysWMinfo>? info) {
  final _SDL_GetWindowWMInfo = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_SysWMinfo>? info),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_SysWMinfo>? info)>('SDL_GetWindowWMInfo');
  return _SDL_GetWindowWMInfo(window, info);
}
/// 
/// Create a thread.
/// 
/// ```c
/// extern DECLSPEC SDL_Thread *SDLCALL SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data, pfnSDL_CurrentBeginThread pfnBeginThread, pfnSDL_CurrentEndThread pfnEndThread)
/// ```
Pointer<SDL_Thread>? SDL_CreateThread(Pointer<Void>? fn, String name, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread) {
  final _SDL_CreateThread = _SDL2.lookupFunction<
      Pointer<SDL_Thread>? Function(Pointer<Void>? fn, Pointer<Utf8>? name, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread),
      Pointer<SDL_Thread>? Function(Pointer<Void>? fn, Pointer<Utf8>? name, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread)>('SDL_CreateThread');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_CreateThread(fn, _namePointer, data, pfnBeginThread, pfnEndThread);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// Get the thread name, as it was specified in SDL_CreateThread().
/// This function returns a pointer to a UTF-8 string that names the
/// specified thread, or NULL if it doesn't have a name. This is internal
/// memory, not to be free()'d by the caller, and remains valid until the
/// specified thread is cleaned up by SDL_WaitThread().
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetThreadName(SDL_Thread *thread)
/// ```
String SDL_GetThreadName(Pointer<SDL_Thread>? thread) {
  final _SDL_GetThreadName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Thread>? thread),
      Pointer<Utf8>? Function(Pointer<SDL_Thread>? thread)>('SDL_GetThreadName');
  return _SDL_GetThreadName(thread)!.toDartString();
}
/// 
/// Get the thread identifier for the current thread.
/// 
/// ```c
/// extern DECLSPEC SDL_threadID SDLCALL SDL_ThreadID(void)
/// ```
int SDL_ThreadID() {
  final _SDL_ThreadID = _SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_ThreadID');
  return _SDL_ThreadID();
}
/// 
/// Get the thread identifier for the specified thread.
/// 
/// Equivalent to SDL_ThreadID() if the specified thread is NULL.
/// 
/// ```c
/// extern DECLSPEC SDL_threadID SDLCALL SDL_GetThreadID(SDL_Thread * thread)
/// ```
int SDL_GetThreadID(Pointer<SDL_Thread>? thread) {
  final _SDL_GetThreadID = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Thread>? thread),
      int Function(Pointer<SDL_Thread>? thread)>('SDL_GetThreadID');
  return _SDL_GetThreadID(thread);
}
/// 
/// Set the priority for the current thread
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetThreadPriority(SDL_ThreadPriority priority)
/// ```
int SDL_SetThreadPriority(int priority) {
  final _SDL_SetThreadPriority = _SDL2.lookupFunction<
      Int32 Function(Int32 priority),
      int Function(int priority)>('SDL_SetThreadPriority');
  return _SDL_SetThreadPriority(priority);
}
/// 
/// Wait for a thread to finish.
/// 
/// The return code for the thread function is placed in the area
/// pointed to by \c status, if \c status is not NULL.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_WaitThread(SDL_Thread * thread, int *status)
/// ```
void SDL_WaitThread(Pointer<SDL_Thread>? thread, Pointer<Int32>? status) {
  final _SDL_WaitThread = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Thread>? thread, Pointer<Int32>? status),
      void Function(Pointer<SDL_Thread>? thread, Pointer<Int32>? status)>('SDL_WaitThread');
  return _SDL_WaitThread(thread, status);
}
/// 
/// \brief Create an identifier that is globally visible to all threads but refers to data that is thread-specific.
/// 
/// \return The newly created thread local storage identifier, or 0 on error
/// 
/// \code
/// static SDL_SpinLock tls_lock;
/// static SDL_TLSID thread_local_storage;
/// 
/// void SetMyThreadData(void *value)
/// {
/// if (!thread_local_storage) {
/// SDL_AtomicLock(&tls_lock);
/// if (!thread_local_storage) {
/// thread_local_storage = SDL_TLSCreate();
/// }
/// SDL_AtomicUnLock(&tls_lock);
/// }
/// SDL_TLSSet(thread_local_storage, value);
/// }
/// 
/// void *GetMyThreadData(void)
/// {
/// return SDL_TLSGet(thread_local_storage);
/// }
/// \endcode
/// 
/// \sa SDL_TLSGet()
/// \sa SDL_TLSSet()
/// 
/// ```c
/// extern DECLSPEC SDL_TLSID SDLCALL SDL_TLSCreate(void)
/// ```
int SDL_TLSCreate() {
  final _SDL_TLSCreate = _SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_TLSCreate');
  return _SDL_TLSCreate();
}
/// 
/// \brief Get the value associated with a thread local storage ID for the current thread.
/// 
/// \param id The thread local storage ID
/// 
/// \return The value associated with the ID for the current thread, or NULL if no value has been set.
/// 
/// \sa SDL_TLSCreate()
/// \sa SDL_TLSSet()
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_TLSGet(SDL_TLSID id)
/// ```
Pointer<Void>? SDL_TLSGet(int id) {
  final _SDL_TLSGet = _SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 id),
      Pointer<Void>? Function(int id)>('SDL_TLSGet');
  return _SDL_TLSGet(id);
}
/// 
/// \brief Set the value associated with a thread local storage ID for the current thread.
/// 
/// \param id The thread local storage ID
/// \param value The value to associate with the ID for the current thread
/// \param destructor A function called when the thread exits, to free the value.
/// 
/// \return 0 on success, -1 on error
/// 
/// \sa SDL_TLSCreate()
/// \sa SDL_TLSGet()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_TLSSet(SDL_TLSID id, const void *value, void (*destructor)(void*))
/// ```
int SDL_TLSSet(int id, Pointer<Void>? value, Pointer<Void>? deor) {
  final _SDL_TLSSet = _SDL2.lookupFunction<
      Int32 Function(Uint32 id, Pointer<Void>? value, Pointer<Void>? deor),
      int Function(int id, Pointer<Void>? value, Pointer<Void>? deor)>('SDL_TLSSet');
  return _SDL_TLSSet(id, value, deor);
}
/// 
/// \brief Get the number of milliseconds since the SDL library initialization.
/// 
/// \note This value wraps if the program runs for more than ~49 days.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetTicks(void)
/// ```
int SDL_GetTicks() {
  final _SDL_GetTicks = _SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_GetTicks');
  return _SDL_GetTicks();
}
/// 
/// \brief Get the current value of the high resolution counter
/// 
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_GetPerformanceCounter(void)
/// ```
int SDL_GetPerformanceCounter() {
  final _SDL_GetPerformanceCounter = _SDL2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetPerformanceCounter');
  return _SDL_GetPerformanceCounter();
}
/// 
/// \brief Get the count per second of the high resolution counter
/// 
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_GetPerformanceFrequency(void)
/// ```
int SDL_GetPerformanceFrequency() {
  final _SDL_GetPerformanceFrequency = _SDL2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetPerformanceFrequency');
  return _SDL_GetPerformanceFrequency();
}
/// 
/// \brief Wait a specified number of milliseconds before returning.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Delay(Uint32 ms)
/// ```
void SDL_Delay(int ms) {
  final _SDL_Delay = _SDL2.lookupFunction<
      Void Function(Uint32 ms),
      void Function(int ms)>('SDL_Delay');
  return _SDL_Delay(ms);
}
/// 
/// \brief Add a new timer to the pool of timers already running.
/// 
/// \return A timer ID, or NULL when an error occurs.
/// 
/// ```c
/// extern DECLSPEC SDL_TimerID SDLCALL SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *param)
/// ```
int SDL_AddTimer(int interval, Pointer<Void>? callback, Pointer<Void>? param) {
  final _SDL_AddTimer = _SDL2.lookupFunction<
      Int32 Function(Uint32 interval, Pointer<Void>? callback, Pointer<Void>? param),
      int Function(int interval, Pointer<Void>? callback, Pointer<Void>? param)>('SDL_AddTimer');
  return _SDL_AddTimer(interval, callback, param);
}
/// 
/// \brief Remove a timer knowing its ID.
/// 
/// \return A boolean value indicating success or failure.
/// 
/// \warning It is not safe to remove a timer multiple times.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_RemoveTimer(SDL_TimerID id)
/// ```
int SDL_RemoveTimer(int id) {
  final _SDL_RemoveTimer = _SDL2.lookupFunction<
      Int32 Function(Int32 id),
      int Function(int id)>('SDL_RemoveTimer');
  return _SDL_RemoveTimer(id);
}
/// 
/// \brief Get the number of registered touch devices.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumTouchDevices(void)
/// ```
int SDL_GetNumTouchDevices() {
  final _SDL_GetNumTouchDevices = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumTouchDevices');
  return _SDL_GetNumTouchDevices();
}
/// 
/// \brief Get the touch ID with the given index, or 0 if the index is invalid.
/// 
/// ```c
/// extern DECLSPEC SDL_TouchID SDLCALL SDL_GetTouchDevice(int index)
/// ```
int SDL_GetTouchDevice(int index) {
  final _SDL_GetTouchDevice = _SDL2.lookupFunction<
      Int64 Function(Int32 index),
      int Function(int index)>('SDL_GetTouchDevice');
  return _SDL_GetTouchDevice(index);
}
/// 
/// \brief Get the number of active fingers for a given touch device.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumTouchFingers(SDL_TouchID touchID)
/// ```
int SDL_GetNumTouchFingers(int touchID) {
  final _SDL_GetNumTouchFingers = _SDL2.lookupFunction<
      Int32 Function(Int64 touchID),
      int Function(int touchID)>('SDL_GetNumTouchFingers');
  return _SDL_GetNumTouchFingers(touchID);
}
/// 
/// \brief Get the finger object of the given touch, with the given index.
/// 
/// ```c
/// extern DECLSPEC SDL_Finger * SDLCALL SDL_GetTouchFinger(SDL_TouchID touchID, int index)
/// ```
Pointer<SDL_Finger>? SDL_GetTouchFinger(int touchID, int index) {
  final _SDL_GetTouchFinger = _SDL2.lookupFunction<
      Pointer<SDL_Finger>? Function(Int64 touchID, Int32 index),
      Pointer<SDL_Finger>? Function(int touchID, int index)>('SDL_GetTouchFinger');
  return _SDL_GetTouchFinger(touchID, index);
}
/// 
/// \brief Get the version of SDL that is linked against your program.
/// 
/// If you are linking to SDL dynamically, then it is possible that the
/// current version will be different than the version you compiled against.
/// This function returns the current version, while SDL_VERSION() is a
/// macro that tells you what version you compiled with.
/// 
/// \code
/// SDL_version compiled;
/// SDL_version linked;
/// 
/// SDL_VERSION(&compiled);
/// SDL_GetVersion(&linked);
/// printf("We compiled against SDL version %d.%d.%d ...\n",
/// compiled.major, compiled.minor, compiled.patch);
/// printf("But we linked against SDL version %d.%d.%d.\n",
/// linked.major, linked.minor, linked.patch);
/// \endcode
/// 
/// This function may be called safely at any time, even before SDL_Init().
/// 
/// \sa SDL_VERSION
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetVersion(SDL_version * ver)
/// ```
void SDL_GetVersion(Pointer<SDL_version>? ver) {
  final _SDL_GetVersion = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_version>? ver),
      void Function(Pointer<SDL_version>? ver)>('SDL_GetVersion');
  return _SDL_GetVersion(ver);
}
/// 
/// \brief Get the code revision of SDL that is linked against your program.
/// 
/// Returns an arbitrary string (a hash value) uniquely identifying the
/// exact revision of the SDL library in use, and is only useful in comparing
/// against other revisions. It is NOT an incrementing number.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetRevision(void)
/// ```
String SDL_GetRevision() {
  final _SDL_GetRevision = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetRevision');
  return _SDL_GetRevision()!.toDartString();
}
/// 
/// \brief Get the revision number of SDL that is linked against your program.
/// 
/// Returns a number uniquely identifying the exact revision of the SDL
/// library in use. It is an incrementing number based on commits to
/// hg.libsdl.org.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRevisionNumber(void)
/// ```
int SDL_GetRevisionNumber() {
  final _SDL_GetRevisionNumber = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetRevisionNumber');
  return _SDL_GetRevisionNumber();
}
/// 
/// \brief Get the number of video drivers compiled into SDL
/// 
/// \sa SDL_GetVideoDriver()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumVideoDrivers(void)
/// ```
int SDL_GetNumVideoDrivers() {
  final _SDL_GetNumVideoDrivers = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumVideoDrivers');
  return _SDL_GetNumVideoDrivers();
}
/// 
/// \brief Get the name of a built in video driver.
/// 
/// \note The video drivers are presented in the order in which they are
/// normally checked during initialization.
/// 
/// \sa SDL_GetNumVideoDrivers()
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetVideoDriver(int index)
/// ```
String SDL_GetVideoDriver(int index) {
  final _SDL_GetVideoDriver = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('SDL_GetVideoDriver');
  return _SDL_GetVideoDriver(index)!.toDartString();
}
/// 
/// \brief Initialize the video subsystem, optionally specifying a video driver.
/// 
/// \param driver_name Initialize a specific driver by name, or NULL for the
/// default video driver.
/// 
/// \return 0 on success, -1 on error
/// 
/// This function initializes the video subsystem; setting up a connection
/// to the window manager, etc, and determines the available display modes
/// and pixel formats, but does not initialize a window or graphics mode.
/// 
/// \sa SDL_VideoQuit()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_VideoInit(const char *driver_name)
/// ```
int SDL_VideoInit(String driver_name) {
  final _SDL_VideoInit = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? driver_name),
      int Function(Pointer<Utf8>? driver_name)>('SDL_VideoInit');
  final _driver_namePointer = driver_name.toNativeUtf8();
  final _result = _SDL_VideoInit(_driver_namePointer);
  calloc.free(_driver_namePointer);
  return _result;
}
/// 
/// \brief Shuts down the video subsystem.
/// 
/// This function closes all windows, and restores the original video mode.
/// 
/// \sa SDL_VideoInit()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_VideoQuit(void)
/// ```
void SDL_VideoQuit() {
  final _SDL_VideoQuit = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_VideoQuit');
  return _SDL_VideoQuit();
}
/// 
/// \brief Returns the name of the currently initialized video driver.
/// 
/// \return The name of the current video driver or NULL if no driver
/// has been initialized
/// 
/// \sa SDL_GetNumVideoDrivers()
/// \sa SDL_GetVideoDriver()
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetCurrentVideoDriver(void)
/// ```
String SDL_GetCurrentVideoDriver() {
  final _SDL_GetCurrentVideoDriver = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetCurrentVideoDriver');
  return _SDL_GetCurrentVideoDriver()!.toDartString();
}
/// 
/// \brief Returns the number of available video displays.
/// 
/// \sa SDL_GetDisplayBounds()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumVideoDisplays(void)
/// ```
int SDL_GetNumVideoDisplays() {
  final _SDL_GetNumVideoDisplays = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumVideoDisplays');
  return _SDL_GetNumVideoDisplays();
}
/// 
/// \brief Get the name of a display in UTF-8 encoding
/// 
/// \return The name of a display, or NULL for an invalid display index.
/// 
/// \sa SDL_GetNumVideoDisplays()
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetDisplayName(int displayIndex)
/// ```
String SDL_GetDisplayName(int displayIndex) {
  final _SDL_GetDisplayName = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 displayIndex),
      Pointer<Utf8>? Function(int displayIndex)>('SDL_GetDisplayName');
  return _SDL_GetDisplayName(displayIndex)!.toDartString();
}
/// 
/// \brief Get the desktop area represented by a display, with the primary
/// display located at 0,0
/// 
/// \return 0 on success, or -1 if the index is out of range.
/// 
/// \sa SDL_GetNumVideoDisplays()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDisplayBounds(int displayIndex, SDL_Rect * rect)
/// ```
int SDL_GetDisplayBounds(int displayIndex, Pointer<SDL_Rect>? rect) {
  final _SDL_GetDisplayBounds = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_Rect>? rect),
      int Function(int displayIndex, Pointer<SDL_Rect>? rect)>('SDL_GetDisplayBounds');
  return _SDL_GetDisplayBounds(displayIndex, rect);
}
/// 
/// \brief Returns the number of available display modes.
/// 
/// \sa SDL_GetDisplayMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumDisplayModes(int displayIndex)
/// ```
int SDL_GetNumDisplayModes(int displayIndex) {
  final _SDL_GetNumDisplayModes = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex),
      int Function(int displayIndex)>('SDL_GetNumDisplayModes');
  return _SDL_GetNumDisplayModes(displayIndex);
}
/// 
/// \brief Fill in information about a specific display mode.
/// 
/// \note The display modes are sorted in this priority:
/// \li bits per pixel -> more colors to fewer colors
/// \li width -> largest to smallest
/// \li height -> largest to smallest
/// \li refresh rate -> highest to lowest
/// 
/// \sa SDL_GetNumDisplayModes()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDisplayMode(int displayIndex, int modeIndex, SDL_DisplayMode * mode)
/// ```
int SDL_GetDisplayMode(int displayIndex, int modeIndex, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Int32 modeIndex, Pointer<SDL_DisplayMode>? mode),
      int Function(int displayIndex, int modeIndex, Pointer<SDL_DisplayMode>? mode)>('SDL_GetDisplayMode');
  return _SDL_GetDisplayMode(displayIndex, modeIndex, mode);
}
/// 
/// \brief Fill in information about the desktop display mode.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDesktopDisplayMode(int displayIndex, SDL_DisplayMode * mode)
/// ```
int SDL_GetDesktopDisplayMode(int displayIndex, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetDesktopDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_DisplayMode>? mode),
      int Function(int displayIndex, Pointer<SDL_DisplayMode>? mode)>('SDL_GetDesktopDisplayMode');
  return _SDL_GetDesktopDisplayMode(displayIndex, mode);
}
/// 
/// \brief Fill in information about the current display mode.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetCurrentDisplayMode(int displayIndex, SDL_DisplayMode * mode)
/// ```
int SDL_GetCurrentDisplayMode(int displayIndex, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetCurrentDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_DisplayMode>? mode),
      int Function(int displayIndex, Pointer<SDL_DisplayMode>? mode)>('SDL_GetCurrentDisplayMode');
  return _SDL_GetCurrentDisplayMode(displayIndex, mode);
}
/// 
/// \brief Get the closest match to the requested display mode.
/// 
/// \param displayIndex The index of display from which mode should be queried.
/// \param mode The desired display mode
/// \param closest A pointer to a display mode to be filled in with the closest
/// match of the available display modes.
/// 
/// \return The passed in value \c closest, or NULL if no matching video mode
/// was available.
/// 
/// The available display modes are scanned, and \c closest is filled in with the
/// closest mode matching the requested mode and returned.  The mode format and
/// refresh_rate default to the desktop mode if they are 0.  The modes are
/// scanned with size being first priority, format being second priority, and
/// finally checking the refresh_rate.  If all the available modes are too
/// small, then NULL is returned.
/// 
/// \sa SDL_GetNumDisplayModes()
/// \sa SDL_GetDisplayMode()
/// 
/// ```c
/// extern DECLSPEC SDL_DisplayMode * SDLCALL SDL_GetClosestDisplayMode(int displayIndex, const SDL_DisplayMode * mode, SDL_DisplayMode * closest)
/// ```
Pointer<SDL_DisplayMode>? SDL_GetClosestDisplayMode(int displayIndex, Pointer<SDL_DisplayMode>? mode, Pointer<SDL_DisplayMode>? closest) {
  final _SDL_GetClosestDisplayMode = _SDL2.lookupFunction<
      Pointer<SDL_DisplayMode>? Function(Int32 displayIndex, Pointer<SDL_DisplayMode>? mode, Pointer<SDL_DisplayMode>? closest),
      Pointer<SDL_DisplayMode>? Function(int displayIndex, Pointer<SDL_DisplayMode>? mode, Pointer<SDL_DisplayMode>? closest)>('SDL_GetClosestDisplayMode');
  return _SDL_GetClosestDisplayMode(displayIndex, mode, closest);
}
/// 
/// \brief Get the display index associated with a window.
/// 
/// \return the display index of the display containing the center of the
/// window, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowDisplayIndex(SDL_Window * window)
/// ```
int SDL_GetWindowDisplayIndex(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowDisplayIndex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowDisplayIndex');
  return _SDL_GetWindowDisplayIndex(window);
}
/// 
/// \brief Set the display mode used when a fullscreen window is visible.
/// 
/// By default the window's dimensions and the desktop format and refresh rate
/// are used.
/// 
/// \param window The window for which the display mode should be set.
/// \param mode The mode to use, or NULL for the default mode.
/// 
/// \return 0 on success, or -1 if setting the display mode failed.
/// 
/// \sa SDL_GetWindowDisplayMode()
/// \sa SDL_SetWindowFullscreen()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowDisplayMode(SDL_Window * window, const SDL_DisplayMode * mode)
/// ```
int SDL_SetWindowDisplayMode(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_SetWindowDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode)>('SDL_SetWindowDisplayMode');
  return _SDL_SetWindowDisplayMode(window, mode);
}
/// 
/// \brief Fill in information about the display mode used when a fullscreen
/// window is visible.
/// 
/// \sa SDL_SetWindowDisplayMode()
/// \sa SDL_SetWindowFullscreen()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowDisplayMode(SDL_Window * window, SDL_DisplayMode * mode)
/// ```
int SDL_GetWindowDisplayMode(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetWindowDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode)>('SDL_GetWindowDisplayMode');
  return _SDL_GetWindowDisplayMode(window, mode);
}
/// 
/// \brief Get the pixel format associated with the window.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowPixelFormat(SDL_Window * window)
/// ```
int SDL_GetWindowPixelFormat(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowPixelFormat = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowPixelFormat');
  return _SDL_GetWindowPixelFormat(window);
}
/// 
/// \brief Create a window with the specified position, dimensions, and flags.
/// 
/// \param title The title of the window, in UTF-8 encoding.
/// \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param w     The width of the window.
/// \param h     The height of the window.
/// \param flags The flags for the window, a mask of any of the following:
/// ::SDL_WINDOW_FULLSCREEN, ::SDL_WINDOW_OPENGL,
/// ::SDL_WINDOW_HIDDEN,     ::SDL_WINDOW_BORDERLESS,
/// ::SDL_WINDOW_RESIZABLE,  ::SDL_WINDOW_MAXIMIZED,
/// ::SDL_WINDOW_MINIMIZED,  ::SDL_WINDOW_INPUT_GRABBED.
/// 
/// \return The id of the window created, or zero if window creation failed.
/// 
/// \sa SDL_DestroyWindow()
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindow(const char *title, int x, int y, int w, int h, Uint32 flags)
/// ```
Pointer<SDL_Window>? SDL_CreateWindow(String title, int x, int y, int w, int h, int flags) {
  final _SDL_CreateWindow = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, Int32 x, Int32 y, Int32 w, Int32 h, Uint32 flags),
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, int x, int y, int w, int h, int flags)>('SDL_CreateWindow');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_CreateWindow(_titlePointer, x, y, w, h, flags);
  calloc.free(_titlePointer);
  return _result;
}
/// 
/// \brief Create an SDL window from an existing native window.
/// 
/// \param data A pointer to driver-dependent window creation data
/// 
/// \return The id of the window created, or zero if window creation failed.
/// 
/// \sa SDL_DestroyWindow()
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindowFrom(const void *data)
/// ```
Pointer<SDL_Window>? SDL_CreateWindowFrom(Pointer<Void>? data) {
  final _SDL_CreateWindowFrom = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<Void>? data),
      Pointer<SDL_Window>? Function(Pointer<Void>? data)>('SDL_CreateWindowFrom');
  return _SDL_CreateWindowFrom(data);
}
/// 
/// \brief Get the numeric ID of a window, for logging purposes.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowID(SDL_Window * window)
/// ```
int SDL_GetWindowID(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowID = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowID');
  return _SDL_GetWindowID(window);
}
/// 
/// \brief Get a window from a stored ID, or NULL if it doesn't exist.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetWindowFromID(Uint32 id)
/// ```
Pointer<SDL_Window>? SDL_GetWindowFromID(int id) {
  final _SDL_GetWindowFromID = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Uint32 id),
      Pointer<SDL_Window>? Function(int id)>('SDL_GetWindowFromID');
  return _SDL_GetWindowFromID(id);
}
/// 
/// \brief Get the window flags.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowFlags(SDL_Window * window)
/// ```
int SDL_GetWindowFlags(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowFlags = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowFlags');
  return _SDL_GetWindowFlags(window);
}
/// 
/// \brief Set the title of a window, in UTF-8 format.
/// 
/// \sa SDL_GetWindowTitle()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowTitle(SDL_Window * window, const char *title)
/// ```
void SDL_SetWindowTitle(Pointer<SDL_Window>? window, String title) {
  final _SDL_SetWindowTitle = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Utf8>? title),
      void Function(Pointer<SDL_Window>? window, Pointer<Utf8>? title)>('SDL_SetWindowTitle');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_SetWindowTitle(window, _titlePointer);
  calloc.free(_titlePointer);
  return _result;
}
/// 
/// \brief Get the title of a window, in UTF-8 format.
/// 
/// \sa SDL_SetWindowTitle()
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetWindowTitle(SDL_Window * window)
/// ```
String SDL_GetWindowTitle(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowTitle = _SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Window>? window),
      Pointer<Utf8>? Function(Pointer<SDL_Window>? window)>('SDL_GetWindowTitle');
  return _SDL_GetWindowTitle(window)!.toDartString();
}
/// 
/// \brief Set the icon for a window.
/// 
/// \param window The window for which the icon should be set.
/// \param icon The icon for the window.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowIcon(SDL_Window * window, SDL_Surface * icon)
/// ```
void SDL_SetWindowIcon(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? icon) {
  final _SDL_SetWindowIcon = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? icon),
      void Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? icon)>('SDL_SetWindowIcon');
  return _SDL_SetWindowIcon(window, icon);
}
/// 
/// \brief Associate an arbitrary named pointer with a window.
/// 
/// \param window   The window to associate with the pointer.
/// \param name     The name of the pointer.
/// \param userdata The associated pointer.
/// 
/// \return The previous value associated with 'name'
/// 
/// \note The name is case-sensitive.
/// 
/// \sa SDL_GetWindowData()
/// 
/// ```c
/// extern DECLSPEC void* SDLCALL SDL_SetWindowData(SDL_Window * window, const char *name, void *userdata)
/// ```
Pointer<Void>? SDL_SetWindowData(Pointer<SDL_Window>? window, String name, Pointer<Void>? userdata) {
  final _SDL_SetWindowData = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name, Pointer<Void>? userdata),
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name, Pointer<Void>? userdata)>('SDL_SetWindowData');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_SetWindowData(window, _namePointer, userdata);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// \brief Retrieve the data pointer associated with a window.
/// 
/// \param window   The window to query.
/// \param name     The name of the pointer.
/// 
/// \return The value associated with 'name'
/// 
/// \sa SDL_SetWindowData()
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_GetWindowData(SDL_Window * window, const char *name)
/// ```
Pointer<Void>? SDL_GetWindowData(Pointer<SDL_Window>? window, String name) {
  final _SDL_GetWindowData = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name),
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name)>('SDL_GetWindowData');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetWindowData(window, _namePointer);
  calloc.free(_namePointer);
  return _result;
}
/// 
/// \brief Set the position of a window.
/// 
/// \param window   The window to reposition.
/// \param x        The x coordinate of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y        The y coordinate of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// 
/// \note The window coordinate origin is the upper left of the display.
/// 
/// \sa SDL_GetWindowPosition()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowPosition(SDL_Window * window, int x, int y)
/// ```
void SDL_SetWindowPosition(Pointer<SDL_Window>? window, int x, int y) {
  final _SDL_SetWindowPosition = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 x, Int32 y),
      void Function(Pointer<SDL_Window>? window, int x, int y)>('SDL_SetWindowPosition');
  return _SDL_SetWindowPosition(window, x, y);
}
/// 
/// \brief Get the position of a window.
/// 
/// \param window   The window to query.
/// \param x        Pointer to variable for storing the x position, may be NULL
/// \param y        Pointer to variable for storing the y position, may be NULL
/// 
/// \sa SDL_SetWindowPosition()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowPosition(SDL_Window * window, int *x, int *y)
/// ```
void SDL_GetWindowPosition(Pointer<SDL_Window>? window, Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetWindowPosition = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? x, Pointer<Int32>? y),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetWindowPosition');
  return _SDL_GetWindowPosition(window, x, y);
}
/// 
/// \brief Set the size of a window's client area.
/// 
/// \param window   The window to resize.
/// \param w        The width of the window, must be >0
/// \param h        The height of the window, must be >0
/// 
/// \note You can't change the size of a fullscreen window, it automatically
/// matches the size of the display mode.
/// 
/// \sa SDL_GetWindowSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowSize(SDL_Window * window, int w, int h)
/// ```
void SDL_SetWindowSize(Pointer<SDL_Window>? window, int w, int h) {
  final _SDL_SetWindowSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 w, Int32 h),
      void Function(Pointer<SDL_Window>? window, int w, int h)>('SDL_SetWindowSize');
  return _SDL_SetWindowSize(window, w, h);
}
/// 
/// \brief Get the size of a window's client area.
/// 
/// \param window   The window to query.
/// \param w        Pointer to variable for storing the width, may be NULL
/// \param h        Pointer to variable for storing the height, may be NULL
/// 
/// \sa SDL_SetWindowSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GetWindowSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetWindowSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetWindowSize');
  return _SDL_GetWindowSize(window, w, h);
}
/// 
/// \brief Set the minimum size of a window's client area.
/// 
/// \param window    The window to set a new minimum size.
/// \param min_w     The minimum width of the window, must be >0
/// \param min_h     The minimum height of the window, must be >0
/// 
/// \note You can't change the minimum size of a fullscreen window, it
/// automatically matches the size of the display mode.
/// 
/// \sa SDL_GetWindowMinimumSize()
/// \sa SDL_SetWindowMaximumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowMinimumSize(SDL_Window * window, int min_w, int min_h)
/// ```
void SDL_SetWindowMinimumSize(Pointer<SDL_Window>? window, int min_w, int min_h) {
  final _SDL_SetWindowMinimumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 min_w, Int32 min_h),
      void Function(Pointer<SDL_Window>? window, int min_w, int min_h)>('SDL_SetWindowMinimumSize');
  return _SDL_SetWindowMinimumSize(window, min_w, min_h);
}
/// 
/// \brief Get the minimum size of a window's client area.
/// 
/// \param window   The window to query.
/// \param w        Pointer to variable for storing the minimum width, may be NULL
/// \param h        Pointer to variable for storing the minimum height, may be NULL
/// 
/// \sa SDL_GetWindowMaximumSize()
/// \sa SDL_SetWindowMinimumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowMinimumSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GetWindowMinimumSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetWindowMinimumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetWindowMinimumSize');
  return _SDL_GetWindowMinimumSize(window, w, h);
}
/// 
/// \brief Set the maximum size of a window's client area.
/// 
/// \param window    The window to set a new maximum size.
/// \param max_w     The maximum width of the window, must be >0
/// \param max_h     The maximum height of the window, must be >0
/// 
/// \note You can't change the maximum size of a fullscreen window, it
/// automatically matches the size of the display mode.
/// 
/// \sa SDL_GetWindowMaximumSize()
/// \sa SDL_SetWindowMinimumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowMaximumSize(SDL_Window * window, int max_w, int max_h)
/// ```
void SDL_SetWindowMaximumSize(Pointer<SDL_Window>? window, int max_w, int max_h) {
  final _SDL_SetWindowMaximumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 max_w, Int32 max_h),
      void Function(Pointer<SDL_Window>? window, int max_w, int max_h)>('SDL_SetWindowMaximumSize');
  return _SDL_SetWindowMaximumSize(window, max_w, max_h);
}
/// 
/// \brief Get the maximum size of a window's client area.
/// 
/// \param window   The window to query.
/// \param w        Pointer to variable for storing the maximum width, may be NULL
/// \param h        Pointer to variable for storing the maximum height, may be NULL
/// 
/// \sa SDL_GetWindowMinimumSize()
/// \sa SDL_SetWindowMaximumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowMaximumSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GetWindowMaximumSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetWindowMaximumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetWindowMaximumSize');
  return _SDL_GetWindowMaximumSize(window, w, h);
}
/// 
/// \brief Set the border state of a window.
/// 
/// This will add or remove the window's SDL_WINDOW_BORDERLESS flag and
/// add or remove the border from the actual window. This is a no-op if the
/// window's border already matches the requested state.
/// 
/// \param window The window of which to change the border state.
/// \param bordered SDL_FALSE to remove border, SDL_TRUE to add border.
/// 
/// \note You can't change the border state of a fullscreen window.
/// 
/// \sa SDL_GetWindowFlags()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowBordered(SDL_Window * window, SDL_bool bordered)
/// ```
void SDL_SetWindowBordered(Pointer<SDL_Window>? window, int bordered) {
  final _SDL_SetWindowBordered = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 bordered),
      void Function(Pointer<SDL_Window>? window, int bordered)>('SDL_SetWindowBordered');
  return _SDL_SetWindowBordered(window, bordered);
}
/// 
/// \brief Show a window.
/// 
/// \sa SDL_HideWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ShowWindow(SDL_Window * window)
/// ```
void SDL_ShowWindow(Pointer<SDL_Window>? window) {
  final _SDL_ShowWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_ShowWindow');
  return _SDL_ShowWindow(window);
}
/// 
/// \brief Hide a window.
/// 
/// \sa SDL_ShowWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_HideWindow(SDL_Window * window)
/// ```
void SDL_HideWindow(Pointer<SDL_Window>? window) {
  final _SDL_HideWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_HideWindow');
  return _SDL_HideWindow(window);
}
/// 
/// \brief Raise a window above other windows and set the input focus.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RaiseWindow(SDL_Window * window)
/// ```
void SDL_RaiseWindow(Pointer<SDL_Window>? window) {
  final _SDL_RaiseWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_RaiseWindow');
  return _SDL_RaiseWindow(window);
}
/// 
/// \brief Make a window as large as possible.
/// 
/// \sa SDL_RestoreWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MaximizeWindow(SDL_Window * window)
/// ```
void SDL_MaximizeWindow(Pointer<SDL_Window>? window) {
  final _SDL_MaximizeWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_MaximizeWindow');
  return _SDL_MaximizeWindow(window);
}
/// 
/// \brief Minimize a window to an iconic representation.
/// 
/// \sa SDL_RestoreWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MinimizeWindow(SDL_Window * window)
/// ```
void SDL_MinimizeWindow(Pointer<SDL_Window>? window) {
  final _SDL_MinimizeWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_MinimizeWindow');
  return _SDL_MinimizeWindow(window);
}
/// 
/// \brief Restore the size and position of a minimized or maximized window.
/// 
/// \sa SDL_MaximizeWindow()
/// \sa SDL_MinimizeWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RestoreWindow(SDL_Window * window)
/// ```
void SDL_RestoreWindow(Pointer<SDL_Window>? window) {
  final _SDL_RestoreWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_RestoreWindow');
  return _SDL_RestoreWindow(window);
}
/// 
/// \brief Set a window's fullscreen state.
/// 
/// \return 0 on success, or -1 if setting the display mode failed.
/// 
/// \sa SDL_SetWindowDisplayMode()
/// \sa SDL_GetWindowDisplayMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowFullscreen(SDL_Window * window, Uint32 flags)
/// ```
int SDL_SetWindowFullscreen(Pointer<SDL_Window>? window, int flags) {
  final _SDL_SetWindowFullscreen = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Uint32 flags),
      int Function(Pointer<SDL_Window>? window, int flags)>('SDL_SetWindowFullscreen');
  return _SDL_SetWindowFullscreen(window, flags);
}
/// 
/// \brief Get the SDL surface associated with the window.
/// 
/// \return The window's framebuffer surface, or NULL on error.
/// 
/// A new surface will be created with the optimal format for the window,
/// if necessary. This surface will be freed when the window is destroyed.
/// 
/// \note You may not combine this with 3D or the rendering API on this window.
/// 
/// \sa SDL_UpdateWindowSurface()
/// \sa SDL_UpdateWindowSurfaceRects()
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL SDL_GetWindowSurface(SDL_Window * window)
/// ```
Pointer<SDL_Surface>? SDL_GetWindowSurface(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowSurface = _SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Window>? window),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Window>? window)>('SDL_GetWindowSurface');
  return _SDL_GetWindowSurface(window);
}
/// 
/// \brief Copy the window surface to the screen.
/// 
/// \return 0 on success, or -1 on error.
/// 
/// \sa SDL_GetWindowSurface()
/// \sa SDL_UpdateWindowSurfaceRects()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateWindowSurface(SDL_Window * window)
/// ```
int SDL_UpdateWindowSurface(Pointer<SDL_Window>? window) {
  final _SDL_UpdateWindowSurface = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_UpdateWindowSurface');
  return _SDL_UpdateWindowSurface(window);
}
/// 
/// \brief Copy a number of rectangles on the window surface to the screen.
/// 
/// \return 0 on success, or -1 on error.
/// 
/// \sa SDL_GetWindowSurface()
/// \sa SDL_UpdateWindowSurfaceRect()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateWindowSurfaceRects(SDL_Window * window, const SDL_Rect * rects, int numrects)
/// ```
int SDL_UpdateWindowSurfaceRects(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rects, int numrects) {
  final _SDL_UpdateWindowSurfaceRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rects, Int32 numrects),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rects, int numrects)>('SDL_UpdateWindowSurfaceRects');
  return _SDL_UpdateWindowSurfaceRects(window, rects, numrects);
}
/// 
/// \brief Set a window's input grab mode.
/// 
/// \param window The window for which the input grab mode should be set.
/// \param grabbed This is SDL_TRUE to grab input, and SDL_FALSE to release input.
/// 
/// \sa SDL_GetWindowGrab()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowGrab(SDL_Window * window, SDL_bool grabbed)
/// ```
void SDL_SetWindowGrab(Pointer<SDL_Window>? window, int grabbed) {
  final _SDL_SetWindowGrab = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 grabbed),
      void Function(Pointer<SDL_Window>? window, int grabbed)>('SDL_SetWindowGrab');
  return _SDL_SetWindowGrab(window, grabbed);
}
/// 
/// \brief Get a window's input grab mode.
/// 
/// \return This returns SDL_TRUE if input is grabbed, and SDL_FALSE otherwise.
/// 
/// \sa SDL_SetWindowGrab()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowGrab(SDL_Window * window)
/// ```
int SDL_GetWindowGrab(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowGrab = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowGrab');
  return _SDL_GetWindowGrab(window);
}
/// 
/// \brief Set the brightness (gamma correction) for a window.
/// 
/// \return 0 on success, or -1 if setting the brightness isn't supported.
/// 
/// \sa SDL_GetWindowBrightness()
/// \sa SDL_SetWindowGammaRamp()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowBrightness(SDL_Window * window, float brightness)
/// ```
int SDL_SetWindowBrightness(Pointer<SDL_Window>? window, double brightness) {
  final _SDL_SetWindowBrightness = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Float brightness),
      int Function(Pointer<SDL_Window>? window, double brightness)>('SDL_SetWindowBrightness');
  return _SDL_SetWindowBrightness(window, brightness);
}
/// 
/// \brief Get the brightness (gamma correction) for a window.
/// 
/// \return The last brightness value passed to SDL_SetWindowBrightness()
/// 
/// \sa SDL_SetWindowBrightness()
/// 
/// ```c
/// extern DECLSPEC float SDLCALL SDL_GetWindowBrightness(SDL_Window * window)
/// ```
double SDL_GetWindowBrightness(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowBrightness = _SDL2.lookupFunction<
      Float Function(Pointer<SDL_Window>? window),
      double Function(Pointer<SDL_Window>? window)>('SDL_GetWindowBrightness');
  return _SDL_GetWindowBrightness(window);
}
/// 
/// \brief Set the gamma ramp for a window.
/// 
/// \param window The window for which the gamma ramp should be set.
/// \param red The translation table for the red channel, or NULL.
/// \param green The translation table for the green channel, or NULL.
/// \param blue The translation table for the blue channel, or NULL.
/// 
/// \return 0 on success, or -1 if gamma ramps are unsupported.
/// 
/// Set the gamma translation table for the red, green, and blue channels
/// of the video hardware.  Each table is an array of 256 16-bit quantities,
/// representing a mapping between the input and output for that channel.
/// The input is the index into the array, and the output is the 16-bit
/// gamma value at that index, scaled to the output color precision.
/// 
/// \sa SDL_GetWindowGammaRamp()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowGammaRamp(SDL_Window * window, const Uint16 * red, const Uint16 * green, const Uint16 * blue)
/// ```
int SDL_SetWindowGammaRamp(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue) {
  final _SDL_SetWindowGammaRamp = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue),
      int Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue)>('SDL_SetWindowGammaRamp');
  return _SDL_SetWindowGammaRamp(window, red, green, blue);
}
/// 
/// \brief Get the gamma ramp for a window.
/// 
/// \param window The window from which the gamma ramp should be queried.
/// \param red   A pointer to a 256 element array of 16-bit quantities to hold
/// the translation table for the red channel, or NULL.
/// \param green A pointer to a 256 element array of 16-bit quantities to hold
/// the translation table for the green channel, or NULL.
/// \param blue  A pointer to a 256 element array of 16-bit quantities to hold
/// the translation table for the blue channel, or NULL.
/// 
/// \return 0 on success, or -1 if gamma ramps are unsupported.
/// 
/// \sa SDL_SetWindowGammaRamp()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowGammaRamp(SDL_Window * window, Uint16 * red, Uint16 * green, Uint16 * blue)
/// ```
int SDL_GetWindowGammaRamp(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue) {
  final _SDL_GetWindowGammaRamp = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue),
      int Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue)>('SDL_GetWindowGammaRamp');
  return _SDL_GetWindowGammaRamp(window, red, green, blue);
}
/// 
/// \brief Destroy a window.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyWindow(SDL_Window * window)
/// ```
void SDL_DestroyWindow(Pointer<SDL_Window>? window) {
  final _SDL_DestroyWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_DestroyWindow');
  return _SDL_DestroyWindow(window);
}
/// 
/// \brief Returns whether the screensaver is currently enabled (default on).
/// 
/// \sa SDL_EnableScreenSaver()
/// \sa SDL_DisableScreenSaver()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsScreenSaverEnabled(void)
/// ```
int SDL_IsScreenSaverEnabled() {
  final _SDL_IsScreenSaverEnabled = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsScreenSaverEnabled');
  return _SDL_IsScreenSaverEnabled();
}
/// 
/// \brief Allow the screen to be blanked by a screensaver
/// 
/// \sa SDL_IsScreenSaverEnabled()
/// \sa SDL_DisableScreenSaver()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_EnableScreenSaver(void)
/// ```
void SDL_EnableScreenSaver() {
  final _SDL_EnableScreenSaver = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_EnableScreenSaver');
  return _SDL_EnableScreenSaver();
}
/// 
/// \brief Prevent the screen from being blanked by a screensaver
/// 
/// \sa SDL_IsScreenSaverEnabled()
/// \sa SDL_EnableScreenSaver()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DisableScreenSaver(void)
/// ```
void SDL_DisableScreenSaver() {
  final _SDL_DisableScreenSaver = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_DisableScreenSaver');
  return _SDL_DisableScreenSaver();
}
/// 
/// \brief Dynamically load an OpenGL library.
/// 
/// \param path The platform dependent OpenGL library name, or NULL to open the
/// default OpenGL library.
/// 
/// \return 0 on success, or -1 if the library couldn't be loaded.
/// 
/// This should be done after initializing the video driver, but before
/// creating any OpenGL windows.  If no OpenGL library is loaded, the default
/// library will be loaded upon creation of the first OpenGL window.
/// 
/// \note If you do this, you need to retrieve all of the GL functions used in
/// your program from the dynamic library using SDL_GL_GetProcAddress().
/// 
/// \sa SDL_GL_GetProcAddress()
/// \sa SDL_GL_UnloadLibrary()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_LoadLibrary(const char *path)
/// ```
int SDL_GL_LoadLibrary(String path) {
  final _SDL_GL_LoadLibrary = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? path),
      int Function(Pointer<Utf8>? path)>('SDL_GL_LoadLibrary');
  final _pathPointer = path.toNativeUtf8();
  final _result = _SDL_GL_LoadLibrary(_pathPointer);
  calloc.free(_pathPointer);
  return _result;
}
/// 
/// \brief Get the address of an OpenGL function.
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_GL_GetProcAddress(const char *proc)
/// ```
Pointer<Void>? SDL_GL_GetProcAddress(String proc) {
  final _SDL_GL_GetProcAddress = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? proc),
      Pointer<Void>? Function(Pointer<Utf8>? proc)>('SDL_GL_GetProcAddress');
  final _procPointer = proc.toNativeUtf8();
  final _result = _SDL_GL_GetProcAddress(_procPointer);
  calloc.free(_procPointer);
  return _result;
}
/// 
/// \brief Unload the OpenGL library previously loaded by SDL_GL_LoadLibrary().
/// 
/// \sa SDL_GL_LoadLibrary()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_UnloadLibrary(void)
/// ```
void SDL_GL_UnloadLibrary() {
  final _SDL_GL_UnloadLibrary = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GL_UnloadLibrary');
  return _SDL_GL_UnloadLibrary();
}
/// 
/// \brief Return true if an OpenGL extension is supported for the current
/// context.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GL_ExtensionSupported(const char *extension)
/// ```
int SDL_GL_ExtensionSupported(String extension) {
  final _SDL_GL_ExtensionSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? extension),
      int Function(Pointer<Utf8>? extension)>('SDL_GL_ExtensionSupported');
  final _extensionPointer = extension.toNativeUtf8();
  final _result = _SDL_GL_ExtensionSupported(_extensionPointer);
  calloc.free(_extensionPointer);
  return _result;
}
/// 
/// \brief Set an OpenGL window attribute before window creation.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_SetAttribute(SDL_GLattr attr, int value)
/// ```
int SDL_GL_SetAttribute(int attr, int value) {
  final _SDL_GL_SetAttribute = _SDL2.lookupFunction<
      Int32 Function(Int32 attr, Int32 value),
      int Function(int attr, int value)>('SDL_GL_SetAttribute');
  return _SDL_GL_SetAttribute(attr, value);
}
/// 
/// \brief Get the actual value for an attribute from the current context.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_GetAttribute(SDL_GLattr attr, int *value)
/// ```
int SDL_GL_GetAttribute(int attr, Pointer<Int32>? value) {
  final _SDL_GL_GetAttribute = _SDL2.lookupFunction<
      Int32 Function(Int32 attr, Pointer<Int32>? value),
      int Function(int attr, Pointer<Int32>? value)>('SDL_GL_GetAttribute');
  return _SDL_GL_GetAttribute(attr, value);
}
/// 
/// \brief Create an OpenGL context for use with an OpenGL window, and make it
/// current.
/// 
/// \sa SDL_GL_DeleteContext()
/// 
/// ```c
/// extern DECLSPEC SDL_GLContext SDLCALL SDL_GL_CreateContext(SDL_Window * window)
/// ```
Pointer<Void>? SDL_GL_CreateContext(Pointer<SDL_Window>? window) {
  final _SDL_GL_CreateContext = _SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window),
      Pointer<Void>? Function(Pointer<SDL_Window>? window)>('SDL_GL_CreateContext');
  return _SDL_GL_CreateContext(window);
}
/// 
/// \brief Set up an OpenGL context for rendering into an OpenGL window.
/// 
/// \note The context must have been created with a compatible window.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_MakeCurrent(SDL_Window * window, SDL_GLContext context)
/// ```
int SDL_GL_MakeCurrent(Pointer<SDL_Window>? window, Pointer<Void>? context) {
  final _SDL_GL_MakeCurrent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Void>? context),
      int Function(Pointer<SDL_Window>? window, Pointer<Void>? context)>('SDL_GL_MakeCurrent');
  return _SDL_GL_MakeCurrent(window, context);
}
/// 
/// \brief Get the currently active OpenGL window.
/// 
/// ```c
/// extern DECLSPEC SDL_Window* SDLCALL SDL_GL_GetCurrentWindow(void)
/// ```
Pointer<SDL_Window>? SDL_GL_GetCurrentWindow() {
  final _SDL_GL_GetCurrentWindow = _SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GL_GetCurrentWindow');
  return _SDL_GL_GetCurrentWindow();
}
/// 
/// \brief Get the currently active OpenGL context.
/// 
/// ```c
/// extern DECLSPEC SDL_GLContext SDLCALL SDL_GL_GetCurrentContext(void)
/// ```
Pointer<Void>? SDL_GL_GetCurrentContext() {
  final _SDL_GL_GetCurrentContext = _SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_GL_GetCurrentContext');
  return _SDL_GL_GetCurrentContext();
}
/// 
/// \brief Set the swap interval for the current OpenGL context.
/// 
/// \param interval 0 for immediate updates, 1 for updates synchronized with the
/// vertical retrace. If the system supports it, you may
/// specify -1 to allow late swaps to happen immediately
/// instead of waiting for the next retrace.
/// 
/// \return 0 on success, or -1 if setting the swap interval is not supported.
/// 
/// \sa SDL_GL_GetSwapInterval()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_SetSwapInterval(int interval)
/// ```
int SDL_GL_SetSwapInterval(int interval) {
  final _SDL_GL_SetSwapInterval = _SDL2.lookupFunction<
      Int32 Function(Int32 interval),
      int Function(int interval)>('SDL_GL_SetSwapInterval');
  return _SDL_GL_SetSwapInterval(interval);
}
/// 
/// \brief Get the swap interval for the current OpenGL context.
/// 
/// \return 0 if there is no vertical retrace synchronization, 1 if the buffer
/// swap is synchronized with the vertical retrace, and -1 if late
/// swaps happen immediately instead of waiting for the next retrace.
/// If the system can't determine the swap interval, or there isn't a
/// valid current context, this will return 0 as a safe default.
/// 
/// \sa SDL_GL_SetSwapInterval()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_GetSwapInterval(void)
/// ```
int SDL_GL_GetSwapInterval() {
  final _SDL_GL_GetSwapInterval = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GL_GetSwapInterval');
  return _SDL_GL_GetSwapInterval();
}
/// 
/// \brief Swap the OpenGL buffers for a window, if double-buffering is
/// supported.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_SwapWindow(SDL_Window * window)
/// ```
void SDL_GL_SwapWindow(Pointer<SDL_Window>? window) {
  final _SDL_GL_SwapWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_GL_SwapWindow');
  return _SDL_GL_SwapWindow(window);
}
/// 
/// \brief Delete an OpenGL context.
/// 
/// \sa SDL_GL_CreateContext()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_DeleteContext(SDL_GLContext context)
/// ```
void SDL_GL_DeleteContext(Pointer<Void>? context) {
  final _SDL_GL_DeleteContext = _SDL2.lookupFunction<
      Void Function(Pointer<Void>? context),
      void Function(Pointer<Void>? context)>('SDL_GL_DeleteContext');
  return _SDL_GL_DeleteContext(context);
}
