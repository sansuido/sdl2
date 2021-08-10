// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// \brief Set the priority of all log categories
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogSetAllPriority(SDL_LogPriority priority)
/// ```
void SDL_LogSetAllPriority(int priority) {
  final _SDL_LogSetAllPriority = DLL_SDL2.lookupFunction<
      Void Function(Int32 priority),
      void Function(int priority)>('SDL_LogSetAllPriority');
  return _SDL_LogSetAllPriority(priority);
}

/// 
/// \brief Set the priority of a particular log category
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogSetPriority(int category, SDL_LogPriority priority)
/// ```
void SDL_LogSetPriority(int category, int priority) {
  final _SDL_LogSetPriority = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority),
      void Function(int category, int priority)>('SDL_LogSetPriority');
  return _SDL_LogSetPriority(category, priority);
}

/// 
/// \brief Get the priority of a particular log category
/// 
/// ```c
/// extern DECLSPEC SDL_LogPriority SDLCALL SDL_LogGetPriority(int category)
/// ```
int SDL_LogGetPriority(int category) {
  final _SDL_LogGetPriority = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 category),
      int Function(int category)>('SDL_LogGetPriority');
  return _SDL_LogGetPriority(category);
}

/// 
/// \brief Reset all priorities to default.
/// 
/// \note This is called in SDL_Quit().
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogResetPriorities(void)
/// ```
void SDL_LogResetPriorities() {
  final _SDL_LogResetPriorities = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LogResetPriorities');
  return _SDL_LogResetPriorities();
}

/// 
/// \brief Log a message with SDL_LOG_CATEGORY_APPLICATION and SDL_LOG_PRIORITY_INFO
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Log(const char *fmt, ...)
/// ```
void SDL_Log(String fmt, Pointer<Void>? arg1) {
  final _SDL_Log = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1),
      void Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1)>('SDL_Log');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_Log(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with SDL_LOG_PRIORITY_VERBOSE
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogVerbose(int category, const char *fmt, ...)
/// ```
void SDL_LogVerbose(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogVerbose = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogVerbose');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogVerbose(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with SDL_LOG_PRIORITY_DEBUG
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogDebug(int category, const char *fmt, ...)
/// ```
void SDL_LogDebug(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogDebug = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogDebug');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogDebug(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with SDL_LOG_PRIORITY_INFO
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogInfo(int category, const char *fmt, ...)
/// ```
void SDL_LogInfo(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogInfo = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogInfo');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogInfo(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with SDL_LOG_PRIORITY_WARN
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogWarn(int category, const char *fmt, ...)
/// ```
void SDL_LogWarn(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogWarn = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogWarn');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogWarn(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with SDL_LOG_PRIORITY_ERROR
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogError(int category, const char *fmt, ...)
/// ```
void SDL_LogError(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogError = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogError(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with SDL_LOG_PRIORITY_CRITICAL
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogCritical(int category, const char *fmt, ...)
/// ```
void SDL_LogCritical(int category, String fmt, Pointer<Void>? arg2) {
  final _SDL_LogCritical = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      void Function(int category, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_LogCritical');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogCritical(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with the specified category and priority.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogMessage(int category, SDL_LogPriority priority, const char *fmt, ...)
/// ```
void SDL_LogMessage(int category, int priority, String fmt, Pointer<Void>? arg3) {
  final _SDL_LogMessage = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8>? fmt, Pointer<Void>? arg3),
      void Function(int category, int priority, Pointer<Utf8>? fmt, Pointer<Void>? arg3)>('SDL_LogMessage');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogMessage(category, priority, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Log a message with the specified category and priority.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogMessageV(int category, SDL_LogPriority priority, const char *fmt, va_list ap)
/// ```
void SDL_LogMessageV(int category, int priority, String fmt, Pointer<Void>? ap) {
  final _SDL_LogMessageV = DLL_SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      void Function(int category, int priority, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_LogMessageV');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogMessageV(category, priority, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// \brief Get the current log output function.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogGetOutputFunction(SDL_LogOutputFunction *callback, void **userdata)
/// ```
void SDL_LogGetOutputFunction(Pointer<Pointer<Void>>? callback, Pointer<Pointer<Void>>? userdata) {
  final _SDL_LogGetOutputFunction = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Pointer<Void>>? callback, Pointer<Pointer<Void>>? userdata),
      void Function(Pointer<Pointer<Void>>? callback, Pointer<Pointer<Void>>? userdata)>('SDL_LogGetOutputFunction');
  return _SDL_LogGetOutputFunction(callback, userdata);
}

/// 
/// \brief This function allows you to replace the default log output
/// function with one of your own.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogSetOutputFunction(SDL_LogOutputFunction callback, void *userdata)
/// ```
void SDL_LogSetOutputFunction(Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_LogSetOutputFunction = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_LogSetOutputFunction');
  return _SDL_LogSetOutputFunction(callback, userdata);
}

