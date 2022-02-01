// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Allocate a new RGB surface.
/// 
/// If `depth` is 4 or 8 bits, an empty palette is allocated for the surface.
/// If `depth` is greater than 8 bits, the pixel format is set using the
/// [RGBA]mask parameters.
/// 
/// The [RGBA]mask parameters are the bitmasks used to extract that color from
/// a pixel. For instance, `Rmask` being 0xFF000000 means the red data is
/// stored in the most significant byte. Using zeros for the RGB masks sets a
/// default value, based on the depth. For example:
/// 
/// ```c++
/// SDL_CreateRGBSurface(0,w,h,32,0,0,0,0);
/// ```
/// 
/// However, using zero for the Amask results in an Amask of 0.
/// 
/// By default surfaces with an alpha mask are set up for blending as with:
/// 
/// ```c++
/// SDL_SetSurfaceBlendMode(surface, SDL_BLENDMODE_BLEND)
/// ```
/// 
/// You can change this by calling SDL_SetSurfaceBlendMode() and selecting a
/// different `blendMode`.
/// 
/// \param flags the flags are unused and should be set to 0
/// \param width the width of the surface
/// \param height the height of the surface
/// \param depth the depth of the surface in bits
/// \param Rmask the red mask for the pixels
/// \param Gmask the green mask for the pixels
/// \param Bmask the blue mask for the pixels
/// \param Amask the alpha mask for the pixels
/// \returns the new SDL_Surface structure that is created or NULL if it fails;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRGBSurfaceFrom
/// \sa SDL_CreateRGBSurfaceWithFormat
/// \sa SDL_FreeSurface
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurface (Uint32 flags, int width, int height, int depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurface(int flags, int width, int height, int depth, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurface = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Uint32 flags, Int32 width, Int32 height, Int32 depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface>? Function(int flags, int width, int height, int depth, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurface');
  return _SDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask);
}

/// 
/// Allocate a new RGB surface with a specific pixel format.
/// 
/// This function operates mostly like SDL_CreateRGBSurface(), except instead
/// of providing pixel color masks, you provide it with a predefined format
/// from SDL_PixelFormatEnum.
/// 
/// \param flags the flags are unused and should be set to 0
/// \param width the width of the surface
/// \param height the height of the surface
/// \param depth the depth of the surface in bits
/// \param format the SDL_PixelFormatEnum for the new surface's pixel format.
/// \returns the new SDL_Surface structure that is created or NULL if it fails;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_CreateRGBSurface
/// \sa SDL_CreateRGBSurfaceFrom
/// \sa SDL_FreeSurface
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurfaceWithFormat (Uint32 flags, int width, int height, int depth, Uint32 format)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurfaceWithFormat(int flags, int width, int height, int depth, int format) {
  final _SDL_CreateRGBSurfaceWithFormat = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Uint32 flags, Int32 width, Int32 height, Int32 depth, Uint32 format),
      Pointer<SDL_Surface>? Function(int flags, int width, int height, int depth, int format)>('SDL_CreateRGBSurfaceWithFormat');
  return _SDL_CreateRGBSurfaceWithFormat(flags, width, height, depth, format);
}

/// 
/// Allocate a new RGB surface with existing pixel data.
/// 
/// This function operates mostly like SDL_CreateRGBSurface(), except it does
/// not allocate memory for the pixel data, instead the caller provides an
/// existing buffer of data for the surface to use.
/// 
/// No copy is made of the pixel data. Pixel data is not managed automatically;
/// you must free the surface before you free the pixel data.
/// 
/// \param pixels a pointer to existing pixel data
/// \param width the width of the surface
/// \param height the height of the surface
/// \param depth the depth of the surface in bits
/// \param pitch the pitch of the surface in bytes
/// \param Rmask the red mask for the pixels
/// \param Gmask the green mask for the pixels
/// \param Bmask the blue mask for the pixels
/// \param Amask the alpha mask for the pixels
/// \returns the new SDL_Surface structure that is created or NULL if it fails;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRGBSurface
/// \sa SDL_CreateRGBSurfaceWithFormat
/// \sa SDL_FreeSurface
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurfaceFrom(void *pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurfaceFrom(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurfaceFrom = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, Int32 width, Int32 height, Int32 depth, Int32 pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurfaceFrom');
  return _SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask);
}

