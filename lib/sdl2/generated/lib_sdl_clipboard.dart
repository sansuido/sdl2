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
int sdlSetClipboardText(String? text) {
  final sdlSetClipboardTextLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> text),
      int Function(Pointer<Utf8> text)>('SDL_SetClipboardText');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = sdlSetClipboardTextLookupFunction(textPointer);
  calloc.free(textPointer);
  return result;
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
Pointer<Int8> sdlGetClipboardText() {
  final sdlGetClipboardTextLookupFunction = libSdl2.lookupFunction<
      Pointer<Int8> Function(),
      Pointer<Int8> Function()>('SDL_GetClipboardText');
  return sdlGetClipboardTextLookupFunction();
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
bool sdlHasClipboardText() {
  final sdlHasClipboardTextLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_HasClipboardText');
  return sdlHasClipboardTextLookupFunction() == 1;
}

///
/// Put UTF-8 text into the primary selection.
///
/// \param text the text to store in the primary selection
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.26.0.
///
/// \sa SDL_GetPrimarySelectionText
/// \sa SDL_HasPrimarySelectionText
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetPrimarySelectionText(const char *text)
/// ```
int sdlSetPrimarySelectionText(String? text) {
  final sdlSetPrimarySelectionTextLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> text),
      int Function(Pointer<Utf8> text)>('SDL_SetPrimarySelectionText');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = sdlSetPrimarySelectionTextLookupFunction(textPointer);
  calloc.free(textPointer);
  return result;
}

///
/// Get UTF-8 text from the primary selection, which must be freed with
/// SDL_free().
///
/// This functions returns empty string if there was not enough memory left for
/// a copy of the primary selection's content.
///
/// \returns the primary selection text on success or an empty string on
/// failure; call SDL_GetError() for more information. Caller must
/// call SDL_free() on the returned pointer when done with it (even if
/// there was an error).
///
/// \since This function is available since SDL 2.26.0.
///
/// \sa SDL_HasPrimarySelectionText
/// \sa SDL_SetPrimarySelectionText
///
/// ```c
/// extern DECLSPEC char * SDLCALL SDL_GetPrimarySelectionText(void)
/// ```
Pointer<Int8> sdlGetPrimarySelectionText() {
  final sdlGetPrimarySelectionTextLookupFunction = libSdl2.lookupFunction<
      Pointer<Int8> Function(),
      Pointer<Int8> Function()>('SDL_GetPrimarySelectionText');
  return sdlGetPrimarySelectionTextLookupFunction();
}

///
/// Query whether the primary selection exists and contains a non-empty text
/// string.
///
/// \returns SDL_TRUE if the primary selection has text, or SDL_FALSE if it
/// does not.
///
/// \since This function is available since SDL 2.26.0.
///
/// \sa SDL_GetPrimarySelectionText
/// \sa SDL_SetPrimarySelectionText
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasPrimarySelectionText(void)
/// ```
bool sdlHasPrimarySelectionText() {
  final sdlHasPrimarySelectionTextLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_HasPrimarySelectionText');
  return sdlHasPrimarySelectionTextLookupFunction() == 1;
}
