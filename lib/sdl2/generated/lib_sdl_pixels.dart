// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the human readable name of a pixel format
/// 
/// ```c
/// extern DECLSPEC const char* SDLCALL SDL_GetPixelFormatName(Uint32 format)
/// ```
String SDL_GetPixelFormatName(int format) {
  final _SDL_GetPixelFormatName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Uint32 format),
      Pointer<Utf8>? Function(int format)>('SDL_GetPixelFormatName');
  return _SDL_GetPixelFormatName(format)!.toDartString();
}

/// 
/// \brief Convert one of the enumerated pixel formats to a bpp and RGBA masks.
/// 
/// \return SDL_TRUE, or SDL_FALSE if the conversion wasn't possible.
/// 
/// \sa SDL_MasksToPixelFormatEnum()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_PixelFormatEnumToMasks(Uint32 format, int *bpp, Uint32 * Rmask, Uint32 * Gmask, Uint32 * Bmask, Uint32 * Amask)
/// ```
int SDL_PixelFormatEnumToMasks(int format, Pointer<Int32>? bpp, Pointer<Uint32>? Rmask, Pointer<Uint32>? Gmask, Pointer<Uint32>? Bmask, Pointer<Uint32>? Amask) {
  final _SDL_PixelFormatEnumToMasks = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 format, Pointer<Int32>? bpp, Pointer<Uint32>? Rmask, Pointer<Uint32>? Gmask, Pointer<Uint32>? Bmask, Pointer<Uint32>? Amask),
      int Function(int format, Pointer<Int32>? bpp, Pointer<Uint32>? Rmask, Pointer<Uint32>? Gmask, Pointer<Uint32>? Bmask, Pointer<Uint32>? Amask)>('SDL_PixelFormatEnumToMasks');
  return _SDL_PixelFormatEnumToMasks(format, bpp, Rmask, Gmask, Bmask, Amask);
}

/// 
/// \brief Convert a bpp and RGBA masks to an enumerated pixel format.
/// 
/// \return The pixel format, or ::SDL_PIXELFORMAT_UNKNOWN if the conversion
/// wasn't possible.
/// 
/// \sa SDL_PixelFormatEnumToMasks()
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_MasksToPixelFormatEnum(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
int SDL_MasksToPixelFormatEnum(int bpp, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_MasksToPixelFormatEnum = DLL_SDL2.lookupFunction<
      Uint32 Function(Int32 bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      int Function(int bpp, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_MasksToPixelFormatEnum');
  return _SDL_MasksToPixelFormatEnum(bpp, Rmask, Gmask, Bmask, Amask);
}

/// 
/// \brief Create an SDL_PixelFormat structure from a pixel format enum.
/// 
/// ```c
/// extern DECLSPEC SDL_PixelFormat * SDLCALL SDL_AllocFormat(Uint32 pixel_format)
/// ```
Pointer<SDL_PixelFormat>? SDL_AllocFormat(int pixel_format) {
  final _SDL_AllocFormat = DLL_SDL2.lookupFunction<
      Pointer<SDL_PixelFormat>? Function(Uint32 pixel_format),
      Pointer<SDL_PixelFormat>? Function(int pixel_format)>('SDL_AllocFormat');
  return _SDL_AllocFormat(pixel_format);
}

/// 
/// \brief Free an SDL_PixelFormat structure.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeFormat(SDL_PixelFormat *format)
/// ```
void SDL_FreeFormat(Pointer<SDL_PixelFormat>? format) {
  final _SDL_FreeFormat = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_PixelFormat>? format),
      void Function(Pointer<SDL_PixelFormat>? format)>('SDL_FreeFormat');
  return _SDL_FreeFormat(format);
}

/// 
/// \brief Create a palette structure with the specified number of color
/// entries.
/// 
/// \return A new palette, or NULL if there wasn't enough memory.
/// 
/// \note The palette entries are initialized to white.
/// 
/// \sa SDL_FreePalette()
/// 
/// ```c
/// extern DECLSPEC SDL_Palette *SDLCALL SDL_AllocPalette(int ncolors)
/// ```
Pointer<SDL_Palette>? SDL_AllocPalette(int ncolors) {
  final _SDL_AllocPalette = DLL_SDL2.lookupFunction<
      Pointer<SDL_Palette>? Function(Int32 ncolors),
      Pointer<SDL_Palette>? Function(int ncolors)>('SDL_AllocPalette');
  return _SDL_AllocPalette(ncolors);
}

/// 
/// \brief Set the palette for a pixel format structure.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetPixelFormatPalette(SDL_PixelFormat * format, SDL_Palette *palette)
/// ```
int SDL_SetPixelFormatPalette(Pointer<SDL_PixelFormat>? format, Pointer<SDL_Palette>? palette) {
  final _SDL_SetPixelFormatPalette = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_PixelFormat>? format, Pointer<SDL_Palette>? palette),
      int Function(Pointer<SDL_PixelFormat>? format, Pointer<SDL_Palette>? palette)>('SDL_SetPixelFormatPalette');
  return _SDL_SetPixelFormatPalette(format, palette);
}

/// 
/// \brief Set a range of colors in a palette.
/// 
/// \param palette    The palette to modify.
/// \param colors     An array of colors to copy into the palette.
/// \param firstcolor The index of the first palette entry to modify.
/// \param ncolors    The number of entries to modify.
/// 
/// \return 0 on success, or -1 if not all of the colors could be set.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetPaletteColors(SDL_Palette * palette, const SDL_Color * colors, int firstcolor, int ncolors)
/// ```
int SDL_SetPaletteColors(Pointer<SDL_Palette>? palette, Pointer<SDL_Color>? colors, int firstcolor, int ncolors) {
  final _SDL_SetPaletteColors = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Palette>? palette, Pointer<SDL_Color>? colors, Int32 firstcolor, Int32 ncolors),
      int Function(Pointer<SDL_Palette>? palette, Pointer<SDL_Color>? colors, int firstcolor, int ncolors)>('SDL_SetPaletteColors');
  return _SDL_SetPaletteColors(palette, colors, firstcolor, ncolors);
}

