// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Count the number of haptic devices attached to the system.
/// 
/// \returns the number of haptic devices detected on the system or a negative
/// error code on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticName
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumHaptics(void)
/// ```
int sdlNumHaptics() {
  final sdlNumHapticsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumHaptics');
  return sdlNumHapticsLookupFunction();
}

/// 
/// Get the implementation dependent name of a haptic device.
/// 
/// This can be called before any joysticks are opened. If no name can be
/// found, this function returns NULL.
/// 
/// \param device_index index of the device to query.
/// \returns the name of the device or NULL on failure; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_NumHaptics
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_HapticName(int device_index)
/// ```
String sdlHapticName(int deviceIndex) {
  final sdlHapticNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8>? Function(Int32 deviceIndex),
      Pointer<Utf8>? Function(int deviceIndex)>('SDL_HapticName');
  return sdlHapticNameLookupFunction(deviceIndex)!.toDartString();
}

/// 
/// Open a haptic device for use.
/// 
/// The index passed as an argument refers to the N'th haptic device on this
/// system.
/// 
/// When opening a haptic device, its gain will be set to maximum and
/// autocenter will be disabled. To modify these values use SDL_HapticSetGain()
/// and SDL_HapticSetAutocenter().
/// 
/// \param device_index index of the device to open
/// \returns the device identifier or NULL on failure; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticClose
/// \sa SDL_HapticIndex
/// \sa SDL_HapticOpenFromJoystick
/// \sa SDL_HapticOpenFromMouse
/// \sa SDL_HapticPause
/// \sa SDL_HapticSetAutocenter
/// \sa SDL_HapticSetGain
/// \sa SDL_HapticStopAll
/// 
/// ```c
/// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpen(int device_index)
/// ```
Pointer<SdlHaptic>? sdlHapticOpen(int deviceIndex) {
  final sdlHapticOpenLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlHaptic>? Function(Int32 deviceIndex),
      Pointer<SdlHaptic>? Function(int deviceIndex)>('SDL_HapticOpen');
  return sdlHapticOpenLookupFunction(deviceIndex);
}

/// 
/// Check if the haptic device at the designated index has been opened.
/// 
/// \param device_index the index of the device to query
/// \returns 1 if it has been opened, 0 if it hasn't or on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticIndex
/// \sa SDL_HapticOpen
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticOpened(int device_index)
/// ```
int sdlHapticOpened(int deviceIndex) {
  final sdlHapticOpenedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_HapticOpened');
  return sdlHapticOpenedLookupFunction(deviceIndex);
}

/// 
/// Get the index of a haptic device.
/// 
/// \param haptic the SDL_Haptic device to query
/// \returns the index of the specified haptic device or a negative error code
/// on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_HapticOpened
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticIndex(SDL_Haptic * haptic)
/// ```
int sdlHapticIndex(Pointer<SdlHaptic>? haptic) {
  final sdlHapticIndexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticIndex');
  return sdlHapticIndexLookupFunction(haptic);
}

/// 
/// Query whether or not the current mouse has haptic capabilities.
/// 
/// \returns SDL_TRUE if the mouse is haptic or SDL_FALSE if it isn't.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticOpenFromMouse
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_MouseIsHaptic(void)
/// ```
int sdlMouseIsHaptic() {
  final sdlMouseIsHapticLookupFunction = libSdl2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_MouseIsHaptic');
  return sdlMouseIsHapticLookupFunction();
}

/// 
/// Try to open a haptic device from the current mouse.
/// 
/// \returns the haptic device identifier or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_MouseIsHaptic
/// 
/// ```c
/// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpenFromMouse(void)
/// ```
Pointer<SdlHaptic>? sdlHapticOpenFromMouse() {
  final sdlHapticOpenFromMouseLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlHaptic>? Function(),
      Pointer<SdlHaptic>? Function()>('SDL_HapticOpenFromMouse');
  return sdlHapticOpenFromMouseLookupFunction();
}

