// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

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
  final _SDL_GetPowerInfo = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int32>? secs, Pointer<Int32>? pct),
      int Function(Pointer<Int32>? secs, Pointer<Int32>? pct)>('SDL_GetPowerInfo');
  return _SDL_GetPowerInfo(secs, pct);
}