/// 
/// Allocate a new RGB surface with with a specific pixel format and existing
/// pixel data.
/// 
/// This function operates mostly like SDL_CreateRGBSurfaceFrom(), except
/// instead of providing pixel color masks, you provide it with a predefined
/// format from SDL_PixelFormatEnum.
/// 
/// No copy is made of the pixel data. Pixel data is not managed automatically;
/// you must free the surface before you free the pixel data.
/// 
/// \param pixels a pointer to existing pixel data
/// \param width the width of the surface
/// \param height the height of the surface
/// \param depth the depth of the surface in bits
/// \param pitch the pitch of the surface in bytes
/// \param format the SDL_PixelFormatEnum for the new surface's pixel format.
/// \returns the new SDL_Surface structure that is created or NULL if it fails;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_CreateRGBSurfaceFrom
/// \sa SDL_CreateRGBSurfaceWithFormat
/// \sa SDL_FreeSurface
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurfaceWithFormatFrom (void *pixels, int width, int height, int depth, int pitch, Uint32 format)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurfaceWithFormatFrom(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int format) {
  final _SDL_CreateRGBSurfaceWithFormatFrom = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, Int32 width, Int32 height, Int32 depth, Int32 pitch, Uint32 format),
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int format)>('SDL_CreateRGBSurfaceWithFormatFrom');
  return _SDL_CreateRGBSurfaceWithFormatFrom(pixels, width, height, depth, pitch, format);
}

/// 
/// Free an RGB surface.
/// 
/// It is safe to pass NULL to this function.
/// 
/// \param surface the SDL_Surface to free.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRGBSurface
/// \sa SDL_CreateRGBSurfaceFrom
/// \sa SDL_LoadBMP
/// \sa SDL_LoadBMP_RW
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeSurface(SDL_Surface * surface)
/// ```
void SDL_FreeSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_FreeSurface = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface>? surface),
      void Function(Pointer<SDL_Surface>? surface)>('SDL_FreeSurface');
  return _SDL_FreeSurface(surface);
}

/// 
/// Set the palette used by a surface.
/// 
/// A single palette can be shared with many surfaces.
/// 
/// \param surface the SDL_Surface structure to update
/// \param palette the SDL_Palette structure to use
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfacePalette(SDL_Surface * surface, SDL_Palette * palette)
/// ```
int SDL_SetSurfacePalette(Pointer<SDL_Surface>? surface, Pointer<SDL_Palette>? palette) {
  final _SDL_SetSurfacePalette = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Palette>? palette),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Palette>? palette)>('SDL_SetSurfacePalette');
  return _SDL_SetSurfacePalette(surface, palette);
}

/// 
/// Set up a surface for directly accessing the pixels.
/// 
/// Between calls to SDL_LockSurface() / SDL_UnlockSurface(), you can write to
/// and read from `surface->pixels`, using the pixel format stored in
/// `surface->format`. Once you are done accessing the surface, you should use
/// SDL_UnlockSurface() to release it.
/// 
/// Not all surfaces require locking. If `SDL_MUSTLOCK(surface)` evaluates to
/// 0, then you can read and write to the surface at any time, and the pixel
/// format of the surface will not change.
/// 
/// \param surface the SDL_Surface structure to be locked
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_MUSTLOCK
/// \sa SDL_UnlockSurface
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockSurface(SDL_Surface * surface)
/// ```
int SDL_LockSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_LockSurface = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface),
      int Function(Pointer<SDL_Surface>? surface)>('SDL_LockSurface');
  return _SDL_LockSurface(surface);
}

/// 
/// Release a surface after directly accessing the pixels.
/// 
/// \param surface the SDL_Surface structure to be unlocked
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LockSurface
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockSurface(SDL_Surface * surface)
/// ```
void SDL_UnlockSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_UnlockSurface = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface>? surface),
      void Function(Pointer<SDL_Surface>? surface)>('SDL_UnlockSurface');
  return _SDL_UnlockSurface(surface);
}