/// 
/// Query if a joystick has haptic features.
/// 
/// \param joystick the SDL_Joystick to test for haptic capabilities
/// \returns SDL_TRUE if the joystick is haptic, SDL_FALSE if it isn't, or a
/// negative error code on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticOpenFromJoystick
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_JoystickIsHaptic(SDL_Joystick * joystick)
/// ```
int sdlJoystickIsHaptic(Pointer<SdlJoystick>? joystick) {
  final sdlJoystickIsHapticLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlJoystick>? joystick),
      int Function(Pointer<SdlJoystick>? joystick)>('SDL_JoystickIsHaptic');
  return sdlJoystickIsHapticLookupFunction(joystick);
}

/// 
/// Open a haptic device for use from a joystick device.
/// 
/// You must still close the haptic device separately. It will not be closed
/// with the joystick.
/// 
/// When opened from a joystick you should first close the haptic device before
/// closing the joystick device. If not, on some implementations the haptic
/// device will also get unallocated and you'll be unable to use force feedback
/// on that device.
/// 
/// \param joystick the SDL_Joystick to create a haptic device from
/// \returns a valid haptic device identifier on success or NULL on failure;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticClose
/// \sa SDL_HapticOpen
/// \sa SDL_JoystickIsHaptic
/// 
/// ```c
/// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpenFromJoystick(SDL_Joystick * joystick)
/// ```
Pointer<SdlHaptic>? sdlHapticOpenFromJoystick(Pointer<SdlJoystick>? joystick) {
  final sdlHapticOpenFromJoystickLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlHaptic>? Function(Pointer<SdlJoystick>? joystick),
      Pointer<SdlHaptic>? Function(Pointer<SdlJoystick>? joystick)>('SDL_HapticOpenFromJoystick');
  return sdlHapticOpenFromJoystickLookupFunction(joystick);
}

/// 
/// Close a haptic device previously opened with SDL_HapticOpen().
/// 
/// \param haptic the SDL_Haptic device to close
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticOpen
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_HapticClose(SDL_Haptic * haptic)
/// ```
void sdlHapticClose(Pointer<SdlHaptic>? haptic) {
  final sdlHapticCloseLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlHaptic>? haptic),
      void Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticClose');
  return sdlHapticCloseLookupFunction(haptic);
}

/// 
/// Get the number of effects a haptic device can store.
/// 
/// On some platforms this isn't fully supported, and therefore is an
/// approximation. Always check to see if your created effect was actually
/// created and do not rely solely on SDL_HapticNumEffects().
/// 
/// \param haptic the SDL_Haptic device to query
/// \returns the number of effects the haptic device can store or a negative
/// error code on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticNumEffectsPlaying
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNumEffects(SDL_Haptic * haptic)
/// ```
int sdlHapticNumEffects(Pointer<SdlHaptic>? haptic) {
  final sdlHapticNumEffectsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticNumEffects');
  return sdlHapticNumEffectsLookupFunction(haptic);
}

/// 
/// Get the number of effects a haptic device can play at the same time.
/// 
/// This is not supported on all platforms, but will always return a value.
/// 
/// \param haptic the SDL_Haptic device to query maximum playing effects
/// \returns the number of effects the haptic device can play at the same time
/// or a negative error code on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticNumEffects
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNumEffectsPlaying(SDL_Haptic * haptic)
/// ```
int sdlHapticNumEffectsPlaying(Pointer<SdlHaptic>? haptic) {
  final sdlHapticNumEffectsPlayingLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticNumEffectsPlaying');
  return sdlHapticNumEffectsPlayingLookupFunction(haptic);
}

/// 
/// Get the haptic device's supported features in bitwise manner.
/// 
/// \param haptic the SDL_Haptic device to query
/// \returns a list of supported haptic features in bitwise manner (OR'd), or 0
/// on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticEffectSupported
/// \sa SDL_HapticNumEffects
/// 
/// ```c
/// extern DECLSPEC unsigned int SDLCALL SDL_HapticQuery(SDL_Haptic * haptic)
/// ```
int sdlHapticQuery(Pointer<SdlHaptic>? haptic) {
  final sdlHapticQueryLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticQuery');
  return sdlHapticQueryLookupFunction(haptic);
}

/// 
/// Get the number of haptic axes the device has.
/// 
/// The number of haptic axes might be useful if working with the
/// SDL_HapticDirection effect.
/// 
/// \param haptic the SDL_Haptic device to query
/// \returns the number of axes on success or a negative error code on failure;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNumAxes(SDL_Haptic * haptic)
/// ```
int sdlHapticNumAxes(Pointer<SdlHaptic>? haptic) {
  final sdlHapticNumAxesLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticNumAxes');
  return sdlHapticNumAxesLookupFunction(haptic);
}

