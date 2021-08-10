// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// SDL_SetError() unconditionally returns -1.
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetError(const char *fmt, ...)
/// ```
int SDL_SetError(String fmt, Pointer<Void>? arg1) {
  final _SDL_SetError = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1),
      int Function(Pointer<Utf8>? fmt, Pointer<Void>? arg1)>('SDL_SetError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_SetError(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetError(void)
/// ```
String SDL_GetError() {
  final _SDL_GetError = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetError');
  return _SDL_GetError()!.toDartString();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_ClearError(void)
/// ```
void SDL_ClearError() {
  final _SDL_ClearError = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearError');
  return _SDL_ClearError();
}

/// SDL_Error() unconditionally returns -1.
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Error(SDL_errorcode code)
/// ```
int SDL_Error(int code) {
  final _SDL_Error = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 code),
      int Function(int code)>('SDL_Error');
  return _SDL_Error(code);
}

