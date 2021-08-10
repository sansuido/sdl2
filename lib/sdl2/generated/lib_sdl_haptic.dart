// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Count the number of haptic devices attached to the system.
/// 
/// \return Number of haptic devices detected on the system.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumHaptics(void)
/// ```
int SDL_NumHaptics() {
  final _SDL_NumHaptics = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticName = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticOpen = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticOpened = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticIndex = DLL_SDL2.lookupFunction<
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
  final _SDL_MouseIsHaptic = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticOpenFromMouse = DLL_SDL2.lookupFunction<
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
  final _SDL_JoystickIsHaptic = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticOpenFromJoystick = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticClose = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticNumEffects = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticNumEffectsPlaying = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticQuery = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticNumAxes = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticEffectSupported = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticNewEffect = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticUpdateEffect = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticRunEffect = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticStopEffect = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticDestroyEffect = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticGetEffectStatus = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticSetGain = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticSetAutocenter = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticPause = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticUnpause = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticStopAll = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticRumbleSupported = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticRumbleInit = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticRumblePlay = DLL_SDL2.lookupFunction<
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
  final _SDL_HapticRumbleStop = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic>? haptic),
      int Function(Pointer<SDL_Haptic>? haptic)>('SDL_HapticRumbleStop');
  return _SDL_HapticRumbleStop(haptic);
}

