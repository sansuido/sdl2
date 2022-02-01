// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// Get the number of CPU cores available.
/// 
/// \returns the total number of logical CPU cores. On CPUs that include
/// technologies such as hyperthreading, the number of logical cores
/// may be more than the number of physical cores.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Determine the L1 cache line size of the CPU.
/// 
/// This is useful for determining multi-threaded structure padding or SIMD
/// prefetch sizes.
/// 
/// \returns the L1 cache line size of the CPU, in bytes.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Determine whether the CPU has the RDTSC instruction.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has the RDTSC instruction or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has AltiVec features.
/// 
/// This always returns false on CPUs that aren't using PowerPC instruction
/// sets.
/// 
/// \returns SDL_TRUE if the CPU has AltiVec features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has MMX features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has MMX features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has 3DNow! features.
/// 
/// This always returns false on CPUs that aren't using AMD instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has 3DNow! features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has SSE features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has SSE features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has SSE2 features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has SSE2 features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has SSE3 features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has SSE3 features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has SSE4.1 features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has SSE4.1 features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE42
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
/// Determine whether the CPU has SSE4.2 features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has SSE4.2 features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
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

/// 
/// Determine whether the CPU has AVX features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has AVX features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX2
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasAVX(void)
/// ```
int SDL_HasAVX() {
  final _SDL_HasAVX = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasAVX');
  return _SDL_HasAVX();
}

/// 
/// Determine whether the CPU has AVX2 features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has AVX2 features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_Has3DNow
/// \sa SDL_HasAltiVec
/// \sa SDL_HasAVX
/// \sa SDL_HasMMX
/// \sa SDL_HasRDTSC
/// \sa SDL_HasSSE
/// \sa SDL_HasSSE2
/// \sa SDL_HasSSE3
/// \sa SDL_HasSSE41
/// \sa SDL_HasSSE42
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasAVX2(void)
/// ```
int SDL_HasAVX2() {
  final _SDL_HasAVX2 = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasAVX2');
  return _SDL_HasAVX2();
}

/// 
/// Determine whether the CPU has AVX-512F (foundation) features.
/// 
/// This always returns false on CPUs that aren't using Intel instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has AVX-512F features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// \sa SDL_HasAVX
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasAVX512F(void)
/// ```
int SDL_HasAVX512F() {
  final _SDL_HasAVX512F = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasAVX512F');
  return _SDL_HasAVX512F();
}

/// 
/// Determine whether the CPU has ARM SIMD (ARMv6) features.
/// 
/// This is different from ARM NEON, which is a different instruction set.
/// 
/// This always returns false on CPUs that aren't using ARM instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has ARM SIMD features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// \sa SDL_HasNEON
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasARMSIMD(void)
/// ```
int SDL_HasARMSIMD() {
  final _SDL_HasARMSIMD = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasARMSIMD');
  return _SDL_HasARMSIMD();
}

/// 
/// Determine whether the CPU has NEON (ARM SIMD) features.
/// 
/// This always returns false on CPUs that aren't using ARM instruction sets.
/// 
/// \returns SDL_TRUE if the CPU has ARM NEON features or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasNEON(void)
/// ```
int SDL_HasNEON() {
  final _SDL_HasNEON = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasNEON');
  return _SDL_HasNEON();
}

/// 
/// Get the amount of RAM configured in the system.
/// 
/// \returns the amount of RAM configured in the system in MB.
/// 
/// \since This function is available since SDL 2.0.1.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSystemRAM(void)
/// ```
int SDL_GetSystemRAM() {
  final _SDL_GetSystemRAM = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetSystemRAM');
  return _SDL_GetSystemRAM();
}

/// 
/// Report the alignment this system needs for SIMD allocations.
/// 
/// This will return the minimum number of bytes to which a pointer must be
/// aligned to be compatible with SIMD instructions on the current machine. For
/// example, if the machine supports SSE only, it will return 16, but if it
/// supports AVX-512F, it'll return 64 (etc). This only reports values for
/// instruction sets SDL knows about, so if your SDL build doesn't have
/// SDL_HasAVX512F(), then it might return 16 for the SSE support it sees and
/// not 64 for the AVX-512 instructions that exist but SDL doesn't know about.
/// Plan accordingly.
/// 
/// \returns the alignment in bytes needed for available, known SIMD
/// instructions.
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_SIMDGetAlignment(void)
/// ```
int SDL_SIMDGetAlignment() {
  final _SDL_SIMDGetAlignment = DLL_SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_SIMDGetAlignment');
  return _SDL_SIMDGetAlignment();
}

