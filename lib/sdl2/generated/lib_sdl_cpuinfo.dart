// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// This function returns the number of CPU cores available.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetCPUCount(void)
/// ```
int SDL_GetCPUCount() {
  final _SDL_GetCPUCount = DLL_SDL2.lookupFunction<
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
  final _SDL_GetCPUCacheLineSize = DLL_SDL2.lookupFunction<
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
  final _SDL_HasRDTSC = DLL_SDL2.lookupFunction<
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
  final _SDL_HasAltiVec = DLL_SDL2.lookupFunction<
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
  final _SDL_HasMMX = DLL_SDL2.lookupFunction<
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
  final _SDL_Has3DNow = DLL_SDL2.lookupFunction<
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
  final _SDL_HasSSE = DLL_SDL2.lookupFunction<
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
  final _SDL_HasSSE2 = DLL_SDL2.lookupFunction<
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
  final _SDL_HasSSE3 = DLL_SDL2.lookupFunction<
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
  final _SDL_HasSSE41 = DLL_SDL2.lookupFunction<
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
  final _SDL_HasSSE42 = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE42');
  return _SDL_HasSSE42();
}