/// 
/// Load a BMP image from a seekable SDL data stream.
/// 
/// The new surface should be freed with SDL_FreeSurface(). Not doing so will
/// result in a memory leak.
/// 
/// src is an open SDL_RWops buffer, typically loaded with SDL_RWFromFile.
/// Alternitavely, you might also use the macro SDL_LoadBMP to load a bitmap
/// from a file, convert it to an SDL_Surface and then close the file.
/// 
/// \param src the data stream for the surface
/// \param freesrc non-zero to close the stream after being read
/// \returns a pointer to a new SDL_Surface structure or NULL if there was an
/// error; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FreeSurface
/// \sa SDL_RWFromFile
/// \sa SDL_LoadBMP
/// \sa SDL_SaveBMP_RW
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_LoadBMP_RW(SDL_RWops * src, int freesrc)
/// ```
Pointer<SDL_Surface>? SDL_LoadBMP_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _SDL_LoadBMP_RW = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, int freesrc)>('SDL_LoadBMP_RW');
  return _SDL_LoadBMP_RW(src, freesrc);
}

/// 
/// Save a surface to a seekable SDL data stream in BMP format.
/// 
/// Surfaces with a 24-bit, 32-bit and paletted 8-bit format get saved in the
/// BMP directly. Other RGB formats with 8-bit or higher get converted to a
/// 24-bit surface or, if they have an alpha mask or a colorkey, to a 32-bit
/// surface before they are saved. YUV and paletted 1-bit and 4-bit formats are
/// not supported.
/// 
/// \param surface the SDL_Surface structure containing the image to be saved
/// \param dst a data stream to save to
/// \param freedst non-zero to close the stream after being written
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LoadBMP_RW
/// \sa SDL_SaveBMP
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveBMP_RW (SDL_Surface * surface, SDL_RWops * dst, int freedst)
/// ```
int SDL_SaveBMP_RW(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst) {
  final _SDL_SaveBMP_RW = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, Int32 freedst),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst)>('SDL_SaveBMP_RW');
  return _SDL_SaveBMP_RW(surface, dst, freedst);
}

/// 
/// Set the RLE acceleration hint for a surface.
/// 
/// If RLE is enabled, color key and alpha blending blits are much faster, but
/// the surface must be locked before directly accessing the pixels.
/// 
/// \param surface the SDL_Surface structure to optimize
/// \param flag 0 to disable, non-zero to enable RLE acceleration
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// \sa SDL_LockSurface
/// \sa SDL_UnlockSurface
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceRLE(SDL_Surface * surface, int flag)
/// ```
int SDL_SetSurfaceRLE(Pointer<SDL_Surface>? surface, int flag) {
  final _SDL_SetSurfaceRLE = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Int32 flag),
      int Function(Pointer<SDL_Surface>? surface, int flag)>('SDL_SetSurfaceRLE');
  return _SDL_SetSurfaceRLE(surface, flag);
}

/// 
/// Returns whether the surface is RLE enabled
/// 
/// It is safe to pass a NULL `surface` here; it will return SDL_FALSE.
/// 
/// \param surface the SDL_Surface structure to query
/// \returns SDL_TRUE if the surface is RLE enabled, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// \sa SDL_SetSurfaceRLE
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasSurfaceRLE(SDL_Surface * surface)
/// ```
int SDL_HasSurfaceRLE(Pointer<SDL_Surface>? surface) {
  final _SDL_HasSurfaceRLE = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface),
      int Function(Pointer<SDL_Surface>? surface)>('SDL_HasSurfaceRLE');
  return _SDL_HasSurfaceRLE(surface);
}

/// 
/// Set the color key (transparent pixel) in a surface.
/// 
/// The color key defines a pixel value that will be treated as transparent in
/// a blit. For example, one can use this to specify that cyan pixels should be
/// considered transparent, and therefore not rendered.
/// 
/// It is a pixel of the format used by the surface, as generated by
/// SDL_MapRGB().
/// 
/// RLE acceleration can substantially speed up blitting of images with large
/// horizontal runs of transparent pixels. See SDL_SetSurfaceRLE() for details.
/// 
/// \param surface the SDL_Surface structure to update
/// \param flag SDL_TRUE to enable color key, SDL_FALSE to disable color key
/// \param key the transparent pixel
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// \sa SDL_GetColorKey
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetColorKey(SDL_Surface * surface, int flag, Uint32 key)
/// ```
int SDL_SetColorKey(Pointer<SDL_Surface>? surface, int flag, int key) {
  final _SDL_SetColorKey = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Int32 flag, Uint32 key),
      int Function(Pointer<SDL_Surface>? surface, int flag, int key)>('SDL_SetColorKey');
  return _SDL_SetColorKey(surface, flag, key);
}

