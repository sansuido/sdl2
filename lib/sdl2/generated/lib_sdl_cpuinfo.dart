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
int sdlGetCpuCount() {
  final sdlGetCpuCountLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_GetCPUCount');
  return sdlGetCpuCountLookupFunction();
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
int sdlGetCpuCacheLineSize() {
  final sdlGetCpuCacheLineSizeLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_GetCPUCacheLineSize');
  return sdlGetCpuCacheLineSizeLookupFunction();
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
int sdlHasRdtsc() {
  final sdlHasRdtscLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasRDTSC');
  return sdlHasRdtscLookupFunction();
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
int sdlHasAltiVec() {
  final sdlHasAltiVecLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_HasAltiVec');
  return sdlHasAltiVecLookupFunction();
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
int sdlHasMmx() {
  final sdlHasMmxLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasMMX');
  return sdlHasMmxLookupFunction();
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
int sdlHas3DNow() {
  final sdlHas3DNowLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_Has3DNow');
  return sdlHas3DNowLookupFunction();
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
int sdlHasSse() {
  final sdlHasSseLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasSSE');
  return sdlHasSseLookupFunction();
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
int sdlHasSse2() {
  final sdlHasSse2LookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasSSE2');
  return sdlHasSse2LookupFunction();
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
int sdlHasSse3() {
  final sdlHasSse3LookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasSSE3');
  return sdlHasSse3LookupFunction();
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
int sdlHasSse41() {
  final sdlHasSse41LookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasSSE41');
  return sdlHasSse41LookupFunction();
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
int sdlHasSse42() {
  final sdlHasSse42LookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasSSE42');
  return sdlHasSse42LookupFunction();
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
int sdlHasAvx() {
  final sdlHasAvxLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasAVX');
  return sdlHasAvxLookupFunction();
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
int sdlHasAvx2() {
  final sdlHasAvx2LookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasAVX2');
  return sdlHasAvx2LookupFunction();
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
int sdlHasAvx512F() {
  final sdlHasAvx512FLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_HasAVX512F');
  return sdlHasAvx512FLookupFunction();
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
int sdlHasArmsimd() {
  final sdlHasArmsimdLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_HasARMSIMD');
  return sdlHasArmsimdLookupFunction();
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
int sdlHasNeon() {
  final sdlHasNeonLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasNEON');
  return sdlHasNeonLookupFunction();
}

///
/// Determine whether the CPU has LSX (LOONGARCH SIMD) features.
///
/// This always returns false on CPUs that aren't using LOONGARCH instruction
/// sets.
///
/// \returns SDL_TRUE if the CPU has LOONGARCH LSX features or SDL_FALSE if
/// not.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasLSX(void)
/// ```
int sdlHasLsx() {
  final sdlHasLsxLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasLSX');
  return sdlHasLsxLookupFunction();
}

///
/// Determine whether the CPU has LASX (LOONGARCH SIMD) features.
///
/// This always returns false on CPUs that aren't using LOONGARCH instruction
/// sets.
///
/// \returns SDL_TRUE if the CPU has LOONGARCH LASX features or SDL_FALSE if
/// not.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasLASX(void)
/// ```
int sdlHasLasx() {
  final sdlHasLasxLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_HasLASX');
  return sdlHasLasxLookupFunction();
}

///
/// Get the amount of RAM configured in the system.
///
/// \returns the amount of RAM configured in the system in MiB.
///
/// \since This function is available since SDL 2.0.1.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSystemRAM(void)
/// ```
int sdlGetSystemRam() {
  final sdlGetSystemRamLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_GetSystemRAM');
  return sdlGetSystemRamLookupFunction();
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
int sdlSimdGetAlignment() {
  final sdlSimdGetAlignmentLookupFunction =
      libSdl2.lookupFunction<Uint32 Function(), int Function()>(
          'SDL_SIMDGetAlignment');
  return sdlSimdGetAlignmentLookupFunction();
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
/// \sa SDL_SIMDGetAlignment
/// \sa SDL_SIMDRealloc
/// \sa SDL_SIMDFree
///
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_SIMDAlloc(const size_t len)
/// ```
Pointer<Void> sdlSimdAlloc(int len) {
  final sdlSimdAllocLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(Uint32 len),
      Pointer<Void> Function(int len)>('SDL_SIMDAlloc');
  return sdlSimdAllocLookupFunction(len);
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
/// \sa SDL_SIMDGetAlignment
/// \sa SDL_SIMDAlloc
/// \sa SDL_SIMDFree
///
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_SIMDRealloc(void *mem, const size_t len)
/// ```
Pointer<Void> sdlSimdRealloc(Pointer<Void> mem, int len) {
  final sdlSimdReallocLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(Pointer<Void> mem, Uint32 len),
      Pointer<Void> Function(Pointer<Void> mem, int len)>('SDL_SIMDRealloc');
  return sdlSimdReallocLookupFunction(mem, len);
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
void sdlSimdFree(Pointer<Void> ptr) {
  final sdlSimdFreeLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Void> ptr),
      void Function(Pointer<Void> ptr)>('SDL_SIMDFree');
  return sdlSimdFreeLookupFunction(ptr);
}
