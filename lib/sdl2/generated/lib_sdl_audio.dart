// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Use this function to get the number of built-in audio drivers.
///
/// This function returns a hardcoded number. This never returns a negative
/// value; if there are no drivers compiled into this build of SDL, this
/// function returns zero. The presence of a driver in this list does not mean
/// it will function, it just means SDL is capable of interacting with that
/// interface. For example, a build of SDL might have esound support, but if
/// there's no esound server available, SDL's esound driver would fail if used.
///
/// By default, SDL tries all drivers, in its preferred order, until one is
/// found to be usable.
///
/// \returns the number of built-in audio drivers.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetAudioDriver
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumAudioDrivers(void)
/// ```
int sdlGetNumAudioDrivers() {
  final sdlGetNumAudioDriversLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_GetNumAudioDrivers');
  return sdlGetNumAudioDriversLookupFunction();
}

///
/// Use this function to get the name of a built in audio driver.
///
/// The list of audio drivers is given in the order that they are normally
/// initialized by default; the drivers that seem more reasonable to choose
/// first (as far as the SDL developers believe) are earlier in the list.
///
/// The names of drivers are all simple, low-ASCII identifiers, like "alsa",
/// "coreaudio" or "xaudio2". These never have Unicode characters, and are not
/// meant to be proper names.
///
/// \param index the index of the audio driver; the value ranges from 0 to
/// SDL_GetNumAudioDrivers() - 1
/// \returns the name of the audio driver at the requested index, or NULL if an
/// invalid index was specified.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetNumAudioDrivers
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetAudioDriver(int index)
/// ```
String sdlGetAudioDriver(int index) {
  final sdlGetAudioDriverLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 index),
      Pointer<Utf8> Function(int index)>('SDL_GetAudioDriver');
  return sdlGetAudioDriverLookupFunction(index).toDartString();
}

///
/// Use this function to initialize a particular audio driver.
///
/// This function is used internally, and should not be used unless you have a
/// specific need to designate the audio driver you want to use. You should
/// normally use SDL_Init() or SDL_InitSubSystem().
///
/// \param driver_name the name of the desired audio driver
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AudioQuit
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioInit(const char *driver_name)
/// ```
int sdlAudioInit(String driverName) {
  final sdlAudioInitLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> driverName),
      int Function(Pointer<Utf8> driverName)>('SDL_AudioInit');
  final driverNamePointer = driverName.toNativeUtf8();
  final result = sdlAudioInitLookupFunction(driverNamePointer);
  calloc.free(driverNamePointer);
  return result;
}

///
/// Use this function to shut down audio if you initialized it with
/// SDL_AudioInit().
///
/// This function is used internally, and should not be used unless you have a
/// specific need to specify the audio driver you want to use. You should
/// normally use SDL_Quit() or SDL_QuitSubSystem().
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AudioInit
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AudioQuit(void)
/// ```
void sdlAudioQuit() {
  final sdlAudioQuitLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>('SDL_AudioQuit');
  return sdlAudioQuitLookupFunction();
}

///
/// Get the name of the current audio driver.
///
/// The returned string points to internal static memory and thus never becomes
/// invalid, even if you quit the audio subsystem and initialize a new driver
/// (although such a case would return a different static string from another
/// call to this function, of course). As such, you should not modify or free
/// the returned string.
///
/// \returns the name of the current audio driver or NULL if no driver has been
/// initialized.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AudioInit
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetCurrentAudioDriver(void)
/// ```
String sdlGetCurrentAudioDriver() {
  final sdlGetCurrentAudioDriverLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_GetCurrentAudioDriver');
  return sdlGetCurrentAudioDriverLookupFunction().toDartString();
}

///
/// This function is a legacy means of opening the audio device.
///
/// This function remains for compatibility with SDL 1.2, but also because it's
/// slightly easier to use than the new functions in SDL 2.0. The new, more
/// powerful, and preferred way to do this is SDL_OpenAudioDevice().
///
/// This function is roughly equivalent to:
///
/// ```c
/// SDL_OpenAudioDevice(NULL, 0, desired, obtained, SDL_AUDIO_ALLOW_ANY_CHANGE);
/// ```
///
/// With two notable exceptions:
///
/// - If `obtained` is NULL, we use `desired` (and allow no changes), which
/// means desired will be modified to have the correct values for silence,
/// etc, and SDL will convert any differences between your app's specific
/// request and the hardware behind the scenes.
/// - The return value is always success or failure, and not a device ID, which
/// means you can only have one device open at a time with this function.
///
/// \param desired an SDL_AudioSpec structure representing the desired output
/// format. Please refer to the SDL_OpenAudioDevice
/// documentation for details on how to prepare this structure.
/// \param obtained an SDL_AudioSpec structure filled in with the actual
/// parameters, or NULL.
/// \returns 0 if successful, placing the actual hardware parameters in the
/// structure pointed to by `obtained`.
///
/// If `obtained` is NULL, the audio data passed to the callback
/// function will be guaranteed to be in the requested format, and
/// will be automatically converted to the actual hardware audio
/// format if necessary. If `obtained` is NULL, `desired` will have
/// fields modified.
///
/// This function returns a negative error code on failure to open the
/// audio device or failure to set up the audio thread; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CloseAudio
/// \sa SDL_LockAudio
/// \sa SDL_PauseAudio
/// \sa SDL_UnlockAudio
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_OpenAudio(SDL_AudioSpec * desired, SDL_AudioSpec * obtained)
/// ```
int sdlOpenAudio(
    Pointer<SdlAudioSpec> desired, Pointer<SdlAudioSpec> obtained) {
  final sdlOpenAudioLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlAudioSpec> desired, Pointer<SdlAudioSpec> obtained),
      int Function(Pointer<SdlAudioSpec> desired,
          Pointer<SdlAudioSpec> obtained)>('SDL_OpenAudio');
  return sdlOpenAudioLookupFunction(desired, obtained);
}

///
/// Get the number of built-in audio devices.
///
/// This function is only valid after successfully initializing the audio
/// subsystem.
///
/// Note that audio capture support is not implemented as of SDL 2.0.4, so the
/// `iscapture` parameter is for future expansion and should always be zero for
/// now.
///
/// This function will return -1 if an explicit list of devices can't be
/// determined. Returning -1 is not an error. For example, if SDL is set up to
/// talk to a remote audio server, it can't list every one available on the
/// Internet, but it will still allow a specific host to be specified in
/// SDL_OpenAudioDevice().
///
/// In many common cases, when this function returns a value <= 0, it can still
/// successfully open the default device (NULL for first argument of
/// SDL_OpenAudioDevice()).
///
/// This function may trigger a complete redetect of available hardware. It
/// should not be called for each iteration of a loop, but rather once at the
/// start of a loop:
///
/// ```c
/// // Don't do this:
/// for (int i = 0; i < SDL_GetNumAudioDevices(0); i++)
///
/// // do this instead:
/// const int count = SDL_GetNumAudioDevices(0);
/// for (int i = 0; i < count; ++i) { do_something_here(); }
/// ```
///
/// \param iscapture zero to request playback devices, non-zero to request
/// recording devices
/// \returns the number of available devices exposed by the current driver or
/// -1 if an explicit list of devices can't be determined. A return
/// value of -1 does not necessarily mean an error condition.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetAudioDeviceName
/// \sa SDL_OpenAudioDevice
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumAudioDevices(int iscapture)
/// ```
int sdlGetNumAudioDevices(int iscapture) {
  final sdlGetNumAudioDevicesLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 iscapture),
      int Function(int iscapture)>('SDL_GetNumAudioDevices');
  return sdlGetNumAudioDevicesLookupFunction(iscapture);
}

