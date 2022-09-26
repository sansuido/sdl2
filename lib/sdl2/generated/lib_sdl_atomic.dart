// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Try to lock a spin lock by setting it to a non-zero value.
///
/// ***Please note that spinlocks are dangerous if you don't know what you're
/// doing. Please be careful using any sort of spinlock!***
///
/// \param lock a pointer to a lock variable
/// \returns SDL_TRUE if the lock succeeded, SDL_FALSE if the lock is already
/// held.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AtomicLock
/// \sa SDL_AtomicUnlock
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicTryLock(SDL_SpinLock *lock)
/// ```
int sdlAtomicTryLock(Pointer<Int32> lock) {
  final sdlAtomicTryLockLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Int32> lock),
      int Function(Pointer<Int32> lock)>('SDL_AtomicTryLock');
  return sdlAtomicTryLockLookupFunction(lock);
}

///
/// Lock a spin lock by setting it to a non-zero value.
///
/// ***Please note that spinlocks are dangerous if you don't know what you're
/// doing. Please be careful using any sort of spinlock!***
///
/// \param lock a pointer to a lock variable
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AtomicTryLock
/// \sa SDL_AtomicUnlock
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AtomicLock(SDL_SpinLock *lock)
/// ```
void sdlAtomicLock(Pointer<Int32> lock) {
  final sdlAtomicLockLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Int32> lock),
      void Function(Pointer<Int32> lock)>('SDL_AtomicLock');
  return sdlAtomicLockLookupFunction(lock);
}

///
/// Unlock a spin lock by setting it to 0.
///
/// Always returns immediately.
///
/// ***Please note that spinlocks are dangerous if you don't know what you're
/// doing. Please be careful using any sort of spinlock!***
///
/// \param lock a pointer to a lock variable
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AtomicLock
/// \sa SDL_AtomicTryLock
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AtomicUnlock(SDL_SpinLock *lock)
/// ```
void sdlAtomicUnlock(Pointer<Int32> lock) {
  final sdlAtomicUnlockLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Int32> lock),
      void Function(Pointer<Int32> lock)>('SDL_AtomicUnlock');
  return sdlAtomicUnlockLookupFunction(lock);
}

///
/// Memory barriers are designed to prevent reads and writes from being
/// reordered by the compiler and being seen out of order on multi-core CPUs.
///
/// A typical pattern would be for thread A to write some data and a flag, and
/// for thread B to read the flag and get the data. In this case you would
/// insert a release barrier between writing the data and the flag,
/// guaranteeing that the data write completes no later than the flag is
/// written, and you would insert an acquire barrier between reading the flag
/// and reading the data, to ensure that all the reads associated with the flag
/// have completed.
///
/// In this pattern you should always see a release barrier paired with an
/// acquire barrier and you should gate the data reads/writes with a single
/// flag variable.
///
/// For more information on these semantics, take a look at the blog post:
/// http://preshing.com/20120913/acquire-and-release-semantics
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MemoryBarrierReleaseFunction(void)
/// ```
void sdlMemoryBarrierReleaseFunction() {
  final sdlMemoryBarrierReleaseFunctionLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_MemoryBarrierReleaseFunction');
  return sdlMemoryBarrierReleaseFunctionLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_MemoryBarrierAcquireFunction(void)
/// ```
void sdlMemoryBarrierAcquireFunction() {
  final sdlMemoryBarrierAcquireFunctionLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_MemoryBarrierAcquireFunction');
  return sdlMemoryBarrierAcquireFunctionLookupFunction();
}

///
/// Set an atomic variable to a new value if it is currently an old value.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to an SDL_atomic_t variable to be modified
/// \param oldval the old value
/// \param newval the new value
/// \returns SDL_TRUE if the atomic variable was set, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AtomicCASPtr
/// \sa SDL_AtomicGet
/// \sa SDL_AtomicSet
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCAS(SDL_atomic_t *a, int oldval, int newval)
/// ```
int sdlAtomicCas(Pointer<SdlAtomicT> a, int oldval, int newval) {
  final sdlAtomicCasLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAtomicT> a, Int32 oldval, Int32 newval),
      int Function(
          Pointer<SdlAtomicT> a, int oldval, int newval)>('SDL_AtomicCAS');
  return sdlAtomicCasLookupFunction(a, oldval, newval);
}

