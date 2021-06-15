import 'dart:ffi';
import './generated/const_sdl2_ttf.dart';
import './generated/lib_sdl2.dart';
import './generated/lib_sdl2_ttf.dart';
import './generated/struct_sdl2.dart';
import './generated/struct_sdl2_ttf.dart';
import './sdl2_handwritten.dart';

/// ```c
/// const SDL_TTF_VERSION = (X) \{ \ (X)->major = SDL_TTF_MAJOR_VERSION; \ (X)->minor = SDL_TTF_MINOR_VERSION; \ (X)->patch = SDL_TTF_PATCHLEVEL; \};
/// ```
void SDL_TTF_VERSION(Pointer<SDL_version>? x) {
  if (x != null) {
    x.ref.major = SDL_TTF_MAJOR_VERSION;
    x.ref.minor = SDL_TTF_MINOR_VERSION;
    x.ref.patch = SDL_TTF_PATCHLEVEL;
  }
}

/// ```c
/// const TTF_VERSION = (X) SDL_TTF_VERSION(X);
/// ```
void TTF_VERSION(Pointer<SDL_version>? x) {
  return SDL_TTF_VERSION(x);
}

/// ```c
/// const SDL_TTF_COMPILEDVERSION = \ SDL_VERSIONNUM(SDL_TTF_MAJOR_VERSION, SDL_TTF_MINOR_VERSION, SDL_TTF_PATCHLEVEL);
/// ```
final SDL_TTF_COMPILEDVERSION = SDL_VERSIONNUM(SDL_TTF_MAJOR_VERSION, SDL_TTF_MINOR_VERSION, SDL_TTF_PATCHLEVEL);

/// ```c
/// const SDL_TTF_VERSION_ATLEAST = (X, Y, Z) \ (SDL_TTF_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
/// ```
bool SDL_TTF_VERSION_ATLEAST(int x, int y, int z) {
  return SDL_TTF_COMPILEDVERSION >= SDL_VERSIONNUM(x, y, z);
}

/// ```c
/// const TTF_RenderText = (font, text, fg, bg) \ TTF_RenderText_Shaded(font, text, fg, bg);
/// ```
Pointer<SDL_Surface>? TTF_RenderText(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  return TTF_RenderText_Shaded(font, text, fg, bg);
}

/// ```c
/// const TTF_RenderUTF8 = (font, text, fg, bg) \ TTF_RenderUTF8_Shaded(font, text, fg, bg);
/// 
Pointer<SDL_Surface>? TTF_RenderUTF8(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  return TTF_RenderUTF8_Shaded(font, text, fg, bg);
}

/// ```c
/// const TTF_RenderUNICODE = (font, text, fg, bg) \ TTF_RenderUNICODE_Shaded(font, text, fg, bg);
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg) {
  return TTF_RenderUNICODE_Shaded(font, text, fg, bg);
}

/// ```c
/// const TTF_SetError = SDL_SetError;
/// ```
int? TTF_SetError(String fmt, Pointer<Void>? arg1) {
  return SDL_SetError(fmt, arg1);
}

/// ```c
/// const TTF_GetError = SDL_GetError;
/// ```
String? TTF_GetError() {
  return SDL_GetError();
}