///
/// Get the human-readable name of a specific audio device.
///
/// This function is only valid after successfully initializing the audio
/// subsystem. The values returned by this function reflect the latest call to
/// SDL_GetNumAudioDevices(); re-call that function to redetect available
/// hardware.
///
/// The string returned by this function is UTF-8 encoded, read-only, and
/// managed internally. You are not to free it. If you need to keep the string
/// for any length of time, you should make your own copy of it, as it will be
/// invalid next time any of several other SDL functions are called.
///
/// \param index the index of the audio device; valid values range from 0 to
/// SDL_GetNumAudioDevices() - 1
/// \param iscapture non-zero to query the list of recording devices, zero to
/// query the list of output devices.
/// \returns the name of the audio device at the requested index, or NULL on
/// error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetNumAudioDevices
/// \sa SDL_GetDefaultAudioInfo
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetAudioDeviceName(int index, int iscapture)
/// ```
String sdlGetAudioDeviceName(int index, int iscapture) {
  final sdlGetAudioDeviceNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 index, Int32 iscapture),
      Pointer<Utf8> Function(
          int index, int iscapture)>('SDL_GetAudioDeviceName');
  return sdlGetAudioDeviceNameLookupFunction(index, iscapture).toDartString();
}

///
/// Get the preferred audio format of a specific audio device.
///
/// This function is only valid after a successfully initializing the audio
/// subsystem. The values returned by this function reflect the latest call to
/// SDL_GetNumAudioDevices(); re-call that function to redetect available
/// hardware.
///
/// `spec` will be filled with the sample rate, sample format, and channel
/// count.
///
/// \param index the index of the audio device; valid values range from 0 to
/// SDL_GetNumAudioDevices() - 1
/// \param iscapture non-zero to query the list of recording devices, zero to
/// query the list of output devices.
/// \param spec The SDL_AudioSpec to be initialized by this function.
/// \returns 0 on success, nonzero on error
///
/// \since This function is available since SDL 2.0.16.
///
/// \sa SDL_GetNumAudioDevices
/// \sa SDL_GetDefaultAudioInfo
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetAudioDeviceSpec(int index, int iscapture, SDL_AudioSpec *spec)
/// ```
int sdlGetAudioDeviceSpec(
    int index, int iscapture, Pointer<SdlAudioSpec> spec) {
  final sdlGetAudioDeviceSpecLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 index, Int32 iscapture, Pointer<SdlAudioSpec> spec),
      int Function(int index, int iscapture,
          Pointer<SdlAudioSpec> spec)>('SDL_GetAudioDeviceSpec');
  return sdlGetAudioDeviceSpecLookupFunction(index, iscapture, spec);
}

///
/// Get the name and preferred format of the default audio device.
///
/// Some (but not all!) platforms have an isolated mechanism to get information
/// about the "default" device. This can actually be a completely different
/// device that's not in the list you get from SDL_GetAudioDeviceSpec(). It can
/// even be a network address! (This is discussed in SDL_OpenAudioDevice().)
///
/// As a result, this call is not guaranteed to be performant, as it can query
/// the sound server directly every time, unlike the other query functions. You
/// should call this function sparingly!
///
/// `spec` will be filled with the sample rate, sample format, and channel
/// count, if a default device exists on the system. If `name` is provided,
/// will be filled with either a dynamically-allocated UTF-8 string or NULL.
///
/// \param name A pointer to be filled with the name of the default device (can
/// be NULL). Please call SDL_free() when you are done with this
/// pointer!
/// \param spec The SDL_AudioSpec to be initialized by this function.
/// \param iscapture non-zero to query the default recording device, zero to
/// query the default output device.
/// \returns 0 on success, nonzero on error
///
/// \since This function is available since SDL 2.24.0.
///
/// \sa SDL_GetAudioDeviceName
/// \sa SDL_GetAudioDeviceSpec
/// \sa SDL_OpenAudioDevice
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDefaultAudioInfo(char **name, SDL_AudioSpec *spec, int iscapture)
/// ```
int sdlGetDefaultAudioInfo(
    Pointer<Pointer<Int8>> name, Pointer<SdlAudioSpec> spec, int iscapture) {
  final sdlGetDefaultAudioInfoLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Pointer<Int8>> name, Pointer<SdlAudioSpec> spec,
          Int32 iscapture),
      int Function(Pointer<Pointer<Int8>> name, Pointer<SdlAudioSpec> spec,
          int iscapture)>('SDL_GetDefaultAudioInfo');
  return sdlGetDefaultAudioInfoLookupFunction(name, spec, iscapture);
}