/// 
/// Returns whether the surface has a color key
/// 
/// It is safe to pass a NULL `surface` here; it will return SDL_FALSE.
/// 
/// \param surface the SDL_Surface structure to query
/// \return SDL_TRUE if the surface has a color key, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// \sa SDL_SetColorKey
/// \sa SDL_GetColorKey
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasColorKey(SDL_Surface * surface)
/// ```
int SDL_HasColorKey(Pointer<SDL_Surface>? surface) {
  final _SDL_HasColorKey = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface),
      int Function(Pointer<SDL_Surface>? surface)>('SDL_HasColorKey');
  return _SDL_HasColorKey(surface);
}

/// 
/// Get the color key (transparent pixel) for a surface.
/// 
/// The color key is a pixel of the format used by the surface, as generated by
/// SDL_MapRGB().
/// 
/// If the surface doesn't have color key enabled this function returns -1.
/// 
/// \param surface the SDL_Surface structure to query
/// \param key a pointer filled in with the transparent pixel
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// \sa SDL_SetColorKey
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetColorKey(SDL_Surface * surface, Uint32 * key)
/// ```
int SDL_GetColorKey(Pointer<SDL_Surface>? surface, Pointer<Uint32>? key) {
  final _SDL_GetColorKey = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Uint32>? key),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Uint32>? key)>('SDL_GetColorKey');
  return _SDL_GetColorKey(surface, key);
}

/// 
/// Set an additional color value multiplied into blit operations.
/// 
/// When this surface is blitted, during the blit operation each source color
/// channel is modulated by the appropriate color value according to the
/// following formula:
/// 
/// `srcC = srcC * (color / 255)`
/// 
/// \param surface the SDL_Surface structure to update
/// \param r the red color value multiplied into blit operations
/// \param g the green color value multiplied into blit operations
/// \param b the blue color value multiplied into blit operations
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetSurfaceColorMod
/// \sa SDL_SetSurfaceAlphaMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceColorMod(SDL_Surface * surface, Uint8 r, Uint8 g, Uint8 b)
/// ```
int SDL_SetSurfaceColorMod(Pointer<SDL_Surface>? surface, int r, int g, int b) {
  final _SDL_SetSurfaceColorMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_Surface>? surface, int r, int g, int b)>('SDL_SetSurfaceColorMod');
  return _SDL_SetSurfaceColorMod(surface, r, g, b);
}

/// 
/// Get the additional color value multiplied into blit operations.
/// 
/// \param surface the SDL_Surface structure to query
/// \param r a pointer filled in with the current red color value
/// \param g a pointer filled in with the current green color value
/// \param b a pointer filled in with the current blue color value
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetSurfaceAlphaMod
/// \sa SDL_SetSurfaceColorMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSurfaceColorMod(SDL_Surface * surface, Uint8 * r, Uint8 * g, Uint8 * b)
/// ```
int SDL_GetSurfaceColorMod(Pointer<SDL_Surface>? surface, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b) {
  final _SDL_GetSurfaceColorMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b)>('SDL_GetSurfaceColorMod');
  return _SDL_GetSurfaceColorMod(surface, r, g, b);
}

/// 
/// Set an additional alpha value used in blit operations.
/// 
/// When this surface is blitted, during the blit operation the source alpha
/// value is modulated by this alpha value according to the following formula:
/// 
/// `srcA = srcA * (alpha / 255)`
/// 
/// \param surface the SDL_Surface structure to update
/// \param alpha the alpha value multiplied into blit operations
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetSurfaceAlphaMod
/// \sa SDL_SetSurfaceColorMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceAlphaMod(SDL_Surface * surface, Uint8 alpha)
/// ```
int SDL_SetSurfaceAlphaMod(Pointer<SDL_Surface>? surface, int alpha) {
  final _SDL_SetSurfaceAlphaMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Uint8 alpha),
      int Function(Pointer<SDL_Surface>? surface, int alpha)>('SDL_SetSurfaceAlphaMod');
  return _SDL_SetSurfaceAlphaMod(surface, alpha);
}

