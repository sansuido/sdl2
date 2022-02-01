// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../dylib.dart' as dylib;
import 'struct_sdl.dart';
import 'struct_sdl_ttf.dart';

final DLL_SDL2_ttf = dylib.dylibOpen('SDL2_ttf');

/// This function gets the version of the dynamically linked SDL_ttf library.
/// it should NOT be used to fill a version structure, instead you should
/// use the SDL_TTF_VERSION() macro.
/// /
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL TTF_Linked_Version(void)
/// ```
Pointer<SDL_version>? TTF_Linked_Version() {
  final _TTF_Linked_Version = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('TTF_Linked_Version');
  return _TTF_Linked_Version();
}

/// This function stores the version of the FreeType2 library in use.
/// TTF_Init() should be called before calling this function.
/// /
/// ```c
/// extern DECLSPEC void SDLCALL TTF_GetFreeTypeVersion(int *major, int *minor, int *patch)
/// ```
void TTF_GetFreeTypeVersion(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch) {
  final _TTF_GetFreeTypeVersion = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch),
      void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch)>('TTF_GetFreeTypeVersion');
  return _TTF_GetFreeTypeVersion(major, minor, patch);
}

/// This function stores the version of the HarfBuzz library in use,
/// or 0 if HarfBuzz is not available.
/// /
/// ```c
/// extern DECLSPEC void SDLCALL TTF_GetHarfBuzzVersion(int *major, int *minor, int *patch)
/// ```
void TTF_GetHarfBuzzVersion(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch) {
  final _TTF_GetHarfBuzzVersion = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch),
      void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch)>('TTF_GetHarfBuzzVersion');
  return _TTF_GetHarfBuzzVersion(major, minor, patch);
}

/// This function tells the library whether UNICODE text is generally
/// byteswapped.  A UNICODE BOM character in a string will override
/// this setting for the remainder of that string.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL TTF_ByteSwappedUNICODE(SDL_bool swapped)
/// ```
void TTF_ByteSwappedUNICODE(int swapped) {
  final _TTF_ByteSwappedUNICODE = DLL_SDL2_ttf.lookupFunction<
      Void Function(Int32 swapped),
      void Function(int swapped)>('TTF_ByteSwappedUNICODE');
  return _TTF_ByteSwappedUNICODE(swapped);
}

/// Initialize the TTF engine - returns 0 if successful, -1 on error
/// ```c
/// extern DECLSPEC int SDLCALL TTF_Init(void)
/// ```
int TTF_Init() {
  final _TTF_Init = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_OpenFont = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_OpenFontIndex = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Int32 index),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int index)>('TTF_OpenFontIndex');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontIndex(_filePointer, ptsize, index);
  calloc.free(_filePointer);
  return _result;
}

/// Open a font file from a SDL_RWops: 'src' must be kept alive for the lifetime of the TTF_Font.
/// 'freesrc' can be set so that TTF_CloseFont closes the RWops */
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontRW(SDL_RWops *src, int freesrc, int ptsize)
/// ```
Pointer<TTF_Font>? TTF_OpenFontRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize) {
  final _TTF_OpenFontRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize)>('TTF_OpenFontRW');
  return _TTF_OpenFontRW(src, freesrc, ptsize);
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexRW(SDL_RWops *src, int freesrc, int ptsize, long index)
/// ```
Pointer<TTF_Font>? TTF_OpenFontIndexRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index) {
  final _TTF_OpenFontIndexRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Int32 index),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index)>('TTF_OpenFontIndexRW');
  return _TTF_OpenFontIndexRW(src, freesrc, ptsize, index);
}

/// Opens a font using the given horizontal and vertical target resolutions (in DPI).
/// DPI scaling only applies to scalable fonts (e.g. TrueType). */
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontDPI(const char *file, int ptsize, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TTF_Font>? TTF_OpenFontDPI(String file, int ptsize, int hdpi, int vdpi) {
  final _TTF_OpenFontDPI = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int hdpi, int vdpi)>('TTF_OpenFontDPI');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontDPI(_filePointer, ptsize, hdpi, vdpi);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexDPI(const char *file, int ptsize, long index, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TTF_Font>? TTF_OpenFontIndexDPI(String file, int ptsize, int index, int hdpi, int vdpi) {
  final _TTF_OpenFontIndexDPI = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Int32 index, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int index, int hdpi, int vdpi)>('TTF_OpenFontIndexDPI');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontIndexDPI(_filePointer, ptsize, index, hdpi, vdpi);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontDPIRW(SDL_RWops *src, int freesrc, int ptsize, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TTF_Font>? TTF_OpenFontDPIRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int hdpi, int vdpi) {
  final _TTF_OpenFontDPIRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int hdpi, int vdpi)>('TTF_OpenFontDPIRW');
  return _TTF_OpenFontDPIRW(src, freesrc, ptsize, hdpi, vdpi);
}

/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexDPIRW(SDL_RWops *src, int freesrc, int ptsize, long index, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TTF_Font>? TTF_OpenFontIndexDPIRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index, int hdpi, int vdpi) {
  final _TTF_OpenFontIndexDPIRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Int32 index, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index, int hdpi, int vdpi)>('TTF_OpenFontIndexDPIRW');
  return _TTF_OpenFontIndexDPIRW(src, freesrc, ptsize, index, hdpi, vdpi);
}

