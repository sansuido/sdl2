// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../dylib.dart' as dylib;
import 'struct_sdl.dart';
import 'struct_sdl_ttf.dart';

final libSdl2Ttf = dylib.dylibOpen('SDL2_ttf');

///
/// Query the version of SDL_ttf that the program is linked against.
///
/// This function gets the version of the dynamically linked SDL_ttf library.
/// This is separate from the SDL_TTF_VERSION() macro, which tells you what
/// version of the SDL_ttf headers you compiled against.
///
/// This returns static internal data; do not free or modify it!
///
/// \returns a pointer to the version information.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL TTF_Linked_Version(void)
/// ```
Pointer<SdlVersion> ttfLinkedVersion() {
  final ttfLinkedVersionLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlVersion> Function(),
      Pointer<SdlVersion> Function()>('TTF_Linked_Version');
  return ttfLinkedVersionLookupFunction();
}

///
/// Query the version of the FreeType library in use.
///
/// TTF_Init() should be called before calling this function.
///
/// \param major to be filled in with the major version number. Can be NULL.
/// \param minor to be filled in with the minor version number. Can be NULL.
/// \param patch to be filled in with the param version number. Can be NULL.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_Init
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_GetFreeTypeVersion(int *major, int *minor, int *patch)
/// ```
void ttfGetFreeTypeVersion(
    Pointer<Int32> major, Pointer<Int32> minor, Pointer<Int32> patch) {
  final ttfGetFreeTypeVersionLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(
          Pointer<Int32> major, Pointer<Int32> minor, Pointer<Int32> patch),
      void Function(Pointer<Int32> major, Pointer<Int32> minor,
          Pointer<Int32> patch)>('TTF_GetFreeTypeVersion');
  return ttfGetFreeTypeVersionLookupFunction(major, minor, patch);
}

///
/// Query the version of the HarfBuzz library in use.
///
/// If HarfBuzz is not available, the version reported is 0.0.0.
///
/// \param major to be filled in with the major version number. Can be NULL.
/// \param minor to be filled in with the minor version number. Can be NULL.
/// \param patch to be filled in with the param version number. Can be NULL.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_GetHarfBuzzVersion(int *major, int *minor, int *patch)
/// ```
void ttfGetHarfBuzzVersion(
    Pointer<Int32> major, Pointer<Int32> minor, Pointer<Int32> patch) {
  final ttfGetHarfBuzzVersionLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(
          Pointer<Int32> major, Pointer<Int32> minor, Pointer<Int32> patch),
      void Function(Pointer<Int32> major, Pointer<Int32> minor,
          Pointer<Int32> patch)>('TTF_GetHarfBuzzVersion');
  return ttfGetHarfBuzzVersionLookupFunction(major, minor, patch);
}

///
/// Tell SDL_ttf whether UNICODE text is generally byteswapped.
///
/// A UNICODE BOM character in a string will override this setting for the
/// remainder of that string.
///
/// \param swapped boolean to indicate whether text is byteswapped
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_ByteSwappedUNICODE(SDL_bool swapped)
/// ```
void ttfByteSwappedUnicode(bool swapped) {
  final ttfByteSwappedUnicodeLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Int32 swapped),
      void Function(int swapped)>('TTF_ByteSwappedUNICODE');
  return ttfByteSwappedUnicodeLookupFunction(swapped ? 1 : 0);
}

///
/// Initialize SDL_ttf.
///
/// You must successfully call this function before it is safe to call any
/// other function in this library, with one exception: a human-readable error
/// message can be retrieved from TTF_GetError() if this function fails.
///
/// SDL must be initialized before calls to functions in this library, because
/// this library uses utility functions from the SDL library.
///
/// It is safe to call this more than once; the library keeps a counter of init
/// calls, and decrements it on each call to TTF_Quit, so you must pair your
/// init and quit calls.
///
/// \returns 0 on success, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_Quit
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_Init(void)
/// ```
int ttfInit() {
  final ttfInitLookupFunction =
      libSdl2Ttf.lookupFunction<Int32 Function(), int Function()>('TTF_Init');
  return ttfInitLookupFunction();
}

///
/// Create a font from a file, using a specified point size.
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param file path to font file.
/// \param ptsize point size to use for the newly-opened font.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFont(const char *file, int ptsize)
/// ```
Pointer<TtfFont> ttfOpenFont(String? file, int ptsize) {
  final ttfOpenFontLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(Pointer<Utf8> file, Int32 ptsize),
      Pointer<TtfFont> Function(
          Pointer<Utf8> file, int ptsize)>('TTF_OpenFont');
  final filePointer = file != null ? file.toNativeUtf8() : nullptr;
  final result = ttfOpenFontLookupFunction(filePointer, ptsize);
  calloc.free(filePointer);
  return result;
}

///
/// Create a font from a file, using a specified face index.
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// Some fonts have multiple "faces" included. The index specifies which face
/// to use from the font file. Font files with only one face should specify
/// zero for the index.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param file path to font file.
/// \param ptsize point size to use for the newly-opened font.
/// \param index index of the face in the font file.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndex(const char *file, int ptsize, long index)
/// ```
Pointer<TtfFont> ttfOpenFontIndex(String? file, int ptsize, int index) {
  final ttfOpenFontIndexLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(Pointer<Utf8> file, Int32 ptsize, Int32 index),
      Pointer<TtfFont> Function(
          Pointer<Utf8> file, int ptsize, int index)>('TTF_OpenFontIndex');
  final filePointer = file != null ? file.toNativeUtf8() : nullptr;
  final result = ttfOpenFontIndexLookupFunction(filePointer, ptsize, index);
  calloc.free(filePointer);
  return result;
}

///
/// Create a font from an SDL_RWops, using a specified point size.
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_ttf reads everything it needs
/// from the RWops during this call in any case.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param src an SDL_RWops to provide a font file's data.
/// \param freesrc non-zero to close the RWops before returning, zero to leave
/// it open.
/// \param ptsize point size to use for the newly-opened font.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontRW(SDL_RWops *src, int freesrc, int ptsize)
/// ```
Pointer<TtfFont> ttfOpenFontRw(Pointer<SdlRWops> src, int freesrc, int ptsize) {
  final ttfOpenFontRwLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(
          Pointer<SdlRWops> src, Int32 freesrc, Int32 ptsize),
      Pointer<TtfFont> Function(
          Pointer<SdlRWops> src, int freesrc, int ptsize)>('TTF_OpenFontRW');
  return ttfOpenFontRwLookupFunction(src, freesrc, ptsize);
}

///
/// Create a font from an SDL_RWops, using a specified face index.
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_ttf reads everything it needs
/// from the RWops during this call in any case.
///
/// Some fonts have multiple "faces" included. The index specifies which face
/// to use from the font file. Font files with only one face should specify
/// zero for the index.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param src an SDL_RWops to provide a font file's data.
/// \param freesrc non-zero to close the RWops before returning, zero to leave
/// it open.
/// \param ptsize point size to use for the newly-opened font.
/// \param index index of the face in the font file.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexRW(SDL_RWops *src, int freesrc, int ptsize, long index)
/// ```
Pointer<TtfFont> ttfOpenFontIndexRw(
    Pointer<SdlRWops> src, int freesrc, int ptsize, int index) {
  final ttfOpenFontIndexRwLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(
          Pointer<SdlRWops> src, Int32 freesrc, Int32 ptsize, Int32 index),
      Pointer<TtfFont> Function(Pointer<SdlRWops> src, int freesrc, int ptsize,
          int index)>('TTF_OpenFontIndexRW');
  return ttfOpenFontIndexRwLookupFunction(src, freesrc, ptsize, index);
}

///
/// Create a font from a file, using target resolutions (in DPI).
///
/// DPI scaling only applies to scalable fonts (e.g. TrueType).
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param file path to font file.
/// \param ptsize point size to use for the newly-opened font.
/// \param hdpi the target horizontal DPI.
/// \param vdpi the target vertical DPI.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontDPI(const char *file, int ptsize, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TtfFont> ttfOpenFontDpi(String? file, int ptsize, int hdpi, int vdpi) {
  final ttfOpenFontDpiLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(
          Pointer<Utf8> file, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      Pointer<TtfFont> Function(Pointer<Utf8> file, int ptsize, int hdpi,
          int vdpi)>('TTF_OpenFontDPI');
  final filePointer = file != null ? file.toNativeUtf8() : nullptr;
  final result = ttfOpenFontDpiLookupFunction(filePointer, ptsize, hdpi, vdpi);
  calloc.free(filePointer);
  return result;
}

///
/// Create a font from a file, using target resolutions (in DPI).
///
/// DPI scaling only applies to scalable fonts (e.g. TrueType).
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// Some fonts have multiple "faces" included. The index specifies which face
/// to use from the font file. Font files with only one face should specify
/// zero for the index.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param file path to font file.
/// \param ptsize point size to use for the newly-opened font.
/// \param index index of the face in the font file.
/// \param hdpi the target horizontal DPI.
/// \param vdpi the target vertical DPI.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexDPI(const char *file, int ptsize, long index, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TtfFont> ttfOpenFontIndexDpi(
    String? file, int ptsize, int index, int hdpi, int vdpi) {
  final ttfOpenFontIndexDpiLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(Pointer<Utf8> file, Int32 ptsize, Int32 index,
          Uint32 hdpi, Uint32 vdpi),
      Pointer<TtfFont> Function(Pointer<Utf8> file, int ptsize, int index,
          int hdpi, int vdpi)>('TTF_OpenFontIndexDPI');
  final filePointer = file != null ? file.toNativeUtf8() : nullptr;
  final result =
      ttfOpenFontIndexDpiLookupFunction(filePointer, ptsize, index, hdpi, vdpi);
  calloc.free(filePointer);
  return result;
}