///
/// Open a specific audio device.
///
/// SDL_OpenAudio(), unlike this function, always acts on device ID 1. As such,
/// this function will never return a 1 so as not to conflict with the legacy
/// function.
///
/// Please note that SDL 2.0 before 2.0.5 did not support recording; as such,
/// this function would fail if `iscapture` was not zero. Starting with SDL
/// 2.0.5, recording is implemented and this value can be non-zero.
///
/// Passing in a `device` name of NULL requests the most reasonable default
/// (and is equivalent to what SDL_OpenAudio() does to choose a device). The
/// `device` name is a UTF-8 string reported by SDL_GetAudioDeviceName(), but
/// some drivers allow arbitrary and driver-specific strings, such as a
/// hostname/IP address for a remote audio server, or a filename in the
/// diskaudio driver.
///
/// An opened audio device starts out paused, and should be enabled for playing
/// by calling SDL_PauseAudioDevice(devid, 0) when you are ready for your audio
/// callback function to be called. Since the audio driver may modify the
/// requested size of the audio buffer, you should allocate any local mixing
/// buffers after you open the audio device.
///
/// The audio callback runs in a separate thread in most cases; you can prevent
/// race conditions between your callback and other threads without fully
/// pausing playback with SDL_LockAudioDevice(). For more information about the
/// callback, see SDL_AudioSpec.
///
/// Managing the audio spec via 'desired' and 'obtained':
///
/// When filling in the desired audio spec structure:
///
/// - `desired->freq` should be the frequency in sample-frames-per-second (Hz).
/// - `desired->format` should be the audio format (`AUDIO_S16SYS`, etc).
/// - `desired->samples` is the desired size of the audio buffer, in _sample
/// frames_ (with stereo output, two samples--left and right--would make a
/// single sample frame). This number should be a power of two, and may be
/// adjusted by the audio driver to a value more suitable for the hardware.
/// Good values seem to range between 512 and 8096 inclusive, depending on
/// the application and CPU speed. Smaller values reduce latency, but can
/// lead to underflow if the application is doing heavy processing and cannot
/// fill the audio buffer in time. Note that the number of sample frames is
/// directly related to time by the following formula: `ms =
/// (sampleframes*1000)/freq`
/// - `desired->size` is the size in _bytes_ of the audio buffer, and is
/// calculated by SDL_OpenAudioDevice(). You don't initialize this.
/// - `desired->silence` is the value used to set the buffer to silence, and is
/// calculated by SDL_OpenAudioDevice(). You don't initialize this.
/// - `desired->callback` should be set to a function that will be called when
/// the audio device is ready for more data. It is passed a pointer to the
/// audio buffer, and the length in bytes of the audio buffer. This function
/// usually runs in a separate thread, and so you should protect data
/// structures that it accesses by calling SDL_LockAudioDevice() and
/// SDL_UnlockAudioDevice() in your code. Alternately, you may pass a NULL
/// pointer here, and call SDL_QueueAudio() with some frequency, to queue
/// more audio samples to be played (or for capture devices, call
/// SDL_DequeueAudio() with some frequency, to obtain audio samples).
/// - `desired->userdata` is passed as the first parameter to your callback
/// function. If you passed a NULL callback, this value is ignored.
///
/// `allowed_changes` can have the following flags OR'd together:
///
/// - `SDL_AUDIO_ALLOW_FREQUENCY_CHANGE`
/// - `SDL_AUDIO_ALLOW_FORMAT_CHANGE`
/// - `SDL_AUDIO_ALLOW_CHANNELS_CHANGE`
/// - `SDL_AUDIO_ALLOW_SAMPLES_CHANGE`
/// - `SDL_AUDIO_ALLOW_ANY_CHANGE`
///
/// These flags specify how SDL should behave when a device cannot offer a
/// specific feature. If the application requests a feature that the hardware
/// doesn't offer, SDL will always try to get the closest equivalent.
///
/// For example, if you ask for float32 audio format, but the sound card only
/// supports int16, SDL will set the hardware to int16. If you had set
/// SDL_AUDIO_ALLOW_FORMAT_CHANGE, SDL will change the format in the `obtained`
/// structure. If that flag was *not* set, SDL will prepare to convert your
/// callback's float32 audio to int16 before feeding it to the hardware and
/// will keep the originally requested format in the `obtained` structure.
///
/// The resulting audio specs, varying depending on hardware and on what
/// changes were allowed, will then be written back to `obtained`.
///
/// If your application can only handle one specific data format, pass a zero
/// for `allowed_changes` and let SDL transparently handle any differences.
///
/// \param device a UTF-8 string reported by SDL_GetAudioDeviceName() or a
/// driver-specific name as appropriate. NULL requests the most
/// reasonable default device.
/// \param iscapture non-zero to specify a device should be opened for
/// recording, not playback
/// \param desired an SDL_AudioSpec structure representing the desired output
/// format; see SDL_OpenAudio() for more information
/// \param obtained an SDL_AudioSpec structure filled in with the actual output
/// format; see SDL_OpenAudio() for more information
/// \param allowed_changes 0, or one or more flags OR'd together
/// \returns a valid device ID that is > 0 on success or 0 on failure; call
/// SDL_GetError() for more information.
///
/// For compatibility with SDL 1.2, this will never return 1, since
/// SDL reserves that ID for the legacy SDL_OpenAudio() function.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CloseAudioDevice
/// \sa SDL_GetAudioDeviceName
/// \sa SDL_LockAudioDevice
/// \sa SDL_OpenAudio
/// \sa SDL_PauseAudioDevice
/// \sa SDL_UnlockAudioDevice
///
/// ```c
/// extern DECLSPEC SDL_AudioDeviceID SDLCALL SDL_OpenAudioDevice( const char *device, int iscapture, const SDL_AudioSpec *desired, SDL_AudioSpec *obtained, int allowed_changes)
/// ```
int sdlOpenAudioDevice(
    String device,
    int iscapture,
    Pointer<SdlAudioSpec> desired,
    Pointer<SdlAudioSpec> obtained,
    int allowedChanges) {
  final sdlOpenAudioDeviceLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(
          Pointer<Utf8> device,
          Int32 iscapture,
          Pointer<SdlAudioSpec> desired,
          Pointer<SdlAudioSpec> obtained,
          Int32 allowedChanges),
      int Function(
          Pointer<Utf8> device,
          int iscapture,
          Pointer<SdlAudioSpec> desired,
          Pointer<SdlAudioSpec> obtained,
          int allowedChanges)>('SDL_OpenAudioDevice');
  final devicePointer = device.toNativeUtf8();
  final result = sdlOpenAudioDeviceLookupFunction(
      devicePointer, iscapture, desired, obtained, allowedChanges);
  calloc.free(devicePointer);
  return result;
}

///
/// This function is a legacy means of querying the audio device.
///
/// New programs might want to use SDL_GetAudioDeviceStatus() instead. This
/// function is equivalent to calling...
///
/// ```c
/// SDL_GetAudioDeviceStatus(1);
/// ```
///
/// ...and is only useful if you used the legacy SDL_OpenAudio() function.
///
/// \returns the SDL_AudioStatus of the audio device opened by SDL_OpenAudio().
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetAudioDeviceStatus
///
/// ```c
/// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioStatus(void)
/// ```
int sdlGetAudioStatus() {
  final sdlGetAudioStatusLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_GetAudioStatus');
  return sdlGetAudioStatusLookupFunction();
}

///
/// Use this function to get the current audio state of an audio device.
///
/// \param dev the ID of an audio device previously opened with
/// SDL_OpenAudioDevice()
/// \returns the SDL_AudioStatus of the specified audio device.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_PauseAudioDevice
///
/// ```c
/// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioDeviceStatus(SDL_AudioDeviceID dev)
/// ```
int sdlGetAudioDeviceStatus(int dev) {
  final sdlGetAudioDeviceStatusLookupFunction =
      libSdl2.lookupFunction<Int32 Function(Uint32 dev), int Function(int dev)>(
          'SDL_GetAudioDeviceStatus');
  return sdlGetAudioDeviceStatusLookupFunction(dev);
}

