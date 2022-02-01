// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// Set the priority of all log categories.
/// 
/// \param priority the SDL_LogPriority to assign
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogSetPriority
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
/// Set the priority of a particular log category.
/// 
/// \param category the category to assign a priority to
/// \param priority the SDL_LogPriority to assign
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogGetPriority
/// \sa SDL_LogSetAllPriority
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
/// Get the priority of a particular log category.
/// 
/// \param category the category to query
/// \returns the SDL_LogPriority for the requested category
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogSetPriority
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
/// Reset all priorities to default.
/// 
/// This is called by SDL_Quit().
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogSetAllPriority
/// \sa SDL_LogSetPriority
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
/// Log a message with SDL_LOG_CATEGORY_APPLICATION and SDL_LOG_PRIORITY_INFO.
/// 
/// = * \param fmt a printf() style message format string
/// 
/// \param ... additional parameters matching % tokens in the `fmt` string, if
/// any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Log(SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(1)
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
/// Log a message with SDL_LOG_PRIORITY_VERBOSE.
/// 
/// \param category the category of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogVerbose(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
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
/// Log a message with SDL_LOG_PRIORITY_DEBUG.
/// 
/// \param category the category of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogDebug(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
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
/// Log a message with SDL_LOG_PRIORITY_INFO.
/// 
/// \param category the category of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogInfo(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
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
/// Log a message with SDL_LOG_PRIORITY_WARN.
/// 
/// \param category the category of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogWarn(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
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
/// Log a message with SDL_LOG_PRIORITY_ERROR.
/// 
/// \param category the category of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogError(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
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
/// Log a message with SDL_LOG_PRIORITY_CRITICAL.
/// 
/// \param category the category of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogCritical(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
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
/// Log a message with the specified category and priority.
/// 
/// \param category the category of the message
/// \param priority the priority of the message
/// \param fmt a printf() style message format string
/// \param ... additional parameters matching % tokens in the **fmt** string,
/// if any
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessageV
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LogMessage(int category, SDL_LogPriority priority, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(3)
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
/// Log a message with the specified category and priority.
/// 
/// \param category the category of the message
/// \param priority the priority of the message
/// \param fmt a printf() style message format string
/// \param ap a variable argument list
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_Log
/// \sa SDL_LogCritical
/// \sa SDL_LogDebug
/// \sa SDL_LogError
/// \sa SDL_LogInfo
/// \sa SDL_LogMessage
/// \sa SDL_LogVerbose
/// \sa SDL_LogWarn
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
/// Get the current log output function.
/// 
/// \param callback an SDL_LogOutputFunction filled in with the current log
/// callback
/// \param userdata a pointer filled in with the pointer that is passed to
/// `callback`
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogSetOutputFunction
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
/// Replace the default log output function with one of your own.
/// 
/// \param callback an SDL_LogOutputFunction to call instead of the default
/// \param userdata a pointer that is passed to `callback`
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LogGetOutputFunction
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