/// 
/// Get the additional alpha value used in blit operations.
/// 
/// \param surface the SDL_Surface structure to query
/// \param alpha a pointer filled in with the current alpha value
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetSurfaceColorMod
/// \sa SDL_SetSurfaceAlphaMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSurfaceAlphaMod(SDL_Surface * surface, Uint8 * alpha)
/// ```
int SDL_GetSurfaceAlphaMod(Pointer<SDL_Surface>? surface, Pointer<Uint8>? alpha) {
  final _SDL_GetSurfaceAlphaMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? alpha),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Uint8>? alpha)>('SDL_GetSurfaceAlphaMod');
  return _SDL_GetSurfaceAlphaMod(surface, alpha);
}

/// 
/// Set the blend mode used for blit operations.
/// 
/// To copy a surface to another surface (or texture) without blending with the
/// existing data, the blendmode of the SOURCE surface should be set to
/// `SDL_BLENDMODE_NONE`.
/// 
/// \param surface the SDL_Surface structure to update
/// \param blendMode the SDL_BlendMode to use for blit blending
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetSurfaceBlendMode
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode blendMode)
/// ```
int SDL_SetSurfaceBlendMode(Pointer<SDL_Surface>? surface, int blendMode) {
  final _SDL_SetSurfaceBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Int32 blendMode),
      int Function(Pointer<SDL_Surface>? surface, int blendMode)>('SDL_SetSurfaceBlendMode');
  return _SDL_SetSurfaceBlendMode(surface, blendMode);
}

/// 
/// Get the blend mode used for blit operations.
/// 
/// \param surface the SDL_Surface structure to query
/// \param blendMode a pointer filled in with the current SDL_BlendMode
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetSurfaceBlendMode
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode *blendMode)
/// ```
int SDL_GetSurfaceBlendMode(Pointer<SDL_Surface>? surface, Pointer<Int32>? blendMode) {
  final _SDL_GetSurfaceBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Int32>? blendMode),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Int32>? blendMode)>('SDL_GetSurfaceBlendMode');
  return _SDL_GetSurfaceBlendMode(surface, blendMode);
}

/// 
/// Set the clipping rectangle for a surface.
/// 
/// When `surface` is the destination of a blit, only the area within the clip
/// rectangle is drawn into.
/// 
/// Note that blits are automatically clipped to the edges of the source and
/// destination surfaces.
/// 
/// \param surface the SDL_Surface structure to be clipped
/// \param rect the SDL_Rect structure representing the clipping rectangle, or
/// NULL to disable clipping
/// \returns SDL_TRUE if the rectangle intersects the surface, otherwise
/// SDL_FALSE and blits will be completely clipped.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// \sa SDL_GetClipRect
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_SetClipRect(SDL_Surface * surface, const SDL_Rect * rect)
/// ```
int SDL_SetClipRect(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect) {
  final _SDL_SetClipRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect)>('SDL_SetClipRect');
  return _SDL_SetClipRect(surface, rect);
}

/// 
/// Get the clipping rectangle for a surface.
/// 
/// When `surface` is the destination of a blit, only the area within the clip
/// rectangle is drawn into.
/// 
/// \param surface the SDL_Surface structure representing the surface to be
/// clipped
/// \param rect an SDL_Rect structure filled in with the clipping rectangle for
/// the surface
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// \sa SDL_SetClipRect
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetClipRect(SDL_Surface * surface, SDL_Rect * rect)
/// ```
void SDL_GetClipRect(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect) {
  final _SDL_GetClipRect = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Surface>? surface, Pointer<SDL_Rect>? rect)>('SDL_GetClipRect');
  return _SDL_GetClipRect(surface, rect);
}

