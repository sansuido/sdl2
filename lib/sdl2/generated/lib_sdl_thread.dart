// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// ```c
/// extern DECLSPEC SDL_Thread *SDLCALL SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data, pfnSDL_CurrentBeginThread pfnBeginThread, pfnSDL_CurrentEndThread pfnEndThread)
/// ```
Pointer<SDL_Thread>? SDL_CreateThread(Pointer<Void>? fn, String name, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread) {
  final _SDL_CreateThread = DLL_SDL2.lookupFunction<
      Pointer<SDL_Thread>? Function(Pointer<Void>? fn, Pointer<Utf8>? name, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread),
      Pointer<SDL_Thread>? Function(Pointer<Void>? fn, Pointer<Utf8>? name, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread)>('SDL_CreateThread');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_CreateThread(fn, _namePointer, data, pfnBeginThread, pfnEndThread);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Thread *SDLCALL SDL_CreateThreadWithStackSize(int (SDLCALL * fn) (void *), const char *name, const size_t stacksize, void *data, pfnSDL_CurrentBeginThread pfnBeginThread, pfnSDL_CurrentEndThread pfnEndThread)
/// ```
Pointer<SDL_Thread>? SDL_CreateThreadWithStackSize(Pointer<Void>? fn, String name, int stacksize, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread) {
  final _SDL_CreateThreadWithStackSize = DLL_SDL2.lookupFunction<
      Pointer<SDL_Thread>? Function(Pointer<Void>? fn, Pointer<Utf8>? name, Uint32 stacksize, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread),
      Pointer<SDL_Thread>? Function(Pointer<Void>? fn, Pointer<Utf8>? name, int stacksize, Pointer<Void>? data, Pointer<Void>? pfnBeginThread, Pointer<Void>? pfnEndThread)>('SDL_CreateThreadWithStackSize');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_CreateThreadWithStackSize(fn, _namePointer, stacksize, data, pfnBeginThread, pfnEndThread);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// Get the thread name as it was specified in SDL_CreateThread().
/// 
/// This is internal memory, not to be freed by the caller, and remains valid
/// until the specified thread is cleaned up by SDL_WaitThread().
/// 
/// \param thread the thread to query
/// \returns a pointer to a UTF-8 string that names the specified thread, or
/// NULL if it doesn't have a name.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateThread
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetThreadName(SDL_Thread *thread)
/// ```
String SDL_GetThreadName(Pointer<SDL_Thread>? thread) {
  final _SDL_GetThreadName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Thread>? thread),
      Pointer<Utf8>? Function(Pointer<SDL_Thread>? thread)>('SDL_GetThreadName');
  return _SDL_GetThreadName(thread)!.toDartString();
}

/// 
/// Get the thread identifier for the current thread.
/// 
/// This thread identifier is as reported by the underlying operating system.
/// If SDL is running on a platform that does not support threads the return
/// value will always be zero.
/// 
/// This function also returns a valid thread ID when called from the main
/// thread.
/// 
/// \returns the ID of the current thread.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetThreadID
/// 
/// ```c
/// extern DECLSPEC SDL_threadID SDLCALL SDL_ThreadID(void)
/// ```
int SDL_ThreadID() {
  final _SDL_ThreadID = DLL_SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_ThreadID');
  return _SDL_ThreadID();
}

/// 
/// Get the thread identifier for the specified thread.
/// 
/// This thread identifier is as reported by the underlying operating system.
/// If SDL is running on a platform that does not support threads the return
/// value will always be zero.
/// 
/// \param thread the thread to query
/// \returns the ID of the specified thread, or the ID of the current thread if
/// `thread` is NULL.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_ThreadID
/// 
/// ```c
/// extern DECLSPEC SDL_threadID SDLCALL SDL_GetThreadID(SDL_Thread * thread)
/// ```
int SDL_GetThreadID(Pointer<SDL_Thread>? thread) {
  final _SDL_GetThreadID = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Thread>? thread),
      int Function(Pointer<SDL_Thread>? thread)>('SDL_GetThreadID');
  return _SDL_GetThreadID(thread);
}

/// 
/// Set the priority for the current thread.
/// 
/// Note that some platforms will not let you alter the priority (or at least,
/// promote the thread to a higher priority) at all, and some require you to be
/// an administrator account. Be prepared for this to fail.
/// 
/// \param priority the SDL_ThreadPriority to set
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetThreadPriority(SDL_ThreadPriority priority)
/// ```
int SDL_SetThreadPriority(int priority) {
  final _SDL_SetThreadPriority = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 priority),
      int Function(int priority)>('SDL_SetThreadPriority');
  return _SDL_SetThreadPriority(priority);
}