///
/// Opens a font from an SDL_RWops with target resolutions (in DPI).
///
/// DPI scaling only applies to scalable fonts (e.g. TrueType).
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_ttf reads everything it needs
/// from the RWops during this call in any case.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param src an SDL_RWops to provide a font file's data.
/// \param freesrc non-zero to close the RWops before returning, zero to leave
/// it open.
/// \param ptsize point size to use for the newly-opened font.
/// \param hdpi the target horizontal DPI.
/// \param vdpi the target vertical DPI.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontDPIRW(SDL_RWops *src, int freesrc, int ptsize, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TtfFont> ttfOpenFontDpirw(
    Pointer<SdlRWops> src, int freesrc, int ptsize, int hdpi, int vdpi) {
  final ttfOpenFontDpirwLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(Pointer<SdlRWops> src, Int32 freesrc,
          Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      Pointer<TtfFont> Function(Pointer<SdlRWops> src, int freesrc, int ptsize,
          int hdpi, int vdpi)>('TTF_OpenFontDPIRW');
  return ttfOpenFontDpirwLookupFunction(src, freesrc, ptsize, hdpi, vdpi);
}

///
/// Opens a font from an SDL_RWops with target resolutions (in DPI).
///
/// DPI scaling only applies to scalable fonts (e.g. TrueType).
///
/// Some .fon fonts will have several sizes embedded in the file, so the point
/// size becomes the index of choosing which size. If the value is too high,
/// the last indexed size will be the default.
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_ttf reads everything it needs
/// from the RWops during this call in any case.
///
/// Some fonts have multiple "faces" included. The index specifies which face
/// to use from the font file. Font files with only one face should specify
/// zero for the index.
///
/// When done with the returned TTF_Font, use TTF_CloseFont() to dispose of it.
///
/// \param src an SDL_RWops to provide a font file's data.
/// \param freesrc non-zero to close the RWops before returning, zero to leave
/// it open.
/// \param ptsize point size to use for the newly-opened font.
/// \param index index of the face in the font file.
/// \param hdpi the target horizontal DPI.
/// \param vdpi the target vertical DPI.
/// \returns a valid TTF_Font, or NULL on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_CloseFont
///
/// ```c
/// extern DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIndexDPIRW(SDL_RWops *src, int freesrc, int ptsize, long index, unsigned int hdpi, unsigned int vdpi)
/// ```
Pointer<TtfFont> ttfOpenFontIndexDpirw(Pointer<SdlRWops> src, int freesrc,
    int ptsize, int index, int hdpi, int vdpi) {
  final ttfOpenFontIndexDpirwLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<TtfFont> Function(Pointer<SdlRWops> src, Int32 freesrc,
          Int32 ptsize, Int32 index, Uint32 hdpi, Uint32 vdpi),
      Pointer<TtfFont> Function(Pointer<SdlRWops> src, int freesrc, int ptsize,
          int index, int hdpi, int vdpi)>('TTF_OpenFontIndexDPIRW');
  return ttfOpenFontIndexDpirwLookupFunction(
      src, freesrc, ptsize, index, hdpi, vdpi);
}

///
/// Set a font's size dynamically.
///
/// This clears already-generated glyphs, if any, from the cache.
///
/// \param font the font to resize.
/// \param ptsize the new point size.
/// \returns 0 if successful, -1 on error
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetFontSize(TTF_Font *font, int ptsize)
/// ```
int ttfSetFontSize(Pointer<TtfFont> font, int ptsize) {
  final ttfSetFontSizeLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Int32 ptsize),
      int Function(Pointer<TtfFont> font, int ptsize)>('TTF_SetFontSize');
  return ttfSetFontSizeLookupFunction(font, ptsize);
}

///
/// Set font size dynamically with target resolutions (in DPI).
///
/// This clears already-generated glyphs, if any, from the cache.
///
/// \param font the font to resize.
/// \param ptsize the new point size.
/// \param hdpi the target horizontal DPI.
/// \param vdpi the target vertical DPI.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetFontSizeDPI(TTF_Font *font, int ptsize, unsigned int hdpi, unsigned int vdpi)
/// ```
int ttfSetFontSizeDpi(Pointer<TtfFont> font, int ptsize, int hdpi, int vdpi) {
  final ttfSetFontSizeDpiLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(
          Pointer<TtfFont> font, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      int Function(Pointer<TtfFont> font, int ptsize, int hdpi,
          int vdpi)>('TTF_SetFontSizeDPI');
  return ttfSetFontSizeDpiLookupFunction(font, ptsize, hdpi, vdpi);
}

///
/// Query a font's current style.
///
/// The font styles are a set of bit flags, OR'd together:
///
/// - `TTF_STYLE_NORMAL` (is zero)
/// - `TTF_STYLE_BOLD`
/// - `TTF_STYLE_ITALIC`
/// - `TTF_STYLE_UNDERLINE`
/// - `TTF_STYLE_STRIKETHROUGH`
///
/// \param font the font to query.
/// \returns the current font style, as a set of bit flags.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_SetFontStyle
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontStyle(const TTF_Font *font)
/// ```
int ttfGetFontStyle(Pointer<TtfFont> font) {
  final ttfGetFontStyleLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_GetFontStyle');
  return ttfGetFontStyleLookupFunction(font);
}

///
/// Set a font's current style.
///
/// Setting the style clears already-generated glyphs, if any, from the cache.
///
/// The font styles are a set of bit flags, OR'd together:
///
/// - `TTF_STYLE_NORMAL` (is zero)
/// - `TTF_STYLE_BOLD`
/// - `TTF_STYLE_ITALIC`
/// - `TTF_STYLE_UNDERLINE`
/// - `TTF_STYLE_STRIKETHROUGH`
///
/// \param font the font to set a new style on.
/// \param style the new style values to set, OR'd together.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_GetFontStyle
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontStyle(TTF_Font *font, int style)
/// ```
void ttfSetFontStyle(Pointer<TtfFont> font, int style) {
  final ttfSetFontStyleLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Pointer<TtfFont> font, Int32 style),
      void Function(Pointer<TtfFont> font, int style)>('TTF_SetFontStyle');
  return ttfSetFontStyleLookupFunction(font, style);
}

///
/// Query a font's current outline.
///
/// \param font the font to query.
/// \returns the font's current outline value.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_SetFontOutline
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontOutline(const TTF_Font *font)
/// ```
int ttfGetFontOutline(Pointer<TtfFont> font) {
  final ttfGetFontOutlineLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_GetFontOutline');
  return ttfGetFontOutlineLookupFunction(font);
}

///
/// Set a font's current outline.
///
/// \param font the font to set a new outline on.
/// \param outline positive outline value, 0 to default.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_GetFontOutline
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontOutline(TTF_Font *font, int outline)
/// ```
void ttfSetFontOutline(Pointer<TtfFont> font, int outline) {
  final ttfSetFontOutlineLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Pointer<TtfFont> font, Int32 outline),
      void Function(Pointer<TtfFont> font, int outline)>('TTF_SetFontOutline');
  return ttfSetFontOutlineLookupFunction(font, outline);
}

///
/// Query a font's current FreeType hinter setting.
///
/// The hinter setting is a single value:
///
/// - `TTF_HINTING_NORMAL`
/// - `TTF_HINTING_LIGHT`
/// - `TTF_HINTING_MONO`
/// - `TTF_HINTING_NONE`
/// - `TTF_HINTING_LIGHT_SUBPIXEL` (available in SDL_ttf 2.0.18 and later)
///
/// \param font the font to query.
/// \returns the font's current hinter value.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_SetFontHinting
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontHinting(const TTF_Font *font)
/// ```
int ttfGetFontHinting(Pointer<TtfFont> font) {
  final ttfGetFontHintingLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_GetFontHinting');
  return ttfGetFontHintingLookupFunction(font);
}

///
/// Set a font's current hinter setting.
///
/// Setting it clears already-generated glyphs, if any, from the cache.
///
/// The hinter setting is a single value:
///
/// - `TTF_HINTING_NORMAL`
/// - `TTF_HINTING_LIGHT`
/// - `TTF_HINTING_MONO`
/// - `TTF_HINTING_NONE`
/// - `TTF_HINTING_LIGHT_SUBPIXEL` (available in SDL_ttf 2.0.18 and later)
///
/// \param font the font to set a new hinter setting on.
/// \param hinting the new hinter setting.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_GetFontHinting
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontHinting(TTF_Font *font, int hinting)
/// ```
void ttfSetFontHinting(Pointer<TtfFont> font, int hinting) {
  final ttfSetFontHintingLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Pointer<TtfFont> font, Int32 hinting),
      void Function(Pointer<TtfFont> font, int hinting)>('TTF_SetFontHinting');
  return ttfSetFontHintingLookupFunction(font, hinting);
}

