// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Try to lock a spin lock by setting it to a non-zero value.
/// 
/// \param lock Points to the lock.
/// 
/// \return SDL_TRUE if the lock succeeded, SDL_FALSE if the lock is already held.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicTryLock(SDL_SpinLock *lock)
/// ```
int SDL_AtomicTryLock(Pointer<Int32>? lock) {
  final _SDL_AtomicTryLock = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int32>? lock),
      int Function(Pointer<Int32>? lock)>('SDL_AtomicTryLock');
  return _SDL_AtomicTryLock(lock);
}

/// 
/// \brief Lock a spin lock by setting it to a non-zero value.
/// 
/// \param lock Points to the lock.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AtomicLock(SDL_SpinLock *lock)
/// ```
void SDL_AtomicLock(Pointer<Int32>? lock) {
  final _SDL_AtomicLock = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? lock),
      void Function(Pointer<Int32>? lock)>('SDL_AtomicLock');
  return _SDL_AtomicLock(lock);
}

/// 
/// \brief Unlock a spin lock by setting it to 0. Always returns immediately
/// 
/// \param lock Points to the lock.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AtomicUnlock(SDL_SpinLock *lock)
/// ```
void SDL_AtomicUnlock(Pointer<Int32>? lock) {
  final _SDL_AtomicUnlock = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? lock),
      void Function(Pointer<Int32>? lock)>('SDL_AtomicUnlock');
  return _SDL_AtomicUnlock(lock);
}

/// The mcr instruction isn't available in thumb mode, use real functions
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MemoryBarrierRelease()
/// ```
void SDL_MemoryBarrierRelease() {
  final _SDL_MemoryBarrierRelease = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_MemoryBarrierRelease');
  return _SDL_MemoryBarrierRelease();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_MemoryBarrierAcquire()
/// ```
void SDL_MemoryBarrierAcquire() {
  final _SDL_MemoryBarrierAcquire = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_MemoryBarrierAcquire');
  return _SDL_MemoryBarrierAcquire();
}

/// 
/// \brief Set an atomic variable to a new value if it is currently an old value.
/// 
/// \return SDL_TRUE if the atomic variable was set, SDL_FALSE otherwise.
/// 
/// \note If you don't know what this function is for, you shouldn't use it!
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCAS(SDL_atomic_t *a, int oldval, int newval)
/// ```
int SDL_AtomicCAS(Pointer<SDL_atomic_t>? a, int oldval, int newval) {
  final _SDL_AtomicCAS = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_atomic_t>? a, Int32 oldval, Int32 newval),
      int Function(Pointer<SDL_atomic_t>? a, int oldval, int newval)>('SDL_AtomicCAS');
  return _SDL_AtomicCAS(a, oldval, newval);
}

/// 
/// \brief Set a pointer to a new value if it is currently an old value.
/// 
/// \return SDL_TRUE if the pointer was set, SDL_FALSE otherwise.
/// 
/// \note If you don't know what this function is for, you shouldn't use it!
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCASPtr(void* *a, void *oldval, void *newval)
/// ```
int SDL_AtomicCASPtr(Pointer<Pointer<Void>>? a, Pointer<Void>? oldval, Pointer<Void>? newval) {
  final _SDL_AtomicCASPtr = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Void>>? a, Pointer<Void>? oldval, Pointer<Void>? newval),
      int Function(Pointer<Pointer<Void>>? a, Pointer<Void>? oldval, Pointer<Void>? newval)>('SDL_AtomicCASPtr');
  return _SDL_AtomicCASPtr(a, oldval, newval);
}

