// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';
import 'struct_sdl2_ttf.dart';

final _SDL2_ttf = DynamicLibrary.open('SDL2_ttf.dll');

// extern DECLSPEC const SDL_version * SDLCALL TTF_Linked_Version(void)
Pointer<SDL_version> TTF_Linked_Version() {
  final _TTF_Linked_Version = _SDL2_ttf.lookupFunction<
      Pointer<SDL_version> Function(),
      Pointer<SDL_version> Function()>('TTF_Linked_Version');
  return _TTF_Linked_Version();
}
// extern DECLSPEC void SDLCALL TTF_ByteSwappedUNICODE(int swapped)
void TTF_ByteSwappedUNICODE(int swapped) {
  final _TTF_ByteSwappedUNICODE = _SDL2_ttf.lookupFunction<
      Void Function(Int32 swapped),
      void Function(int swapped)>('TTF_ByteSwappedUNICODE');
  return _TTF_ByteSwappedUNICODE(swapped);
}
// extern DECLSPEC int SDLCALL TTF_Init(void)
int TTF_Init() {
  final _TTF_Init = _SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_Init');
  return _TTF_Init();
}
// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFont(const char *file, int ptsize)
Pointer<TTF_Font> TTF_OpenFont(String file, int ptsize) {
  final _TTF_OpenFont = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font> Function(Pointer<Utf8> file, Int32 ptsize),
      Pointer<TTF_Font> Function(Pointer<Utf8> file, int ptsize)>('TTF_OpenFont');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFont(_filePointer, ptsize);
  calloc.free(_filePointer);
  return _result;
}
// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndex(const char *file, int ptsize, long index)
Pointer<TTF_Font> TTF_OpenFontIndex(String file, int ptsize, int index) {
  final _TTF_OpenFontIndex = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font> Function(Pointer<Utf8> file, Int32 ptsize, Int32 index),
      Pointer<TTF_Font> Function(Pointer<Utf8> file, int ptsize, int index)>('TTF_OpenFontIndex');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontIndex(_filePointer, ptsize, index);
  calloc.free(_filePointer);
  return _result;
}
// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontRW(SDL_RWops *src, int freesrc, int ptsize)
Pointer<TTF_Font> TTF_OpenFontRW(Pointer<SDL_RWops> src, int freesrc, int ptsize) {
  final _TTF_OpenFontRW = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font> Function(Pointer<SDL_RWops> src, Int32 freesrc, Int32 ptsize),
      Pointer<TTF_Font> Function(Pointer<SDL_RWops> src, int freesrc, int ptsize)>('TTF_OpenFontRW');
  return _TTF_OpenFontRW(src, freesrc, ptsize);
}
// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexRW(SDL_RWops *src, int freesrc, int ptsize, long index)
Pointer<TTF_Font> TTF_OpenFontIndexRW(Pointer<SDL_RWops> src, int freesrc, int ptsize, int index) {
  final _TTF_OpenFontIndexRW = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font> Function(Pointer<SDL_RWops> src, Int32 freesrc, Int32 ptsize, Int32 index),
      Pointer<TTF_Font> Function(Pointer<SDL_RWops> src, int freesrc, int ptsize, int index)>('TTF_OpenFontIndexRW');
  return _TTF_OpenFontIndexRW(src, freesrc, ptsize, index);
}
// extern DECLSPEC int SDLCALL TTF_GetFontStyle(const TTF_Font *font)
int TTF_GetFontStyle(Pointer<TTF_Font> font) {
  final _TTF_GetFontStyle = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_GetFontStyle');
  return _TTF_GetFontStyle(font);
}
// extern DECLSPEC void SDLCALL TTF_SetFontStyle(TTF_Font *font, int style)
void TTF_SetFontStyle(Pointer<TTF_Font> font, int style) {
  final _TTF_SetFontStyle = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font> font, Int32 style),
      void Function(Pointer<TTF_Font> font, int style)>('TTF_SetFontStyle');
  return _TTF_SetFontStyle(font, style);
}
// extern DECLSPEC int SDLCALL TTF_GetFontOutline(const TTF_Font *font)
int TTF_GetFontOutline(Pointer<TTF_Font> font) {
  final _TTF_GetFontOutline = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_GetFontOutline');
  return _TTF_GetFontOutline(font);
}
// extern DECLSPEC void SDLCALL TTF_SetFontOutline(TTF_Font *font, int outline)
void TTF_SetFontOutline(Pointer<TTF_Font> font, int outline) {
  final _TTF_SetFontOutline = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font> font, Int32 outline),
      void Function(Pointer<TTF_Font> font, int outline)>('TTF_SetFontOutline');
  return _TTF_SetFontOutline(font, outline);
}
// extern DECLSPEC int SDLCALL TTF_GetFontHinting(const TTF_Font *font)
int TTF_GetFontHinting(Pointer<TTF_Font> font) {
  final _TTF_GetFontHinting = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_GetFontHinting');
  return _TTF_GetFontHinting(font);
}
// extern DECLSPEC void SDLCALL TTF_SetFontHinting(TTF_Font *font, int hinting)
void TTF_SetFontHinting(Pointer<TTF_Font> font, int hinting) {
  final _TTF_SetFontHinting = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font> font, Int32 hinting),
      void Function(Pointer<TTF_Font> font, int hinting)>('TTF_SetFontHinting');
  return _TTF_SetFontHinting(font, hinting);
}
// extern DECLSPEC int SDLCALL TTF_FontHeight(const TTF_Font *font)
int TTF_FontHeight(Pointer<TTF_Font> font) {
  final _TTF_FontHeight = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_FontHeight');
  return _TTF_FontHeight(font);
}
// extern DECLSPEC int SDLCALL TTF_FontAscent(const TTF_Font *font)
int TTF_FontAscent(Pointer<TTF_Font> font) {
  final _TTF_FontAscent = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_FontAscent');
  return _TTF_FontAscent(font);
}
// extern DECLSPEC int SDLCALL TTF_FontDescent(const TTF_Font *font)
int TTF_FontDescent(Pointer<TTF_Font> font) {
  final _TTF_FontDescent = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_FontDescent');
  return _TTF_FontDescent(font);
}
// extern DECLSPEC int SDLCALL TTF_FontLineSkip(const TTF_Font *font)
int TTF_FontLineSkip(Pointer<TTF_Font> font) {
  final _TTF_FontLineSkip = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_FontLineSkip');
  return _TTF_FontLineSkip(font);
}
// extern DECLSPEC int SDLCALL TTF_GetFontKerning(const TTF_Font *font)
int TTF_GetFontKerning(Pointer<TTF_Font> font) {
  final _TTF_GetFontKerning = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_GetFontKerning');
  return _TTF_GetFontKerning(font);
}
// extern DECLSPEC void SDLCALL TTF_SetFontKerning(TTF_Font *font, int allowed)
void TTF_SetFontKerning(Pointer<TTF_Font> font, int allowed) {
  final _TTF_SetFontKerning = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font> font, Int32 allowed),
      void Function(Pointer<TTF_Font> font, int allowed)>('TTF_SetFontKerning');
  return _TTF_SetFontKerning(font, allowed);
}
// extern DECLSPEC long SDLCALL TTF_FontFaces(const TTF_Font *font)
int TTF_FontFaces(Pointer<TTF_Font> font) {
  final _TTF_FontFaces = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_FontFaces');
  return _TTF_FontFaces(font);
}
// extern DECLSPEC int SDLCALL TTF_FontFaceIsFixedWidth(const TTF_Font *font)
int TTF_FontFaceIsFixedWidth(Pointer<TTF_Font> font) {
  final _TTF_FontFaceIsFixedWidth = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font),
      int Function(Pointer<TTF_Font> font)>('TTF_FontFaceIsFixedWidth');
  return _TTF_FontFaceIsFixedWidth(font);
}
// extern DECLSPEC char * SDLCALL TTF_FontFaceFamilyName(const TTF_Font *font)
Pointer<Int8> TTF_FontFaceFamilyName(Pointer<TTF_Font> font) {
  final _TTF_FontFaceFamilyName = _SDL2_ttf.lookupFunction<
      Pointer<Int8> Function(Pointer<TTF_Font> font),
      Pointer<Int8> Function(Pointer<TTF_Font> font)>('TTF_FontFaceFamilyName');
  return _TTF_FontFaceFamilyName(font);
}
// extern DECLSPEC char * SDLCALL TTF_FontFaceStyleName(const TTF_Font *font)
Pointer<Int8> TTF_FontFaceStyleName(Pointer<TTF_Font> font) {
  final _TTF_FontFaceStyleName = _SDL2_ttf.lookupFunction<
      Pointer<Int8> Function(Pointer<TTF_Font> font),
      Pointer<Int8> Function(Pointer<TTF_Font> font)>('TTF_FontFaceStyleName');
  return _TTF_FontFaceStyleName(font);
}
// extern DECLSPEC int SDLCALL TTF_GlyphIsProvided(const TTF_Font *font, Uint16 ch)
int TTF_GlyphIsProvided(Pointer<TTF_Font> font, int ch) {
  final _TTF_GlyphIsProvided = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font, Uint16 ch),
      int Function(Pointer<TTF_Font> font, int ch)>('TTF_GlyphIsProvided');
  return _TTF_GlyphIsProvided(font, ch);
}
// extern DECLSPEC int SDLCALL TTF_GlyphMetrics(TTF_Font *font, Uint16 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance)
int TTF_GlyphMetrics(Pointer<TTF_Font> font, int ch, Pointer<Int32> minx, Pointer<Int32> maxx, Pointer<Int32> miny, Pointer<Int32> maxy, Pointer<Int32> advance) {
  final _TTF_GlyphMetrics = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font, Uint16 ch, Pointer<Int32> minx, Pointer<Int32> maxx, Pointer<Int32> miny, Pointer<Int32> maxy, Pointer<Int32> advance),
      int Function(Pointer<TTF_Font> font, int ch, Pointer<Int32> minx, Pointer<Int32> maxx, Pointer<Int32> miny, Pointer<Int32> maxy, Pointer<Int32> advance)>('TTF_GlyphMetrics');
  return _TTF_GlyphMetrics(font, ch, minx, maxx, miny, maxy, advance);
}
// extern DECLSPEC int SDLCALL TTF_SizeText(TTF_Font *font, const char *text, int *w, int *h)
int TTF_SizeText(Pointer<TTF_Font> font, String text, Pointer<Int32> w, Pointer<Int32> h) {
  final _TTF_SizeText = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Int32> w, Pointer<Int32> h)>('TTF_SizeText');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_SizeText(font, _textPointer, w, h);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC int SDLCALL TTF_SizeUTF8(TTF_Font *font, const char *text, int *w, int *h)