///
/// Query a font's current wrap alignment option.
///
/// The wrap alignment option can be one of the following:
///
/// - `TTF_WRAPPED_ALIGN_LEFT`
/// - `TTF_WRAPPED_ALIGN_CENTER`
/// - `TTF_WRAPPED_ALIGN_RIGHT`
///
/// \param font the font to query.
/// \returns the font's current wrap alignment option.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_SetFontWrappedAlign
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontWrappedAlign(const TTF_Font *font)
/// ```
int ttfGetFontWrappedAlign(Pointer<TtfFont> font) {
  final ttfGetFontWrappedAlignLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_GetFontWrappedAlign');
  return ttfGetFontWrappedAlignLookupFunction(font);
}

///
/// Set a font's current wrap alignment option.
///
/// The wrap alignment option can be one of the following:
///
/// - `TTF_WRAPPED_ALIGN_LEFT`
/// - `TTF_WRAPPED_ALIGN_CENTER`
/// - `TTF_WRAPPED_ALIGN_RIGHT`
///
/// \param font the font to set a new wrap alignment option on.
/// \param align the new wrap alignment option.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_GetFontWrappedAlign
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontWrappedAlign(TTF_Font *font, int align)
/// ```
void ttfSetFontWrappedAlign(Pointer<TtfFont> font, int align) {
  final ttfSetFontWrappedAlignLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Pointer<TtfFont> font, Int32 align),
      void Function(
          Pointer<TtfFont> font, int align)>('TTF_SetFontWrappedAlign');
  return ttfSetFontWrappedAlignLookupFunction(font, align);
}

///
/// Query the total height of a font.
///
/// This is usually equal to point size.
///
/// \param font the font to query.
/// \returns the font's height.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontHeight(const TTF_Font *font)
/// ```
int ttfFontHeight(Pointer<TtfFont> font) {
  final ttfFontHeightLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_FontHeight');
  return ttfFontHeightLookupFunction(font);
}

///
/// Query the offset from the baseline to the top of a font.
///
/// This is a positive value, relative to the baseline.
///
/// \param font the font to query.
/// \returns the font's ascent.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontAscent(const TTF_Font *font)
/// ```
int ttfFontAscent(Pointer<TtfFont> font) {
  final ttfFontAscentLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_FontAscent');
  return ttfFontAscentLookupFunction(font);
}

///
/// Query the offset from the baseline to the bottom of a font.
///
/// This is a negative value, relative to the baseline.
///
/// \param font the font to query.
/// \returns the font's descent.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontDescent(const TTF_Font *font)
/// ```
int ttfFontDescent(Pointer<TtfFont> font) {
  final ttfFontDescentLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_FontDescent');
  return ttfFontDescentLookupFunction(font);
}

///
/// Query the recommended spacing between lines of text for a font.
///
/// \param font the font to query.
/// \returns the font's recommended spacing.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontLineSkip(const TTF_Font *font)
/// ```
int ttfFontLineSkip(Pointer<TtfFont> font) {
  final ttfFontLineSkipLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_FontLineSkip');
  return ttfFontLineSkipLookupFunction(font);
}

///
/// Query whether or not kerning is allowed for a font.
///
/// \param font the font to query.
/// \returns non-zero if kerning is enabled, zero otherwise.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GetFontKerning(const TTF_Font *font)
/// ```
int ttfGetFontKerning(Pointer<TtfFont> font) {
  final ttfGetFontKerningLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_GetFontKerning');
  return ttfGetFontKerningLookupFunction(font);
}

///
/// Set if kerning is allowed for a font.
///
/// Newly-opened fonts default to allowing kerning. This is generally a good
/// policy unless you have a strong reason to disable it, as it tends to
/// produce better rendering (with kerning disabled, some fonts might render
/// the word `kerning` as something that looks like `keming` for example).
///
/// \param font the font to set kerning on.
/// \param allowed non-zero to allow kerning, zero to disallow.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_SetFontKerning(TTF_Font *font, int allowed)
/// ```
void ttfSetFontKerning(Pointer<TtfFont> font, int allowed) {
  final ttfSetFontKerningLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Pointer<TtfFont> font, Int32 allowed),
      void Function(Pointer<TtfFont> font, int allowed)>('TTF_SetFontKerning');
  return ttfSetFontKerningLookupFunction(font, allowed);
}

///
/// Query the number of faces of a font.
///
/// \param font the font to query.
/// \returns the number of FreeType font faces.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC long SDLCALL TTF_FontFaces(const TTF_Font *font)
/// ```
int ttfFontFaces(Pointer<TtfFont> font) {
  final ttfFontFacesLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_FontFaces');
  return ttfFontFacesLookupFunction(font);
}

///
/// Query whether a font is fixed-width.
///
/// A "fixed-width" font means all glyphs are the same width across; a
/// lowercase 'i' will be the same size across as a capital 'W', for example.
/// This is common for terminals and text editors, and other apps that treat
/// text as a grid. Most other things (WYSIWYG word processors, web pages, etc)
/// are more likely to not be fixed-width in most cases.
///
/// \param font the font to query.
/// \returns non-zero if fixed-width, zero if not.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_FontFaceIsFixedWidth(const TTF_Font *font)
/// ```
int ttfFontFaceIsFixedWidth(Pointer<TtfFont> font) {
  final ttfFontFaceIsFixedWidthLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_FontFaceIsFixedWidth');
  return ttfFontFaceIsFixedWidthLookupFunction(font);
}

///
/// Query a font's family name.
///
/// This string is dictated by the contents of the font file.
///
/// Note that the returned string is to internal storage, and should not be
/// modifed or free'd by the caller. The string becomes invalid, with the rest
/// of the font, when `font` is handed to TTF_CloseFont().
///
/// \param font the font to query.
/// \returns the font's family name.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC const char * SDLCALL TTF_FontFaceFamilyName(const TTF_Font *font)
/// ```
String? ttfFontFaceFamilyName(Pointer<TtfFont> font) {
  final ttfFontFaceFamilyNameLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<Utf8> Function(Pointer<TtfFont> font),
      Pointer<Utf8> Function(Pointer<TtfFont> font)>('TTF_FontFaceFamilyName');
  final result = ttfFontFaceFamilyNameLookupFunction(font);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Query a font's style name.
///
/// This string is dictated by the contents of the font file.
///
/// Note that the returned string is to internal storage, and should not be
/// modifed or free'd by the caller. The string becomes invalid, with the rest
/// of the font, when `font` is handed to TTF_CloseFont().
///
/// \param font the font to query.
/// \returns the font's style name.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC const char * SDLCALL TTF_FontFaceStyleName(const TTF_Font *font)
/// ```
String? ttfFontFaceStyleName(Pointer<TtfFont> font) {
  final ttfFontFaceStyleNameLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<Utf8> Function(Pointer<TtfFont> font),
      Pointer<Utf8> Function(Pointer<TtfFont> font)>('TTF_FontFaceStyleName');
  final result = ttfFontFaceStyleNameLookupFunction(font);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Check whether a glyph is provided by the font for a 16-bit codepoint.
///
/// Note that this version of the function takes a 16-bit character code, which
/// covers the Basic Multilingual Plane, but is insufficient to cover the
/// entire set of possible Unicode values, including emoji glyphs. You should
/// use TTF_GlyphIsProvided32() instead, which offers the same functionality
/// but takes a 32-bit codepoint instead.
///
/// The only reason to use this function is that it was available since the
/// beginning of time, more or less.
///
/// \param font the font to query.
/// \param ch the character code to check.
/// \returns non-zero if font provides a glyph for this character, zero if not.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_GlyphIsProvided32
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphIsProvided(TTF_Font *font, Uint16 ch)
/// ```
int ttfGlyphIsProvided(Pointer<TtfFont> font, int ch) {
  final ttfGlyphIsProvidedLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Uint16 ch),
      int Function(Pointer<TtfFont> font, int ch)>('TTF_GlyphIsProvided');
  return ttfGlyphIsProvidedLookupFunction(font, ch);
}

///
/// Check whether a glyph is provided by the font for a 32-bit codepoint.
///
/// This is the same as TTF_GlyphIsProvided(), but takes a 32-bit character
/// instead of 16-bit, and thus can query a larger range. If you are sure
/// you'll have an SDL_ttf that's version 2.0.18 or newer, there's no reason
/// not to use this function exclusively.
///
/// \param font the font to query.
/// \param ch the character code to check.
/// \returns non-zero if font provides a glyph for this character, zero if not.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphIsProvided32(TTF_Font *font, Uint32 ch)
/// ```
int ttfGlyphIsProvided32(Pointer<TtfFont> font, int ch) {
  final ttfGlyphIsProvided32LookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Uint32 ch),
      int Function(Pointer<TtfFont> font, int ch)>('TTF_GlyphIsProvided32');
  return ttfGlyphIsProvided32LookupFunction(font, ch);
}

