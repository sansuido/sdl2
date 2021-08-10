// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// @{
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFile(const char *file, const char *mode)
/// ```
Pointer<SDL_RWops>? SDL_RWFromFile(String file, String mode) {
  final _SDL_RWFromFile = DLL_SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<Utf8>? file, Pointer<Utf8>? mode),
      Pointer<SDL_RWops>? Function(Pointer<Utf8>? file, Pointer<Utf8>? mode)>('SDL_RWFromFile');
  final _filePointer = file.toNativeUtf8();
  final _modePointer = mode.toNativeUtf8();
  final _result = _SDL_RWFromFile(_filePointer, _modePointer);
  calloc.free(_filePointer);
  calloc.free(_modePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFP(FILE * fp, SDL_bool autoclose)
/// ```
Pointer<SDL_RWops>? SDL_RWFromFP(Pointer<IntPtr>? fp, int autoclose) {
  final _SDL_RWFromFP = DLL_SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<IntPtr>? fp, Int32 autoclose),
      Pointer<SDL_RWops>? Function(Pointer<IntPtr>? fp, int autoclose)>('SDL_RWFromFP');
  return _SDL_RWFromFP(fp, autoclose);
}

/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromMem(void *mem, int size)
/// ```
Pointer<SDL_RWops>? SDL_RWFromMem(Pointer<Void>? mem, int size) {
  final _SDL_RWFromMem = DLL_SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, Int32 size),
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, int size)>('SDL_RWFromMem');
  return _SDL_RWFromMem(mem, size);
}

/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromConstMem(const void *mem, int size)
/// ```
Pointer<SDL_RWops>? SDL_RWFromConstMem(Pointer<Void>? mem, int size) {
  final _SDL_RWFromConstMem = DLL_SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, Int32 size),
      Pointer<SDL_RWops>? Function(Pointer<Void>? mem, int size)>('SDL_RWFromConstMem');
  return _SDL_RWFromConstMem(mem, size);
}

/// RWFrom functions
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_AllocRW(void)
/// ```
Pointer<SDL_RWops>? SDL_AllocRW() {
  final _SDL_AllocRW = DLL_SDL2.lookupFunction<
      Pointer<SDL_RWops>? Function(),
      Pointer<SDL_RWops>? Function()>('SDL_AllocRW');
  return _SDL_AllocRW();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeRW(SDL_RWops * area)
/// ```
void SDL_FreeRW(Pointer<SDL_RWops>? area) {
  final _SDL_FreeRW = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_RWops>? area),
      void Function(Pointer<SDL_RWops>? area)>('SDL_FreeRW');
  return _SDL_FreeRW(area);
}

/// @{
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_ReadU8(SDL_RWops * src)
/// ```
int SDL_ReadU8(Pointer<SDL_RWops>? src) {
  final _SDL_ReadU8 = DLL_SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadU8');
  return _SDL_ReadU8(src);
}

/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_ReadLE16(SDL_RWops * src)
/// ```
int SDL_ReadLE16(Pointer<SDL_RWops>? src) {
  final _SDL_ReadLE16 = DLL_SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadLE16');
  return _SDL_ReadLE16(src);
}

/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_ReadBE16(SDL_RWops * src)
/// ```
int SDL_ReadBE16(Pointer<SDL_RWops>? src) {
  final _SDL_ReadBE16 = DLL_SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadBE16');
  return _SDL_ReadBE16(src);
}

/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_ReadLE32(SDL_RWops * src)
/// ```
int SDL_ReadLE32(Pointer<SDL_RWops>? src) {
  final _SDL_ReadLE32 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadLE32');
  return _SDL_ReadLE32(src);
}

/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_ReadBE32(SDL_RWops * src)
/// ```
int SDL_ReadBE32(Pointer<SDL_RWops>? src) {
  final _SDL_ReadBE32 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadBE32');
  return _SDL_ReadBE32(src);
}

/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_ReadLE64(SDL_RWops * src)
/// ```
int SDL_ReadLE64(Pointer<SDL_RWops>? src) {
  final _SDL_ReadLE64 = DLL_SDL2.lookupFunction<
      Uint64 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadLE64');
  return _SDL_ReadLE64(src);
}

/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_ReadBE64(SDL_RWops * src)
/// ```
int SDL_ReadBE64(Pointer<SDL_RWops>? src) {
  final _SDL_ReadBE64 = DLL_SDL2.lookupFunction<
      Uint64 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('SDL_ReadBE64');
  return _SDL_ReadBE64(src);
}

/// @{
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteU8(SDL_RWops * dst, Uint8 value)
/// ```
int SDL_WriteU8(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteU8 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint8 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteU8');
  return _SDL_WriteU8(dst, value);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE16(SDL_RWops * dst, Uint16 value)
/// ```
int SDL_WriteLE16(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteLE16 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint16 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteLE16');
  return _SDL_WriteLE16(dst, value);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE16(SDL_RWops * dst, Uint16 value)
/// ```
int SDL_WriteBE16(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteBE16 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint16 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteBE16');
  return _SDL_WriteBE16(dst, value);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE32(SDL_RWops * dst, Uint32 value)
/// ```
int SDL_WriteLE32(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteLE32 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint32 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteLE32');
  return _SDL_WriteLE32(dst, value);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE32(SDL_RWops * dst, Uint32 value)
/// ```
int SDL_WriteBE32(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteBE32 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint32 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteBE32');
  return _SDL_WriteBE32(dst, value);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE64(SDL_RWops * dst, Uint64 value)
/// ```
int SDL_WriteLE64(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteLE64 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint64 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteLE64');
  return _SDL_WriteLE64(dst, value);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE64(SDL_RWops * dst, Uint64 value)
/// ```
int SDL_WriteBE64(Pointer<SDL_RWops>? dst, int value) {
  final _SDL_WriteBE64 = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops>? dst, Uint64 value),
      int Function(Pointer<SDL_RWops>? dst, int value)>('SDL_WriteBE64');
  return _SDL_WriteBE64(dst, value);
}