/// Set font size dynamically
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetFontSize(TTF_Font *font, int ptsize)
/// ```
int TTF_SetFontSize(Pointer<TTF_Font>? font, int ptsize) {
  final _TTF_SetFontSize = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 ptsize),
      int Function(Pointer<TTF_Font>? font, int ptsize)>('TTF_SetFontSize');
  return _TTF_SetFontSize(font, ptsize);
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetFontSizeDPI(TTF_Font *font, int ptsize, unsigned int hdpi, unsigned int vdpi)
/// ```
int TTF_SetFontSizeDPI(Pointer<TTF_Font>? font, int ptsize, int hdpi, int vdpi) {
  final _TTF_SetFontSizeDPI = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      int Function(Pointer<TTF_Font>? font, int ptsize, int hdpi, int vdpi)>('TTF_SetFontSizeDPI');
  return _TTF_SetFontSizeDPI(font, ptsize, hdpi, vdpi);
}

/// Set and retrieve the font style
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontStyle(const TTF_Font *font)
/// ```
int TTF_GetFontStyle(Pointer<TTF_Font>? font) {
  final _TTF_GetFontStyle = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontStyle');
  return _TTF_GetFontStyle(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontStyle(TTF_Font *font, int style)
/// ```
void TTF_SetFontStyle(Pointer<TTF_Font>? font, int style) {
  final _TTF_SetFontStyle = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 style),
      void Function(Pointer<TTF_Font>? font, int style)>('TTF_SetFontStyle');
  return _TTF_SetFontStyle(font, style);
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontOutline(const TTF_Font *font)
/// ```
int TTF_GetFontOutline(Pointer<TTF_Font>? font) {
  final _TTF_GetFontOutline = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontOutline');
  return _TTF_GetFontOutline(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontOutline(TTF_Font *font, int outline)
/// ```
void TTF_SetFontOutline(Pointer<TTF_Font>? font, int outline) {
  final _TTF_SetFontOutline = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 outline),
      void Function(Pointer<TTF_Font>? font, int outline)>('TTF_SetFontOutline');
  return _TTF_SetFontOutline(font, outline);
}

/// Set and retrieve FreeType hinter settings
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontHinting(const TTF_Font *font)
/// ```
int TTF_GetFontHinting(Pointer<TTF_Font>? font) {
  final _TTF_GetFontHinting = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontHinting');
  return _TTF_GetFontHinting(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontHinting(TTF_Font *font, int hinting)
/// ```
void TTF_SetFontHinting(Pointer<TTF_Font>? font, int hinting) {
  final _TTF_SetFontHinting = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 hinting),
      void Function(Pointer<TTF_Font>? font, int hinting)>('TTF_SetFontHinting');
  return _TTF_SetFontHinting(font, hinting);
}

/// Get the total height of the font - usually equal to point size
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontHeight(const TTF_Font *font)
/// ```
int TTF_FontHeight(Pointer<TTF_Font>? font) {
  final _TTF_FontHeight = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_FontAscent = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_FontDescent = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontDescent');
  return _TTF_FontDescent(font);
}

/// Get the recommended spacing between lines of text for this font
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontLineSkip(const TTF_Font *font)
/// ```
int TTF_FontLineSkip(Pointer<TTF_Font>? font) {
  final _TTF_FontLineSkip = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontLineSkip');
  return _TTF_FontLineSkip(font);
}

/// Get/Set whether or not kerning is allowed for this font
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontKerning(const TTF_Font *font)
/// ```
int TTF_GetFontKerning(Pointer<TTF_Font>? font) {
  final _TTF_GetFontKerning = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontKerning');
  return _TTF_GetFontKerning(font);
}

/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontKerning(TTF_Font *font, int allowed)
/// ```
void TTF_SetFontKerning(Pointer<TTF_Font>? font, int allowed) {
  final _TTF_SetFontKerning = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 allowed),
      void Function(Pointer<TTF_Font>? font, int allowed)>('TTF_SetFontKerning');
  return _TTF_SetFontKerning(font, allowed);
}

/// Get the number of faces of the font
/// ```c
/// extern DECLSPEC long SDLCALL TTF_FontFaces(const TTF_Font *font)
/// ```
int TTF_FontFaces(Pointer<TTF_Font>? font) {
  final _TTF_FontFaces = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontFaces');
  return _TTF_FontFaces(font);
}

/// Get the font face attributes, if any
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontFaceIsFixedWidth(const TTF_Font *font)
/// ```
int TTF_FontFaceIsFixedWidth(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceIsFixedWidth = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontFaceIsFixedWidth');
  return _TTF_FontFaceIsFixedWidth(font);
}

/// ```c
/// extern DECLSPEC char * SDLCALL TTF_FontFaceFamilyName(const TTF_Font *font)
/// ```
Pointer<Int8>? TTF_FontFaceFamilyName(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceFamilyName = DLL_SDL2_ttf.lookupFunction<
      Pointer<Int8>? Function(Pointer<TTF_Font>? font),
      Pointer<Int8>? Function(Pointer<TTF_Font>? font)>('TTF_FontFaceFamilyName');
  return _TTF_FontFaceFamilyName(font);
}

/// ```c
/// extern DECLSPEC char * SDLCALL TTF_FontFaceStyleName(const TTF_Font *font)
/// ```
Pointer<Int8>? TTF_FontFaceStyleName(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceStyleName = DLL_SDL2_ttf.lookupFunction<
      Pointer<Int8>? Function(Pointer<TTF_Font>? font),
      Pointer<Int8>? Function(Pointer<TTF_Font>? font)>('TTF_FontFaceStyleName');
  return _TTF_FontFaceStyleName(font);
}

/// Check wether a glyph is provided by the font or not
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphIsProvided(TTF_Font *font, Uint16 ch)
/// ```
int TTF_GlyphIsProvided(Pointer<TTF_Font>? font, int ch) {
  final _TTF_GlyphIsProvided = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 ch),
      int Function(Pointer<TTF_Font>? font, int ch)>('TTF_GlyphIsProvided');
  return _TTF_GlyphIsProvided(font, ch);
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphIsProvided32(TTF_Font *font, Uint32 ch)
/// ```
int TTF_GlyphIsProvided32(Pointer<TTF_Font>? font, int ch) {
  final _TTF_GlyphIsProvided32 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint32 ch),
      int Function(Pointer<TTF_Font>? font, int ch)>('TTF_GlyphIsProvided32');
  return _TTF_GlyphIsProvided32(font, ch);
}

/// Get the metrics (dimensions) of a glyph
/// To understand what these metrics mean, here is a useful link:
/// http://freetype.sourceforge.net/freetype2/docs/tutorial/step2.html
/// /
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphMetrics(TTF_Font *font, Uint16 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance)
/// ```
int TTF_GlyphMetrics(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance) {
  final _TTF_GlyphMetrics = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance),
      int Function(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance)>('TTF_GlyphMetrics');
  return _TTF_GlyphMetrics(font, ch, minx, maxx, miny, maxy, advance);
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphMetrics32(TTF_Font *font, Uint32 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance)
/// ```
int TTF_GlyphMetrics32(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance) {
  final _TTF_GlyphMetrics32 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint32 ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance),
      int Function(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance)>('TTF_GlyphMetrics32');
  return _TTF_GlyphMetrics32(font, ch, minx, maxx, miny, maxy, advance);
}

/// Get the dimensions of a rendered string of text
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeText(TTF_Font *font, const char *text, int *w, int *h)
/// ```
int TTF_SizeText(Pointer<TTF_Font>? font, String text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeText = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_SizeUTF8 = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_SizeUNICODE = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeUNICODE');
  return _TTF_SizeUNICODE(font, text, w, h);
}

/// Get the measurement string of text without rendering
/// e.g. the number of characters that can be rendered before reaching 'measure_width'
/// 
/// in:
/// measure_width - in pixels to measure this text
/// out:
/// count  - number of characters that can be rendered
/// extent - latest calculated width
/// 
/// ```c
/// extern DECLSPEC int SDLCALL TTF_MeasureText(TTF_Font *font, const char *text, int measure_width, int *extent, int *count)
/// ```
int TTF_MeasureText(Pointer<TTF_Font>? font, String text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count) {
  final _TTF_MeasureText = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Int32 measure_width, Pointer<Int32>? extent, Pointer<Int32>? count),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count)>('TTF_MeasureText');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_MeasureText(font, _textPointer, measure_width, extent, count);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_MeasureUTF8(TTF_Font *font, const char *text, int measure_width, int *extent, int *count)
