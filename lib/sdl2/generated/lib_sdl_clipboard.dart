// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// \brief Put UTF-8 text into the clipboard
/// 
/// \sa SDL_GetClipboardText()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetClipboardText(const char *text)
/// ```
int SDL_SetClipboardText(String text) {
  final _SDL_SetClipboardText = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? text),
      int Function(Pointer<Utf8>? text)>('SDL_SetClipboardText');
  final _textPointer = text.toNativeUtf8();
  final _result = _SDL_SetClipboardText(_textPointer);
  calloc.free(_textPointer);
  return _result;
}

/// 
/// \brief Get UTF-8 text from the clipboard, which must be freed with SDL_free()
/// 
/// \sa SDL_SetClipboardText()
/// 
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GetClipboardText(void)
/// ```
Pointer<Int8>? SDL_GetClipboardText() {
  final _SDL_GetClipboardText = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(),
      Pointer<Int8>? Function()>('SDL_GetClipboardText');
  return _SDL_GetClipboardText();
}

/// 
/// \brief Returns a flag indicating whether the clipboard exists and contains a text string that is non-empty
/// 
/// \sa SDL_GetClipboardText()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasClipboardText(void)
/// ```
int SDL_HasClipboardText() {
  final _SDL_HasClipboardText = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasClipboardText');
  return _SDL_HasClipboardText();
}

