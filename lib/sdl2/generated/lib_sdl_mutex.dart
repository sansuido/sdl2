// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Create a mutex, initialized unlocked.
/// 
/// ```c
/// extern DECLSPEC SDL_mutex *SDLCALL SDL_CreateMutex(void)
/// ```
Pointer<SDL_mutex>? SDL_CreateMutex() {
  final _SDL_CreateMutex = DLL_SDL2.lookupFunction<
      Pointer<SDL_mutex>? Function(),
      Pointer<SDL_mutex>? Function()>('SDL_CreateMutex');
  return _SDL_CreateMutex();
}

/// 
/// Lock the mutex.
/// 
/// \return 0, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockMutex(SDL_mutex * mutex)
/// ```
int SDL_LockMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_LockMutex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_mutex>? mutex)>('SDL_LockMutex');
  return _SDL_LockMutex(mutex);
}

/// 
/// Try to lock the mutex
/// 
/// \return 0, SDL_MUTEX_TIMEDOUT, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_TryLockMutex(SDL_mutex * mutex)
/// ```
int SDL_TryLockMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_TryLockMutex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_mutex>? mutex)>('SDL_TryLockMutex');
  return _SDL_TryLockMutex(mutex);
}

/// 
/// Unlock the mutex.
/// 
/// \return 0, or -1 on error.
/// 
/// \warning It is an error to unlock a mutex that has not been locked by
/// the current thread, and doing so results in undefined behavior.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UnlockMutex(SDL_mutex * mutex)
/// ```
int SDL_UnlockMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_UnlockMutex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_mutex>? mutex)>('SDL_UnlockMutex');
  return _SDL_UnlockMutex(mutex);
}

/// 
/// Destroy a mutex.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyMutex(SDL_mutex * mutex)
/// ```
void SDL_DestroyMutex(Pointer<SDL_mutex>? mutex) {
  final _SDL_DestroyMutex = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_mutex>? mutex),
      void Function(Pointer<SDL_mutex>? mutex)>('SDL_DestroyMutex');
  return _SDL_DestroyMutex(mutex);
}

/// 
/// Create a semaphore, initialized with value, returns NULL on failure.
/// 
/// ```c
/// extern DECLSPEC SDL_sem *SDLCALL SDL_CreateSemaphore(Uint32 initial_value)
/// ```
Pointer<SDL_sem>? SDL_CreateSemaphore(int initial_value) {
  final _SDL_CreateSemaphore = DLL_SDL2.lookupFunction<
      Pointer<SDL_sem>? Function(Uint32 initial_value),
      Pointer<SDL_sem>? Function(int initial_value)>('SDL_CreateSemaphore');
  return _SDL_CreateSemaphore(initial_value);
}

/// 
/// Destroy a semaphore.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroySemaphore(SDL_sem * sem)
/// ```
void SDL_DestroySemaphore(Pointer<SDL_sem>? sem) {
  final _SDL_DestroySemaphore = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_sem>? sem),
      void Function(Pointer<SDL_sem>? sem)>('SDL_DestroySemaphore');
  return _SDL_DestroySemaphore(sem);
}

/// 
/// This function suspends the calling thread until the semaphore pointed
/// to by \c sem has a positive count. It then atomically decreases the
/// semaphore count.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemWait(SDL_sem * sem)
/// ```
int SDL_SemWait(Pointer<SDL_sem>? sem) {
  final _SDL_SemWait = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemWait');
  return _SDL_SemWait(sem);
}

/// 
/// Non-blocking variant of SDL_SemWait().
/// 
/// \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait would
/// block, and -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemTryWait(SDL_sem * sem)
/// ```
int SDL_SemTryWait(Pointer<SDL_sem>? sem) {
  final _SDL_SemTryWait = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemTryWait');
  return _SDL_SemTryWait(sem);
}

/// 
/// Variant of SDL_SemWait() with a timeout in milliseconds.
/// 
/// \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait does not
/// succeed in the allotted time, and -1 on error.
/// 
/// \warning On some platforms this function is implemented by looping with a
/// delay of 1 ms, and so should be avoided if possible.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemWaitTimeout(SDL_sem * sem, Uint32 ms)
/// ```
int SDL_SemWaitTimeout(Pointer<SDL_sem>? sem, int ms) {
  final _SDL_SemWaitTimeout = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem, Uint32 ms),
      int Function(Pointer<SDL_sem>? sem, int ms)>('SDL_SemWaitTimeout');
  return _SDL_SemWaitTimeout(sem, ms);
}