///
/// This function is a legacy means of pausing the audio device.
///
/// New programs might want to use SDL_PauseAudioDevice() instead. This
/// function is equivalent to calling...
///
/// ```c
/// SDL_PauseAudioDevice(1, pause_on);
/// ```
///
/// ...and is only useful if you used the legacy SDL_OpenAudio() function.
///
/// \param pause_on non-zero to pause, 0 to unpause
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetAudioStatus
/// \sa SDL_PauseAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PauseAudio(int pause_on)
/// ```
void sdlPauseAudio(int pauseOn) {
  final sdlPauseAudioLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 pauseOn),
      void Function(int pauseOn)>('SDL_PauseAudio');
  return sdlPauseAudioLookupFunction(pauseOn);
}

///
/// Use this function to pause and unpause audio playback on a specified
/// device.
///
/// This function pauses and unpauses the audio callback processing for a given
/// device. Newly-opened audio devices start in the paused state, so you must
/// call this function with **pause_on**=0 after opening the specified audio
/// device to start playing sound. This allows you to safely initialize data
/// for your callback function after opening the audio device. Silence will be
/// written to the audio device while paused, and the audio callback is
/// guaranteed to not be called. Pausing one device does not prevent other
/// unpaused devices from running their callbacks.
///
/// Pausing state does not stack; even if you pause a device several times, a
/// single unpause will start the device playing again, and vice versa. This is
/// different from how SDL_LockAudioDevice() works.
///
/// If you just need to protect a few variables from race conditions vs your
/// callback, you shouldn't pause the audio device, as it will lead to dropouts
/// in the audio playback. Instead, you should use SDL_LockAudioDevice().
///
/// \param dev a device opened by SDL_OpenAudioDevice()
/// \param pause_on non-zero to pause, 0 to unpause
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_LockAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PauseAudioDevice(SDL_AudioDeviceID dev, int pause_on)
/// ```
void sdlPauseAudioDevice(int dev, int pauseOn) {
  final sdlPauseAudioDeviceLookupFunction = libSdl2.lookupFunction<
      Void Function(Uint32 dev, Int32 pauseOn),
      void Function(int dev, int pauseOn)>('SDL_PauseAudioDevice');
  return sdlPauseAudioDeviceLookupFunction(dev, pauseOn);
}

///
/// Load the audio data of a WAVE file into memory.
///
/// Loading a WAVE file requires `src`, `spec`, `audio_buf` and `audio_len` to
/// be valid pointers. The entire data portion of the file is then loaded into
/// memory and decoded if necessary.
///
/// If `freesrc` is non-zero, the data source gets automatically closed and
/// freed before the function returns.
///
/// Supported formats are RIFF WAVE files with the formats PCM (8, 16, 24, and
/// 32 bits), IEEE Float (32 bits), Microsoft ADPCM and IMA ADPCM (4 bits), and
/// A-law and mu-law (8 bits). Other formats are currently unsupported and
/// cause an error.
///
/// If this function succeeds, the pointer returned by it is equal to `spec`
/// and the pointer to the audio data allocated by the function is written to
/// `audio_buf` and its length in bytes to `audio_len`. The SDL_AudioSpec
/// members `freq`, `channels`, and `format` are set to the values of the audio
/// data in the buffer. The `samples` member is set to a sane default and all
/// others are set to zero.
///
/// It's necessary to use SDL_FreeWAV() to free the audio data returned in
/// `audio_buf` when it is no longer used.
///
/// Because of the underspecification of the .WAV format, there are many
/// problematic files in the wild that cause issues with strict decoders. To
/// provide compatibility with these files, this decoder is lenient in regards
/// to the truncation of the file, the fact chunk, and the size of the RIFF
/// chunk. The hints `SDL_HINT_WAVE_RIFF_CHUNK_SIZE`,
/// `SDL_HINT_WAVE_TRUNCATION`, and `SDL_HINT_WAVE_FACT_CHUNK` can be used to
/// tune the behavior of the loading process.
///
/// Any file that is invalid (due to truncation, corruption, or wrong values in
/// the headers), too big, or unsupported causes an error. Additionally, any
/// critical I/O error from the data source will terminate the loading process
/// with an error. The function returns NULL on error and in all cases (with
/// the exception of `src` being NULL), an appropriate error message will be
/// set.
///
/// It is required that the data source supports seeking.
///
/// Example:
///
/// ```c
/// SDL_LoadWAV_RW(SDL_RWFromFile("sample.wav", "rb"), 1, &spec, &buf, &len);
/// ```
///
/// Note that the SDL_LoadWAV macro does this same thing for you, but in a less
/// messy way:
///
/// ```c
/// SDL_LoadWAV("sample.wav", &spec, &buf, &len);
/// ```
///
/// \param src The data source for the WAVE data
/// \param freesrc If non-zero, SDL will _always_ free the data source
/// \param spec An SDL_AudioSpec that will be filled in with the wave file's
/// format details
/// \param audio_buf A pointer filled with the audio data, allocated by the
/// function.
/// \param audio_len A pointer filled with the length of the audio data buffer
/// in bytes
/// \returns This function, if successfully called, returns `spec`, which will
/// be filled with the audio data format of the wave source data.
/// `audio_buf` will be filled with a pointer to an allocated buffer
/// containing the audio data, and `audio_len` is filled with the
/// length of that audio buffer in bytes.
///
/// This function returns NULL if the .WAV file cannot be opened, uses
/// an unknown data format, or is corrupt; call SDL_GetError() for
/// more information.
///
/// When the application is done with the data returned in
/// `audio_buf`, it should call SDL_FreeWAV() to dispose of it.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_FreeWAV
/// \sa SDL_LoadWAV
///
/// ```c
/// extern DECLSPEC SDL_AudioSpec *SDLCALL SDL_LoadWAV_RW(SDL_RWops * src, int freesrc, SDL_AudioSpec * spec, Uint8 ** audio_buf, Uint32 * audio_len)
/// ```
Pointer<SdlAudioSpec> sdlLoadWavRw(
    Pointer<SdlRWops> src,
    int freesrc,
    Pointer<SdlAudioSpec> spec,
    Pointer<Pointer<Uint8>> audioBuf,
    Pointer<Uint32> audioLen) {
  final sdlLoadWavRwLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlAudioSpec> Function(
          Pointer<SdlRWops> src,
          Int32 freesrc,
          Pointer<SdlAudioSpec> spec,
          Pointer<Pointer<Uint8>> audioBuf,
          Pointer<Uint32> audioLen),
      Pointer<SdlAudioSpec> Function(
          Pointer<SdlRWops> src,
          int freesrc,
          Pointer<SdlAudioSpec> spec,
          Pointer<Pointer<Uint8>> audioBuf,
          Pointer<Uint32> audioLen)>('SDL_LoadWAV_RW');
  return sdlLoadWavRwLookupFunction(src, freesrc, spec, audioBuf, audioLen);
}

