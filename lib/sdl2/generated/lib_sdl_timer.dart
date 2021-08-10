// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// \brief Get the number of milliseconds since the SDL library initialization.
/// 
/// \note This value wraps if the program runs for more than ~49 days.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetTicks(void)
/// ```
int SDL_GetTicks() {
  final _SDL_GetTicks = DLL_SDL2.lookupFunction<
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
  final _SDL_GetPerformanceCounter = DLL_SDL2.lookupFunction<
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
  final _SDL_GetPerformanceFrequency = DLL_SDL2.lookupFunction<
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
  final _SDL_Delay = DLL_SDL2.lookupFunction<
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
  final _SDL_AddTimer = DLL_SDL2.lookupFunction<
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
  final _SDL_RemoveTimer = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 id),
      int Function(int id)>('SDL_RemoveTimer');
  return _SDL_RemoveTimer(id);
}