/// ```
int TTF_MeasureUTF8(Pointer<TTF_Font>? font, String text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count) {
  final _TTF_MeasureUTF8 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Int32 measure_width, Pointer<Int32>? extent, Pointer<Int32>? count),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count)>('TTF_MeasureUTF8');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_MeasureUTF8(font, _textPointer, measure_width, extent, count);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL TTF_MeasureUNICODE(TTF_Font *font, const Uint16 *text, int measure_width, int *extent, int *count)
/// ```
int TTF_MeasureUNICODE(Pointer<TTF_Font>? font, Pointer<Uint16>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count) {
  final _TTF_MeasureUNICODE = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Int32 measure_width, Pointer<Int32>? extent, Pointer<Int32>? count),
      int Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count)>('TTF_MeasureUNICODE');
  return _TTF_MeasureUNICODE(font, text, measure_width, extent, count);
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
  final _TTF_RenderText_Solid = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUTF8_Solid = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUNICODE_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg)>('TTF_RenderUNICODE_Solid');
  return _TTF_RenderUNICODE_Solid(font, text, fg);
}

/// Create an 8-bit palettized surface and render the given text at
/// fast quality with the given font and color.  The 0 pixel is the
/// colorkey, giving a transparent background, and the 1 pixel is set
/// to the text color.
/// Text is wrapped to multiple lines on line endings and on word boundaries
/// if it extends beyond wrapLength in pixels.
/// If wrapLength is 0, only wrap on new lines.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Solid_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderText_Solid_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderText_Solid_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Solid_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Solid_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderUTF8_Solid_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUTF8_Solid_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUTF8_Solid_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Solid_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Solid_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE_Solid_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUNICODE_Solid_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUNICODE_Solid_Wrapped');
  return _TTF_RenderUNICODE_Solid_Wrapped(font, text, fg, wrapLength);
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
  final _TTF_RenderGlyph_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph_Solid');
  return _TTF_RenderGlyph_Solid(font, ch, fg);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_Solid(TTF_Font *font, Uint32 ch, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderGlyph32_Solid(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph32_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph32_Solid');
  return _TTF_RenderGlyph32_Solid(font, ch, fg);
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
  final _TTF_RenderText_Shaded = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUTF8_Shaded = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUNICODE_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUNICODE_Shaded');
  return _TTF_RenderUNICODE_Shaded(font, text, fg, bg);
}

/// Create an 8-bit palettized surface and render the given text at
/// high quality with the given font and colors.  The 0 pixel is background,
/// while other pixels have varying degrees of the foreground color.
/// Text is wrapped to multiple lines on line endings and on word boundaries
/// if it extends beyond wrapLength in pixels.
/// If wrapLength is 0, only wrap on new lines.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Shaded_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderText_Shaded_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderText_Shaded_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Shaded_Wrapped(font, _textPointer, fg, bg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Shaded_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderUTF8_Shaded_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderUTF8_Shaded_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderUTF8_Shaded_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Shaded_Wrapped(font, _textPointer, fg, bg, wrapLength);
  calloc.free(_textPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Shaded_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderUNICODE_Shaded_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderUNICODE_Shaded_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderUNICODE_Shaded_Wrapped');
  return _TTF_RenderUNICODE_Shaded_Wrapped(font, text, fg, bg, wrapLength);
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
  final _TTF_RenderGlyph_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph_Shaded');
  return _TTF_RenderGlyph_Shaded(font, ch, fg, bg);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_Shaded(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SDL_Surface>? TTF_RenderGlyph32_Shaded(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderGlyph32_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph32_Shaded');
  return _TTF_RenderGlyph32_Shaded(font, ch, fg, bg);
}

/// Create a 32-bit ARGB surface and render the given text at high quality,
/// using alpha blending to dither the font with the given color.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Blended(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderText_Blended = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUTF8_Blended = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUNICODE_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg)>('TTF_RenderUNICODE_Blended');
  return _TTF_RenderUNICODE_Blended(font, text, fg);
}

/// Create a 32-bit ARGB surface and render the given text at high quality,
/// using alpha blending to dither the font with the given color.
/// Text is wrapped to multiple lines on line endings and on word boundaries
/// if it extends beyond wrapLength in pixels.
/// If wrapLength is 0, only wrap on new lines.
/// This function returns the new surface, or NULL if there was an error.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SDL_Surface>? TTF_RenderText_Blended_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderText_Blended_Wrapped = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUTF8_Blended_Wrapped = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderUNICODE_Blended_Wrapped = DLL_SDL2_ttf.lookupFunction<
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
  final _TTF_RenderGlyph_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph_Blended');
  return _TTF_RenderGlyph_Blended(font, ch, fg);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_Blended(TTF_Font *font, Uint32 ch, SDL_Color fg)
/// ```
Pointer<SDL_Surface>? TTF_RenderGlyph32_Blended(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph32_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph32_Blended');
  return _TTF_RenderGlyph32_Blended(font, ch, fg);
}

/// Set Direction and Script to be used for text shaping.
/// - direction is of type hb_direction_t
/// - script is of type hb_script_t
/// 
/// This functions returns always 0, or -1 if SDL_ttf is not compiled with HarfBuzz
/// 
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetDirection(int direction)
/// ```
int TTF_SetDirection(int direction) {
  final _TTF_SetDirection = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Int32 direction),
      int Function(int direction)>('TTF_SetDirection');
  return _TTF_SetDirection(direction);
}

/// hb_direction_t
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetScript(int script)
/// ```
int TTF_SetScript(int script) {
  final _TTF_SetScript = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Int32 script),
      int Function(int script)>('TTF_SetScript');
  return _TTF_SetScript(script);
}