///
/// Free data previously allocated with SDL_LoadWAV() or SDL_LoadWAV_RW().
///
/// After a WAVE file has been opened with SDL_LoadWAV() or SDL_LoadWAV_RW()
/// its data can eventually be freed with SDL_FreeWAV(). It is safe to call
/// this function with a NULL pointer.
///
/// \param audio_buf a pointer to the buffer created by SDL_LoadWAV() or
/// SDL_LoadWAV_RW()
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_LoadWAV
/// \sa SDL_LoadWAV_RW
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeWAV(Uint8 * audio_buf)
/// ```
void sdlFreeWav(Pointer<Uint8> audioBuf) {
  final sdlFreeWavLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Uint8> audioBuf),
      void Function(Pointer<Uint8> audioBuf)>('SDL_FreeWAV');
  return sdlFreeWavLookupFunction(audioBuf);
}

///
/// Initialize an SDL_AudioCVT structure for conversion.
///
/// Before an SDL_AudioCVT structure can be used to convert audio data it must
/// be initialized with source and destination information.
///
/// This function will zero out every field of the SDL_AudioCVT, so it must be
/// called before the application fills in the final buffer information.
///
/// Once this function has returned successfully, and reported that a
/// conversion is necessary, the application fills in the rest of the fields in
/// SDL_AudioCVT, now that it knows how large a buffer it needs to allocate,
/// and then can call SDL_ConvertAudio() to complete the conversion.
///
/// \param cvt an SDL_AudioCVT structure filled in with audio conversion
/// information
/// \param src_format the source format of the audio data; for more info see
/// SDL_AudioFormat
/// \param src_channels the number of channels in the source
/// \param src_rate the frequency (sample-frames-per-second) of the source
/// \param dst_format the destination format of the audio data; for more info
/// see SDL_AudioFormat
/// \param dst_channels the number of channels in the destination
/// \param dst_rate the frequency (sample-frames-per-second) of the destination
/// \returns 1 if the audio filter is prepared, 0 if no conversion is needed,
/// or a negative error code on failure; call SDL_GetError() for more
/// information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ConvertAudio
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_BuildAudioCVT(SDL_AudioCVT * cvt, SDL_AudioFormat src_format, Uint8 src_channels, int src_rate, SDL_AudioFormat dst_format, Uint8 dst_channels, int dst_rate)
/// ```
int sdlBuildAudioCvt(Pointer<SdlAudioCvt> cvt, int srcFormat, int srcChannels,
    int srcRate, int dstFormat, int dstChannels, int dstRate) {
  final sdlBuildAudioCvtLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlAudioCvt> cvt,
          Uint16 srcFormat,
          Uint8 srcChannels,
          Int32 srcRate,
          Uint16 dstFormat,
          Uint8 dstChannels,
          Int32 dstRate),
      int Function(
          Pointer<SdlAudioCvt> cvt,
          int srcFormat,
          int srcChannels,
          int srcRate,
          int dstFormat,
          int dstChannels,
          int dstRate)>('SDL_BuildAudioCVT');
  return sdlBuildAudioCvtLookupFunction(
      cvt, srcFormat, srcChannels, srcRate, dstFormat, dstChannels, dstRate);
}

///
/// Convert audio data to a desired audio format.
///
/// This function does the actual audio data conversion, after the application
/// has called SDL_BuildAudioCVT() to prepare the conversion information and
/// then filled in the buffer details.
///
/// Once the application has initialized the `cvt` structure using
/// SDL_BuildAudioCVT(), allocated an audio buffer and filled it with audio
/// data in the source format, this function will convert the buffer, in-place,
/// to the desired format.
///
/// The data conversion may go through several passes; any given pass may
/// possibly temporarily increase the size of the data. For example, SDL might
/// expand 16-bit data to 32 bits before resampling to a lower frequency,
/// shrinking the data size after having grown it briefly. Since the supplied
/// buffer will be both the source and destination, converting as necessary
/// in-place, the application must allocate a buffer that will fully contain
/// the data during its largest conversion pass. After SDL_BuildAudioCVT()
/// returns, the application should set the `cvt->len` field to the size, in
/// bytes, of the source data, and allocate a buffer that is `cvt->len *
/// cvt->len_mult` bytes long for the `buf` field.
///
/// The source data should be copied into this buffer before the call to
/// SDL_ConvertAudio(). Upon successful return, this buffer will contain the
/// converted audio, and `cvt->len_cvt` will be the size of the converted data,
/// in bytes. Any bytes in the buffer past `cvt->len_cvt` are undefined once
/// this function returns.
///
/// \param cvt an SDL_AudioCVT structure that was previously set up by
/// SDL_BuildAudioCVT().
/// \returns 0 if the conversion was completed successfully or a negative error
/// code on failure; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_BuildAudioCVT
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ConvertAudio(SDL_AudioCVT * cvt)
/// ```
int sdlConvertAudio(Pointer<SdlAudioCvt> cvt) {
  final sdlConvertAudioLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAudioCvt> cvt),
      int Function(Pointer<SdlAudioCvt> cvt)>('SDL_ConvertAudio');
  return sdlConvertAudioLookupFunction(cvt);
}

///
/// Create a new audio stream.
///
/// \param src_format The format of the source audio
/// \param src_channels The number of channels of the source audio
/// \param src_rate The sampling rate of the source audio
/// \param dst_format The format of the desired audio output
/// \param dst_channels The number of channels of the desired audio output
/// \param dst_rate The sampling rate of the desired audio output
/// \returns 0 on success, or -1 on error.
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_AudioStreamPut
/// \sa SDL_AudioStreamGet
/// \sa SDL_AudioStreamAvailable
/// \sa SDL_AudioStreamFlush
/// \sa SDL_AudioStreamClear
/// \sa SDL_FreeAudioStream
///
/// ```c
/// extern DECLSPEC SDL_AudioStream * SDLCALL SDL_NewAudioStream(const SDL_AudioFormat src_format, const Uint8 src_channels, const int src_rate, const SDL_AudioFormat dst_format, const Uint8 dst_channels, const int dst_rate)
/// ```
Pointer<SdlAudioStream> sdlNewAudioStream(int srcFormat, int srcChannels,
    int srcRate, int dstFormat, int dstChannels, int dstRate) {
  final sdlNewAudioStreamLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlAudioStream> Function(Uint16 srcFormat, Uint8 srcChannels,
          Int32 srcRate, Uint16 dstFormat, Uint8 dstChannels, Int32 dstRate),
      Pointer<SdlAudioStream> Function(
          int srcFormat,
          int srcChannels,
          int srcRate,
          int dstFormat,
          int dstChannels,
          int dstRate)>('SDL_NewAudioStream');
  return sdlNewAudioStreamLookupFunction(
      srcFormat, srcChannels, srcRate, dstFormat, dstChannels, dstRate);
}

