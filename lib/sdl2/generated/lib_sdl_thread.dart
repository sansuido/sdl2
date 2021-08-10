// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Create a thread.
/// 
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

/// 
/// Get the thread name, as it was specified in SDL_CreateThread().
/// This function returns a pointer to a UTF-8 string that names the
/// specified thread, or NULL if it doesn't have a name. This is internal
/// memory, not to be free()'d by the caller, and remains valid until the
/// specified thread is cleaned up by SDL_WaitThread().
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
/// Equivalent to SDL_ThreadID() if the specified thread is NULL.
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
/// Set the priority for the current thread
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
/// The return code for the thread function is placed in the area
/// pointed to by \c status, if \c status is not NULL.
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
/// \brief Create an identifier that is globally visible to all threads but refers to data that is thread-specific.
/// 
/// \return The newly created thread local storage identifier, or 0 on error
/// 
/// \code
/// static SDL_SpinLock tls_lock;
/// static SDL_TLSID thread_local_storage;
/// 
/// void SetMyThreadData(void *value)
/// {
/// if (!thread_local_storage) {
/// SDL_AtomicLock(&tls_lock);
/// if (!thread_local_storage) {
/// thread_local_storage = SDL_TLSCreate();
/// }
/// SDL_AtomicUnLock(&tls_lock);
/// }
/// SDL_TLSSet(thread_local_storage, value);
/// }
/// 
/// void *GetMyThreadData(void)
/// {
/// return SDL_TLSGet(thread_local_storage);
/// }
/// \endcode
/// 
/// \sa SDL_TLSGet()
/// \sa SDL_TLSSet()
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
/// \brief Get the value associated with a thread local storage ID for the current thread.
/// 
/// \param id The thread local storage ID
/// 
/// \return The value associated with the ID for the current thread, or NULL if no value has been set.
/// 
/// \sa SDL_TLSCreate()
/// \sa SDL_TLSSet()
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
/// \brief Set the value associated with a thread local storage ID for the current thread.
/// 
/// \param id The thread local storage ID
/// \param value The value to associate with the ID for the current thread
/// \param destructor A function called when the thread exits, to free the value.
/// 
/// \return 0 on success, -1 on error
/// 
/// \sa SDL_TLSCreate()
/// \sa SDL_TLSGet()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_TLSSet(SDL_TLSID id, const void *value, void (*destructor)(void*))
/// ```
int SDL_TLSSet(int id, Pointer<Void>? value, Pointer<Void>? deor) {
  final _SDL_TLSSet = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id, Pointer<Void>? value, Pointer<Void>? deor),
      int Function(int id, Pointer<Void>? value, Pointer<Void>? deor)>('SDL_TLSSet');
  return _SDL_TLSSet(id, value, deor);
}

