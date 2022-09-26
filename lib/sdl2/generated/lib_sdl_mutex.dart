// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Create a new mutex.
///
/// All newly-created mutexes begin in the _unlocked_ state.
///
/// Calls to SDL_LockMutex() will not return while the mutex is locked by
/// another thread. See SDL_TryLockMutex() to attempt to lock without blocking.
///
/// SDL mutexes are reentrant.
///
/// \returns the initialized and unlocked mutex or NULL on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_DestroyMutex
/// \sa SDL_LockMutex
/// \sa SDL_TryLockMutex
/// \sa SDL_UnlockMutex
///
/// ```c
/// extern DECLSPEC SDL_mutex *SDLCALL SDL_CreateMutex(void)
/// ```
Pointer<SdlMutex> sdlCreateMutex() {
  final sdlCreateMutexLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlMutex> Function(),
      Pointer<SdlMutex> Function()>('SDL_CreateMutex');
  return sdlCreateMutexLookupFunction();
}

///
/// Lock the mutex.
///
/// This will block until the mutex is available, which is to say it is in the
/// unlocked state and the OS has chosen the caller as the next thread to lock
/// it. Of all threads waiting to lock the mutex, only one may do so at a time.
///
/// It is legal for the owning thread to lock an already-locked mutex. It must
/// unlock it the same number of times before it is actually made available for
/// other threads in the system (this is known as a "recursive mutex").
///
/// \param mutex the mutex to lock
/// \return 0, or -1 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockMutex(SDL_mutex * mutex)
/// ```
int sdlLockMutex(Pointer<SdlMutex> mutex) {
  final sdlLockMutexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlMutex> mutex),
      int Function(Pointer<SdlMutex> mutex)>('SDL_LockMutex');
  return sdlLockMutexLookupFunction(mutex);
}

///
/// Try to lock a mutex without blocking.
///
/// This works just like SDL_LockMutex(), but if the mutex is not available,
/// this function returns `SDL_MUTEX_TIMEOUT` immediately.
///
/// This technique is useful if you need exclusive access to a resource but
/// don't want to wait for it, and will return to it to try again later.
///
/// \param mutex the mutex to try to lock
/// \returns 0, `SDL_MUTEX_TIMEDOUT`, or -1 on error; call SDL_GetError() for
/// more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateMutex
/// \sa SDL_DestroyMutex
/// \sa SDL_LockMutex
/// \sa SDL_UnlockMutex
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_TryLockMutex(SDL_mutex * mutex)
/// ```
int sdlTryLockMutex(Pointer<SdlMutex> mutex) {
  final sdlTryLockMutexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlMutex> mutex),
      int Function(Pointer<SdlMutex> mutex)>('SDL_TryLockMutex');
  return sdlTryLockMutexLookupFunction(mutex);
}

///
/// Unlock the mutex.
///
/// It is legal for the owning thread to lock an already-locked mutex. It must
/// unlock it the same number of times before it is actually made available for
/// other threads in the system (this is known as a "recursive mutex").
///
/// It is an error to unlock a mutex that has not been locked by the current
/// thread, and doing so results in undefined behavior.
///
/// It is also an error to unlock a mutex that isn't locked at all.
///
/// \param mutex the mutex to unlock.
/// \returns 0, or -1 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UnlockMutex(SDL_mutex * mutex)
/// ```
int sdlUnlockMutex(Pointer<SdlMutex> mutex) {
  final sdlUnlockMutexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlMutex> mutex),
      int Function(Pointer<SdlMutex> mutex)>('SDL_UnlockMutex');
  return sdlUnlockMutexLookupFunction(mutex);
}

