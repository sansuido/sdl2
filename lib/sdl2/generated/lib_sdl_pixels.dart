// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Get the human readable name of a pixel format.
/// 
/// \param format the pixel format to query
/// \returns the human readable name of the specified pixel format or
/// `SDL_PIXELFORMAT_UNKNOWN` if the format isn't recognized.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Convert one of the enumerated pixel formats to a bpp value and RGBA masks.
/// 
/// \param format one of the SDL_PixelFormatEnum values
/// \param bpp a bits per pixel value; usually 15, 16, or 32
/// \param Rmask a pointer filled in with the red mask for the format
/// \param Gmask a pointer filled in with the green mask for the format
/// \param Bmask a pointer filled in with the blue mask for the format
/// \param Amask a pointer filled in with the alpha mask for the format
/// \returns SDL_TRUE on success or SDL_FALSE if the conversion wasn't
/// possible; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_MasksToPixelFormatEnum
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
/// Convert a bpp value and RGBA masks to an enumerated pixel format.
/// 
/// This will return `SDL_PIXELFORMAT_UNKNOWN` if the conversion wasn't
/// possible.
/// 
/// \param bpp a bits per pixel value; usually 15, 16, or 32
/// \param Rmask the red mask for the format
/// \param Gmask the green mask for the format
/// \param Bmask the blue mask for the format
/// \param Amask the alpha mask for the format
/// \returns one of the SDL_PixelFormatEnum values
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_PixelFormatEnumToMasks
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
/// Create an SDL_PixelFormat structure corresponding to a pixel format.
/// 
/// Returned structure may come from a shared global cache (i.e. not newly
/// allocated), and hence should not be modified, especially the palette. Weird
/// errors such as `Blit combination not supported` may occur.
/// 
/// \param pixel_format one of the SDL_PixelFormatEnum values
/// \returns the new SDL_PixelFormat structure or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FreeFormat
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
/// Free an SDL_PixelFormat structure allocated by SDL_AllocFormat().
/// 
/// \param format the SDL_PixelFormat structure to free
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AllocFormat
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
/// Create a palette structure with the specified number of color entries.
/// 
/// The palette entries are initialized to white.
/// 
/// \param ncolors represents the number of color entries in the color palette
/// \returns a new SDL_Palette structure on success or NULL on failure (e.g. if
/// there wasn't enough memory); call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FreePalette
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
/// Set the palette for a pixel format structure.
/// 
/// \param format the SDL_PixelFormat structure that will use the palette
/// \param palette the SDL_Palette structure that will be used
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AllocPalette
/// \sa SDL_FreePalette
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
/// Set a range of colors in a palette.
/// 
/// \param palette the SDL_Palette structure to modify
/// \param colors an array of SDL_Color structures to copy into the palette
/// \param firstcolor the index of the first palette entry to modify
/// \param ncolors the number of entries to modify
/// \returns 0 on success or a negative error code if not all of the colors
/// could be set; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AllocPalette
/// \sa SDL_CreateRGBSurface
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
/// Free a palette created with SDL_AllocPalette().
/// 
/// \param palette the SDL_Palette structure to be freed
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AllocPalette
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
/// Map an RGB triple to an opaque pixel value for a given pixel format.
/// 
/// This function maps the RGB color value to the specified pixel format and
/// returns the pixel value best approximating the given RGB color value for
/// the given pixel format.
/// 
/// If the format has a palette (8-bit) the index of the closest matching color
/// in the palette will be returned.
/// 
/// If the specified pixel format has an alpha component it will be returned as
/// all 1 bits (fully opaque).
/// 
/// If the pixel format bpp (color depth) is less than 32-bpp then the unused
/// upper bits of the return value can safely be ignored (e.g., with a 16-bpp
/// format the return value can be assigned to a Uint16, and similarly a Uint8
/// for an 8-bpp format).
/// 
/// \param format an SDL_PixelFormat structure describing the pixel format
/// \param r the red component of the pixel in the range 0-255
/// \param g the green component of the pixel in the range 0-255
/// \param b the blue component of the pixel in the range 0-255
/// \returns a pixel value
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRGB
/// \sa SDL_GetRGBA
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
/// Map an RGBA quadruple to a pixel value for a given pixel format.
/// 
/// This function maps the RGBA color value to the specified pixel format and
/// returns the pixel value best approximating the given RGBA color value for
/// the given pixel format.
/// 
/// If the specified pixel format has no alpha component the alpha value will
/// be ignored (as it will be in formats with a palette).
/// 
/// If the format has a palette (8-bit) the index of the closest matching color
/// in the palette will be returned.
/// 
/// If the pixel format bpp (color depth) is less than 32-bpp then the unused
/// upper bits of the return value can safely be ignored (e.g., with a 16-bpp
/// format the return value can be assigned to a Uint16, and similarly a Uint8
/// for an 8-bpp format).
/// 
/// \param format an SDL_PixelFormat structure describing the format of the
/// pixel
/// \param r the red component of the pixel in the range 0-255
/// \param g the green component of the pixel in the range 0-255
/// \param b the blue component of the pixel in the range 0-255
/// \param a the alpha component of the pixel in the range 0-255
/// \returns a pixel value
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRGB
/// \sa SDL_GetRGBA
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
/// Get RGB values from a pixel in the specified format.
/// 
/// This function uses the entire 8-bit [0..255] range when converting color
/// components from pixel formats with less than 8-bits per RGB component
/// (e.g., a completely white pixel in 16-bit RGB565 format would return [0xff,
/// 0xff, 0xff] not [0xf8, 0xfc, 0xf8]).
/// 
/// \param pixel a pixel value
/// \param format an SDL_PixelFormat structure describing the format of the
/// pixel
/// \param r a pointer filled in with the red component
/// \param g a pointer filled in with the green component
/// \param b a pointer filled in with the blue component
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRGBA
/// \sa SDL_MapRGB
/// \sa SDL_MapRGBA
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
/// Get RGBA values from a pixel in the specified format.
/// 
/// This function uses the entire 8-bit [0..255] range when converting color
/// components from pixel formats with less than 8-bits per RGB component
/// (e.g., a completely white pixel in 16-bit RGB565 format would return [0xff,
/// 0xff, 0xff] not [0xf8, 0xfc, 0xf8]).
/// 
/// If the surface has no alpha component, the alpha will be returned as 0xff
/// (100% opaque).
/// 
/// \param pixel a pixel value
/// \param format an SDL_PixelFormat structure describing the format of the
/// pixel
/// \param r a pointer filled in with the red component
/// \param g a pointer filled in with the green component
/// \param b a pointer filled in with the blue component
/// \param a a pointer filled in with the alpha component
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRGB
/// \sa SDL_MapRGB
/// \sa SDL_MapRGBA
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
/// Calculate a 256 entry gamma ramp for a gamma value.
/// 
/// \param gamma a gamma value where 0.0 is black and 1.0 is identity
/// \param ramp an array of 256 values filled in with the gamma ramp
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowGammaRamp
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

