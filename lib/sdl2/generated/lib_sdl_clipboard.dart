// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// 
/// Put UTF-8 text into the clipboard.
/// 
/// \param text the text to store in the clipboard
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetClipboardText
/// \sa SDL_HasClipboardText
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
/// Get UTF-8 text from the clipboard, which must be freed with SDL_free().
/// 
/// This functions returns empty string if there was not enough memory left for
/// a copy of the clipboard's content.
/// 
/// \returns the clipboard text on success or an empty string on failure; call
/// SDL_GetError() for more information. Caller must call SDL_free()
/// on the returned pointer when done with it (even if there was an
/// error).
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HasClipboardText
/// \sa SDL_SetClipboardText
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
/// Query whether the clipboard exists and contains a non-empty text string.
/// 
/// \returns SDL_TRUE if the clipboard has text, or SDL_FALSE if it does not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetClipboardText
/// \sa SDL_SetClipboardText
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