///
/// Destroy a mutex created with SDL_CreateMutex().
///
/// This function must be called on any mutex that is no longer needed. Failure
/// to destroy a mutex will result in a system memory or resource leak. While
/// it is safe to destroy a mutex that is _unlocked_, it is not safe to attempt
/// to destroy a locked mutex, and may result in undefined behavior depending
/// on the platform.
///
/// \param mutex the mutex to destroy
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateMutex
/// \sa SDL_LockMutex
/// \sa SDL_TryLockMutex
/// \sa SDL_UnlockMutex
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyMutex(SDL_mutex * mutex)
/// ```
void sdlDestroyMutex(Pointer<SdlMutex> mutex) {
  final sdlDestroyMutexLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlMutex> mutex),
      void Function(Pointer<SdlMutex> mutex)>('SDL_DestroyMutex');
  return sdlDestroyMutexLookupFunction(mutex);
}

///
/// Create a semaphore.
///
/// This function creates a new semaphore and initializes it with the value
/// `initial_value`. Each wait operation on the semaphore will atomically
/// decrement the semaphore value and potentially block if the semaphore value
/// is 0. Each post operation will atomically increment the semaphore value and
/// wake waiting threads and allow them to retry the wait operation.
///
/// \param initial_value the starting value of the semaphore
/// \returns a new semaphore or NULL on failure; call SDL_GetError() for more
/// information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_DestroySemaphore
/// \sa SDL_SemPost
/// \sa SDL_SemTryWait
/// \sa SDL_SemValue
/// \sa SDL_SemWait
/// \sa SDL_SemWaitTimeout
///
/// ```c
/// extern DECLSPEC SDL_sem *SDLCALL SDL_CreateSemaphore(Uint32 initial_value)
/// ```
Pointer<SdlSem> sdlCreateSemaphore(int initialValue) {
  final sdlCreateSemaphoreLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlSem> Function(Uint32 initialValue),
      Pointer<SdlSem> Function(int initialValue)>('SDL_CreateSemaphore');
  return sdlCreateSemaphoreLookupFunction(initialValue);
}

///
/// Destroy a semaphore.
///
/// It is not safe to destroy a semaphore if there are threads currently
/// waiting on it.
///
/// \param sem the semaphore to destroy
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateSemaphore
/// \sa SDL_SemPost
/// \sa SDL_SemTryWait
/// \sa SDL_SemValue
/// \sa SDL_SemWait
/// \sa SDL_SemWaitTimeout
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroySemaphore(SDL_sem * sem)
/// ```
void sdlDestroySemaphore(Pointer<SdlSem> sem) {
  final sdlDestroySemaphoreLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlSem> sem),
      void Function(Pointer<SdlSem> sem)>('SDL_DestroySemaphore');
  return sdlDestroySemaphoreLookupFunction(sem);
}

///
/// Wait until a semaphore has a positive value and then decrements it.
///
/// This function suspends the calling thread until either the semaphore
/// pointed to by `sem` has a positive value or the call is interrupted by a
/// signal or error. If the call is successful it will atomically decrement the
/// semaphore value.
///
/// This function is the equivalent of calling SDL_SemWaitTimeout() with a time
/// length of `SDL_MUTEX_MAXWAIT`.
///
/// \param sem the semaphore wait on
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateSemaphore
/// \sa SDL_DestroySemaphore
/// \sa SDL_SemPost
/// \sa SDL_SemTryWait
/// \sa SDL_SemValue
/// \sa SDL_SemWait
/// \sa SDL_SemWaitTimeout
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemWait(SDL_sem * sem)
/// ```
int sdlSemWait(Pointer<SdlSem> sem) {
  final sdlSemWaitLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSem> sem),
      int Function(Pointer<SdlSem> sem)>('SDL_SemWait');
  return sdlSemWaitLookupFunction(sem);
}

///
/// See if a semaphore has a positive value and decrement it if it does.
///
/// This function checks to see if the semaphore pointed to by `sem` has a
/// positive value and atomically decrements the semaphore value if it does. If
/// the semaphore doesn't have a positive value, the function immediately
/// returns SDL_MUTEX_TIMEDOUT.
///
/// \param sem the semaphore to wait on
/// \returns 0 if the wait succeeds, `SDL_MUTEX_TIMEDOUT` if the wait would
/// block, or a negative error code on failure; call SDL_GetError()
/// for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateSemaphore
/// \sa SDL_DestroySemaphore
/// \sa SDL_SemPost
/// \sa SDL_SemValue
/// \sa SDL_SemWait
/// \sa SDL_SemWaitTimeout
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemTryWait(SDL_sem * sem)
/// ```
int sdlSemTryWait(Pointer<SdlSem> sem) {
  final sdlSemTryWaitLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSem> sem),
      int Function(Pointer<SdlSem> sem)>('SDL_SemTryWait');
  return sdlSemTryWaitLookupFunction(sem);
}