/// 
/// Creates a new surface identical to the existing surface.
/// 
/// The returned surface should be freed with SDL_FreeSurface().
/// 
/// \param surface the surface to duplicate.
/// \returns a copy of the surface, or NULL on failure; call SDL_GetError() for
/// more information.
/// /
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_DuplicateSurface(SDL_Surface * surface)
/// ```
Pointer<SDL_Surface>? SDL_DuplicateSurface(Pointer<SDL_Surface>? surface) {
  final _SDL_DuplicateSurface = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? surface),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? surface)>('SDL_DuplicateSurface');
  return _SDL_DuplicateSurface(surface);
}

/// 
/// Copy an existing surface to a new surface of the specified format.
/// 
/// This function is used to optimize images for faster *repeat* blitting. This
/// is accomplished by converting the original and storing the result as a new
/// surface. The new, optimized surface can then be used as the source for
/// future blits, making them faster.
/// 
/// \param src the existing SDL_Surface structure to convert
/// \param fmt the SDL_PixelFormat structure that the new surface is optimized
/// for
/// \param flags the flags are unused and should be set to 0; this is a
/// leftover from SDL 1.2's API
/// \returns the new SDL_Surface structure that is created or NULL if it fails;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AllocFormat
/// \sa SDL_ConvertSurfaceFormat
/// \sa SDL_CreateRGBSurface
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurface (SDL_Surface * src, const SDL_PixelFormat * fmt, Uint32 flags)
/// ```
Pointer<SDL_Surface>? SDL_ConvertSurface(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, int flags) {
  final _SDL_ConvertSurface = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, Uint32 flags),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, int flags)>('SDL_ConvertSurface');
  return _SDL_ConvertSurface(src, fmt, flags);
}

/// 
/// Copy an existing surface to a new surface of the specified format enum.
/// 
/// This function operates just like SDL_ConvertSurface(), but accepts an
/// SDL_PixelFormatEnum value instead of an SDL_PixelFormat structure. As such,
/// it might be easier to call but it doesn't have access to palette
/// information for the destination surface, in case that would be important.
/// 
/// \param src the existing SDL_Surface structure to convert
/// \param pixel_format the SDL_PixelFormatEnum that the new surface is
/// optimized for
/// \param flags the flags are unused and should be set to 0; this is a
/// leftover from SDL 1.2's API
/// \returns the new SDL_Surface structure that is created or NULL if it fails;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AllocFormat
/// \sa SDL_ConvertSurface
/// \sa SDL_CreateRGBSurface
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurfaceFormat (SDL_Surface * src, Uint32 pixel_format, Uint32 flags)
/// ```
Pointer<SDL_Surface>? SDL_ConvertSurfaceFormat(Pointer<SDL_Surface>? src, int pixel_format, int flags) {
  final _SDL_ConvertSurfaceFormat = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Uint32 pixel_format, Uint32 flags),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, int pixel_format, int flags)>('SDL_ConvertSurfaceFormat');
  return _SDL_ConvertSurfaceFormat(src, pixel_format, flags);
}

/// 
/// Copy a block of pixels of one format to another format.
/// 
/// \param width the width of the block to copy, in pixels
/// \param height the height of the block to copy, in pixels
/// \param src_format an SDL_PixelFormatEnum value of the `src` pixels format
/// \param src a pointer to the source pixels
/// \param src_pitch the pitch of the source pixels, in bytes
/// \param dst_format an SDL_PixelFormatEnum value of the `dst` pixels format
/// \param dst a pointer to be filled in with new pixel data
/// \param dst_pitch the pitch of the destination pixels, in bytes
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ConvertPixels(int width, int height, Uint32 src_format, const void * src, int src_pitch, Uint32 dst_format, void * dst, int dst_pitch)
/// ```
int SDL_ConvertPixels(int width, int height, int src_format, Pointer<Void>? src, int src_pitch, int dst_format, Pointer<Void>? dst, int dst_pitch) {
  final _SDL_ConvertPixels = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 src_format, Pointer<Void>? src, Int32 src_pitch, Uint32 dst_format, Pointer<Void>? dst, Int32 dst_pitch),
      int Function(int width, int height, int src_format, Pointer<Void>? src, int src_pitch, int dst_format, Pointer<Void>? dst, int dst_pitch)>('SDL_ConvertPixels');
  return _SDL_ConvertPixels(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch);
}