///
/// Query the metrics (dimensions) of a font's 16-bit glyph.
///
/// To understand what these metrics mean, here is a useful link:
///
/// https://freetype.sourceforge.net/freetype2/docs/tutorial/step2.html
///
/// Note that this version of the function takes a 16-bit character code, which
/// covers the Basic Multilingual Plane, but is insufficient to cover the
/// entire set of possible Unicode values, including emoji glyphs. You should
/// use TTF_GlyphMetrics32() instead, which offers the same functionality but
/// takes a 32-bit codepoint instead.
///
/// The only reason to use this function is that it was available since the
/// beginning of time, more or less.
///
/// \param font the font to query.
/// \param ch the character code to check.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_GlyphMetrics32
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphMetrics(TTF_Font *font, Uint16 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance)
/// ```
int ttfGlyphMetrics(
    Pointer<TtfFont> font,
    int ch,
    Pointer<Int32> minx,
    Pointer<Int32> maxx,
    Pointer<Int32> miny,
    Pointer<Int32> maxy,
    Pointer<Int32> advance) {
  final ttfGlyphMetricsLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(
          Pointer<TtfFont> font,
          Uint16 ch,
          Pointer<Int32> minx,
          Pointer<Int32> maxx,
          Pointer<Int32> miny,
          Pointer<Int32> maxy,
          Pointer<Int32> advance),
      int Function(
          Pointer<TtfFont> font,
          int ch,
          Pointer<Int32> minx,
          Pointer<Int32> maxx,
          Pointer<Int32> miny,
          Pointer<Int32> maxy,
          Pointer<Int32> advance)>('TTF_GlyphMetrics');
  return ttfGlyphMetricsLookupFunction(
      font, ch, minx, maxx, miny, maxy, advance);
}

///
/// Query the metrics (dimensions) of a font's 32-bit glyph.
///
/// To understand what these metrics mean, here is a useful link:
///
/// https://freetype.sourceforge.net/freetype2/docs/tutorial/step2.html
///
/// This is the same as TTF_GlyphMetrics(), but takes a 32-bit character
/// instead of 16-bit, and thus can query a larger range. If you are sure
/// you'll have an SDL_ttf that's version 2.0.18 or newer, there's no reason
/// not to use this function exclusively.
///
/// \param font the font to query.
/// \param ch the character code to check.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_GlyphMetrics32(TTF_Font *font, Uint32 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance)
/// ```
int ttfGlyphMetrics32(
    Pointer<TtfFont> font,
    int ch,
    Pointer<Int32> minx,
    Pointer<Int32> maxx,
    Pointer<Int32> miny,
    Pointer<Int32> maxy,
    Pointer<Int32> advance) {
  final ttfGlyphMetrics32LookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(
          Pointer<TtfFont> font,
          Uint32 ch,
          Pointer<Int32> minx,
          Pointer<Int32> maxx,
          Pointer<Int32> miny,
          Pointer<Int32> maxy,
          Pointer<Int32> advance),
      int Function(
          Pointer<TtfFont> font,
          int ch,
          Pointer<Int32> minx,
          Pointer<Int32> maxx,
          Pointer<Int32> miny,
          Pointer<Int32> maxy,
          Pointer<Int32> advance)>('TTF_GlyphMetrics32');
  return ttfGlyphMetrics32LookupFunction(
      font, ch, minx, maxx, miny, maxy, advance);
}

///
/// Calculate the dimensions of a rendered string of Latin1 text.
///
/// This will report the width and height, in pixels, of the space that the
/// specified string will take to fully render.
///
/// This does not need to render the string to do this calculation.
///
/// You almost certainly want TTF_SizeUTF8() unless you're sure you have a
/// 1-byte Latin1 encoding. US ASCII characters will work with either function,
/// but most other Unicode characters packed into a `const char *` will need
/// UTF-8.
///
/// \param font the font to query.
/// \param text text to calculate, in Latin1 encoding.
/// \param w will be filled with width, in pixels, on return.
/// \param h will be filled with height, in pixels, on return.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_SizeUTF8
/// \sa TTF_SizeUNICODE
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeText(TTF_Font *font, const char *text, int *w, int *h)
/// ```
int ttfSizeText(
    Pointer<TtfFont> font, String? text, Pointer<Int32> w, Pointer<Int32> h) {
  final ttfSizeTextLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<TtfFont> font, Pointer<Utf8> text, Pointer<Int32> w,
          Pointer<Int32> h)>('TTF_SizeText');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfSizeTextLookupFunction(font, textPointer, w, h);
  calloc.free(textPointer);
  return result;
}

///
/// Calculate the dimensions of a rendered string of UTF-8 text.
///
/// This will report the width and height, in pixels, of the space that the
/// specified string will take to fully render.
///
/// This does not need to render the string to do this calculation.
///
/// \param font the font to query.
/// \param text text to calculate, in Latin1 encoding.
/// \param w will be filled with width, in pixels, on return.
/// \param h will be filled with height, in pixels, on return.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_SizeUNICODE
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeUTF8(TTF_Font *font, const char *text, int *w, int *h)
/// ```
int ttfSizeUtf8(
    Pointer<TtfFont> font, String? text, Pointer<Int32> w, Pointer<Int32> h) {
  final ttfSizeUtf8LookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<TtfFont> font, Pointer<Utf8> text, Pointer<Int32> w,
          Pointer<Int32> h)>('TTF_SizeUTF8');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfSizeUtf8LookupFunction(font, textPointer, w, h);
  calloc.free(textPointer);
  return result;
}

///
/// Calculate the dimensions of a rendered string of UCS-2 text.
///
/// This will report the width and height, in pixels, of the space that the
/// specified string will take to fully render.
///
/// This does not need to render the string to do this calculation.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// \param font the font to query.
/// \param text text to calculate, in UCS-2 encoding.
/// \param w will be filled with width, in pixels, on return.
/// \param h will be filled with height, in pixels, on return.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_SizeUTF8
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SizeUNICODE(TTF_Font *font, const Uint16 *text, int *w, int *h)
/// ```
int ttfSizeUnicode(Pointer<TtfFont> font, Pointer<Uint16> text,
    Pointer<Int32> w, Pointer<Int32> h) {
  final ttfSizeUnicodeLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          Pointer<Int32> w, Pointer<Int32> h)>('TTF_SizeUNICODE');
  return ttfSizeUnicodeLookupFunction(font, text, w, h);
}

///
/// Calculate how much of a Latin1 string will fit in a given width.
///
/// This reports the number of characters that can be rendered before reaching
/// `measure_width`.
///
/// This does not need to render the string to do this calculation.
///
/// You almost certainly want TTF_MeasureUTF8() unless you're sure you have a
/// 1-byte Latin1 encoding. US ASCII characters will work with either function,
/// but most other Unicode characters packed into a `const char *` will need
/// UTF-8.
///
/// \param font the font to query.
/// \param text text to calculate, in Latin1 encoding.
/// \param measure_width maximum width, in pixels, available for the string.
/// \param count on return, filled with number of characters that can be
/// rendered.
/// \param extent on return, filled with latest calculated width.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_MeasureText
/// \sa TTF_MeasureUTF8
/// \sa TTF_MeasureUNICODE
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_MeasureText(TTF_Font *font, const char *text, int measure_width, int *extent, int *count)
/// ```
int ttfMeasureText(Pointer<TtfFont> font, String? text, int measureWidth,
    Pointer<Int32> extent, Pointer<Int32> count) {
  final ttfMeasureTextLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          Int32 measureWidth, Pointer<Int32> extent, Pointer<Int32> count),
      int Function(Pointer<TtfFont> font, Pointer<Utf8> text, int measureWidth,
          Pointer<Int32> extent, Pointer<Int32> count)>('TTF_MeasureText');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfMeasureTextLookupFunction(
      font, textPointer, measureWidth, extent, count);
  calloc.free(textPointer);
  return result;
}

///
/// Calculate how much of a UTF-8 string will fit in a given width.
///
/// This reports the number of characters that can be rendered before reaching
/// `measure_width`.
///
/// This does not need to render the string to do this calculation.
///
/// \param font the font to query.
/// \param text text to calculate, in UTF-8 encoding.
/// \param measure_width maximum width, in pixels, available for the string.
/// \param count on return, filled with number of characters that can be
/// rendered.
/// \param extent on return, filled with latest calculated width.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_MeasureText
/// \sa TTF_MeasureUTF8
/// \sa TTF_MeasureUNICODE
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_MeasureUTF8(TTF_Font *font, const char *text, int measure_width, int *extent, int *count)
/// ```
int ttfMeasureUtf8(Pointer<TtfFont> font, String? text, int measureWidth,
    Pointer<Int32> extent, Pointer<Int32> count) {
  final ttfMeasureUtf8LookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          Int32 measureWidth, Pointer<Int32> extent, Pointer<Int32> count),
      int Function(Pointer<TtfFont> font, Pointer<Utf8> text, int measureWidth,
          Pointer<Int32> extent, Pointer<Int32> count)>('TTF_MeasureUTF8');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfMeasureUtf8LookupFunction(
      font, textPointer, measureWidth, extent, count);
  calloc.free(textPointer);
  return result;
}