///
/// Set an atomic variable to a value.
///
/// This function also acts as a full memory barrier.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to an SDL_atomic_t variable to be modified
/// \param v the desired value
/// \returns the previous value of the atomic variable.
///
/// \since This function is available since SDL 2.0.2.
///
/// \sa SDL_AtomicGet
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AtomicSet(SDL_atomic_t *a, int v)
/// ```
int sdlAtomicSet(Pointer<SdlAtomicT> a, int v) {
  final sdlAtomicSetLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAtomicT> a, Int32 v),
      int Function(Pointer<SdlAtomicT> a, int v)>('SDL_AtomicSet');
  return sdlAtomicSetLookupFunction(a, v);
}

///
/// Get the value of an atomic variable.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to an SDL_atomic_t variable
/// \returns the current value of an atomic variable.
///
/// \since This function is available since SDL 2.0.2.
///
/// \sa SDL_AtomicSet
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AtomicGet(SDL_atomic_t *a)
/// ```
int sdlAtomicGet(Pointer<SdlAtomicT> a) {
  final sdlAtomicGetLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAtomicT> a),
      int Function(Pointer<SdlAtomicT> a)>('SDL_AtomicGet');
  return sdlAtomicGetLookupFunction(a);
}

///
/// Add to an atomic variable.
///
/// This function also acts as a full memory barrier.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to an SDL_atomic_t variable to be modified
/// \param v the desired value to add
/// \returns the previous value of the atomic variable.
///
/// \since This function is available since SDL 2.0.2.
///
/// \sa SDL_AtomicDecRef
/// \sa SDL_AtomicIncRef
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AtomicAdd(SDL_atomic_t *a, int v)
/// ```
int sdlAtomicAdd(Pointer<SdlAtomicT> a, int v) {
  final sdlAtomicAddLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlAtomicT> a, Int32 v),
      int Function(Pointer<SdlAtomicT> a, int v)>('SDL_AtomicAdd');
  return sdlAtomicAddLookupFunction(a, v);
}

///
/// Set a pointer to a new value if it is currently an old value.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to a pointer
/// \param oldval the old pointer value
/// \param newval the new pointer value
/// \returns SDL_TRUE if the pointer was set, SDL_FALSE otherwise.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AtomicCAS
/// \sa SDL_AtomicGetPtr
/// \sa SDL_AtomicSetPtr
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCASPtr(void **a, void *oldval, void *newval)
/// ```
int sdlAtomicCasPtr(
    Pointer<Pointer<Void>> a, Pointer<Void> oldval, Pointer<Void> newval) {
  final sdlAtomicCasPtrLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<Pointer<Void>> a, Pointer<Void> oldval, Pointer<Void> newval),
      int Function(Pointer<Pointer<Void>> a, Pointer<Void> oldval,
          Pointer<Void> newval)>('SDL_AtomicCASPtr');
  return sdlAtomicCasPtrLookupFunction(a, oldval, newval);
}

///
/// Set a pointer to a value atomically.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to a pointer
/// \param v the desired pointer value
/// \returns the previous value of the pointer.
///
/// \since This function is available since SDL 2.0.2.
///
/// \sa SDL_AtomicCASPtr
/// \sa SDL_AtomicGetPtr
///
/// ```c
/// extern DECLSPEC void* SDLCALL SDL_AtomicSetPtr(void **a, void* v)
/// ```
Pointer<Void> sdlAtomicSetPtr(Pointer<Pointer<Void>> a, Pointer<Void> v) {
  final sdlAtomicSetPtrLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(Pointer<Pointer<Void>> a, Pointer<Void> v),
      Pointer<Void> Function(
          Pointer<Pointer<Void>> a, Pointer<Void> v)>('SDL_AtomicSetPtr');
  return sdlAtomicSetPtrLookupFunction(a, v);
}

///
/// Get the value of a pointer atomically.
///
/// ***Note: If you don't know what this function is for, you shouldn't use
/// it!***
///
/// \param a a pointer to a pointer
/// \returns the current value of a pointer.
///
/// \since This function is available since SDL 2.0.2.
///
/// \sa SDL_AtomicCASPtr
/// \sa SDL_AtomicSetPtr
///
/// ```c
/// extern DECLSPEC void* SDLCALL SDL_AtomicGetPtr(void **a)
/// ```
Pointer<Void> sdlAtomicGetPtr(Pointer<Pointer<Void>> a) {
  final sdlAtomicGetPtrLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(Pointer<Pointer<Void>> a),
      Pointer<Void> Function(Pointer<Pointer<Void>> a)>('SDL_AtomicGetPtr');
  return sdlAtomicGetPtrLookupFunction(a);
}