/// 
/// Allocate memory in a SIMD-friendly way.
/// 
/// This will allocate a block of memory that is suitable for use with SIMD
/// instructions. Specifically, it will be properly aligned and padded for the
/// system's supported vector instructions.
/// 
/// The memory returned will be padded such that it is safe to read or write an
/// incomplete vector at the end of the memory block. This can be useful so you
/// don't have to drop back to a scalar fallback at the end of your SIMD
/// processing loop to deal with the final elements without overflowing the
/// allocated buffer.
/// 
/// You must free this memory with SDL_FreeSIMD(), not free() or SDL_free() or
/// delete[], etc.
/// 
/// Note that SDL will only deal with SIMD instruction sets it is aware of; for
/// example, SDL 2.0.8 knows that SSE wants 16-byte vectors (SDL_HasSSE()), and
/// AVX2 wants 32 bytes (SDL_HasAVX2()), but doesn't know that AVX-512 wants
/// 64. To be clear: if you can't decide to use an instruction set with an
/// SDL_Has*() function, don't use that instruction set with memory allocated
/// through here.
/// 
/// SDL_AllocSIMD(0) will return a non-NULL pointer, assuming the system isn't
/// out of memory, but you are not allowed to dereference it (because you only
/// own zero bytes of that buffer).
/// 
/// \param len The length, in bytes, of the block to allocate. The actual
/// allocated block might be larger due to padding, etc.
/// \returns a pointer to the newly-allocated block, NULL if out of memory.
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// \sa SDL_SIMDAlignment
/// \sa SDL_SIMDRealloc
/// \sa SDL_SIMDFree
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_SIMDAlloc(const size_t len)
/// ```
Pointer<Void>? SDL_SIMDAlloc(int len) {
  final _SDL_SIMDAlloc = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 len),
      Pointer<Void>? Function(int len)>('SDL_SIMDAlloc');
  return _SDL_SIMDAlloc(len);
}

/// 
/// Reallocate memory obtained from SDL_SIMDAlloc
/// 
/// It is not valid to use this function on a pointer from anything but
/// SDL_SIMDAlloc(). It can't be used on pointers from malloc, realloc,
/// SDL_malloc, memalign, new[], etc.
/// 
/// \param mem The pointer obtained from SDL_SIMDAlloc. This function also
/// accepts NULL, at which point this function is the same as
/// calling SDL_SIMDAlloc with a NULL pointer.
/// \param len The length, in bytes, of the block to allocated. The actual
/// allocated block might be larger due to padding, etc. Passing 0
/// will return a non-NULL pointer, assuming the system isn't out of
/// memory.
/// \returns a pointer to the newly-reallocated block, NULL if out of memory.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// \sa SDL_SIMDAlignment
/// \sa SDL_SIMDAlloc
/// \sa SDL_SIMDFree
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_SIMDRealloc(void *mem, const size_t len)
/// ```
Pointer<Void>? SDL_SIMDRealloc(Pointer<Void>? mem, int len) {
  final _SDL_SIMDRealloc = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? mem, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? mem, int len)>('SDL_SIMDRealloc');
  return _SDL_SIMDRealloc(mem, len);
}

/// 
/// Deallocate memory obtained from SDL_SIMDAlloc
/// 
/// It is not valid to use this function on a pointer from anything but
/// SDL_SIMDAlloc() or SDL_SIMDRealloc(). It can't be used on pointers from
/// malloc, realloc, SDL_malloc, memalign, new[], etc.
/// 
/// However, SDL_SIMDFree(NULL) is a legal no-op.
/// 
/// The memory pointed to by `ptr` is no longer valid for access upon return,
/// and may be returned to the system or reused by a future allocation. The
/// pointer passed to this function is no longer safe to dereference once this
/// function returns, and should be discarded.
/// 
/// \param ptr The pointer, returned from SDL_SIMDAlloc or SDL_SIMDRealloc, to
/// deallocate. NULL is a legal no-op.
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// \sa SDL_SIMDAlloc
/// \sa SDL_SIMDRealloc
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SIMDFree(void *ptr)
/// ```
void SDL_SIMDFree(Pointer<Void>? ptr) {
  final _SDL_SIMDFree = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? ptr),
      void Function(Pointer<Void>? ptr)>('SDL_SIMDFree');
  return _SDL_SIMDFree(ptr);
}