///
/// Calculate how much of a UCS-2 string will fit in a given width.
///
/// This reports the number of characters that can be rendered before reaching
/// `measure_width`.
///
/// This does not need to render the string to do this calculation.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// \param font the font to query.
/// \param text text to calculate, in UCS-2 encoding.
/// \param measure_width maximum width, in pixels, available for the string.
/// \param count on return, filled with number of characters that can be
/// rendered.
/// \param extent on return, filled with latest calculated width.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_MeasureText
/// \sa TTF_MeasureUTF8
/// \sa TTF_MeasureUNICODE
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_MeasureUNICODE(TTF_Font *font, const Uint16 *text, int measure_width, int *extent, int *count)
/// ```
int ttfMeasureUnicode(Pointer<TtfFont> font, Pointer<Uint16> text,
    int measureWidth, Pointer<Int32> extent, Pointer<Int32> count) {
  final ttfMeasureUnicodeLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          Int32 measureWidth, Pointer<Int32> extent, Pointer<Int32> count),
      int Function(
          Pointer<TtfFont> font,
          Pointer<Uint16> text,
          int measureWidth,
          Pointer<Int32> extent,
          Pointer<Int32> count)>('TTF_MeasureUNICODE');
  return ttfMeasureUnicodeLookupFunction(
      font, text, measureWidth, extent, count);
}

///
/// Render Latin1 text at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderText_Solid_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_Solid() unless you're sure you
/// have a 1-byte Latin1 encoding. US ASCII characters will work with either
/// function, but most other Unicode characters packed into a `const char *`
/// will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Shaded,
/// TTF_RenderText_Blended, and TTF_RenderText_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Solid
/// \sa TTF_RenderUNICODE_Solid
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderTextSolid(
    Pointer<TtfFont> font, String? text, SdlColor fg) {
  final ttfRenderTextSolidLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg)>('TTF_RenderText_Solid');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextSolidLookupFunction(font, textPointer, fg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UTF-8 text at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUTF8_Solid_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Shaded,
/// TTF_RenderUTF8_Blended, and TTF_RenderUTF8_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Shaded
/// \sa TTF_RenderUTF8_Blended
/// \sa TTF_RenderUTF8_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Solid(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderUtf8Solid(
    Pointer<TtfFont> font, String? text, SdlColor fg) {
  final ttfRenderUtf8SolidLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg)>('TTF_RenderUTF8_Solid');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8SolidLookupFunction(font, textPointer, fg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UCS-2 text at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUNICODE_Solid_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with TTF_RenderUNICODE_Shaded,
/// TTF_RenderUNICODE_Blended, and TTF_RenderUNICODE_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Solid
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Solid(TTF_Font *font, const Uint16 *text, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeSolid(
    Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg) {
  final ttfRenderUnicodeSolidLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg)>('TTF_RenderUNICODE_Solid');
  return ttfRenderUnicodeSolidLookupFunction(font, text, fg);
}

///
/// Render word-wrapped Latin1 text at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_Solid_Wrapped() unless you're sure
/// you have a 1-byte Latin1 encoding. US ASCII characters will work with
/// either function, but most other Unicode characters packed into a `const
/// char *` will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Shaded_Wrapped,
/// TTF_RenderText_Blended_Wrapped, and TTF_RenderText_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Solid_Wrapped
/// \sa TTF_RenderUNICODE_Solid_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderTextSolidWrapped(
    Pointer<TtfFont> font, String? text, SdlColor fg, int wrapLength) {
  final ttfRenderTextSolidWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, int wrapLength)>('TTF_RenderText_Solid_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextSolidWrappedLookupFunction(
      font, textPointer, fg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UTF-8 text at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Shaded_Wrapped,
/// TTF_RenderUTF8_Blended_Wrapped, and TTF_RenderUTF8_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Shaded_Wrapped
/// \sa TTF_RenderUTF8_Blended_Wrapped
/// \sa TTF_RenderUTF8_LCD_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Solid_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUtf8SolidWrapped(
    Pointer<TtfFont> font, String? text, SdlColor fg, int wrapLength) {
  final ttfRenderUtf8SolidWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, int wrapLength)>('TTF_RenderUTF8_Solid_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8SolidWrappedLookupFunction(
      font, textPointer, fg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UCS-2 text at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with
/// TTF_RenderUNICODE_Shaded_Wrapped, TTF_RenderUNICODE_Blended_Wrapped, and
/// TTF_RenderUNICODE_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Solid_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Solid_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeSolidWrapped(
    Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg, int wrapLength) {
  final ttfRenderUnicodeSolidWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, int wrapLength)>('TTF_RenderUNICODE_Solid_Wrapped');
  return ttfRenderUnicodeSolidWrappedLookupFunction(font, text, fg, wrapLength);
}

///
/// Render a single 16-bit glyph at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// Note that this version of the function takes a 16-bit character code, which
/// covers the Basic Multilingual Plane, but is insufficient to cover the
/// entire set of possible Unicode values, including emoji glyphs. You should
/// use TTF_RenderGlyph32_Solid() instead, which offers the same functionality
/// but takes a 32-bit codepoint instead.
///
/// The only reason to use this function is that it was available since the
/// beginning of time, more or less.
///
/// You can render at other quality levels with TTF_RenderGlyph_Shaded,
/// TTF_RenderGlyph_Blended, and TTF_RenderGlyph_LCD.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderGlyph32_Solid
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Solid(TTF_Font *font, Uint16 ch, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderGlyphSolid(
    Pointer<TtfFont> font, int ch, SdlColor fg) {
  final ttfRenderGlyphSolidLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint16 ch, SdlColor fg),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, int ch, SdlColor fg)>('TTF_RenderGlyph_Solid');
  return ttfRenderGlyphSolidLookupFunction(font, ch, fg);
}

///
/// Render a single 32-bit glyph at fast quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the colorkey, giving a transparent background. The 1 pixel
/// will be set to the text color.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// This is the same as TTF_RenderGlyph_Solid(), but takes a 32-bit character
/// instead of 16-bit, and thus can render a larger range. If you are sure
/// you'll have an SDL_ttf that's version 2.0.18 or newer, there's no reason
/// not to use this function exclusively.
///
/// You can render at other quality levels with TTF_RenderGlyph32_Shaded,
/// TTF_RenderGlyph32_Blended, and TTF_RenderGlyph32_LCD.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderGlyph32_Shaded
/// \sa TTF_RenderGlyph32_Blended
/// \sa TTF_RenderGlyph32_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_Solid(TTF_Font *font, Uint32 ch, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderGlyph32Solid(
    Pointer<TtfFont> font, int ch, SdlColor fg) {
  final ttfRenderGlyph32SolidLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint32 ch, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch,
          SdlColor fg)>('TTF_RenderGlyph32_Solid');
  return ttfRenderGlyph32SolidLookupFunction(font, ch, fg);
}