/// 
/// Wait for a thread to finish.
/// 
/// Threads that haven't been detached will remain (as a "zombie") until this
/// function cleans them up. Not doing so is a resource leak.
/// 
/// Once a thread has been cleaned up through this function, the SDL_Thread
/// that references it becomes invalid and should not be referenced again. As
/// such, only one thread may call SDL_WaitThread() on another.
/// 
/// The return code for the thread function is placed in the area pointed to by
/// `status`, if `status` is not NULL.
/// 
/// You may not wait on a thread that has been used in a call to
/// SDL_DetachThread(). Use either that function or this one, but not both, or
/// behavior is undefined.
/// 
/// It is safe to pass a NULL thread to this function; it is a no-op.
/// 
/// Note that the thread pointer is freed by this function and is not valid
/// afterward.
/// 
/// \param thread the SDL_Thread pointer that was returned from the
/// SDL_CreateThread() call that started this thread
/// \param status pointer to an integer that will receive the value returned
/// from the thread function by its 'return', or NULL to not
/// receive such value back.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateThread
/// \sa SDL_DetachThread
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_WaitThread(SDL_Thread * thread, int *status)
/// ```
void SDL_WaitThread(Pointer<SDL_Thread>? thread, Pointer<Int32>? status) {
  final _SDL_WaitThread = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Thread>? thread, Pointer<Int32>? status),
      void Function(Pointer<SDL_Thread>? thread, Pointer<Int32>? status)>('SDL_WaitThread');
  return _SDL_WaitThread(thread, status);
}

/// 
/// Let a thread clean up on exit without intervention.
/// 
/// A thread may be "detached" to signify that it should not remain until
/// another thread has called SDL_WaitThread() on it. Detaching a thread is
/// useful for long-running threads that nothing needs to synchronize with or
/// further manage. When a detached thread is done, it simply goes away.
/// 
/// There is no way to recover the return code of a detached thread. If you
/// need this, don't detach the thread and instead use SDL_WaitThread().
/// 
/// Once a thread is detached, you should usually assume the SDL_Thread isn't
/// safe to reference again, as it will become invalid immediately upon the
/// detached thread's exit, instead of remaining until someone has called
/// SDL_WaitThread() to finally clean it up. As such, don't detach the same
/// thread more than once.
/// 
/// If a thread has already exited when passed to SDL_DetachThread(), it will
/// stop waiting for a call to SDL_WaitThread() and clean up immediately. It is
/// not safe to detach a thread that might be used with SDL_WaitThread().
/// 
/// You may not call SDL_WaitThread() on a thread that has been detached. Use
/// either that function or this one, but not both, or behavior is undefined.
/// 
/// It is safe to pass NULL to this function; it is a no-op.
/// 
/// \param thread the SDL_Thread pointer that was returned from the
/// SDL_CreateThread() call that started this thread
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// \sa SDL_CreateThread
/// \sa SDL_WaitThread
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DetachThread(SDL_Thread * thread)
/// ```
void SDL_DetachThread(Pointer<SDL_Thread>? thread) {
  final _SDL_DetachThread = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Thread>? thread),
      void Function(Pointer<SDL_Thread>? thread)>('SDL_DetachThread');
  return _SDL_DetachThread(thread);
}

/// 
/// Create a piece of thread-local storage.
/// 
/// This creates an identifier that is globally visible to all threads but
/// refers to data that is thread-specific.
/// 
/// \returns the newly created thread local storage identifier or 0 on error.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_TLSGet
/// \sa SDL_TLSSet
/// 
/// ```c
/// extern DECLSPEC SDL_TLSID SDLCALL SDL_TLSCreate(void)
/// ```
int SDL_TLSCreate() {
  final _SDL_TLSCreate = DLL_SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_TLSCreate');
  return _SDL_TLSCreate();
}

/// 
/// Get the current thread's value associated with a thread local storage ID.
/// 
/// \param id the thread local storage ID
/// \returns the value associated with the ID for the current thread or NULL if
/// no value has been set; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_TLSCreate
/// \sa SDL_TLSSet
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_TLSGet(SDL_TLSID id)
/// ```
Pointer<Void>? SDL_TLSGet(int id) {
  final _SDL_TLSGet = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 id),
      Pointer<Void>? Function(int id)>('SDL_TLSGet');
  return _SDL_TLSGet(id);
}

/// 
/// Set the current thread's value associated with a thread local storage ID.
/// 
/// The function prototype for `destructor` is:
/// 
/// ```c
/// void destructor(void *value)
/// ```
/// 
/// where its parameter `value` is what was passed as `value` to SDL_TLSSet().
/// 
/// \param id the thread local storage ID
/// \param value the value to associate with the ID for the current thread
/// \param destructor a function called when the thread exits, to free the
/// value
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_TLSCreate
/// \sa SDL_TLSGet
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_TLSSet(SDL_TLSID id, const void *value, void (SDLCALL *destructor)(void*))
/// ```
int SDL_TLSSet(int id, Pointer<Void>? value, Pointer<Void>? deor) {
  final _SDL_TLSSet = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id, Pointer<Void>? value, Pointer<Void>? deor),
      int Function(int id, Pointer<Void>? value, Pointer<Void>? deor)>('SDL_TLSSet');
  return _SDL_TLSSet(id, value, deor);
}

/// 
/// Cleanup all TLS data for this thread.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_TLSCleanup(void)
/// ```
void SDL_TLSCleanup() {
  final _SDL_TLSCleanup = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_TLSCleanup');
  return _SDL_TLSCleanup();
}

