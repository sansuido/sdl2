// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// Get an ASCII string representation for a given ::SDL_GUID.
/// 
/// You should supply at least 33 bytes for pszGUID.
/// 
/// \param guid the ::SDL_GUID you wish to convert to string
/// \param pszGUID buffer in which to write the ASCII string
/// \param cbGUID the size of pszGUID
/// 
/// \since This function is available since SDL 2.24.0.
/// 
/// \sa SDL_GUIDFromString
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID)
/// ```
void SDL_GUIDToString(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID) {
  final _SDL_GUIDToString = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, Int32 cbGUID),
      void Function(Pointer<Void>? guid, Pointer<Int8>? pszGUID, int cbGUID)>('SDL_GUIDToString');
  return _SDL_GUIDToString(guid, pszGUID, cbGUID);
}

/// 
/// Convert a GUID string into a ::SDL_GUID structure.
/// 
/// Performs no error checking. If this function is given a string containing
/// an invalid GUID, the function will silently succeed, but the GUID generated
/// will not be useful.
/// 
/// \param pchGUID string containing an ASCII representation of a GUID
/// \returns a ::SDL_GUID structure.
/// 
/// \since This function is available since SDL 2.24.0.
/// 
/// \sa SDL_GUIDToString
/// 
/// ```c
/// extern DECLSPEC SDL_GUID SDLCALL SDL_GUIDFromString(const char *pchGUID)
/// ```
Pointer<Void>? SDL_GUIDFromString(String pchGUID) {
  final _SDL_GUIDFromString = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? pchGUID),
      Pointer<Void>? Function(Pointer<Utf8>? pchGUID)>('SDL_GUIDFromString');
  final _pchGUIDPointer = pchGUID.toNativeUtf8();
  final _result = _SDL_GUIDFromString(_pchGUIDPointer);
  calloc.free(_pchGUIDPointer);
  return _result;
}