/// 
/// Premultiply the alpha on a block of pixels.
/// 
/// This is safe to use with src == dst, but not for other overlapping areas.
/// 
/// This function is currently only implemented for SDL_PIXELFORMAT_ARGB8888.
/// 
/// \param width the width of the block to convert, in pixels
/// \param height the height of the block to convert, in pixels
/// \param src_format an SDL_PixelFormatEnum value of the `src` pixels format
/// \param src a pointer to the source pixels
/// \param src_pitch the pitch of the source pixels, in bytes
/// \param dst_format an SDL_PixelFormatEnum value of the `dst` pixels format
/// \param dst a pointer to be filled in with premultiplied pixel data
/// \param dst_pitch the pitch of the destination pixels, in bytes
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PremultiplyAlpha(int width, int height, Uint32 src_format, const void * src, int src_pitch, Uint32 dst_format, void * dst, int dst_pitch)
/// ```
int SDL_PremultiplyAlpha(int width, int height, int src_format, Pointer<Void>? src, int src_pitch, int dst_format, Pointer<Void>? dst, int dst_pitch) {
  final _SDL_PremultiplyAlpha = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 src_format, Pointer<Void>? src, Int32 src_pitch, Uint32 dst_format, Pointer<Void>? dst, Int32 dst_pitch),
      int Function(int width, int height, int src_format, Pointer<Void>? src, int src_pitch, int dst_format, Pointer<Void>? dst, int dst_pitch)>('SDL_PremultiplyAlpha');
  return _SDL_PremultiplyAlpha(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch);
}

/// 
/// Perform a fast fill of a rectangle with a specific color.
/// 
/// `color` should be a pixel of the format used by the surface, and can be
/// generated by SDL_MapRGB() or SDL_MapRGBA(). If the color value contains an
/// alpha component then the destination is simply filled with that alpha
/// information, no blending takes place.
/// 
/// If there is a clip rectangle set on the destination (set via
/// SDL_SetClipRect()), then this function will fill based on the intersection
/// of the clip rectangle and `rect`.
/// 
/// \param dst the SDL_Surface structure that is the drawing target
/// \param rect the SDL_Rect structure representing the rectangle to fill, or
/// NULL to fill the entire surface
/// \param color the color to fill with
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FillRects
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_FillRect (SDL_Surface * dst, const SDL_Rect * rect, Uint32 color)
/// ```
int SDL_FillRect(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rect, int color) {
  final _SDL_FillRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rect, Uint32 color),
      int Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rect, int color)>('SDL_FillRect');
  return _SDL_FillRect(dst, rect, color);
}

/// 
/// Perform a fast fill of a set of rectangles with a specific color.
/// 
/// `color` should be a pixel of the format used by the surface, and can be
/// generated by SDL_MapRGB() or SDL_MapRGBA(). If the color value contains an
/// alpha component then the destination is simply filled with that alpha
/// information, no blending takes place.
/// 
/// If there is a clip rectangle set on the destination (set via
/// SDL_SetClipRect()), then this function will fill based on the intersection
/// of the clip rectangle and `rect`.
/// 
/// \param dst the SDL_Surface structure that is the drawing target
/// \param rects an array of SDL_Rects representing the rectangles to fill.
/// \param count the number of rectangles in the array
/// \param color the color to fill with
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_FillRect
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_FillRects (SDL_Surface * dst, const SDL_Rect * rects, int count, Uint32 color)
/// ```
int SDL_FillRects(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rects, int count, int color) {
  final _SDL_FillRects = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rects, Int32 count, Uint32 color),
      int Function(Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? rects, int count, int color)>('SDL_FillRects');
  return _SDL_FillRects(dst, rects, count, color);
}

/// 
/// Perform a fast blit from the source surface to the destination surface.
/// 
/// SDL_UpperBlit() has been replaced by SDL_BlitSurface(), which is merely a
/// macro for this function with a less confusing name.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpperBlit (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_UpperBlit(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_UpperBlit = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_UpperBlit');
  return _SDL_UpperBlit(src, srcrect, dst, dstrect);
}