///
/// Render Latin1 text at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderText_Shaded_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_Shaded() unless you're sure you
/// have a 1-byte Latin1 encoding. US ASCII characters will work with either
/// function, but most other Unicode characters packed into a `const char *`
/// will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Solid,
/// TTF_RenderText_Blended, and TTF_RenderText_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Shaded
/// \sa TTF_RenderUNICODE_Shaded
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderTextShaded(
    Pointer<TtfFont> font, String? text, SdlColor fg, SdlColor bg) {
  final ttfRenderTextShadedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg)>('TTF_RenderText_Shaded');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextShadedLookupFunction(font, textPointer, fg, bg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UTF-8 text at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUTF8_Shaded_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Solid,
/// TTF_RenderUTF8_Blended, and TTF_RenderUTF8_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUNICODE_Shaded
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Shaded(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderUtf8Shaded(
    Pointer<TtfFont> font, String? text, SdlColor fg, SdlColor bg) {
  final ttfRenderUtf8ShadedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg)>('TTF_RenderUTF8_Shaded');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8ShadedLookupFunction(font, textPointer, fg, bg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UCS-2 text at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUNICODE_Shaded_Wrapped() instead if you need to wrap the output
/// to multiple lines.
///
/// This will not wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with TTF_RenderUNICODE_Solid,
/// TTF_RenderUNICODE_Blended, and TTF_RenderUNICODE_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Shaded
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Shaded(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeShaded(
    Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg, SdlColor bg) {
  final ttfRenderUnicodeShadedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, SdlColor bg)>('TTF_RenderUNICODE_Shaded');
  return ttfRenderUnicodeShadedLookupFunction(font, text, fg, bg);
}

///
/// Render word-wrapped Latin1 text at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_Shaded_Wrapped() unless you're
/// sure you have a 1-byte Latin1 encoding. US ASCII characters will work with
/// either function, but most other Unicode characters packed into a `const
/// char *` will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Solid_Wrapped,
/// TTF_RenderText_Blended_Wrapped, and TTF_RenderText_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Shaded_Wrapped
/// \sa TTF_RenderUNICODE_Shaded_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderTextShadedWrapped(Pointer<TtfFont> font,
    String? text, SdlColor fg, SdlColor bg, int wrapLength) {
  final ttfRenderTextShadedWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font,
          Pointer<Utf8> text,
          SdlColor fg,
          SdlColor bg,
          int wrapLength)>('TTF_RenderText_Shaded_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextShadedWrappedLookupFunction(
      font, textPointer, fg, bg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UTF-8 text at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Solid_Wrapped,
/// TTF_RenderUTF8_Blended_Wrapped, and TTF_RenderUTF8_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Solid_Wrapped
/// \sa TTF_RenderUTF8_Blended_Wrapped
/// \sa TTF_RenderUTF8_LCD_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Shaded_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUtf8ShadedWrapped(Pointer<TtfFont> font,
    String? text, SdlColor fg, SdlColor bg, int wrapLength) {
  final ttfRenderUtf8ShadedWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font,
          Pointer<Utf8> text,
          SdlColor fg,
          SdlColor bg,
          int wrapLength)>('TTF_RenderUTF8_Shaded_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8ShadedWrappedLookupFunction(
      font, textPointer, fg, bg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UCS-2 text at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with
/// TTF_RenderUNICODE_Solid_Wrapped, TTF_RenderUNICODE_Blended_Wrapped, and
/// TTF_RenderUNICODE_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Shaded_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Shaded_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeShadedWrapped(Pointer<TtfFont> font,
    Pointer<Uint16> text, SdlColor fg, SdlColor bg, int wrapLength) {
  final ttfRenderUnicodeShadedWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, SdlColor bg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font,
          Pointer<Uint16> text,
          SdlColor fg,
          SdlColor bg,
          int wrapLength)>('TTF_RenderUNICODE_Shaded_Wrapped');
  return ttfRenderUnicodeShadedWrappedLookupFunction(
      font, text, fg, bg, wrapLength);
}

///
/// Render a single 16-bit glyph at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// Note that this version of the function takes a 16-bit character code, which
/// covers the Basic Multilingual Plane, but is insufficient to cover the
/// entire set of possible Unicode values, including emoji glyphs. You should
/// use TTF_RenderGlyph32_Shaded() instead, which offers the same functionality
/// but takes a 32-bit codepoint instead.
///
/// The only reason to use this function is that it was available since the
/// beginning of time, more or less.
///
/// You can render at other quality levels with TTF_RenderGlyph_Solid,
/// TTF_RenderGlyph_Blended, and TTF_RenderGlyph_LCD.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderGlyph32_Shaded
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Shaded(TTF_Font *font, Uint16 ch, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderGlyphShaded(
    Pointer<TtfFont> font, int ch, SdlColor fg, SdlColor bg) {
  final ttfRenderGlyphShadedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint16 ch, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch, SdlColor fg,
          SdlColor bg)>('TTF_RenderGlyph_Shaded');
  return ttfRenderGlyphShadedLookupFunction(font, ch, fg, bg);
}

///
/// Render a single 32-bit glyph at high quality to a new 8-bit surface.
///
/// This function will allocate a new 8-bit, palettized surface. The surface's
/// 0 pixel will be the specified background color, while other pixels have
/// varying degrees of the foreground color. This function returns the new
/// surface, or NULL if there was an error.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// This is the same as TTF_RenderGlyph_Shaded(), but takes a 32-bit character
/// instead of 16-bit, and thus can render a larger range. If you are sure
/// you'll have an SDL_ttf that's version 2.0.18 or newer, there's no reason
/// not to use this function exclusively.
///
/// You can render at other quality levels with TTF_RenderGlyph32_Solid,
/// TTF_RenderGlyph32_Blended, and TTF_RenderGlyph32_LCD.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \returns a new 8-bit, palettized surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderGlyph32_Solid
/// \sa TTF_RenderGlyph32_Blended
/// \sa TTF_RenderGlyph32_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_Shaded(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderGlyph32Shaded(
    Pointer<TtfFont> font, int ch, SdlColor fg, SdlColor bg) {
  final ttfRenderGlyph32ShadedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint32 ch, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch, SdlColor fg,
          SdlColor bg)>('TTF_RenderGlyph32_Shaded');
  return ttfRenderGlyph32ShadedLookupFunction(font, ch, fg, bg);
}

///
/// Render Latin1 text at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderText_Blended_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_Blended() unless you're sure you
/// have a 1-byte Latin1 encoding. US ASCII characters will work with either
/// function, but most other Unicode characters packed into a `const char *`
/// will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Solid,
/// TTF_RenderText_Blended, and TTF_RenderText_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Shaded
/// \sa TTF_RenderUNICODE_Shaded
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderTextBlended(
    Pointer<TtfFont> font, String? text, SdlColor fg) {
  final ttfRenderTextBlendedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg)>('TTF_RenderText_Blended');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextBlendedLookupFunction(font, textPointer, fg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UTF-8 text at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUTF8_Blended_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Solid,
/// TTF_RenderUTF8_Shaded, and TTF_RenderUTF8_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUNICODE_Blended
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Blended(TTF_Font *font, const char *text, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderUtf8Blended(
    Pointer<TtfFont> font, String? text, SdlColor fg) {
  final ttfRenderUtf8BlendedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg)>('TTF_RenderUTF8_Blended');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8BlendedLookupFunction(font, textPointer, fg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UCS-2 text at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUNICODE_Blended_Wrapped() instead if you need to wrap the output
/// to multiple lines.
///
/// This will not wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with TTF_RenderUNICODE_Solid,
/// TTF_RenderUNICODE_Shaded, and TTF_RenderUNICODE_LCD.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderUTF8_Blended
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Blended(TTF_Font *font, const Uint16 *text, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeBlended(
    Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg) {
  final ttfRenderUnicodeBlendedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg)>('TTF_RenderUNICODE_Blended');
  return ttfRenderUnicodeBlendedLookupFunction(font, text, fg);
}

///
/// Render word-wrapped Latin1 text at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_Blended_Wrapped() unless you're
/// sure you have a 1-byte Latin1 encoding. US ASCII characters will work with
/// either function, but most other Unicode characters packed into a `const
/// char *` will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Solid_Wrapped,
/// TTF_RenderText_Shaded_Wrapped, and TTF_RenderText_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Blended_Wrapped
/// \sa TTF_RenderUNICODE_Blended_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderTextBlendedWrapped(
    Pointer<TtfFont> font, String? text, SdlColor fg, int wrapLength) {
  final ttfRenderTextBlendedWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, int wrapLength)>('TTF_RenderText_Blended_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextBlendedWrappedLookupFunction(
      font, textPointer, fg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UTF-8 text at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Solid_Wrapped,
/// TTF_RenderUTF8_Shaded_Wrapped, and TTF_RenderUTF8_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Solid_Wrapped
/// \sa TTF_RenderUTF8_Shaded_Wrapped
/// \sa TTF_RenderUTF8_LCD_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_Blended_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUtf8BlendedWrapped(
    Pointer<TtfFont> font, String? text, SdlColor fg, int wrapLength) {
  final ttfRenderUtf8BlendedWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, int wrapLength)>('TTF_RenderUTF8_Blended_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8BlendedWrappedLookupFunction(
      font, textPointer, fg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UCS-2 text at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with
/// TTF_RenderUNICODE_Solid_Wrapped, TTF_RenderUNICODE_Shaded_Wrapped, and
/// TTF_RenderUNICODE_LCD_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderUTF8_Blended_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_Blended_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeBlendedWrapped(
    Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg, int wrapLength) {
  final ttfRenderUnicodeBlendedWrappedLookupFunction =
      libSdl2Ttf.lookupFunction<
          Pointer<SdlSurface> Function(Pointer<TtfFont> font,
              Pointer<Uint16> text, SdlColor fg, Uint32 wrapLength),
          Pointer<SdlSurface> Function(
              Pointer<TtfFont> font,
              Pointer<Uint16> text,
              SdlColor fg,
              int wrapLength)>('TTF_RenderUNICODE_Blended_Wrapped');
  return ttfRenderUnicodeBlendedWrappedLookupFunction(
      font, text, fg, wrapLength);
}

///
/// Render a single 16-bit glyph at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// Note that this version of the function takes a 16-bit character code, which
/// covers the Basic Multilingual Plane, but is insufficient to cover the
/// entire set of possible Unicode values, including emoji glyphs. You should
/// use TTF_RenderGlyph32_Blended() instead, which offers the same
/// functionality but takes a 32-bit codepoint instead.
///
/// The only reason to use this function is that it was available since the
/// beginning of time, more or less.
///
/// You can render at other quality levels with TTF_RenderGlyph_Solid,
/// TTF_RenderGlyph_Shaded, and TTF_RenderGlyph_LCD.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_RenderGlyph32_Blended
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Blended(TTF_Font *font, Uint16 ch, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderGlyphBlended(
    Pointer<TtfFont> font, int ch, SdlColor fg) {
  final ttfRenderGlyphBlendedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint16 ch, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch,
          SdlColor fg)>('TTF_RenderGlyph_Blended');
  return ttfRenderGlyphBlendedLookupFunction(font, ch, fg);
}

///
/// Render a single 32-bit glyph at high quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, using alpha
/// blending to dither the font with the given color. This function returns the
/// new surface, or NULL if there was an error.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// This is the same as TTF_RenderGlyph_Blended(), but takes a 32-bit character
/// instead of 16-bit, and thus can render a larger range. If you are sure
/// you'll have an SDL_ttf that's version 2.0.18 or newer, there's no reason
/// not to use this function exclusively.
///
/// You can render at other quality levels with TTF_RenderGlyph32_Solid,
/// TTF_RenderGlyph32_Shaded, and TTF_RenderGlyph32_LCD.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_RenderGlyph32_Solid
/// \sa TTF_RenderGlyph32_Shaded
/// \sa TTF_RenderGlyph32_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_Blended(TTF_Font *font, Uint32 ch, SDL_Color fg)
/// ```
Pointer<SdlSurface> ttfRenderGlyph32Blended(
    Pointer<TtfFont> font, int ch, SdlColor fg) {
  final ttfRenderGlyph32BlendedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint32 ch, SdlColor fg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch,
          SdlColor fg)>('TTF_RenderGlyph32_Blended');
  return ttfRenderGlyph32BlendedLookupFunction(font, ch, fg);
}

///
/// Render Latin1 text at LCD subpixel quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderText_LCD_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_LCD() unless you're sure you have
/// a 1-byte Latin1 encoding. US ASCII characters will work with either
/// function, but most other Unicode characters packed into a `const char *`
/// will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Solid,
/// TTF_RenderText_Shaded, and TTF_RenderText_Blended.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderUTF8_LCD
/// \sa TTF_RenderUNICODE_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_LCD(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderTextLcd(
    Pointer<TtfFont> font, String? text, SdlColor fg, SdlColor bg) {
  final ttfRenderTextLcdLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg)>('TTF_RenderText_LCD');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextLcdLookupFunction(font, textPointer, fg, bg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UTF-8 text at LCD subpixel quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUTF8_LCD_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Solid,
/// TTF_RenderUTF8_Shaded, and TTF_RenderUTF8_Blended.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderUNICODE_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_LCD(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderUtf8Lcd(
    Pointer<TtfFont> font, String? text, SdlColor fg, SdlColor bg) {
  final ttfRenderUtf8LcdLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Pointer<Utf8> text, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg)>('TTF_RenderUTF8_LCD');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8LcdLookupFunction(font, textPointer, fg, bg);
  calloc.free(textPointer);
  return result;
}