///
/// Wait until a semaphore has a positive value and then decrements it.
///
/// This function suspends the calling thread until either the semaphore
/// pointed to by `sem` has a positive value, the call is interrupted by a
/// signal or error, or the specified time has elapsed. If the call is
/// successful it will atomically decrement the semaphore value.
///
/// \param sem the semaphore to wait on
/// \param ms the length of the timeout, in milliseconds
/// \returns 0 if the wait succeeds, `SDL_MUTEX_TIMEDOUT` if the wait does not
/// succeed in the allotted time, or a negative error code on failure;
/// call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateSemaphore
/// \sa SDL_DestroySemaphore
/// \sa SDL_SemPost
/// \sa SDL_SemTryWait
/// \sa SDL_SemValue
/// \sa SDL_SemWait
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemWaitTimeout(SDL_sem * sem, Uint32 ms)
/// ```
int sdlSemWaitTimeout(Pointer<SdlSem> sem, int ms) {
  final sdlSemWaitTimeoutLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSem> sem, Uint32 ms),
      int Function(Pointer<SdlSem> sem, int ms)>('SDL_SemWaitTimeout');
  return sdlSemWaitTimeoutLookupFunction(sem, ms);
}

///
/// Atomically increment a semaphore's value and wake waiting threads.
///
/// \param sem the semaphore to increment
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateSemaphore
/// \sa SDL_DestroySemaphore
/// \sa SDL_SemTryWait
/// \sa SDL_SemValue
/// \sa SDL_SemWait
/// \sa SDL_SemWaitTimeout
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SemPost(SDL_sem * sem)
/// ```
int sdlSemPost(Pointer<SdlSem> sem) {
  final sdlSemPostLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSem> sem),
      int Function(Pointer<SdlSem> sem)>('SDL_SemPost');
  return sdlSemPostLookupFunction(sem);
}

///
/// Get the current value of a semaphore.
///
/// \param sem the semaphore to query
/// \returns the current value of the semaphore.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CreateSemaphore
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_SemValue(SDL_sem * sem)
/// ```
int sdlSemValue(Pointer<SdlSem> sem) {
  final sdlSemValueLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlSem> sem),
      int Function(Pointer<SdlSem> sem)>('SDL_SemValue');
  return sdlSemValueLookupFunction(sem);
}

///
/// Create a condition variable.
///
/// \returns a new condition variable or NULL on failure; call SDL_GetError()
/// for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CondBroadcast
/// \sa SDL_CondSignal
/// \sa SDL_CondWait
/// \sa SDL_CondWaitTimeout
/// \sa SDL_DestroyCond
///
/// ```c
/// extern DECLSPEC SDL_cond *SDLCALL SDL_CreateCond(void)
/// ```
Pointer<SdlCond> sdlCreateCond() {
  final sdlCreateCondLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlCond> Function(),
      Pointer<SdlCond> Function()>('SDL_CreateCond');
  return sdlCreateCondLookupFunction();
}

///
/// Destroy a condition variable.
///
/// \param cond the condition variable to destroy
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CondBroadcast
/// \sa SDL_CondSignal
/// \sa SDL_CondWait
/// \sa SDL_CondWaitTimeout
/// \sa SDL_CreateCond
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyCond(SDL_cond * cond)
/// ```
void sdlDestroyCond(Pointer<SdlCond> cond) {
  final sdlDestroyCondLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlCond> cond),
      void Function(Pointer<SdlCond> cond)>('SDL_DestroyCond');
  return sdlDestroyCondLookupFunction(cond);
}