///
/// Add data to be converted/resampled to the stream.
///
/// \param stream The stream the audio data is being added to
/// \param buf A pointer to the audio data to add
/// \param len The number of bytes to write to the stream
/// \returns 0 on success, or -1 on error.
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_NewAudioStream
/// \sa SDL_AudioStreamGet
/// \sa SDL_AudioStreamAvailable
/// \sa SDL_AudioStreamFlush
/// \sa SDL_AudioStreamClear
/// \sa SDL_FreeAudioStream
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioStreamPut(SDL_AudioStream *stream, const void *buf, int len)
/// ```
int sdlAudioStreamPut(
    Pointer<SdlAudioStream> stream, Pointer<Void> buf, int len) {
  final sdlAudioStreamPutLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlAudioStream> stream, Pointer<Void> buf, Int32 len),
      int Function(Pointer<SdlAudioStream> stream, Pointer<Void> buf,
          int len)>('SDL_AudioStreamPut');
  return sdlAudioStreamPutLookupFunction(stream, buf, len);
}

///
/// Get converted/resampled data from the stream
///
/// \param stream The stream the audio is being requested from
/// \param buf A buffer to fill with audio data
/// \param len The maximum number of bytes to fill
/// \returns the number of bytes read from the stream, or -1 on error
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_NewAudioStream
/// \sa SDL_AudioStreamPut
/// \sa SDL_AudioStreamAvailable
/// \sa SDL_AudioStreamFlush
/// \sa SDL_AudioStreamClear
/// \sa SDL_FreeAudioStream
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioStreamGet(SDL_AudioStream *stream, void *buf, int len)
/// ```
int sdlAudioStreamGet(
    Pointer<SdlAudioStream> stream, Pointer<Void> buf, int len) {
  final sdlAudioStreamGetLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlAudioStream> stream, Pointer<Void> buf, Int32 len),
      int Function(Pointer<SdlAudioStream> stream, Pointer<Void> buf,
          int len)>('SDL_AudioStreamGet');
  return sdlAudioStreamGetLookupFunction(stream, buf, len);
}

///
/// Get the number of converted/resampled bytes available.
///
/// The stream may be buffering data behind the scenes until it has enough to
/// resample correctly, so this number might be lower than what you expect, or
/// even be zero. Add more data or flush the stream if you need the data now.
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_NewAudioStream
/// \sa SDL_AudioStreamPut
/// \sa SDL_AudioStreamGet
/// \sa SDL_AudioStreamFlush
/// \sa SDL_AudioStreamClear
/// \sa SDL_FreeAudioStream
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioStreamAvailable(SDL_AudioStream *stream)
/// ```
int sdlAudioStreamAvailable(Pointer<SdlAudioStream> stream) {
  final sdlAudioStreamAvailableLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAudioStream> stream),
      int Function(Pointer<SdlAudioStream> stream)>('SDL_AudioStreamAvailable');
  return sdlAudioStreamAvailableLookupFunction(stream);
}

///
/// Tell the stream that you're done sending data, and anything being buffered
/// should be converted/resampled and made available immediately.
///
/// It is legal to add more data to a stream after flushing, but there will be
/// audio gaps in the output. Generally this is intended to signal the end of
/// input, so the complete output becomes available.
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_NewAudioStream
/// \sa SDL_AudioStreamPut
/// \sa SDL_AudioStreamGet
/// \sa SDL_AudioStreamAvailable
/// \sa SDL_AudioStreamClear
/// \sa SDL_FreeAudioStream
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AudioStreamFlush(SDL_AudioStream *stream)
/// ```
int sdlAudioStreamFlush(Pointer<SdlAudioStream> stream) {
  final sdlAudioStreamFlushLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAudioStream> stream),
      int Function(Pointer<SdlAudioStream> stream)>('SDL_AudioStreamFlush');
  return sdlAudioStreamFlushLookupFunction(stream);
}

///
/// Clear any pending data in the stream without converting it
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_NewAudioStream
/// \sa SDL_AudioStreamPut
/// \sa SDL_AudioStreamGet
/// \sa SDL_AudioStreamAvailable
/// \sa SDL_AudioStreamFlush
/// \sa SDL_FreeAudioStream
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AudioStreamClear(SDL_AudioStream *stream)
/// ```
void sdlAudioStreamClear(Pointer<SdlAudioStream> stream) {
  final sdlAudioStreamClearLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlAudioStream> stream),
      void Function(Pointer<SdlAudioStream> stream)>('SDL_AudioStreamClear');
  return sdlAudioStreamClearLookupFunction(stream);
}

///
/// Free an audio stream
///
/// \since This function is available since SDL 2.0.7.
///
/// \sa SDL_NewAudioStream
/// \sa SDL_AudioStreamPut
/// \sa SDL_AudioStreamGet
/// \sa SDL_AudioStreamAvailable
/// \sa SDL_AudioStreamFlush
/// \sa SDL_AudioStreamClear
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeAudioStream(SDL_AudioStream *stream)
/// ```
void sdlFreeAudioStream(Pointer<SdlAudioStream> stream) {
  final sdlFreeAudioStreamLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlAudioStream> stream),
      void Function(Pointer<SdlAudioStream> stream)>('SDL_FreeAudioStream');
  return sdlFreeAudioStreamLookupFunction(stream);
}

///
/// This function is a legacy means of mixing audio.
///
/// This function is equivalent to calling...
///
/// ```c
/// SDL_MixAudioFormat(dst, src, format, len, volume);
/// ```
///
/// ...where `format` is the obtained format of the audio device from the
/// legacy SDL_OpenAudio() function.
///
/// \param dst the destination for the mixed audio
/// \param src the source audio buffer to be mixed
/// \param len the length of the audio buffer in bytes
/// \param volume ranges from 0 - 128, and should be set to SDL_MIX_MAXVOLUME
/// for full audio volume
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_MixAudioFormat
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MixAudio(Uint8 * dst, const Uint8 * src, Uint32 len, int volume)
/// ```
void sdlMixAudio(Pointer<Uint8> dst, Pointer<Uint8> src, int len, int volume) {
  final sdlMixAudioLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<Uint8> dst, Pointer<Uint8> src, Uint32 len, Int32 volume),
      void Function(Pointer<Uint8> dst, Pointer<Uint8> src, int len,
          int volume)>('SDL_MixAudio');
  return sdlMixAudioLookupFunction(dst, src, len, volume);
}

