// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';
import 'struct_sdl2_ttf.dart';

final _SDL2_ttf = DynamicLibrary.open(Platform.isWindows ? 'SDL2_ttf.dll' : 'libSDL2_ttf.so');

/// This function gets the version of the dynamically linked SDL_ttf library.
/// it should NOT be used to fill a version structure, instead you should
/// use the SDL_TTF_VERSION() macro.
/// /
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL TTF_Linked_Version(void)
/// ```
Pointer<SDL_version>? TTF_Linked_Version() {
  final _TTF_Linked_Version = _SDL2_ttf.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('TTF_Linked_Version');
  return _TTF_Linked_Version();
}

/// This function tells the library whether UNICODE text is generally
/// byteswapped.  A UNICODE BOM character in a string will override
/// this setting for the remainder of that string.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL TTF_ByteSwappedUNICODE(int swapped)
/// ```
void TTF_ByteSwappedUNICODE(int swapped) {
  final _TTF_ByteSwappedUNICODE = _SDL2_ttf.lookupFunction<
      Void Function(Int32 swapped),
      void Function(int swapped)>('TTF_ByteSwappedUNICODE');
  return _TTF_ByteSwappedUNICODE(swapped);
}

/// Initialize the TTF engine - returns 0 if successful, -1 on error
/// ```c
/// extern DECLSPEC int SDLCALL TTF_Init(void)
/// ```
int TTF_Init() {
  final _TTF_Init = _SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_Init');
  return _TTF_Init();
}

/// Open a font file and create a font of the specified point size.
/// Some .fon fonts will have several sizes embedded in the file, so the
/// point size becomes the index of choosing which size.  If the value
/// is too high, the last indexed size will be the default. */
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFont(const char *file, int ptsize)
/// ```
Pointer<TTF_Font>? TTF_OpenFont(String file, int ptsize) {
  final _TTF_OpenFont = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize)>('TTF_OpenFont');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFont(_filePointer, ptsize);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndex(const char *file, int ptsize, long index)
/// ```
Pointer<TTF_Font>? TTF_OpenFontIndex(String file, int ptsize, int index) {
  final _TTF_OpenFontIndex = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Int32 index),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int index)>('TTF_OpenFontIndex');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontIndex(_filePointer, ptsize, index);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontRW(SDL_RWops *src, int freesrc, int ptsize)
/// ```
Pointer<TTF_Font>? TTF_OpenFontRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize) {
  final _TTF_OpenFontRW = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize)>('TTF_OpenFontRW');
  return _TTF_OpenFontRW(src, freesrc, ptsize);
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexRW(SDL_RWops *src, int freesrc, int ptsize, long index)
/// ```
Pointer<TTF_Font>? TTF_OpenFontIndexRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index) {
  final _TTF_OpenFontIndexRW = _SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Int32 index),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index)>('TTF_OpenFontIndexRW');
  return _TTF_OpenFontIndexRW(src, freesrc, ptsize, index);
}