///
/// Render UCS-2 text at LCD subpixel quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// This will not word-wrap the string; you'll get a surface with a single line
/// of text, as long as the string requires. You can use
/// TTF_RenderUNICODE_LCD_Wrapped() instead if you need to wrap the output to
/// multiple lines.
///
/// This will not wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with TTF_RenderUNICODE_Solid,
/// TTF_RenderUNICODE_Shaded, and TTF_RenderUNICODE_Blended.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderUTF8_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_LCD(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeLcd(
    Pointer<TtfFont> font, Pointer<Uint16> text, SdlColor fg, SdlColor bg) {
  final ttfRenderUnicodeLcdLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, SdlColor bg)>('TTF_RenderUNICODE_LCD');
  return ttfRenderUnicodeLcdLookupFunction(font, text, fg, bg);
}

///
/// Render word-wrapped Latin1 text at LCD subpixel quality to a new ARGB
/// surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You almost certainly want TTF_RenderUTF8_LCD_Wrapped() unless you're sure
/// you have a 1-byte Latin1 encoding. US ASCII characters will work with
/// either function, but most other Unicode characters packed into a `const
/// char *` will need UTF-8.
///
/// You can render at other quality levels with TTF_RenderText_Solid_Wrapped,
/// TTF_RenderText_Shaded_Wrapped, and TTF_RenderText_Blended_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in Latin1 encoding.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderUTF8_LCD_Wrapped
/// \sa TTF_RenderUNICODE_LCD_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_LCD_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderTextLcdWrapped(Pointer<TtfFont> font, String? text,
    SdlColor fg, SdlColor bg, int wrapLength) {
  final ttfRenderTextLcdWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font,
          Pointer<Utf8> text,
          SdlColor fg,
          SdlColor bg,
          int wrapLength)>('TTF_RenderText_LCD_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderTextLcdWrappedLookupFunction(
      font, textPointer, fg, bg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UTF-8 text at LCD subpixel quality to a new ARGB
/// surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// You can render at other quality levels with TTF_RenderUTF8_Solid_Wrapped,
/// TTF_RenderUTF8_Shaded_Wrapped, and TTF_RenderUTF8_Blended_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UTF-8 encoding.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderUTF8_Solid_Wrapped
/// \sa TTF_RenderUTF8_Shaded_Wrapped
/// \sa TTF_RenderUTF8_Blended_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUTF8_LCD_Wrapped(TTF_Font *font, const char *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUtf8LcdWrapped(Pointer<TtfFont> font, String? text,
    SdlColor fg, SdlColor bg, int wrapLength) {
  final ttfRenderUtf8LcdWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Utf8> text,
          SdlColor fg, SdlColor bg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font,
          Pointer<Utf8> text,
          SdlColor fg,
          SdlColor bg,
          int wrapLength)>('TTF_RenderUTF8_LCD_Wrapped');
  final textPointer = text != null ? text.toNativeUtf8() : nullptr;
  final result = ttfRenderUtf8LcdWrappedLookupFunction(
      font, textPointer, fg, bg, wrapLength);
  calloc.free(textPointer);
  return result;
}

///
/// Render word-wrapped UCS-2 text at LCD subpixel quality to a new ARGB
/// surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// Text is wrapped to multiple lines on line endings and on word boundaries if
/// it extends beyond `wrapLength` in pixels.
///
/// If wrapLength is 0, this function will only wrap on newline characters.
///
/// Please note that this function is named "Unicode" but currently expects
/// UCS-2 encoding (16 bits per codepoint). This does not give you access to
/// large Unicode values, such as emoji glyphs. These codepoints are accessible
/// through the UTF-8 version of this function.
///
/// You can render at other quality levels with
/// TTF_RenderUNICODE_Solid_Wrapped, TTF_RenderUNICODE_Shaded_Wrapped, and
/// TTF_RenderUNICODE_Blended_Wrapped.
///
/// \param font the font to render with.
/// \param text text to render, in UCS-2 encoding.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderUTF8_LCD_Wrapped
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderUNICODE_LCD_Wrapped(TTF_Font *font, const Uint16 *text, SDL_Color fg, SDL_Color bg, Uint32 wrapLength)
/// ```
Pointer<SdlSurface> ttfRenderUnicodeLcdWrapped(Pointer<TtfFont> font,
    Pointer<Uint16> text, SdlColor fg, SdlColor bg, int wrapLength) {
  final ttfRenderUnicodeLcdWrappedLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, Pointer<Uint16> text,
          SdlColor fg, SdlColor bg, Uint32 wrapLength),
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font,
          Pointer<Uint16> text,
          SdlColor fg,
          SdlColor bg,
          int wrapLength)>('TTF_RenderUNICODE_LCD_Wrapped');
  return ttfRenderUnicodeLcdWrappedLookupFunction(
      font, text, fg, bg, wrapLength);
}

///
/// Render a single 16-bit glyph at LCD subpixel quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// Note that this version of the function takes a 16-bit character code, which
/// covers the Basic Multilingual Plane, but is insufficient to cover the
/// entire set of possible Unicode values, including emoji glyphs. You should
/// use TTF_RenderGlyph32_LCD() instead, which offers the same functionality
/// but takes a 32-bit codepoint instead.
///
/// This function only exists for consistency with the existing API at the time
/// of its addition.
///
/// You can render at other quality levels with TTF_RenderGlyph_Solid,
/// TTF_RenderGlyph_Shaded, and TTF_RenderGlyph_Blended.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderGlyph32_LCD
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_LCD(TTF_Font *font, Uint16 ch, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderGlyphLcd(
    Pointer<TtfFont> font, int ch, SdlColor fg, SdlColor bg) {
  final ttfRenderGlyphLcdLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint16 ch, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch, SdlColor fg,
          SdlColor bg)>('TTF_RenderGlyph_LCD');
  return ttfRenderGlyphLcdLookupFunction(font, ch, fg, bg);
}

///
/// Render a single 32-bit glyph at LCD subpixel quality to a new ARGB surface.
///
/// This function will allocate a new 32-bit, ARGB surface, and render
/// alpha-blended text using FreeType's LCD subpixel rendering. This function
/// returns the new surface, or NULL if there was an error.
///
/// The glyph is rendered without any padding or centering in the X direction,
/// and aligned normally in the Y direction.
///
/// This is the same as TTF_RenderGlyph_LCD(), but takes a 32-bit character
/// instead of 16-bit, and thus can render a larger range. Between the two, you
/// should always use this function.
///
/// You can render at other quality levels with TTF_RenderGlyph32_Solid,
/// TTF_RenderGlyph32_Shaded, and TTF_RenderGlyph32_Blended.
///
/// \param font the font to render with.
/// \param ch the character to render.
/// \param fg the foreground color for the text.
/// \param bg the background color for the text.
/// \returns a new 32-bit, ARGB surface, or NULL if there was an error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// \sa TTF_RenderGlyph32_Solid
/// \sa TTF_RenderGlyph32_Shaded
/// \sa TTF_RenderGlyph32_Blended
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph32_LCD(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg)
/// ```
Pointer<SdlSurface> ttfRenderGlyph32Lcd(
    Pointer<TtfFont> font, int ch, SdlColor fg, SdlColor bg) {
  final ttfRenderGlyph32LcdLookupFunction = libSdl2Ttf.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<TtfFont> font, Uint32 ch, SdlColor fg, SdlColor bg),
      Pointer<SdlSurface> Function(Pointer<TtfFont> font, int ch, SdlColor fg,
          SdlColor bg)>('TTF_RenderGlyph32_LCD');
  return ttfRenderGlyph32LcdLookupFunction(font, ch, fg, bg);
}