///
/// Restart one of the threads that are waiting on the condition variable.
///
/// \param cond the condition variable to signal
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CondBroadcast
/// \sa SDL_CondWait
/// \sa SDL_CondWaitTimeout
/// \sa SDL_CreateCond
/// \sa SDL_DestroyCond
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondSignal(SDL_cond * cond)
/// ```
int sdlCondSignal(Pointer<SdlCond> cond) {
  final sdlCondSignalLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlCond> cond),
      int Function(Pointer<SdlCond> cond)>('SDL_CondSignal');
  return sdlCondSignalLookupFunction(cond);
}

///
/// Restart all threads that are waiting on the condition variable.
///
/// \param cond the condition variable to signal
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CondSignal
/// \sa SDL_CondWait
/// \sa SDL_CondWaitTimeout
/// \sa SDL_CreateCond
/// \sa SDL_DestroyCond
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondBroadcast(SDL_cond * cond)
/// ```
int sdlCondBroadcast(Pointer<SdlCond> cond) {
  final sdlCondBroadcastLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlCond> cond),
      int Function(Pointer<SdlCond> cond)>('SDL_CondBroadcast');
  return sdlCondBroadcastLookupFunction(cond);
}

///
/// Wait until a condition variable is signaled.
///
/// This function unlocks the specified `mutex` and waits for another thread to
/// call SDL_CondSignal() or SDL_CondBroadcast() on the condition variable
/// `cond`. Once the condition variable is signaled, the mutex is re-locked and
/// the function returns.
///
/// The mutex must be locked before calling this function.
///
/// This function is the equivalent of calling SDL_CondWaitTimeout() with a
/// time length of `SDL_MUTEX_MAXWAIT`.
///
/// \param cond the condition variable to wait on
/// \param mutex the mutex used to coordinate thread access
/// \returns 0 when it is signaled or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CondBroadcast
/// \sa SDL_CondSignal
/// \sa SDL_CondWaitTimeout
/// \sa SDL_CreateCond
/// \sa SDL_DestroyCond
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondWait(SDL_cond * cond, SDL_mutex * mutex)
/// ```
int sdlCondWait(Pointer<SdlCond> cond, Pointer<SdlMutex> mutex) {
  final sdlCondWaitLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlCond> cond, Pointer<SdlMutex> mutex),
      int Function(
          Pointer<SdlCond> cond, Pointer<SdlMutex> mutex)>('SDL_CondWait');
  return sdlCondWaitLookupFunction(cond, mutex);
}

///
/// Wait until a condition variable is signaled or a certain time has passed.
///
/// This function unlocks the specified `mutex` and waits for another thread to
/// call SDL_CondSignal() or SDL_CondBroadcast() on the condition variable
/// `cond`, or for the specified time to elapse. Once the condition variable is
/// signaled or the time elapsed, the mutex is re-locked and the function
/// returns.
///
/// The mutex must be locked before calling this function.
///
/// \param cond the condition variable to wait on
/// \param mutex the mutex used to coordinate thread access
/// \param ms the maximum time to wait, in milliseconds, or `SDL_MUTEX_MAXWAIT`
/// to wait indefinitely
/// \returns 0 if the condition variable is signaled, `SDL_MUTEX_TIMEDOUT` if
/// the condition is not signaled in the allotted time, or a negative
/// error code on failure; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_CondBroadcast
/// \sa SDL_CondSignal
/// \sa SDL_CondWait
/// \sa SDL_CreateCond
/// \sa SDL_DestroyCond
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CondWaitTimeout(SDL_cond * cond, SDL_mutex * mutex, Uint32 ms)
/// ```
int sdlCondWaitTimeout(Pointer<SdlCond> cond, Pointer<SdlMutex> mutex, int ms) {
  final sdlCondWaitTimeoutLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlCond> cond, Pointer<SdlMutex> mutex, Uint32 ms),
      int Function(Pointer<SdlCond> cond, Pointer<SdlMutex> mutex,
          int ms)>('SDL_CondWaitTimeout');
  return sdlCondWaitTimeoutLookupFunction(cond, mutex, ms);
}