/// Close an opened font file
/// ```c
/// extern DECLSPEC void SDLCALL TTF_CloseFont(TTF_Font *font)
/// ```
void TTF_CloseFont(Pointer<TTF_Font>? font) {
  final _TTF_CloseFont = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font),
      void Function(Pointer<TTF_Font>? font)>('TTF_CloseFont');
  return _TTF_CloseFont(font);
}

/// De-initialize the TTF engine
/// ```c
/// extern DECLSPEC void SDLCALL TTF_Quit(void)
/// ```
void TTF_Quit() {
  final _TTF_Quit = DLL_SDL2_ttf.lookupFunction<
      Void Function(),
      void Function()>('TTF_Quit');
  return _TTF_Quit();
}

/// Check if the TTF engine is initialized
/// ```c
/// extern DECLSPEC int SDLCALL TTF_WasInit(void)
/// ```
int TTF_WasInit() {
  final _TTF_WasInit = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_WasInit');
  return _TTF_WasInit();
}

/// Get the kerning size of two glyphs
/// ```c
/// extern DECLSPEC int TTF_GetFontKerningSizeGlyphs(TTF_Font *font, Uint16 previous_ch, Uint16 ch)
/// ```
int TTF_GetFontKerningSizeGlyphs(Pointer<TTF_Font>? font, int previous_ch, int ch) {
  final _TTF_GetFontKerningSizeGlyphs = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 previous_ch, Uint16 ch),
      int Function(Pointer<TTF_Font>? font, int previous_ch, int ch)>('TTF_GetFontKerningSizeGlyphs');
  return _TTF_GetFontKerningSizeGlyphs(font, previous_ch, ch);
}

