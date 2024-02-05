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
void sdlLogSetAllPriority(int priority) {
  final sdlLogSetAllPriorityLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 priority),
      void Function(int priority)>('SDL_LogSetAllPriority');
  return sdlLogSetAllPriorityLookupFunction(priority);
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
void sdlLogSetPriority(int category, int priority) {
  final sdlLogSetPriorityLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 category, Int32 priority),
      void Function(int category, int priority)>('SDL_LogSetPriority');
  return sdlLogSetPriorityLookupFunction(category, priority);
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
int sdlLogGetPriority(int category) {
  final sdlLogGetPriorityLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 category),
      int Function(int category)>('SDL_LogGetPriority');
  return sdlLogGetPriorityLookupFunction(category);
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
void sdlLogResetPriorities() {
  final sdlLogResetPrioritiesLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_LogResetPriorities');
  return sdlLogResetPrioritiesLookupFunction();
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
void sdlLog(String? fmt, Pointer<NativeType> arg1) {
  final sdlLogLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<Utf8> fmt, Pointer<NativeType> arg1),
      void Function(Pointer<Utf8> fmt, Pointer<NativeType> arg1)>('SDL_Log');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogLookupFunction(fmtPointer, arg1);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogVerbose(int category, String? fmt, Pointer<NativeType> arg2) {
  final sdlLogVerboseLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Int32 category, Pointer<Utf8> fmt, Pointer<NativeType> arg2),
      void Function(int category, Pointer<Utf8> fmt,
          Pointer<NativeType> arg2)>('SDL_LogVerbose');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogVerboseLookupFunction(category, fmtPointer, arg2);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogDebug(int category, String? fmt, Pointer<NativeType> arg2) {
  final sdlLogDebugLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Int32 category, Pointer<Utf8> fmt, Pointer<NativeType> arg2),
      void Function(int category, Pointer<Utf8> fmt,
          Pointer<NativeType> arg2)>('SDL_LogDebug');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogDebugLookupFunction(category, fmtPointer, arg2);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogInfo(int category, String? fmt, Pointer<NativeType> arg2) {
  final sdlLogInfoLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Int32 category, Pointer<Utf8> fmt, Pointer<NativeType> arg2),
      void Function(int category, Pointer<Utf8> fmt,
          Pointer<NativeType> arg2)>('SDL_LogInfo');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogInfoLookupFunction(category, fmtPointer, arg2);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogWarn(int category, String? fmt, Pointer<NativeType> arg2) {
  final sdlLogWarnLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Int32 category, Pointer<Utf8> fmt, Pointer<NativeType> arg2),
      void Function(int category, Pointer<Utf8> fmt,
          Pointer<NativeType> arg2)>('SDL_LogWarn');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogWarnLookupFunction(category, fmtPointer, arg2);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogError(int category, String? fmt, Pointer<NativeType> arg2) {
  final sdlLogErrorLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Int32 category, Pointer<Utf8> fmt, Pointer<NativeType> arg2),
      void Function(int category, Pointer<Utf8> fmt,
          Pointer<NativeType> arg2)>('SDL_LogError');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogErrorLookupFunction(category, fmtPointer, arg2);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogCritical(int category, String? fmt, Pointer<NativeType> arg2) {
  final sdlLogCriticalLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Int32 category, Pointer<Utf8> fmt, Pointer<NativeType> arg2),
      void Function(int category, Pointer<Utf8> fmt,
          Pointer<NativeType> arg2)>('SDL_LogCritical');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlLogCriticalLookupFunction(category, fmtPointer, arg2);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogMessage(
    int category, int priority, String? fmt, Pointer<NativeType> arg3) {
  final sdlLogMessageLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8> fmt,
          Pointer<NativeType> arg3),
      void Function(int category, int priority, Pointer<Utf8> fmt,
          Pointer<NativeType> arg3)>('SDL_LogMessage');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result =
      sdlLogMessageLookupFunction(category, priority, fmtPointer, arg3);
  calloc.free(fmtPointer);
  return result;
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
/// extern DECLSPEC void SDLCALL SDL_LogMessageV(int category, SDL_LogPriority priority, SDL_PRINTF_FORMAT_STRING const char *fmt, va_list ap) SDL_PRINTF_VARARG_FUNCV(3)
/// ```
void sdlLogMessageV(
    int category, int priority, String? fmt, Pointer<NativeType> arg3) {
  final sdlLogMessageVLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8> fmt,
          Pointer<NativeType> arg3),
      void Function(int category, int priority, Pointer<Utf8> fmt,
          Pointer<NativeType> arg3)>('SDL_LogMessageV');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result =
      sdlLogMessageVLookupFunction(category, priority, fmtPointer, arg3);
  calloc.free(fmtPointer);
  return result;
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
void sdlLogGetOutputFunction(
    Pointer<Pointer<NativeFunction<SdlLogOutputFunction>>> callback,
    Pointer<Pointer<NativeType>> userdata) {
  final sdlLogGetOutputFunctionLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<Pointer<NativeFunction<SdlLogOutputFunction>>> callback,
          Pointer<Pointer<NativeType>> userdata),
      void Function(
          Pointer<Pointer<NativeFunction<SdlLogOutputFunction>>> callback,
          Pointer<Pointer<NativeType>> userdata)>('SDL_LogGetOutputFunction');
  return sdlLogGetOutputFunctionLookupFunction(callback, userdata);
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
void sdlLogSetOutputFunction(
    Pointer<NativeFunction<SdlLogOutputFunction>> callback,
    Pointer<NativeType> userdata) {
  final sdlLogSetOutputFunctionLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<NativeFunction<SdlLogOutputFunction>> callback,
          Pointer<NativeType> userdata),
      void Function(Pointer<NativeFunction<SdlLogOutputFunction>> callback,
          Pointer<NativeType> userdata)>('SDL_LogSetOutputFunction');
  return sdlLogSetOutputFunctionLookupFunction(callback, userdata);
}