///
/// Dispose of a previously-created font.
///
/// Call this when done with a font. This function will free any resources
/// associated with it.
///
/// The font is not valid after being passed to this function. String pointers
/// from functions that return information on this font, such as
/// TTF_FontFaceFamilyName() and TTF_FontFaceStyleName(), are no longer valid
/// after this call, as well.
///
/// \param font the font to dispose of.
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_OpenFontIndexDPIRW
/// \sa TTF_OpenFontRW
/// \sa TTF_OpenFontDPI
/// \sa TTF_OpenFontDPIRW
/// \sa TTF_OpenFontIndex
/// \sa TTF_OpenFontIndexDPI
/// \sa TTF_OpenFontIndexDPIRW
/// \sa TTF_OpenFontIndexRW
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_CloseFont(TTF_Font *font)
/// ```
void ttfCloseFont(Pointer<TtfFont> font) {
  final ttfCloseFontLookupFunction = libSdl2Ttf.lookupFunction<
      Void Function(Pointer<TtfFont> font),
      void Function(Pointer<TtfFont> font)>('TTF_CloseFont');
  return ttfCloseFontLookupFunction(font);
}

///
/// Deinitialize SDL_ttf.
///
/// You must call this when done with the library, to free internal resources.
/// It is safe to call this when the library isn't initialized, as it will just
/// return immediately.
///
/// Once you have as many quit calls as you have had successful calls to
/// TTF_Init, the library will actually deinitialize.
///
/// Please note that this does not automatically close any fonts that are still
/// open at the time of deinitialization, and it is possibly not safe to close
/// them afterwards, as parts of the library will no longer be initialized to
/// deal with it. A well-written program should call TTF_CloseFont() on any
/// open fonts before calling this function!
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// ```c
/// extern DECLSPEC void SDLCALL TTF_Quit(void)
/// ```
void ttfQuit() {
  final ttfQuitLookupFunction =
      libSdl2Ttf.lookupFunction<Void Function(), void Function()>('TTF_Quit');
  return ttfQuitLookupFunction();
}

///
/// Check if SDL_ttf is initialized.
///
/// This reports the number of times the library has been initialized by a call
/// to TTF_Init(), without a paired deinitialization request from TTF_Quit().
///
/// In short: if it's greater than zero, the library is currently initialized
/// and ready to work. If zero, it is not initialized.
///
/// Despite the return value being a signed integer, this function should not
/// return a negative number.
///
/// \returns the current number of initialization calls, that need to
/// eventually be paired with this many calls to TTF_Quit().
///
/// \since This function is available since SDL_ttf 2.0.12.
///
/// \sa TTF_Init
/// \sa TTF_Quit
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_WasInit(void)
/// ```
int ttfWasInit() {
  final ttfWasInitLookupFunction = libSdl2Ttf
      .lookupFunction<Int32 Function(), int Function()>('TTF_WasInit');
  return ttfWasInitLookupFunction();
}

///
/// Query the kerning size of two 16-bit glyphs.
///
/// Note that this version of the function takes 16-bit character
/// codes, which covers the Basic Multilingual Plane, but is insufficient
/// to cover the entire set of possible Unicode values, including emoji
/// glyphs. You should use TTF_GetFontKerningSizeGlyphs32() instead, which
/// offers the same functionality but takes a 32-bit codepoints instead.
///
/// The only reason to use this function is that it was available since
/// the beginning of time, more or less.
///
/// \param font the font to query.
/// \param previous_ch the previous character's code, 16 bits.
/// \param ch the current character's code, 16 bits.
/// \returns The kerning size between the two specified characters, in pixels, or -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.14.
///
/// \sa TTF_GetFontKerningSizeGlyphs32
///
/// ```c
/// extern DECLSPEC int TTF_GetFontKerningSizeGlyphs(TTF_Font *font, Uint16 previous_ch, Uint16 ch)
/// ```
int ttfGetFontKerningSizeGlyphs(Pointer<TtfFont> font, int previousCh, int ch) {
  final ttfGetFontKerningSizeGlyphsLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Uint16 previousCh, Uint16 ch),
      int Function(Pointer<TtfFont> font, int previousCh,
          int ch)>('TTF_GetFontKerningSizeGlyphs');
  return ttfGetFontKerningSizeGlyphsLookupFunction(font, previousCh, ch);
}

///
/// Query the kerning size of two 32-bit glyphs.
///
/// This is the same as TTF_GetFontKerningSizeGlyphs(), but takes 32-bit
/// characters instead of 16-bit, and thus can manage a larger range. If
/// you are sure you'll have an SDL_ttf that's version 2.0.18 or newer,
/// there's no reason not to use this function exclusively.
///
/// \param font the font to query.
/// \param previous_ch the previous character's code, 32 bits.
/// \param ch the current character's code, 32 bits.
/// \returns The kerning size between the two specified characters, in pixels, or -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// ```c
/// extern DECLSPEC int TTF_GetFontKerningSizeGlyphs32(TTF_Font *font, Uint32 previous_ch, Uint32 ch)
/// ```
int ttfGetFontKerningSizeGlyphs32(
    Pointer<TtfFont> font, int previousCh, int ch) {
  final ttfGetFontKerningSizeGlyphs32LookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Uint32 previousCh, Uint32 ch),
      int Function(Pointer<TtfFont> font, int previousCh,
          int ch)>('TTF_GetFontKerningSizeGlyphs32');
  return ttfGetFontKerningSizeGlyphs32LookupFunction(font, previousCh, ch);
}

///
/// Enable Signed Distance Field rendering for a font.
///
/// This works with the Blended APIs. SDF is a technique that
/// helps fonts look sharp even when scaling and rotating.
///
/// This clears already-generated glyphs, if any, from the cache.
///
/// \param font the font to set SDF support on.
/// \param on_off SDL_TRUE to enable SDF, SDL_FALSE to disable.
///
/// \returns 0 on success, -1 on error.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_GetFontSDF
///
/// ```c
/// extern DECLSPEC int TTF_SetFontSDF(TTF_Font *font, SDL_bool on_off)
/// ```
int ttfSetFontSdf(Pointer<TtfFont> font, bool onOff) {
  final ttfSetFontSdfLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Int32 onOff),
      int Function(Pointer<TtfFont> font, int onOff)>('TTF_SetFontSDF');
  return ttfSetFontSdfLookupFunction(font, onOff ? 1 : 0);
}

///
/// Query whether Signed Distance Field rendering is enabled for a font.
///
/// \param font the font to query
///
/// \returns SDL_TRUE if enabled, SDL_FALSE otherwise.
///
/// \since This function is available since SDL_ttf 2.0.18.
///
/// \sa TTF_SetFontSDF
///
/// ```c
/// extern DECLSPEC SDL_bool TTF_GetFontSDF(const TTF_Font *font)
/// ```
bool ttfGetFontSdf(Pointer<TtfFont> font) {
  final ttfGetFontSdfLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font),
      int Function(Pointer<TtfFont> font)>('TTF_GetFontSDF');
  return ttfGetFontSdfLookupFunction(font) == 1;
}

///
/// Set direction to be used for text shaping by a font.
///
/// Any value supplied here will override the global direction set with the
/// deprecated TTF_SetDirection().
///
/// Possible direction values are:
///
/// - `TTF_DIRECTION_LTR` (Left to Right)
/// - `TTF_DIRECTION_RTL` (Right to Left)
/// - `TTF_DIRECTION_TTB` (Top to Bottom)
/// - `TTF_DIRECTION_BTT` (Bottom to Top)
///
/// If SDL_ttf was not built with HarfBuzz support, this function returns -1.
///
/// \param font the font to specify a direction for.
/// \param direction the new direction for text to flow.
/// \returns 0 on success, or -1 on error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetFontDirection(TTF_Font *font, TTF_Direction direction)
/// ```
int ttfSetFontDirection(Pointer<TtfFont> font, int direction) {
  final ttfSetFontDirectionLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Int32 direction),
      int Function(
          Pointer<TtfFont> font, int direction)>('TTF_SetFontDirection');
  return ttfSetFontDirectionLookupFunction(font, direction);
}

///
/// Set script to be used for text shaping by a font.
///
/// Any value supplied here will override the global script set with the
/// deprecated TTF_SetScript().
///
/// The supplied script value must be a null-terminated string of exactly four
/// characters.
///
/// If SDL_ttf was not built with HarfBuzz support, this function returns -1.
///
/// \param font the font to specify a direction for.
/// \param script null-terminated string of exactly 4 characters.
/// \returns 0 on success, or -1 on error.
///
/// \since This function is available since SDL_ttf 2.20.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL TTF_SetFontScriptName(TTF_Font *font, const char *script)
/// ```
int ttfSetFontScriptName(Pointer<TtfFont> font, String? script) {
  final ttfSetFontScriptNameLookupFunction = libSdl2Ttf.lookupFunction<
      Int32 Function(Pointer<TtfFont> font, Pointer<Utf8> script),
      int Function(Pointer<TtfFont> font,
          Pointer<Utf8> script)>('TTF_SetFontScriptName');
  final scriptPointer = script != null ? script.toNativeUtf8() : nullptr;
  final result = ttfSetFontScriptNameLookupFunction(font, scriptPointer);
  calloc.free(scriptPointer);
  return result;
}