int TTF_SizeUTF8(Pointer<TTF_Font> font, String text, Pointer<Int32> w, Pointer<Int32> h) {
  final _TTF_SizeUTF8 = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Int32> w, Pointer<Int32> h)>('TTF_SizeUTF8');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_SizeUTF8(font, _textPointer, w, h);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC int SDLCALL TTF_SizeUNICODE(TTF_Font *font, const Uint16 *text, int *w, int *h)
int TTF_SizeUNICODE(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Int32> w, Pointer<Int32> h) {
  final _TTF_SizeUNICODE = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Int32> w, Pointer<Int32> h)>('TTF_SizeUNICODE');
  return _TTF_SizeUNICODE(font, text, w, h);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid(TTF_Font *font, const char *text, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderText_Solid(Pointer<TTF_Font> font, String text, Pointer<Void> fg) {
  final _TTF_RenderText_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg)>('TTF_RenderText_Solid');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Solid(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Solid(TTF_Font *font, const char *text, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderUTF8_Solid(Pointer<TTF_Font> font, String text, Pointer<Void> fg) {
  final _TTF_RenderUTF8_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg)>('TTF_RenderUTF8_Solid');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Solid(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Solid(TTF_Font *font, const Uint16 *text, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderUNICODE_Solid(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg) {
  final _TTF_RenderUNICODE_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg)>('TTF_RenderUNICODE_Solid');
  return _TTF_RenderUNICODE_Solid(font, text, fg);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Solid(TTF_Font *font, Uint16 ch, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderGlyph_Solid(Pointer<TTF_Font> font, int ch, Pointer<Void> fg) {
  final _TTF_RenderGlyph_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Uint16 ch, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, int ch, Pointer<Void> fg)>('TTF_RenderGlyph_Solid');
  return _TTF_RenderGlyph_Solid(font, ch, fg);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
Pointer<SDL_Surface> TTF_RenderText_Shaded(Pointer<TTF_Font> font, String text, Pointer<Void> fg, Pointer<Void> bg) {
  final _TTF_RenderText_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, Pointer<Void> bg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, Pointer<Void> bg)>('TTF_RenderText_Shaded');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Shaded(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Shaded(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
Pointer<SDL_Surface> TTF_RenderUTF8_Shaded(Pointer<TTF_Font> font, String text, Pointer<Void> fg, Pointer<Void> bg) {
  final _TTF_RenderUTF8_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, Pointer<Void> bg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, Pointer<Void> bg)>('TTF_RenderUTF8_Shaded');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Shaded(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Shaded(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg)
Pointer<SDL_Surface> TTF_RenderUNICODE_Shaded(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg, Pointer<Void> bg) {
  final _TTF_RenderUNICODE_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg, Pointer<Void> bg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg, Pointer<Void> bg)>('TTF_RenderUNICODE_Shaded');
  return _TTF_RenderUNICODE_Shaded(font, text, fg, bg);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Shaded(TTF_Font *font, Uint16 ch, SDL_Color fg, SDL_Color bg)
Pointer<SDL_Surface> TTF_RenderGlyph_Shaded(Pointer<TTF_Font> font, int ch, Pointer<Void> fg, Pointer<Void> bg) {
  final _TTF_RenderGlyph_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Uint16 ch, Pointer<Void> fg, Pointer<Void> bg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, int ch, Pointer<Void> fg, Pointer<Void> bg)>('TTF_RenderGlyph_Shaded');
  return _TTF_RenderGlyph_Shaded(font, ch, fg, bg);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended(TTF_Font *font, const char *text, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderText_Blended(Pointer<TTF_Font> font, String text, Pointer<Void> fg) {
  final _TTF_RenderText_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg)>('TTF_RenderText_Blended');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Blended(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Blended(TTF_Font *font, const char *text, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderUTF8_Blended(Pointer<TTF_Font> font, String text, Pointer<Void> fg) {
  final _TTF_RenderUTF8_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg)>('TTF_RenderUTF8_Blended');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Blended(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Blended(TTF_Font *font, const Uint16 *text, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderUNICODE_Blended(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg) {
  final _TTF_RenderUNICODE_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg)>('TTF_RenderUNICODE_Blended');
  return _TTF_RenderUNICODE_Blended(font, text, fg);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
Pointer<SDL_Surface> TTF_RenderText_Blended_Wrapped(Pointer<TTF_Font> font, String text, Pointer<Void> fg, int wrapLength) {
  final _TTF_RenderText_Blended_Wrapped = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, Uint32 wrapLength),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, int wrapLength)>('TTF_RenderText_Blended_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Blended_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
Pointer<SDL_Surface> TTF_RenderUTF8_Blended_Wrapped(Pointer<TTF_Font> font, String text, Pointer<Void> fg, int wrapLength) {
  final _TTF_RenderUTF8_Blended_Wrapped = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, Uint32 wrapLength),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Utf8> text, Pointer<Void> fg, int wrapLength)>('TTF_RenderUTF8_Blended_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Blended_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Blended_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, Uint32 wrapLength)
Pointer<SDL_Surface> TTF_RenderUNICODE_Blended_Wrapped(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg, int wrapLength) {
  final _TTF_RenderUNICODE_Blended_Wrapped = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg, Uint32 wrapLength),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Pointer<Uint16> text, Pointer<Void> fg, int wrapLength)>('TTF_RenderUNICODE_Blended_Wrapped');
  return _TTF_RenderUNICODE_Blended_Wrapped(font, text, fg, wrapLength);
}
// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Blended(TTF_Font *font, Uint16 ch, SDL_Color fg)
Pointer<SDL_Surface> TTF_RenderGlyph_Blended(Pointer<TTF_Font> font, int ch, Pointer<Void> fg) {
  final _TTF_RenderGlyph_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, Uint16 ch, Pointer<Void> fg),
      Pointer<SDL_Surface> Function(Pointer<TTF_Font> font, int ch, Pointer<Void> fg)>('TTF_RenderGlyph_Blended');
  return _TTF_RenderGlyph_Blended(font, ch, fg);
}
// extern DECLSPEC void SDLCALL TTF_CloseFont(TTF_Font *font)
void TTF_CloseFont(Pointer<TTF_Font> font) {
  final _TTF_CloseFont = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font> font),
      void Function(Pointer<TTF_Font> font)>('TTF_CloseFont');
  return _TTF_CloseFont(font);
}
// extern DECLSPEC void SDLCALL TTF_Quit(void)
void TTF_Quit() {
  final _TTF_Quit = _SDL2_ttf.lookupFunction<
      Void Function(),
      void Function()>('TTF_Quit');
  return _TTF_Quit();
}
// extern DECLSPEC int SDLCALL TTF_WasInit(void)
int TTF_WasInit() {
  final _TTF_WasInit = _SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_WasInit');
  return _TTF_WasInit();
}
// extern DECLSPEC int TTF_GetFontKerningSizeGlyphs(TTF_Font *font, Uint16 previous_ch, Uint16 ch)
int TTF_GetFontKerningSizeGlyphs(Pointer<TTF_Font> font, int previous_ch, int ch) {
  final _TTF_GetFontKerningSizeGlyphs = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font> font, Uint16 previous_ch, Uint16 ch),
      int Function(Pointer<TTF_Font> font, int previous_ch, int ch)>('TTF_GetFontKerningSizeGlyphs');
  return _TTF_GetFontKerningSizeGlyphs(font, previous_ch, ch);
}