///
/// Mix audio data in a specified format.
///
/// This takes an audio buffer `src` of `len` bytes of `format` data and mixes
/// it into `dst`, performing addition, volume adjustment, and overflow
/// clipping. The buffer pointed to by `dst` must also be `len` bytes of
/// `format` data.
///
/// This is provided for convenience -- you can mix your own audio data.
///
/// Do not use this function for mixing together more than two streams of
/// sample data. The output from repeated application of this function may be
/// distorted by clipping, because there is no accumulator with greater range
/// than the input (not to mention this being an inefficient way of doing it).
///
/// It is a common misconception that this function is required to write audio
/// data to an output stream in an audio callback. While you can do that,
/// SDL_MixAudioFormat() is really only needed when you're mixing a single
/// audio stream with a volume adjustment.
///
/// \param dst the destination for the mixed audio
/// \param src the source audio buffer to be mixed
/// \param format the SDL_AudioFormat structure representing the desired audio
/// format
/// \param len the length of the audio buffer in bytes
/// \param volume ranges from 0 - 128, and should be set to SDL_MIX_MAXVOLUME
/// for full audio volume
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MixAudioFormat(Uint8 * dst, const Uint8 * src, SDL_AudioFormat format, Uint32 len, int volume)
/// ```
void sdlMixAudioFormat(
    Pointer<Uint8> dst, Pointer<Uint8> src, int format, int len, int volume) {
  final sdlMixAudioFormatLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Uint8> dst, Pointer<Uint8> src, Uint16 format,
          Uint32 len, Int32 volume),
      void Function(Pointer<Uint8> dst, Pointer<Uint8> src, int format, int len,
          int volume)>('SDL_MixAudioFormat');
  return sdlMixAudioFormatLookupFunction(dst, src, format, len, volume);
}

///
/// Queue more audio on non-callback devices.
///
/// If you are looking to retrieve queued audio from a non-callback capture
/// device, you want SDL_DequeueAudio() instead. SDL_QueueAudio() will return
/// -1 to signify an error if you use it with capture devices.
///
/// SDL offers two ways to feed audio to the device: you can either supply a
/// callback that SDL triggers with some frequency to obtain more audio (pull
/// method), or you can supply no callback, and then SDL will expect you to
/// supply data at regular intervals (push method) with this function.
///
/// There are no limits on the amount of data you can queue, short of
/// exhaustion of address space. Queued data will drain to the device as
/// necessary without further intervention from you. If the device needs audio
/// but there is not enough queued, it will play silence to make up the
/// difference. This means you will have skips in your audio playback if you
/// aren't routinely queueing sufficient data.
///
/// This function copies the supplied data, so you are safe to free it when the
/// function returns. This function is thread-safe, but queueing to the same
/// device from two threads at once does not promise which buffer will be
/// queued first.
///
/// You may not queue audio on a device that is using an application-supplied
/// callback; doing so returns an error. You have to use the audio callback or
/// queue audio with this function, but not both.
///
/// You should not call SDL_LockAudio() on the device before queueing; SDL
/// handles locking internally for this function.
///
/// Note that SDL2 does not support planar audio. You will need to resample
/// from planar audio formats into a non-planar one (see SDL_AudioFormat)
/// before queuing audio.
///
/// \param dev the device ID to which we will queue audio
/// \param data the data to queue to the device for later playback
/// \param len the number of bytes (not samples!) to which `data` points
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.4.
///
/// \sa SDL_ClearQueuedAudio
/// \sa SDL_GetQueuedAudioSize
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_QueueAudio(SDL_AudioDeviceID dev, const void *data, Uint32 len)
/// ```
int sdlQueueAudio(int dev, Pointer<Void> data, int len) {
  final sdlQueueAudioLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Uint32 dev, Pointer<Void> data, Uint32 len),
      int Function(int dev, Pointer<Void> data, int len)>('SDL_QueueAudio');
  return sdlQueueAudioLookupFunction(dev, data, len);
}

///
/// Dequeue more audio on non-callback devices.
///
/// If you are looking to queue audio for output on a non-callback playback
/// device, you want SDL_QueueAudio() instead. SDL_DequeueAudio() will always
/// return 0 if you use it with playback devices.
///
/// SDL offers two ways to retrieve audio from a capture device: you can either
/// supply a callback that SDL triggers with some frequency as the device
/// records more audio data, (push method), or you can supply no callback, and
/// then SDL will expect you to retrieve data at regular intervals (pull
/// method) with this function.
///
/// There are no limits on the amount of data you can queue, short of
/// exhaustion of address space. Data from the device will keep queuing as
/// necessary without further intervention from you. This means you will
/// eventually run out of memory if you aren't routinely dequeueing data.
///
/// Capture devices will not queue data when paused; if you are expecting to
/// not need captured audio for some length of time, use SDL_PauseAudioDevice()
/// to stop the capture device from queueing more data. This can be useful
/// during, say, level loading times. When unpaused, capture devices will start
/// queueing data from that point, having flushed any capturable data available
/// while paused.
///
/// This function is thread-safe, but dequeueing from the same device from two
/// threads at once does not promise which thread will dequeue data first.
///
/// You may not dequeue audio from a device that is using an
/// application-supplied callback; doing so returns an error. You have to use
/// the audio callback, or dequeue audio with this function, but not both.
///
/// You should not call SDL_LockAudio() on the device before dequeueing; SDL
/// handles locking internally for this function.
///
/// \param dev the device ID from which we will dequeue audio
/// \param data a pointer into where audio data should be copied
/// \param len the number of bytes (not samples!) to which (data) points
/// \returns the number of bytes dequeued, which could be less than requested;
/// call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.5.
///
/// \sa SDL_ClearQueuedAudio
/// \sa SDL_GetQueuedAudioSize
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_DequeueAudio(SDL_AudioDeviceID dev, void *data, Uint32 len)
/// ```
int sdlDequeueAudio(int dev, Pointer<Void> data, int len) {
  final sdlDequeueAudioLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Uint32 dev, Pointer<Void> data, Uint32 len),
      int Function(int dev, Pointer<Void> data, int len)>('SDL_DequeueAudio');
  return sdlDequeueAudioLookupFunction(dev, data, len);
}

///
/// Get the number of bytes of still-queued audio.
///
/// For playback devices: this is the number of bytes that have been queued for
/// playback with SDL_QueueAudio(), but have not yet been sent to the hardware.
///
/// Once we've sent it to the hardware, this function can not decide the exact
/// byte boundary of what has been played. It's possible that we just gave the
/// hardware several kilobytes right before you called this function, but it
/// hasn't played any of it yet, or maybe half of it, etc.
///
/// For capture devices, this is the number of bytes that have been captured by
/// the device and are waiting for you to dequeue. This number may grow at any
/// time, so this only informs of the lower-bound of available data.
///
/// You may not queue or dequeue audio on a device that is using an
/// application-supplied callback; calling this function on such a device
/// always returns 0. You have to use the audio callback or queue audio, but
/// not both.
///
/// You should not call SDL_LockAudio() on the device before querying; SDL
/// handles locking internally for this function.
///
/// \param dev the device ID of which we will query queued audio size
/// \returns the number of bytes (not samples!) of queued audio.
///
/// \since This function is available since SDL 2.0.4.
///
/// \sa SDL_ClearQueuedAudio
/// \sa SDL_QueueAudio
/// \sa SDL_DequeueAudio
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetQueuedAudioSize(SDL_AudioDeviceID dev)
/// ```
int sdlGetQueuedAudioSize(int dev) {
  final sdlGetQueuedAudioSizeLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Uint32 dev),
      int Function(int dev)>('SDL_GetQueuedAudioSize');
  return sdlGetQueuedAudioSizeLookupFunction(dev);
}

