// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// Get the current power supply details.
/// 
/// You should never take a battery status as absolute truth. Batteries
/// (especially failing batteries) are delicate hardware, and the values
/// reported here are best estimates based on what that hardware reports. It's
/// not uncommon for older batteries to lose stored power much faster than it
/// reports, or completely drain when reporting it has 20 percent left, etc.
/// 
/// Battery status can change at any time; if you are concerned with power
/// state, you should call this function frequently, and perhaps ignore changes
/// until they seem to be stable for a few seconds.
/// 
/// It's possible a platform can only report battery percentage or time left
/// but not both.
/// 
/// \param secs seconds of battery life left, you can pass a NULL here if you
/// don't care, will return -1 if we can't determine a value, or
/// we're not running on a battery
/// \param pct percentage of battery life left, between 0 and 100, you can pass
/// a NULL here if you don't care, will return -1 if we can't
/// determine a value, or we're not running on a battery
/// \returns an SDL_PowerState enum representing the current battery state.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC SDL_PowerState SDLCALL SDL_GetPowerInfo(int *secs, int *pct)
/// ```
int sdlGetPowerInfo(Pointer<Int32>? secs, Pointer<Int32>? pct) {
  final sdlGetPowerInfoLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Int32>? secs, Pointer<Int32>? pct),
      int Function(Pointer<Int32>? secs, Pointer<Int32>? pct)>('SDL_GetPowerInfo');
  return sdlGetPowerInfoLookupFunction(secs, pct);
}