/// 
/// \brief Free a palette created with SDL_AllocPalette().
/// 
/// \sa SDL_AllocPalette()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreePalette(SDL_Palette * palette)
/// ```
void SDL_FreePalette(Pointer<SDL_Palette>? palette) {
  final _SDL_FreePalette = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Palette>? palette),
      void Function(Pointer<SDL_Palette>? palette)>('SDL_FreePalette');
  return _SDL_FreePalette(palette);
}

/// 
/// \brief Maps an RGB triple to an opaque pixel value for a given pixel format.
/// 
/// \sa SDL_MapRGBA
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_MapRGB(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b)
/// ```
int SDL_MapRGB(Pointer<SDL_PixelFormat>? format, int r, int g, int b) {
  final _SDL_MapRGB = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_PixelFormat>? format, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_PixelFormat>? format, int r, int g, int b)>('SDL_MapRGB');
  return _SDL_MapRGB(format, r, g, b);
}

/// 
/// \brief Maps an RGBA quadruple to a pixel value for a given pixel format.
/// 
/// \sa SDL_MapRGB
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_MapRGBA(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int SDL_MapRGBA(Pointer<SDL_PixelFormat>? format, int r, int g, int b, int a) {
  final _SDL_MapRGBA = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_PixelFormat>? format, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_PixelFormat>? format, int r, int g, int b, int a)>('SDL_MapRGBA');
  return _SDL_MapRGBA(format, r, g, b, a);
}

/// 
/// \brief Get the RGB components from a pixel of the specified format.
/// 
/// \sa SDL_GetRGBA
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetRGB(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b)
/// ```
void SDL_GetRGB(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b) {
  final _SDL_GetRGB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b),
      void Function(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b)>('SDL_GetRGB');
  return _SDL_GetRGB(pixel, format, r, g, b);
}

/// 
/// \brief Get the RGBA components from a pixel of the specified format.
/// 
/// \sa SDL_GetRGB
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetRGBA(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
/// ```
void SDL_GetRGBA(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a) {
  final _SDL_GetRGBA = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a),
      void Function(int pixel, Pointer<SDL_PixelFormat>? format, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a)>('SDL_GetRGBA');
  return _SDL_GetRGBA(pixel, format, r, g, b, a);
}

/// 
/// \brief Calculate a 256 entry gamma ramp for a gamma value.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_CalculateGammaRamp(float gamma, Uint16 * ramp)
/// ```
void SDL_CalculateGammaRamp(double gamma, Pointer<Uint16>? ramp) {
  final _SDL_CalculateGammaRamp = DLL_SDL2.lookupFunction<
      Void Function(Float gamma, Pointer<Uint16>? ramp),
      void Function(double gamma, Pointer<Uint16>? ramp)>('SDL_CalculateGammaRamp');
  return _SDL_CalculateGammaRamp(gamma, ramp);
}