///
/// Drop any queued audio data waiting to be sent to the hardware.
///
/// Immediately after this call, SDL_GetQueuedAudioSize() will return 0. For
/// output devices, the hardware will start playing silence if more audio isn't
/// queued. For capture devices, the hardware will start filling the empty
/// queue with new data if the capture device isn't paused.
///
/// This will not prevent playback of queued audio that's already been sent to
/// the hardware, as we can not undo that, so expect there to be some fraction
/// of a second of audio that might still be heard. This can be useful if you
/// want to, say, drop any pending music or any unprocessed microphone input
/// during a level change in your game.
///
/// You may not queue or dequeue audio on a device that is using an
/// application-supplied callback; calling this function on such a device
/// always returns 0. You have to use the audio callback or queue audio, but
/// not both.
///
/// You should not call SDL_LockAudio() on the device before clearing the
/// queue; SDL handles locking internally for this function.
///
/// This function always succeeds and thus returns void.
///
/// \param dev the device ID of which to clear the audio queue
///
/// \since This function is available since SDL 2.0.4.
///
/// \sa SDL_GetQueuedAudioSize
/// \sa SDL_QueueAudio
/// \sa SDL_DequeueAudio
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearQueuedAudio(SDL_AudioDeviceID dev)
/// ```
void sdlClearQueuedAudio(int dev) {
  final sdlClearQueuedAudioLookupFunction =
      libSdl2.lookupFunction<Void Function(Uint32 dev), void Function(int dev)>(
          'SDL_ClearQueuedAudio');
  return sdlClearQueuedAudioLookupFunction(dev);
}

///
/// This function is a legacy means of locking the audio device.
///
/// New programs might want to use SDL_LockAudioDevice() instead. This function
/// is equivalent to calling...
///
/// ```c
/// SDL_LockAudioDevice(1);
/// ```
///
/// ...and is only useful if you used the legacy SDL_OpenAudio() function.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_LockAudioDevice
/// \sa SDL_UnlockAudio
/// \sa SDL_UnlockAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockAudio(void)
/// ```
void sdlLockAudio() {
  final sdlLockAudioLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>('SDL_LockAudio');
  return sdlLockAudioLookupFunction();
}

///
/// Use this function to lock out the audio callback function for a specified
/// device.
///
/// The lock manipulated by these functions protects the audio callback
/// function specified in SDL_OpenAudioDevice(). During a
/// SDL_LockAudioDevice()/SDL_UnlockAudioDevice() pair, you can be guaranteed
/// that the callback function for that device is not running, even if the
/// device is not paused. While a device is locked, any other unpaused,
/// unlocked devices may still run their callbacks.
///
/// Calling this function from inside your audio callback is unnecessary. SDL
/// obtains this lock before calling your function, and releases it when the
/// function returns.
///
/// You should not hold the lock longer than absolutely necessary. If you hold
/// it too long, you'll experience dropouts in your audio playback. Ideally,
/// your application locks the device, sets a few variables and unlocks again.
/// Do not do heavy work while holding the lock for a device.
///
/// It is safe to lock the audio device multiple times, as long as you unlock
/// it an equivalent number of times. The callback will not run until the
/// device has been unlocked completely in this way. If your application fails
/// to unlock the device appropriately, your callback will never run, you might
/// hear repeating bursts of audio, and SDL_CloseAudioDevice() will probably
/// deadlock.
///
/// Internally, the audio device lock is a mutex; if you lock from two threads
/// at once, not only will you block the audio callback, you'll block the other
/// thread.
///
/// \param dev the ID of the device to be locked
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_UnlockAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockAudioDevice(SDL_AudioDeviceID dev)
/// ```
void sdlLockAudioDevice(int dev) {
  final sdlLockAudioDeviceLookupFunction =
      libSdl2.lookupFunction<Void Function(Uint32 dev), void Function(int dev)>(
          'SDL_LockAudioDevice');
  return sdlLockAudioDeviceLookupFunction(dev);
}

///
/// This function is a legacy means of unlocking the audio device.
///
/// New programs might want to use SDL_UnlockAudioDevice() instead. This
/// function is equivalent to calling...
///
/// ```c
/// SDL_UnlockAudioDevice(1);
/// ```
///
/// ...and is only useful if you used the legacy SDL_OpenAudio() function.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_LockAudio
/// \sa SDL_UnlockAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockAudio(void)
/// ```
void sdlUnlockAudio() {
  final sdlUnlockAudioLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_UnlockAudio');
  return sdlUnlockAudioLookupFunction();
}

///
/// Use this function to unlock the audio callback function for a specified
/// device.
///
/// This function should be paired with a previous SDL_LockAudioDevice() call.
///
/// \param dev the ID of the device to be unlocked
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_LockAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockAudioDevice(SDL_AudioDeviceID dev)
/// ```
void sdlUnlockAudioDevice(int dev) {
  final sdlUnlockAudioDeviceLookupFunction =
      libSdl2.lookupFunction<Void Function(Uint32 dev), void Function(int dev)>(
          'SDL_UnlockAudioDevice');
  return sdlUnlockAudioDeviceLookupFunction(dev);
}

///
/// This function is a legacy means of closing the audio device.
///
/// This function is equivalent to calling...
///
/// ```c
/// SDL_CloseAudioDevice(1);
/// ```
///
/// ...and is only useful if you used the legacy SDL_OpenAudio() function.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_OpenAudio
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_CloseAudio(void)
/// ```
void sdlCloseAudio() {
  final sdlCloseAudioLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_CloseAudio');
  return sdlCloseAudioLookupFunction();
}

///
/// Use this function to shut down audio processing and close the audio device.
///
/// The application should close open audio devices once they are no longer
/// needed. Calling this function will wait until the device's audio callback
/// is not running, release the audio hardware and then clean up internal
/// state. No further audio will play from this device once this function
/// returns.
///
/// This function may block briefly while pending audio data is played by the
/// hardware, so that applications don't drop the last buffer of data they
/// supplied.
///
/// The device ID is invalid as soon as the device is closed, and is eligible
/// for reuse in a new SDL_OpenAudioDevice() call immediately.
///
/// \param dev an audio device previously opened with SDL_OpenAudioDevice()
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_OpenAudioDevice
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_CloseAudioDevice(SDL_AudioDeviceID dev)
/// ```
void sdlCloseAudioDevice(int dev) {
  final sdlCloseAudioDeviceLookupFunction =
      libSdl2.lookupFunction<Void Function(Uint32 dev), void Function(int dev)>(
          'SDL_CloseAudioDevice');
  return sdlCloseAudioDeviceLookupFunction(dev);
}