/// 
/// Atomically increases the semaphore's count (not blocking).
/// 
/// \return 0, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemPost(SDL_sem * sem)
/// ```
int SDL_SemPost(Pointer<SDL_sem>? sem) {
  final _SDL_SemPost = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemPost');
  return _SDL_SemPost(sem);
}

/// 
/// Returns the current count of the semaphore.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_SemValue(SDL_sem * sem)
/// ```
int SDL_SemValue(Pointer<SDL_sem>? sem) {
  final _SDL_SemValue = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_sem>? sem),
      int Function(Pointer<SDL_sem>? sem)>('SDL_SemValue');
  return _SDL_SemValue(sem);
}

/// 
/// Create a condition variable.
/// 
/// Typical use of condition variables:
/// 
/// Thread A:
/// SDL_LockMutex(lock);
/// while ( ! condition ) {
/// SDL_CondWait(cond, lock);
/// }
/// SDL_UnlockMutex(lock);
/// 
/// Thread B:
/// SDL_LockMutex(lock);
/// ...
/// condition = true;
/// ...
/// SDL_CondSignal(cond);
/// SDL_UnlockMutex(lock);
/// 
/// There is some discussion whether to signal the condition variable
/// with the mutex locked or not.  There is some potential performance
/// benefit to unlocking first on some platforms, but there are some
/// potential race conditions depending on how your code is structured.
/// 
/// In general it's safer to signal the condition variable while the
/// mutex is locked.
/// 
/// ```c
/// extern DECLSPEC SDL_cond *SDLCALL SDL_CreateCond(void)
/// ```
Pointer<SDL_cond>? SDL_CreateCond() {
  final _SDL_CreateCond = DLL_SDL2.lookupFunction<
      Pointer<SDL_cond>? Function(),
      Pointer<SDL_cond>? Function()>('SDL_CreateCond');
  return _SDL_CreateCond();
}

/// 
/// Destroy a condition variable.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyCond(SDL_cond * cond)
/// ```
void SDL_DestroyCond(Pointer<SDL_cond>? cond) {
  final _SDL_DestroyCond = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_cond>? cond),
      void Function(Pointer<SDL_cond>? cond)>('SDL_DestroyCond');
  return _SDL_DestroyCond(cond);
}

/// 
/// Restart one of the threads that are waiting on the condition variable.
/// 
/// \return 0 or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondSignal(SDL_cond * cond)
/// ```
int SDL_CondSignal(Pointer<SDL_cond>? cond) {
  final _SDL_CondSignal = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond),
      int Function(Pointer<SDL_cond>? cond)>('SDL_CondSignal');
  return _SDL_CondSignal(cond);
}

/// 
/// Restart all threads that are waiting on the condition variable.
/// 
/// \return 0 or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondBroadcast(SDL_cond * cond)
/// ```
int SDL_CondBroadcast(Pointer<SDL_cond>? cond) {
  final _SDL_CondBroadcast = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond),
      int Function(Pointer<SDL_cond>? cond)>('SDL_CondBroadcast');
  return _SDL_CondBroadcast(cond);
}

/// 
/// Wait on the condition variable, unlocking the provided mutex.
/// 
/// \warning The mutex must be locked before entering this function!
/// 
/// The mutex is re-locked once the condition variable is signaled.
/// 
/// \return 0 when it is signaled, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondWait(SDL_cond * cond, SDL_mutex * mutex)
/// ```
int SDL_CondWait(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex) {
  final _SDL_CondWait = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex),
      int Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex)>('SDL_CondWait');
  return _SDL_CondWait(cond, mutex);
}

/// 
/// Waits for at most \c ms milliseconds, and returns 0 if the condition
/// variable is signaled, ::SDL_MUTEX_TIMEDOUT if the condition is not
/// signaled in the allotted time, and -1 on error.
/// 
/// \warning On some platforms this function is implemented by looping with a
/// delay of 1 ms, and so should be avoided if possible.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondWaitTimeout(SDL_cond * cond, SDL_mutex * mutex, Uint32 ms)
/// ```
int SDL_CondWaitTimeout(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex, int ms) {
  final _SDL_CondWaitTimeout = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex, Uint32 ms),
      int Function(Pointer<SDL_cond>? cond, Pointer<SDL_mutex>? mutex, int ms)>('SDL_CondWaitTimeout');
  return _SDL_CondWaitTimeout(cond, mutex, ms);
}