/// 
/// Check to see if an effect is supported by a haptic device.
/// 
/// \param haptic the SDL_Haptic device to query
/// \param effect the desired effect to query
/// \returns SDL_TRUE if effect is supported, SDL_FALSE if it isn't, or a
/// negative error code on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticNewEffect
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticEffectSupported(SDL_Haptic * haptic, SDL_HapticEffect * effect)
/// ```
int sdlHapticEffectSupported(Pointer<SdlHaptic>? haptic, Pointer<SdlHapticEffect>? effect) {
  final sdlHapticEffectSupportedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Pointer<SdlHapticEffect>? effect),
      int Function(Pointer<SdlHaptic>? haptic, Pointer<SdlHapticEffect>? effect)>('SDL_HapticEffectSupported');
  return sdlHapticEffectSupportedLookupFunction(haptic, effect);
}

/// 
/// Create a new haptic effect on a specified device.
/// 
/// \param haptic an SDL_Haptic device to create the effect on
/// \param effect an SDL_HapticEffect structure containing the properties of
/// the effect to create
/// \returns the ID of the effect on success or a negative error code on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticDestroyEffect
/// \sa SDL_HapticRunEffect
/// \sa SDL_HapticUpdateEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticNewEffect(SDL_Haptic * haptic, SDL_HapticEffect * effect)
/// ```
int sdlHapticNewEffect(Pointer<SdlHaptic>? haptic, Pointer<SdlHapticEffect>? effect) {
  final sdlHapticNewEffectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Pointer<SdlHapticEffect>? effect),
      int Function(Pointer<SdlHaptic>? haptic, Pointer<SdlHapticEffect>? effect)>('SDL_HapticNewEffect');
  return sdlHapticNewEffectLookupFunction(haptic, effect);
}

/// 
/// Update the properties of an effect.
/// 
/// Can be used dynamically, although behavior when dynamically changing
/// direction may be strange. Specifically the effect may re-upload itself and
/// start playing from the start. You also cannot change the type either when
/// running SDL_HapticUpdateEffect().
/// 
/// \param haptic the SDL_Haptic device that has the effect
/// \param effect the identifier of the effect to update
/// \param data an SDL_HapticEffect structure containing the new effect
/// properties to use
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticDestroyEffect
/// \sa SDL_HapticNewEffect
/// \sa SDL_HapticRunEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticUpdateEffect(SDL_Haptic * haptic, int effect, SDL_HapticEffect * data)
/// ```
int sdlHapticUpdateEffect(Pointer<SdlHaptic>? haptic, int effect, Pointer<SdlHapticEffect>? data) {
  final sdlHapticUpdateEffectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Int32 effect, Pointer<SdlHapticEffect>? data),
      int Function(Pointer<SdlHaptic>? haptic, int effect, Pointer<SdlHapticEffect>? data)>('SDL_HapticUpdateEffect');
  return sdlHapticUpdateEffectLookupFunction(haptic, effect, data);
}

/// 
/// Run the haptic effect on its associated haptic device.
/// 
/// To repeat the effect over and over indefinitely, set `iterations` to
/// `SDL_HAPTIC_INFINITY`. (Repeats the envelope - attack and fade.) To make
/// one instance of the effect last indefinitely (so the effect does not fade),
/// set the effect's `length` in its structure/union to `SDL_HAPTIC_INFINITY`
/// instead.
/// 
/// \param haptic the SDL_Haptic device to run the effect on
/// \param effect the ID of the haptic effect to run
/// \param iterations the number of iterations to run the effect; use
/// `SDL_HAPTIC_INFINITY` to repeat forever
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticDestroyEffect
/// \sa SDL_HapticGetEffectStatus
/// \sa SDL_HapticStopEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRunEffect(SDL_Haptic * haptic, int effect, Uint32 iterations)
/// ```
int sdlHapticRunEffect(Pointer<SdlHaptic>? haptic, int effect, int iterations) {
  final sdlHapticRunEffectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Int32 effect, Uint32 iterations),
      int Function(Pointer<SdlHaptic>? haptic, int effect, int iterations)>('SDL_HapticRunEffect');
  return sdlHapticRunEffectLookupFunction(haptic, effect, iterations);
}

