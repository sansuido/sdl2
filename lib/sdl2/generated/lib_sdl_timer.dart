// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// Get the number of milliseconds since SDL library initialization.
/// 
/// This value wraps if the program runs for more than ~49 days.
/// 
/// This function is not recommended as of SDL 2.0.18; use SDL_GetTicks64()
/// instead, where the value doesn't wrap every ~49 days. There are places in
/// SDL where we provide a 32-bit timestamp that can not change without
/// breaking binary compatibility, though, so this function isn't officially
/// deprecated.
/// 
/// \returns an unsigned 32-bit value representing the number of milliseconds
/// since the SDL library initialized.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_TICKS_PASSED
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetTicks(void)
/// ```
int sdlGetTicks() {
  final sdlGetTicksLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_GetTicks');
  return sdlGetTicksLookupFunction();
}

/// 
/// Get the number of milliseconds since SDL library initialization.
/// 
/// Note that you should not use the SDL_TICKS_PASSED macro with values
/// returned by this function, as that macro does clever math to compensate for
/// the 32-bit overflow every ~49 days that SDL_GetTicks() suffers from. 64-bit
/// values from this function can be safely compared directly.
/// 
/// For example, if you want to wait 100 ms, you could do this:
/// 
/// ```c
/// const Uint64 timeout = SDL_GetTicks64() + 100;
/// while (SDL_GetTicks64() < timeout) {
/// // ... do work until timeout has elapsed
/// }
/// ```
/// 
/// \returns an unsigned 64-bit value representing the number of milliseconds
/// since the SDL library initialized.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_GetTicks64(void)
/// ```
int sdlGetTicks64() {
  final sdlGetTicks64LookupFunction = libSdl2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetTicks64');
  return sdlGetTicks64LookupFunction();
}

/// 
/// Get the current value of the high resolution counter.
/// 
/// This function is typically used for profiling.
/// 
/// The counter values are only meaningful relative to each other. Differences
/// between values can be converted to times by using
/// SDL_GetPerformanceFrequency().
/// 
/// \returns the current counter value.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetPerformanceFrequency
/// 
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_GetPerformanceCounter(void)
/// ```
int sdlGetPerformanceCounter() {
  final sdlGetPerformanceCounterLookupFunction = libSdl2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetPerformanceCounter');
  return sdlGetPerformanceCounterLookupFunction();
}

/// 
/// Get the count per second of the high resolution counter.
/// 
/// \returns a platform-specific count per second.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetPerformanceCounter
/// 
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_GetPerformanceFrequency(void)
/// ```
int sdlGetPerformanceFrequency() {
  final sdlGetPerformanceFrequencyLookupFunction = libSdl2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetPerformanceFrequency');
  return sdlGetPerformanceFrequencyLookupFunction();
}

/// 
/// Wait a specified number of milliseconds before returning.
/// 
/// This function waits a specified number of milliseconds before returning. It
/// waits at least the specified time, but possibly longer due to OS
/// scheduling.
/// 
/// \param ms the number of milliseconds to delay
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Delay(Uint32 ms)
/// ```
void sdlDelay(int ms) {
  final sdlDelayLookupFunction = libSdl2.lookupFunction<
      Void Function(Uint32 ms),
      void Function(int ms)>('SDL_Delay');
  return sdlDelayLookupFunction(ms);
}

/// 
/// Call a callback function at a future time.
/// 
/// If you use this function, you must pass `SDL_INIT_TIMER` to SDL_Init().
/// 
/// The callback function is passed the current timer interval and the user
/// supplied parameter from the SDL_AddTimer() call and should return the next
/// timer interval. If the value returned from the callback is 0, the timer is
/// canceled.
/// 
/// The callback is run on a separate thread.
/// 
/// Timers take into account the amount of time it took to execute the
/// callback. For example, if the callback took 250 ms to execute and returned
/// 1000 (ms), the timer would only wait another 750 ms before its next
/// iteration.
/// 
/// Timing may be inexact due to OS scheduling. Be sure to note the current
/// time with SDL_GetTicks() or SDL_GetPerformanceCounter() in case your
/// callback needs to adjust for variances.
/// 
/// \param interval the timer delay, in milliseconds, passed to `callback`
/// \param callback the SDL_TimerCallback function to call when the specified
/// `interval` elapses
/// \param param a pointer that is passed to `callback`
/// \returns a timer ID or 0 if an error occurs; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RemoveTimer
/// 
/// ```c
/// extern DECLSPEC SDL_TimerID SDLCALL SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *param)
/// ```
int sdlAddTimer(int interval, Pointer<Void>? callback, Pointer<Void>? param) {
  final sdlAddTimerLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Uint32 interval, Pointer<Void>? callback, Pointer<Void>? param),
      int Function(int interval, Pointer<Void>? callback, Pointer<Void>? param)>('SDL_AddTimer');
  return sdlAddTimerLookupFunction(interval, callback, param);
}

/// 
/// Remove a timer created with SDL_AddTimer().
/// 
/// \param id the ID of the timer to remove
/// \returns SDL_TRUE if the timer is removed or SDL_FALSE if the timer wasn't
/// found.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AddTimer
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_RemoveTimer(SDL_TimerID id)
/// ```
int sdlRemoveTimer(int id) {
  final sdlRemoveTimerLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 id),
      int Function(int id)>('SDL_RemoveTimer');
  return sdlRemoveTimerLookupFunction(id);
}