/// ```c
/// extern DECLSPEC int TTF_GetFontKerningSizeGlyphs32(TTF_Font *font, Uint32 previous_ch, Uint32 ch)
/// ```
int TTF_GetFontKerningSizeGlyphs32(Pointer<TTF_Font>? font, int previous_ch, int ch) {
  final _TTF_GetFontKerningSizeGlyphs32 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint32 previous_ch, Uint32 ch),
      int Function(Pointer<TTF_Font>? font, int previous_ch, int ch)>('TTF_GetFontKerningSizeGlyphs32');
  return _TTF_GetFontKerningSizeGlyphs32(font, previous_ch, ch);
}

/// Enable Signed Distance Field rendering (with the Blended APIs)
/// ```c
/// extern DECLSPEC int TTF_SetFontSDF(TTF_Font *font, SDL_bool on_off)
/// ```
int TTF_SetFontSDF(Pointer<TTF_Font>? font, int on_off) {
  final _TTF_SetFontSDF = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 on_off),
      int Function(Pointer<TTF_Font>? font, int on_off)>('TTF_SetFontSDF');
  return _TTF_SetFontSDF(font, on_off);
}

/// ```c
/// extern DECLSPEC SDL_bool TTF_GetFontSDF(const TTF_Font *font)
/// ```
int TTF_GetFontSDF(Pointer<TTF_Font>? font) {
  final _TTF_GetFontSDF = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontSDF');
  return _TTF_GetFontSDF(font);
}