/// 
/// Stop the haptic effect on its associated haptic device.
/// 
/// *
/// 
/// \param haptic the SDL_Haptic device to stop the effect on
/// \param effect the ID of the haptic effect to stop
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticDestroyEffect
/// \sa SDL_HapticRunEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticStopEffect(SDL_Haptic * haptic, int effect)
/// ```
int sdlHapticStopEffect(Pointer<SdlHaptic>? haptic, int effect) {
  final sdlHapticStopEffectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Int32 effect),
      int Function(Pointer<SdlHaptic>? haptic, int effect)>('SDL_HapticStopEffect');
  return sdlHapticStopEffectLookupFunction(haptic, effect);
}

/// 
/// Destroy a haptic effect on the device.
/// 
/// This will stop the effect if it's running. Effects are automatically
/// destroyed when the device is closed.
/// 
/// \param haptic the SDL_Haptic device to destroy the effect on
/// \param effect the ID of the haptic effect to destroy
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticNewEffect
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_HapticDestroyEffect(SDL_Haptic * haptic, int effect)
/// ```
void sdlHapticDestroyEffect(Pointer<SdlHaptic>? haptic, int effect) {
  final sdlHapticDestroyEffectLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlHaptic>? haptic, Int32 effect),
      void Function(Pointer<SdlHaptic>? haptic, int effect)>('SDL_HapticDestroyEffect');
  return sdlHapticDestroyEffectLookupFunction(haptic, effect);
}

/// 
/// Get the status of the current effect on the specified haptic device.
/// 
/// Device must support the SDL_HAPTIC_STATUS feature.
/// 
/// \param haptic the SDL_Haptic device to query for the effect status on
/// \param effect the ID of the haptic effect to query its status
/// \returns 0 if it isn't playing, 1 if it is playing, or a negative error
/// code on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticRunEffect
/// \sa SDL_HapticStopEffect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticGetEffectStatus(SDL_Haptic * haptic, int effect)
/// ```
int sdlHapticGetEffectStatus(Pointer<SdlHaptic>? haptic, int effect) {
  final sdlHapticGetEffectStatusLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Int32 effect),
      int Function(Pointer<SdlHaptic>? haptic, int effect)>('SDL_HapticGetEffectStatus');
  return sdlHapticGetEffectStatusLookupFunction(haptic, effect);
}

/// 
/// Set the global gain of the specified haptic device.
/// 
/// Device must support the SDL_HAPTIC_GAIN feature.
/// 
/// The user may specify the maximum gain by setting the environment variable
/// `SDL_HAPTIC_GAIN_MAX` which should be between 0 and 100. All calls to
/// SDL_HapticSetGain() will scale linearly using `SDL_HAPTIC_GAIN_MAX` as the
/// maximum.
/// 
/// \param haptic the SDL_Haptic device to set the gain on
/// \param gain value to set the gain to, should be between 0 and 100 (0 - 100)
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticSetGain(SDL_Haptic * haptic, int gain)
/// ```
int sdlHapticSetGain(Pointer<SdlHaptic>? haptic, int gain) {
  final sdlHapticSetGainLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Int32 gain),
      int Function(Pointer<SdlHaptic>? haptic, int gain)>('SDL_HapticSetGain');
  return sdlHapticSetGainLookupFunction(haptic, gain);
}

/// 
/// Set the global autocenter of the device.
/// 
/// Autocenter should be between 0 and 100. Setting it to 0 will disable
/// autocentering.
/// 
/// Device must support the SDL_HAPTIC_AUTOCENTER feature.
/// 
/// \param haptic the SDL_Haptic device to set autocentering on
/// \param autocenter value to set autocenter to (0-100)
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticQuery
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticSetAutocenter(SDL_Haptic * haptic, int autocenter)
/// ```
int sdlHapticSetAutocenter(Pointer<SdlHaptic>? haptic, int autocenter) {
  final sdlHapticSetAutocenterLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Int32 autocenter),
      int Function(Pointer<SdlHaptic>? haptic, int autocenter)>('SDL_HapticSetAutocenter');
  return sdlHapticSetAutocenterLookupFunction(haptic, autocenter);
}