/// 
/// Perform low-level surface blitting only.
/// 
/// This is a semi-private blit function and it performs low-level surface
/// blitting, assuming the input rectangles have already been clipped.
/// 
/// Unless you know what you're doing, you should be using SDL_BlitSurface()
/// instead.
/// 
/// \param src the SDL_Surface structure to be copied from
/// \param srcrect the SDL_Rect structure representing the rectangle to be
/// copied, or NULL to copy the entire surface
/// \param dst the SDL_Surface structure that is the blit target
/// \param dstrect the SDL_Rect structure representing the rectangle that is
/// copied into
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitSurface
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LowerBlit (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_LowerBlit(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_LowerBlit = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_LowerBlit');
  return _SDL_LowerBlit(src, srcrect, dst, dstrect);
}

/// 
/// Perform a fast, low quality, stretch blit between two surfaces of the same
/// format.
/// 
/// Please use SDL_BlitScaled() instead.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SoftStretch(SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, const SDL_Rect * dstrect)
/// ```
int SDL_SoftStretch(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_SoftStretch = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_SoftStretch');
  return _SDL_SoftStretch(src, srcrect, dst, dstrect);
}

/// 
/// Perform bilinear scaling between two surfaces of the same format, 32BPP.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SoftStretchLinear(SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, const SDL_Rect * dstrect)
/// ```
int SDL_SoftStretchLinear(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_SoftStretchLinear = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_SoftStretchLinear');
  return _SDL_SoftStretchLinear(src, srcrect, dst, dstrect);
}

/// 
/// Perform a scaled surface copy to a destination surface.
/// 
/// SDL_UpperBlitScaled() has been replaced by SDL_BlitScaled(), which is
/// merely a macro for this function with a less confusing name.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitScaled
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpperBlitScaled (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_UpperBlitScaled(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_UpperBlitScaled = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_UpperBlitScaled');
  return _SDL_UpperBlitScaled(src, srcrect, dst, dstrect);
}

/// 
/// Perform low-level surface scaled blitting only.
/// 
/// This is a semi-private function and it performs low-level surface blitting,
/// assuming the input rectangles have already been clipped.
/// 
/// \param src the SDL_Surface structure to be copied from
/// \param srcrect the SDL_Rect structure representing the rectangle to be
/// copied
/// \param dst the SDL_Surface structure that is the blit target
/// \param dstrect the SDL_Rect structure representing the rectangle that is
/// copied into
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_BlitScaled
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LowerBlitScaled (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
/// ```
int SDL_LowerBlitScaled(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  final _SDL_LowerBlitScaled = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect)>('SDL_LowerBlitScaled');
  return _SDL_LowerBlitScaled(src, srcrect, dst, dstrect);
}

/// 
/// Set the YUV conversion mode
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetYUVConversionMode(SDL_YUV_CONVERSION_MODE mode)
/// ```
void SDL_SetYUVConversionMode(int mode) {
  final _SDL_SetYUVConversionMode = DLL_SDL2.lookupFunction<
      Void Function(Int32 mode),
      void Function(int mode)>('SDL_SetYUVConversionMode');
  return _SDL_SetYUVConversionMode(mode);
}

/// 
/// Get the YUV conversion mode
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// ```c
/// extern DECLSPEC SDL_YUV_CONVERSION_MODE SDLCALL SDL_GetYUVConversionMode(void)
/// ```
int SDL_GetYUVConversionMode() {
  final _SDL_GetYUVConversionMode = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetYUVConversionMode');
  return _SDL_GetYUVConversionMode();
}

/// 
/// Get the YUV conversion mode, returning the correct mode for the resolution
/// when the current conversion mode is SDL_YUV_CONVERSION_AUTOMATIC
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// ```c
/// extern DECLSPEC SDL_YUV_CONVERSION_MODE SDLCALL SDL_GetYUVConversionModeForResolution(int width, int height)
/// ```
int SDL_GetYUVConversionModeForResolution(int width, int height) {
  final _SDL_GetYUVConversionModeForResolution = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height),
      int Function(int width, int height)>('SDL_GetYUVConversionModeForResolution');
  return _SDL_GetYUVConversionModeForResolution(width, height);
}

