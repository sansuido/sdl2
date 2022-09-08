// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../dylib.dart' as dylib;
import 'struct_sdl.dart';
import 'struct_sdl_ttf.dart';

final DLL_SDL2_ttf = dylib.dylibOpen('SDL2_ttf');

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
Pointer<SDL_version>? TTF_Linked_Version() {
  final _TTF_Linked_Version = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('TTF_Linked_Version');
  return _TTF_Linked_Version();
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
void TTF_GetFreeTypeVersion(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch) {
  final _TTF_GetFreeTypeVersion = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch),
      void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch)>('TTF_GetFreeTypeVersion');
  return _TTF_GetFreeTypeVersion(major, minor, patch);
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
void TTF_GetHarfBuzzVersion(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch) {
  final _TTF_GetHarfBuzzVersion = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch),
      void Function(Pointer<Int32>? major, Pointer<Int32>? minor, Pointer<Int32>? patch)>('TTF_GetHarfBuzzVersion');
  return _TTF_GetHarfBuzzVersion(major, minor, patch);
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
void TTF_ByteSwappedUNICODE(int swapped) {
  final _TTF_ByteSwappedUNICODE = DLL_SDL2_ttf.lookupFunction<
      Void Function(Int32 swapped),
      void Function(int swapped)>('TTF_ByteSwappedUNICODE');
  return _TTF_ByteSwappedUNICODE(swapped);
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
int TTF_Init() {
  final _TTF_Init = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_Init');
  return _TTF_Init();
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
Pointer<TTF_Font>? TTF_OpenFont(String file, int ptsize) {
  final _TTF_OpenFont = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize)>('TTF_OpenFont');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFont(_filePointer, ptsize);
  calloc.free(_filePointer);
  return _result;
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
Pointer<TTF_Font>? TTF_OpenFontIndex(String file, int ptsize, int index) {
  final _TTF_OpenFontIndex = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Int32 index),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int index)>('TTF_OpenFontIndex');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontIndex(_filePointer, ptsize, index);
  calloc.free(_filePointer);
  return _result;
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
Pointer<TTF_Font>? TTF_OpenFontRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize) {
  final _TTF_OpenFontRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize)>('TTF_OpenFontRW');
  return _TTF_OpenFontRW(src, freesrc, ptsize);
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
Pointer<TTF_Font>? TTF_OpenFontIndexRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index) {
  final _TTF_OpenFontIndexRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Int32 index),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index)>('TTF_OpenFontIndexRW');
  return _TTF_OpenFontIndexRW(src, freesrc, ptsize, index);
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
Pointer<TTF_Font>? TTF_OpenFontDPI(String file, int ptsize, int hdpi, int vdpi) {
  final _TTF_OpenFontDPI = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int hdpi, int vdpi)>('TTF_OpenFontDPI');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontDPI(_filePointer, ptsize, hdpi, vdpi);
  calloc.free(_filePointer);
  return _result;
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
Pointer<TTF_Font>? TTF_OpenFontIndexDPI(String file, int ptsize, int index, int hdpi, int vdpi) {
  final _TTF_OpenFontIndexDPI = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, Int32 ptsize, Int32 index, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<Utf8>? file, int ptsize, int index, int hdpi, int vdpi)>('TTF_OpenFontIndexDPI');
  final _filePointer = file.toNativeUtf8();
  final _result = _TTF_OpenFontIndexDPI(_filePointer, ptsize, index, hdpi, vdpi);
  calloc.free(_filePointer);
  return _result;
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
Pointer<TTF_Font>? TTF_OpenFontDPIRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int hdpi, int vdpi) {
  final _TTF_OpenFontDPIRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int hdpi, int vdpi)>('TTF_OpenFontDPIRW');
  return _TTF_OpenFontDPIRW(src, freesrc, ptsize, hdpi, vdpi);
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
Pointer<TTF_Font>? TTF_OpenFontIndexDPIRW(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index, int hdpi, int vdpi) {
  final _TTF_OpenFontIndexDPIRW = DLL_SDL2_ttf.lookupFunction<
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Int32 ptsize, Int32 index, Uint32 hdpi, Uint32 vdpi),
      Pointer<TTF_Font>? Function(Pointer<SDL_RWops>? src, int freesrc, int ptsize, int index, int hdpi, int vdpi)>('TTF_OpenFontIndexDPIRW');
  return _TTF_OpenFontIndexDPIRW(src, freesrc, ptsize, index, hdpi, vdpi);
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
int TTF_SetFontSize(Pointer<TTF_Font>? font, int ptsize) {
  final _TTF_SetFontSize = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 ptsize),
      int Function(Pointer<TTF_Font>? font, int ptsize)>('TTF_SetFontSize');
  return _TTF_SetFontSize(font, ptsize);
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
int TTF_SetFontSizeDPI(Pointer<TTF_Font>? font, int ptsize, int hdpi, int vdpi) {
  final _TTF_SetFontSizeDPI = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 ptsize, Uint32 hdpi, Uint32 vdpi),
      int Function(Pointer<TTF_Font>? font, int ptsize, int hdpi, int vdpi)>('TTF_SetFontSizeDPI');
  return _TTF_SetFontSizeDPI(font, ptsize, hdpi, vdpi);
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
int TTF_GetFontStyle(Pointer<TTF_Font>? font) {
  final _TTF_GetFontStyle = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontStyle');
  return _TTF_GetFontStyle(font);
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
void TTF_SetFontStyle(Pointer<TTF_Font>? font, int style) {
  final _TTF_SetFontStyle = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 style),
      void Function(Pointer<TTF_Font>? font, int style)>('TTF_SetFontStyle');
  return _TTF_SetFontStyle(font, style);
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
int TTF_GetFontOutline(Pointer<TTF_Font>? font) {
  final _TTF_GetFontOutline = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontOutline');
  return _TTF_GetFontOutline(font);
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
void TTF_SetFontOutline(Pointer<TTF_Font>? font, int outline) {
  final _TTF_SetFontOutline = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 outline),
      void Function(Pointer<TTF_Font>? font, int outline)>('TTF_SetFontOutline');
  return _TTF_SetFontOutline(font, outline);
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
int TTF_GetFontHinting(Pointer<TTF_Font>? font) {
  final _TTF_GetFontHinting = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontHinting');
  return _TTF_GetFontHinting(font);
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
void TTF_SetFontHinting(Pointer<TTF_Font>? font, int hinting) {
  final _TTF_SetFontHinting = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 hinting),
      void Function(Pointer<TTF_Font>? font, int hinting)>('TTF_SetFontHinting');
  return _TTF_SetFontHinting(font, hinting);
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
int TTF_GetFontWrappedAlign(Pointer<TTF_Font>? font) {
  final _TTF_GetFontWrappedAlign = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontWrappedAlign');
  return _TTF_GetFontWrappedAlign(font);
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
void TTF_SetFontWrappedAlign(Pointer<TTF_Font>? font, int align) {
  final _TTF_SetFontWrappedAlign = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 align),
      void Function(Pointer<TTF_Font>? font, int align)>('TTF_SetFontWrappedAlign');
  return _TTF_SetFontWrappedAlign(font, align);
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
int TTF_FontHeight(Pointer<TTF_Font>? font) {
  final _TTF_FontHeight = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontHeight');
  return _TTF_FontHeight(font);
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
int TTF_FontAscent(Pointer<TTF_Font>? font) {
  final _TTF_FontAscent = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontAscent');
  return _TTF_FontAscent(font);
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
int TTF_FontDescent(Pointer<TTF_Font>? font) {
  final _TTF_FontDescent = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontDescent');
  return _TTF_FontDescent(font);
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
int TTF_FontLineSkip(Pointer<TTF_Font>? font) {
  final _TTF_FontLineSkip = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontLineSkip');
  return _TTF_FontLineSkip(font);
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
int TTF_GetFontKerning(Pointer<TTF_Font>? font) {
  final _TTF_GetFontKerning = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontKerning');
  return _TTF_GetFontKerning(font);
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
void TTF_SetFontKerning(Pointer<TTF_Font>? font, int allowed) {
  final _TTF_SetFontKerning = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font, Int32 allowed),
      void Function(Pointer<TTF_Font>? font, int allowed)>('TTF_SetFontKerning');
  return _TTF_SetFontKerning(font, allowed);
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
int TTF_FontFaces(Pointer<TTF_Font>? font) {
  final _TTF_FontFaces = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontFaces');
  return _TTF_FontFaces(font);
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
int TTF_FontFaceIsFixedWidth(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceIsFixedWidth = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_FontFaceIsFixedWidth');
  return _TTF_FontFaceIsFixedWidth(font);
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
String TTF_FontFaceFamilyName(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceFamilyName = DLL_SDL2_ttf.lookupFunction<
      Pointer<Utf8>? Function(Pointer<TTF_Font>? font),
      Pointer<Utf8>? Function(Pointer<TTF_Font>? font)>('TTF_FontFaceFamilyName');
  return _TTF_FontFaceFamilyName(font)!.toDartString();
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
String TTF_FontFaceStyleName(Pointer<TTF_Font>? font) {
  final _TTF_FontFaceStyleName = DLL_SDL2_ttf.lookupFunction<
      Pointer<Utf8>? Function(Pointer<TTF_Font>? font),
      Pointer<Utf8>? Function(Pointer<TTF_Font>? font)>('TTF_FontFaceStyleName');
  return _TTF_FontFaceStyleName(font)!.toDartString();
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
int TTF_GlyphIsProvided(Pointer<TTF_Font>? font, int ch) {
  final _TTF_GlyphIsProvided = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 ch),
      int Function(Pointer<TTF_Font>? font, int ch)>('TTF_GlyphIsProvided');
  return _TTF_GlyphIsProvided(font, ch);
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
int TTF_GlyphIsProvided32(Pointer<TTF_Font>? font, int ch) {
  final _TTF_GlyphIsProvided32 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint32 ch),
      int Function(Pointer<TTF_Font>? font, int ch)>('TTF_GlyphIsProvided32');
  return _TTF_GlyphIsProvided32(font, ch);
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
int TTF_GlyphMetrics(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance) {
  final _TTF_GlyphMetrics = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance),
      int Function(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance)>('TTF_GlyphMetrics');
  return _TTF_GlyphMetrics(font, ch, minx, maxx, miny, maxy, advance);
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
int TTF_GlyphMetrics32(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance) {
  final _TTF_GlyphMetrics32 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint32 ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance),
      int Function(Pointer<TTF_Font>? font, int ch, Pointer<Int32>? minx, Pointer<Int32>? maxx, Pointer<Int32>? miny, Pointer<Int32>? maxy, Pointer<Int32>? advance)>('TTF_GlyphMetrics32');
  return _TTF_GlyphMetrics32(font, ch, minx, maxx, miny, maxy, advance);
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
int TTF_SizeText(Pointer<TTF_Font>? font, String text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeText = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeText');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_SizeText(font, _textPointer, w, h);
  calloc.free(_textPointer);
  return _result;
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
int TTF_SizeUTF8(Pointer<TTF_Font>? font, String text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeUTF8 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeUTF8');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_SizeUTF8(font, _textPointer, w, h);
  calloc.free(_textPointer);
  return _result;
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
int TTF_SizeUNICODE(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _TTF_SizeUNICODE = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Pointer<Int32>? w, Pointer<Int32>? h)>('TTF_SizeUNICODE');
  return _TTF_SizeUNICODE(font, text, w, h);
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
int TTF_MeasureText(Pointer<TTF_Font>? font, String text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count) {
  final _TTF_MeasureText = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Int32 measure_width, Pointer<Int32>? extent, Pointer<Int32>? count),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count)>('TTF_MeasureText');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_MeasureText(font, _textPointer, measure_width, extent, count);
  calloc.free(_textPointer);
  return _result;
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
int TTF_MeasureUTF8(Pointer<TTF_Font>? font, String text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count) {
  final _TTF_MeasureUTF8 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, Int32 measure_width, Pointer<Int32>? extent, Pointer<Int32>? count),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count)>('TTF_MeasureUTF8');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_MeasureUTF8(font, _textPointer, measure_width, extent, count);
  calloc.free(_textPointer);
  return _result;
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
int TTF_MeasureUNICODE(Pointer<TTF_Font>? font, Pointer<Uint16>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count) {
  final _TTF_MeasureUNICODE = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, Int32 measure_width, Pointer<Int32>? extent, Pointer<Int32>? count),
      int Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, int measure_width, Pointer<Int32>? extent, Pointer<Int32>? count)>('TTF_MeasureUNICODE');
  return _TTF_MeasureUNICODE(font, text, measure_width, extent, count);
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
Pointer<SDL_Surface>? TTF_RenderText_Solid(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderText_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderText_Solid');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Solid(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_Solid(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderUTF8_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderUTF8_Solid');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Solid(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_Solid(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg) {
  final _TTF_RenderUNICODE_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg)>('TTF_RenderUNICODE_Solid');
  return _TTF_RenderUNICODE_Solid(font, text, fg);
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
Pointer<SDL_Surface>? TTF_RenderText_Solid_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderText_Solid_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderText_Solid_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Solid_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_Solid_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUTF8_Solid_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUTF8_Solid_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Solid_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_Solid_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUNICODE_Solid_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUNICODE_Solid_Wrapped');
  return _TTF_RenderUNICODE_Solid_Wrapped(font, text, fg, wrapLength);
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
Pointer<SDL_Surface>? TTF_RenderGlyph_Solid(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph_Solid');
  return _TTF_RenderGlyph_Solid(font, ch, fg);
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
Pointer<SDL_Surface>? TTF_RenderGlyph32_Solid(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph32_Solid = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph32_Solid');
  return _TTF_RenderGlyph32_Solid(font, ch, fg);
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
Pointer<SDL_Surface>? TTF_RenderText_Shaded(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderText_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderText_Shaded');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Shaded(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_Shaded(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderUTF8_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUTF8_Shaded');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Shaded(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_Shaded(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderUNICODE_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUNICODE_Shaded');
  return _TTF_RenderUNICODE_Shaded(font, text, fg, bg);
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
Pointer<SDL_Surface>? TTF_RenderText_Shaded_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderText_Shaded_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderText_Shaded_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Shaded_Wrapped(font, _textPointer, fg, bg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_Shaded_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderUTF8_Shaded_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderUTF8_Shaded_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Shaded_Wrapped(font, _textPointer, fg, bg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_Shaded_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderUNICODE_Shaded_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderUNICODE_Shaded_Wrapped');
  return _TTF_RenderUNICODE_Shaded_Wrapped(font, text, fg, bg, wrapLength);
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
Pointer<SDL_Surface>? TTF_RenderGlyph_Shaded(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderGlyph_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph_Shaded');
  return _TTF_RenderGlyph_Shaded(font, ch, fg, bg);
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
Pointer<SDL_Surface>? TTF_RenderGlyph32_Shaded(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderGlyph32_Shaded = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph32_Shaded');
  return _TTF_RenderGlyph32_Shaded(font, ch, fg, bg);
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
Pointer<SDL_Surface>? TTF_RenderText_Blended(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderText_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderText_Blended');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Blended(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_Blended(Pointer<TTF_Font>? font, String text, SDL_Color fg) {
  final _TTF_RenderUTF8_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg)>('TTF_RenderUTF8_Blended');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Blended(font, _textPointer, fg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_Blended(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg) {
  final _TTF_RenderUNICODE_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg)>('TTF_RenderUNICODE_Blended');
  return _TTF_RenderUNICODE_Blended(font, text, fg);
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
Pointer<SDL_Surface>? TTF_RenderText_Blended_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderText_Blended_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderText_Blended_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_Blended_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_Blended_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUTF8_Blended_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUTF8_Blended_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_Blended_Wrapped(font, _textPointer, fg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_Blended_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength) {
  final _TTF_RenderUNICODE_Blended_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, int wrapLength)>('TTF_RenderUNICODE_Blended_Wrapped');
  return _TTF_RenderUNICODE_Blended_Wrapped(font, text, fg, wrapLength);
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
Pointer<SDL_Surface>? TTF_RenderGlyph_Blended(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph_Blended');
  return _TTF_RenderGlyph_Blended(font, ch, fg);
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
Pointer<SDL_Surface>? TTF_RenderGlyph32_Blended(Pointer<TTF_Font>? font, int ch, SDL_Color fg) {
  final _TTF_RenderGlyph32_Blended = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg)>('TTF_RenderGlyph32_Blended');
  return _TTF_RenderGlyph32_Blended(font, ch, fg);
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
Pointer<SDL_Surface>? TTF_RenderText_LCD(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderText_LCD = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderText_LCD');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_LCD(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_LCD(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderUTF8_LCD = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUTF8_LCD');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_LCD(font, _textPointer, fg, bg);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_LCD(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderUNICODE_LCD = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg)>('TTF_RenderUNICODE_LCD');
  return _TTF_RenderUNICODE_LCD(font, text, fg, bg);
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
Pointer<SDL_Surface>? TTF_RenderText_LCD_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderText_LCD_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderText_LCD_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderText_LCD_Wrapped(font, _textPointer, fg, bg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUTF8_LCD_Wrapped(Pointer<TTF_Font>? font, String text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderUTF8_LCD_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Utf8>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderUTF8_LCD_Wrapped');
  final _textPointer = text.toNativeUtf8();
  final _result = _TTF_RenderUTF8_LCD_Wrapped(font, _textPointer, fg, bg, wrapLength);
  calloc.free(_textPointer);
  return _result;
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
Pointer<SDL_Surface>? TTF_RenderUNICODE_LCD_Wrapped(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg, int wrapLength) {
  final _TTF_RenderUNICODE_LCD_Wrapped = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color? fg, SDL_Color? bg, Uint32 wrapLength),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Pointer<Uint16>? text, SDL_Color fg, SDL_Color bg, int wrapLength)>('TTF_RenderUNICODE_LCD_Wrapped');
  return _TTF_RenderUNICODE_LCD_Wrapped(font, text, fg, bg, wrapLength);
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
Pointer<SDL_Surface>? TTF_RenderGlyph_LCD(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderGlyph_LCD = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint16 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph_LCD');
  return _TTF_RenderGlyph_LCD(font, ch, fg, bg);
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
Pointer<SDL_Surface>? TTF_RenderGlyph32_LCD(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg) {
  final _TTF_RenderGlyph32_LCD = DLL_SDL2_ttf.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, Uint32 ch, SDL_Color? fg, SDL_Color? bg),
      Pointer<SDL_Surface>? Function(Pointer<TTF_Font>? font, int ch, SDL_Color fg, SDL_Color bg)>('TTF_RenderGlyph32_LCD');
  return _TTF_RenderGlyph32_LCD(font, ch, fg, bg);
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
void TTF_CloseFont(Pointer<TTF_Font>? font) {
  final _TTF_CloseFont = DLL_SDL2_ttf.lookupFunction<
      Void Function(Pointer<TTF_Font>? font),
      void Function(Pointer<TTF_Font>? font)>('TTF_CloseFont');
  return _TTF_CloseFont(font);
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
void TTF_Quit() {
  final _TTF_Quit = DLL_SDL2_ttf.lookupFunction<
      Void Function(),
      void Function()>('TTF_Quit');
  return _TTF_Quit();
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
int TTF_WasInit() {
  final _TTF_WasInit = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(),
      int Function()>('TTF_WasInit');
  return _TTF_WasInit();
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
int TTF_GetFontKerningSizeGlyphs(Pointer<TTF_Font>? font, int previous_ch, int ch) {
  final _TTF_GetFontKerningSizeGlyphs = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint16 previous_ch, Uint16 ch),
      int Function(Pointer<TTF_Font>? font, int previous_ch, int ch)>('TTF_GetFontKerningSizeGlyphs');
  return _TTF_GetFontKerningSizeGlyphs(font, previous_ch, ch);
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
int TTF_GetFontKerningSizeGlyphs32(Pointer<TTF_Font>? font, int previous_ch, int ch) {
  final _TTF_GetFontKerningSizeGlyphs32 = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Uint32 previous_ch, Uint32 ch),
      int Function(Pointer<TTF_Font>? font, int previous_ch, int ch)>('TTF_GetFontKerningSizeGlyphs32');
  return _TTF_GetFontKerningSizeGlyphs32(font, previous_ch, ch);
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
int TTF_SetFontSDF(Pointer<TTF_Font>? font, int on_off) {
  final _TTF_SetFontSDF = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 on_off),
      int Function(Pointer<TTF_Font>? font, int on_off)>('TTF_SetFontSDF');
  return _TTF_SetFontSDF(font, on_off);
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
int TTF_GetFontSDF(Pointer<TTF_Font>? font) {
  final _TTF_GetFontSDF = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font),
      int Function(Pointer<TTF_Font>? font)>('TTF_GetFontSDF');
  return _TTF_GetFontSDF(font);
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
int TTF_SetFontDirection(Pointer<TTF_Font>? font, int direction) {
  final _TTF_SetFontDirection = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Int32 direction),
      int Function(Pointer<TTF_Font>? font, int direction)>('TTF_SetFontDirection');
  return _TTF_SetFontDirection(font, direction);
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
int TTF_SetFontScriptName(Pointer<TTF_Font>? font, String script) {
  final _TTF_SetFontScriptName = DLL_SDL2_ttf.lookupFunction<
      Int32 Function(Pointer<TTF_Font>? font, Pointer<Utf8>? script),
      int Function(Pointer<TTF_Font>? font, Pointer<Utf8>? script)>('TTF_SetFontScriptName');
  final _scriptPointer = script.toNativeUtf8();
  final _result = _TTF_SetFontScriptName(font, _scriptPointer);
  calloc.free(_scriptPointer);
  return _result;
}