/// 
/// Pause a haptic device.
/// 
/// Device must support the `SDL_HAPTIC_PAUSE` feature. Call
/// SDL_HapticUnpause() to resume playback.
/// 
/// Do not modify the effects nor add new ones while the device is paused. That
/// can cause all sorts of weird errors.
/// 
/// \param haptic the SDL_Haptic device to pause
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticUnpause
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticPause(SDL_Haptic * haptic)
/// ```
int sdlHapticPause(Pointer<SdlHaptic>? haptic) {
  final sdlHapticPauseLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticPause');
  return sdlHapticPauseLookupFunction(haptic);
}

/// 
/// Unpause a haptic device.
/// 
/// Call to unpause after SDL_HapticPause().
/// 
/// \param haptic the SDL_Haptic device to unpause
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticPause
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticUnpause(SDL_Haptic * haptic)
/// ```
int sdlHapticUnpause(Pointer<SdlHaptic>? haptic) {
  final sdlHapticUnpauseLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticUnpause');
  return sdlHapticUnpauseLookupFunction(haptic);
}

/// 
/// Stop all the currently playing effects on a haptic device.
/// 
/// \param haptic the SDL_Haptic device to stop
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticStopAll(SDL_Haptic * haptic)
/// ```
int sdlHapticStopAll(Pointer<SdlHaptic>? haptic) {
  final sdlHapticStopAllLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticStopAll');
  return sdlHapticStopAllLookupFunction(haptic);
}

/// 
/// Check whether rumble is supported on a haptic device.
/// 
/// \param haptic haptic device to check for rumble support
/// \returns SDL_TRUE if effect is supported, SDL_FALSE if it isn't, or a
/// negative error code on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticRumbleInit
/// \sa SDL_HapticRumblePlay
/// \sa SDL_HapticRumbleStop
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumbleSupported(SDL_Haptic * haptic)
/// ```
int sdlHapticRumbleSupported(Pointer<SdlHaptic>? haptic) {
  final sdlHapticRumbleSupportedLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticRumbleSupported');
  return sdlHapticRumbleSupportedLookupFunction(haptic);
}

/// 
/// Initialize a haptic device for simple rumble playback.
/// 
/// \param haptic the haptic device to initialize for simple rumble playback
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticOpen
/// \sa SDL_HapticRumblePlay
/// \sa SDL_HapticRumbleStop
/// \sa SDL_HapticRumbleSupported
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumbleInit(SDL_Haptic * haptic)
/// ```
int sdlHapticRumbleInit(Pointer<SdlHaptic>? haptic) {
  final sdlHapticRumbleInitLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticRumbleInit');
  return sdlHapticRumbleInitLookupFunction(haptic);
}

/// 
/// Run a simple rumble effect on a haptic device.
/// 
/// \param haptic the haptic device to play the rumble effect on
/// \param strength strength of the rumble to play as a 0-1 float value
/// \param length length of the rumble to play in milliseconds
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticRumbleInit
/// \sa SDL_HapticRumbleStop
/// \sa SDL_HapticRumbleSupported
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumblePlay(SDL_Haptic * haptic, float strength, Uint32 length )
/// ```
int sdlHapticRumblePlay(Pointer<SdlHaptic>? haptic, double strength, int length) {
  final sdlHapticRumblePlayLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic, Float strength, Uint32 length),
      int Function(Pointer<SdlHaptic>? haptic, double strength, int length)>('SDL_HapticRumblePlay');
  return sdlHapticRumblePlayLookupFunction(haptic, strength, length);
}

/// 
/// Stop the simple rumble on a haptic device.
/// 
/// \param haptic the haptic device to stop the rumble effect on
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HapticRumbleInit
/// \sa SDL_HapticRumblePlay
/// \sa SDL_HapticRumbleSupported
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_HapticRumbleStop(SDL_Haptic * haptic)
/// ```
int sdlHapticRumbleStop(Pointer<SdlHaptic>? haptic) {
  final sdlHapticRumbleStopLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHaptic>? haptic),
      int Function(Pointer<SdlHaptic>? haptic)>('SDL_HapticRumbleStop');
  return sdlHapticRumbleStopLookupFunction(haptic);
}

