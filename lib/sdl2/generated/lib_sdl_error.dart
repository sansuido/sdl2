// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

///
/// Set the SDL error message for the current thread.
///
/// Calling this function will replace any previous error message that was set.
///
/// This function always returns -1, since SDL frequently uses -1 to signify an
/// failing result, leading to this idiom:
///
/// ```c
/// if (error_code) {
/// return SDL_SetError("This operation has failed: %d", error_code);
/// }
/// ```
///
/// \param fmt a printf()-style message format string
/// \param ... additional parameters matching % tokens in the `fmt` string, if
/// any
/// \returns always -1.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ClearError
/// \sa SDL_GetError
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetError(SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(1)
/// ```
int sdlSetError(String? fmt, Pointer<NativeType> arg1) {
  final sdlSetErrorLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> fmt, Pointer<NativeType> arg1),
      int Function(
          Pointer<Utf8> fmt, Pointer<NativeType> arg1)>('SDL_SetError');
  final fmtPointer = fmt != null ? fmt.toNativeUtf8() : nullptr;
  final result = sdlSetErrorLookupFunction(fmtPointer, arg1);
  calloc.free(fmtPointer);
  return result;
}

///
/// Retrieve a message about the last error that occurred on the current
/// thread.
///
/// It is possible for multiple errors to occur before calling SDL_GetError().
/// Only the last error is returned.
///
/// The message is only applicable when an SDL function has signaled an error.
/// You must check the return values of SDL function calls to determine when to
/// appropriately call SDL_GetError(). You should *not* use the results of
/// SDL_GetError() to decide if an error has occurred! Sometimes SDL will set
/// an error string even when reporting success.
///
/// SDL will *not* clear the error string for successful API calls. You *must*
/// check return values for failure cases before you can assume the error
/// string applies.
///
/// Error strings are set per-thread, so an error set in a different thread
/// will not interfere with the current thread's operation.
///
/// The returned string is internally allocated and must not be freed by the
/// application.
///
/// \returns a message with information about the specific error that occurred,
/// or an empty string if there hasn't been an error message set since
/// the last call to SDL_ClearError(). The message is only applicable
/// when an SDL function has signaled an error. You must check the
/// return values of SDL function calls to determine when to
/// appropriately call SDL_GetError().
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ClearError
/// \sa SDL_SetError
///
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetError(void)
/// ```
String? sdlGetError() {
  final sdlGetErrorLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(), Pointer<Utf8> Function()>('SDL_GetError');
  final result = sdlGetErrorLookupFunction();
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Get the last error message that was set for the current thread.
///
/// This allows the caller to copy the error string into a provided buffer, but
/// otherwise operates exactly the same as SDL_GetError().
///
/// \param errstr A buffer to fill with the last error message that was set for
/// the current thread
/// \param maxlen The size of the buffer pointed to by the errstr parameter
/// \returns the pointer passed in as the `errstr` parameter.
///
/// \since This function is available since SDL 2.0.14.
///
/// \sa SDL_GetError
///
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GetErrorMsg(char *errstr, int maxlen)
/// ```
Pointer<Int8> sdlGetErrorMsg(Pointer<Int8> errstr, int maxlen) {
  final sdlGetErrorMsgLookupFunction = libSdl2.lookupFunction<
      Pointer<Int8> Function(Pointer<Int8> errstr, Int32 maxlen),
      Pointer<Int8> Function(
          Pointer<Int8> errstr, int maxlen)>('SDL_GetErrorMsg');
  return sdlGetErrorMsgLookupFunction(errstr, maxlen);
}

///
/// Clear any previous error message for this thread.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_GetError
/// \sa SDL_SetError
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearError(void)
/// ```
void sdlClearError() {
  final sdlClearErrorLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_ClearError');
  return sdlClearErrorLookupFunction();
}

/// SDL_Error() unconditionally returns -1.
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Error(SDL_errorcode code)
/// ```
int sdlError(int code) {
  final sdlErrorLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 code), int Function(int code)>('SDL_Error');
  return sdlErrorLookupFunction(code);
}