/// Set and retrieve the font style
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontStyle(const TTF_Font *font)
/// ```
int TTF_GetFontStyle(Pointer<TTF_Font>? font) {
  final _TTF_GetFontStyle = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontStyle');
  return _TTF_GetFontStyle(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontStyle(TTF_Font *font, int style)
/// ```
void TTF_SetFontStyle(Pointer<TTF_Font>? font, int style) {
  final _TTF_SetFontStyle = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 style),
      void Function(Pointer<TTF_Font>? font, int style)>('TTF_SetFontStyle');
  return _TTF_SetFontStyle(font, style);
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontOutline(const TTF_Font *font)
/// ```
int TTF_GetFontOutline(Pointer<TTF_Font>? font) {
  final _TTF_GetFontOutline = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontOutline');
  return _TTF_GetFontOutline(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontOutline(TTF_Font *font, int outline)
/// ```
void TTF_SetFontOutline(Pointer<TTF_Font>? font, int outline) {
  final _TTF_SetFontOutline = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 outline),
      void Function(Pointer<TTF_Font>? font, int outline)>('TTF_SetFontOutline');
  return _TTF_SetFontOutline(font, outline);
}

/// Set and retrieve FreeType hinter settings
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontHinting(const TTF_Font *font)
/// ```
int TTF_GetFontHinting(Pointer<TTF_Font>? font) {
  final _TTF_GetFontHinting = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontHinting');
  return _TTF_GetFontHinting(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontHinting(TTF_Font *font, int hinting)
/// ```
void TTF_SetFontHinting(Pointer<TTF_Font>? font, int hinting) {
  final _TTF_SetFontHinting = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 hinting),
      void Function(Pointer<TTF_Font>? font, int hinting)>('TTF_SetFontHinting');
  return _TTF_SetFontHinting(font, hinting);
}

/// Get the total height of the font - usually equal to point size
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontHeight(const TTF_Font *font)
/// ```
int TTF_FontHeight(Pointer<TTF_Font>? font) {
  final _TTF_FontHeight = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontHeight');
  return _TTF_FontHeight(font);
}

/// Get the offset from the baseline to the top of the font
/// This is a positive value, relative to the baseline.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontAscent(const TTF_Font *font)
/// ```
int TTF_FontAscent(Pointer<TTF_Font>? font) {
  final _TTF_FontAscent = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontAscent');
  return _TTF_FontAscent(font);
}

/// Get the offset from the baseline to the bottom of the font
/// This is a negative value, relative to the baseline.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontDescent(const TTF_Font *font)
/// ```
int TTF_FontDescent(Pointer<TTF_Font>? font) {
  final _TTF_FontDescent = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontDescent');
  return _TTF_FontDescent(font);
}

/// Get the recommended spacing between lines of text for this font
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontLineSkip(const TTF_Font *font)
/// ```
int TTF_FontLineSkip(Pointer<TTF_Font>? font) {
  final _TTF_FontLineSkip = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontLineSkip');
  return _TTF_FontLineSkip(font);
}

/// Get/Set whether or not kerning is allowed for this font
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontKerning(const TTF_Font *font)
/// ```
int TTF_GetFontKerning(Pointer<TTF_Font>? font) {
  final _TTF_GetFontKerning = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontKerning');
  return _TTF_GetFontKerning(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontKerning(TTF_Font *font, int allowed)
/// ```
void TTF_SetFontKerning(Pointer<TTF_Font>? font, int allowed) {
  final _TTF_SetFontKerning = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 allowed),
      void Function(Pointer<TTF_Font>? font, int allowed)>('TTF_SetFontKerning');
  return _TTF_SetFontKerning(font, allowed);
}

/// Get the number of faces of the font
/// ```c
/// extern DECLSPEC long SDLCALL TTF_FontFaces(const TTF_Font *font)
/// ```
int TTF_FontFaces(Pointer<TTF_Font>? font) {
  final _TTF_FontFaces = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontFaces');
  return _TTF_FontFaces(font);
}

/// Get the font face attributes, if any
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontFaceIsFixedWidth(const TTF_Font *font)
/// ```
int TTF_FontFaceIsFixedWidth(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceIsFixedWidth = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontFaceIsFixedWidth');
  return _TTF_FontFaceIsFixedWidth(font);
}

/// ```c
/// extern DECLSPEC char * SDLCALL TTF_FontFaceFamilyName(const TTF_Font *font)
/// ```
Pointer<Int8>? TTF_FontFaceFamilyName(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceFamilyName = _SDL2_ttf.lookupFunction<
      Pointer<Int8>? Function(Pointer<TTF_Font>? font),
      Pointer<Int8>? Function(Pointer<TTF_Font>? font)>('TTF_FontFaceFamilyName');
  return _TTF_FontFaceFamilyName(font);
}

/// ```c
/// extern DECLSPEC char * SDLCALL TTF_FontFaceStyleName(const TTF_Font *font)
/// ```
Pointer<Int8>? TTF_FontFaceStyleName(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceStyleName = _SDL2_ttf.lookupFunction<
      Pointer<Int8>? Function(Pointer<TTF_Font>? font),
      Pointer<Int8>? Function(Pointer<TTF_Font>? font)>('TTF_FontFaceStyleName');
  return _TTF_FontFaceStyleName(font);
}

/// Check wether a glyph is provided by the font or not
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphIsProvided(const TTF_Font *font, Uint16 ch)
/// ```
int TTF_GlyphIsProvided(Pointer<TTF_Font>? font, int ch) {
  final _TTF_GlyphIsProvided = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 ch),
      int Function(Pointer<TTF_Font>? font, int ch)>('TTF_GlyphIsProvided');
  return _TTF_GlyphIsProvided(font, ch);
}

/// Get the metrics (dimensions) of a glyph
/// To understand what these metrics mean, here is a useful link:
/// http://freetype.sourceforge.net/freetype2/docs/tutorial/step2.html
/// /
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphMetrics(TTF_Font *font, Uint16 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance)
/// ```
int TTF_GlyphMetrics(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance) {
  final _TTF_GlyphMetrics = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance),
      int Function(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance)>('TTF_GlyphMetrics');
  return _TTF_GlyphMetrics(font, ch, minx, maxx, miny, maxy, advance);
}

/// Get the dimensions of a rendered string of text
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeText(TTF_Font *font, const char *text, int *w, int *h)
/// ```
int TTF_SizeText(Pointer<TTF_Font>? font, String text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeText = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeText');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_SizeText(font, _textPointer, w, h);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeUTF8(TTF_Font *font, const char *text, int *w, int *h)
/// ```
int TTF_SizeUTF8(Pointer<TTF_Font>? font, String text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeUTF8 = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeUTF8');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_SizeUTF8(font, _textPointer, w, h);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeUNICODE(TTF_Font *font, const Uint16 *text, int *w, int *h)
/// ```
int TTF_SizeUNICODE(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeUNICODE = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeUNICODE');
  return _TTF_SizeUNICODE(font, text, w, h);
}

/// Create an 8-bit palettized surface and render the given text at
/// fast quality with the given font and color.  The 0 pixel is the
/// colorkey, giving a transparent background, and the 1 pixel is set
/// to the text color.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Solid(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderText_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderText_Solid');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Solid(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Solid(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderUTF8_Solid(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderUTF8_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderUTF8_Solid');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Solid(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Solid(TTF_Font *font, const Uint16 *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE_Solid(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg) {
  final _TTF_RenderUNICODE_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg)>('TTF_RenderUNICODE_Solid');
  return _TTF_RenderUNICODE_Solid(font, text, fg);
}

/// Create an 8-bit palettized surface and render the given glyph at
/// fast quality with the given font and color.  The 0 pixel is the
/// colorkey, giving a transparent background, and the 1 pixel is set
/// to the text color.  The glyph is rendered without any padding or
/// centering in the X direction, and aligned normally in the Y direction.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Solid(TTF_Font *font, Uint16 ch, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderGlyph_Solid(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph_Solid = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph_Solid');
  return _TTF_RenderGlyph_Solid(font, ch, fg);
}

/// Create an 8-bit palettized surface and render the given text at
/// high quality with the given font and colors.  The 0 pixel is background,
/// while other pixels have varying degrees of the foreground color.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Shaded(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderText_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderText_Shaded');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Shaded(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Shaded(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SDL_Surface>? TTF_RenderUTF8_Shaded(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderUTF8_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUTF8_Shaded');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Shaded(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Shaded(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE_Shaded(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderUNICODE_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUNICODE_Shaded');
  return _TTF_RenderUNICODE_Shaded(font, text, fg, bg);
}

/// Create an 8-bit palettized surface and render the given glyph at
/// high quality with the given font and colors.  The 0 pixel is background,
/// while other pixels have varying degrees of the foreground color.
/// The glyph is rendered without any padding or centering in the X
/// direction, and aligned normally in the Y direction.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Shaded(TTF_Font *font, Uint16 ch, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SDL_Surface>? TTF_RenderGlyph_Shaded(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderGlyph_Shaded = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph_Shaded');
  return _TTF_RenderGlyph_Shaded(font, ch, fg, bg);
}

/// Create a 32-bit ARGB surface and render the given text at high quality,
/// using alpha blending to dither the font with the given color.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Blended(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderText_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderText_Blended');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Blended(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Blended(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderUTF8_Blended(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderUTF8_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderUTF8_Blended');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Blended(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Blended(TTF_Font *font, const Uint16 *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE_Blended(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg) {
  final _TTF_RenderUNICODE_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg)>('TTF_RenderUNICODE_Blended');
  return _TTF_RenderUNICODE_Blended(font, text, fg);
}

/// Create a 32-bit ARGB surface and render the given text at high quality,
/// using alpha blending to dither the font with the given color.
/// Text is wrapped to multiple lines on line endings and on word boundaries
/// if it extends beyond wrapLength in pixels.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Blended_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderText_Blended_Wrapped = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderText_Blended_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Blended_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderUTF8_Blended_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUTF8_Blended_Wrapped = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUTF8_Blended_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Blended_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Blended_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE_Blended_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUNICODE_Blended_Wrapped = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUNICODE_Blended_Wrapped');
  return _TTF_RenderUNICODE_Blended_Wrapped(font, text, fg, wrapLength);
}

/// Create a 32-bit ARGB surface and render the given glyph at high quality,
/// using alpha blending to dither the font with the given color.
/// The glyph is rendered without any padding or centering in the X
/// direction, and aligned normally in the Y direction.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Blended(TTF_Font *font, Uint16 ch, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderGlyph_Blended(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph_Blended = _SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph_Blended');
  return _TTF_RenderGlyph_Blended(font, ch, fg);
}

/// Close an opened font file
/// ```c
/// extern DECLSPEC void SDLCALL TTF_CloseFont(TTF_Font *font)
/// ```
void TTF_CloseFont(Pointer<TTF_Font>? font) {
  final _TTF_CloseFont = _SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font),
      void Function(Pointer<TTF_Font>? font)>('TTF_CloseFont');
  return _TTF_CloseFont(font);
}

/// De-initialize the TTF engine
/// ```c
/// extern DECLSPEC void SDLCALL TTF_Quit(void)
/// ```
void TTF_Quit() {
  final _TTF_Quit = _SDL2_ttf.lookupFunction<
      Void Function(),
      void Function()>('TTF_Quit');
  return _TTF_Quit();
}

/// Check if the TTF engine is initialized
/// ```c
/// extern DECLSPEC int SDLCALL TTF_WasInit(void)
/// ```
int TTF_WasInit() {
  final _TTF_WasInit = _SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_WasInit');
  return _TTF_WasInit();
}

/// Get the kerning size of two glyphs
/// ```c
/// extern DECLSPEC int TTF_GetFontKerningSizeGlyphs(TTF_Font *font, Uint16 previous_ch, Uint16 ch)
/// ```
int TTF_GetFontKerningSizeGlyphs(Pointer<TTF_Font>? font, int previous_ch, int ch) {
  final _TTF_GetFontKerningSizeGlyphs = _SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 previous_ch, Uint16 ch),
      int Function(Pointer<TTF_Font>? font, int previous_ch, int ch)>('TTF_GetFontKerningSizeGlyphs');
  return _TTF_GetFontKerningSizeGlyphs(font, previous_ch, ch);
}

