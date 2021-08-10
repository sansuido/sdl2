// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Allocate and free an RGB surface.
/// 
/// If the depth is 4 or 8 bits, an empty palette is allocated for the surface.
/// If the depth is greater than 8 bits, the pixel format is set using the
/// flags '[RGB]mask'.
/// 
/// If the function runs out of memory, it will return NULL.
/// 
/// \param flags The \c flags are obsolete and should be set to 0.
/// \param width The width in pixels of the surface to create.
/// \param height The height in pixels of the surface to create.
/// \param depth The depth in bits of the surface to create.
/// \param Rmask The red mask of the surface to create.
/// \param Gmask The green mask of the surface to create.
/// \param Bmask The blue mask of the surface to create.
/// \param Amask The alpha mask of the surface to create.
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

/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurfaceFrom(void *pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
/// ```
Pointer<SDL_Surface>? SDL_CreateRGBSurfaceFrom(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurfaceFrom = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, Int32 width, Int32 height, Int32 depth, Int32 pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface>? Function(Pointer<Void>? pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurfaceFrom');
  return _SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask);
}

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
/// \brief Set the palette used by a surface.
/// 
/// \return 0, or -1 if the surface format doesn't use a palette.
/// 
/// \note A single palette can be shared with many surfaces.
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
/// \brief Sets up a surface for directly accessing the pixels.
/// 
/// Between calls to SDL_LockSurface() / SDL_UnlockSurface(), you can write
/// to and read from \c surface->pixels, using the pixel format stored in
/// \c surface->format.  Once you are done accessing the surface, you should
/// use SDL_UnlockSurface() to release it.
/// 
/// Not all surfaces require locking.  If SDL_MUSTLOCK(surface) evaluates
/// to 0, then you can read and write to the surface at any time, and the
/// pixel format of the surface will not change.
/// 
/// No operating system or library calls should be made between lock/unlock
/// pairs, as critical system locks may be held during this time.
/// 
/// SDL_LockSurface() returns 0, or -1 if the surface couldn't be locked.
/// 
/// \sa SDL_UnlockSurface()
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

/// * \sa SDL_LockSurface()
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
/// Load a surface from a seekable SDL data stream (memory or file).
/// 
/// If \c freesrc is non-zero, the stream will be closed after being read.
/// 
/// The new surface should be freed with SDL_FreeSurface().
/// 
/// \return the new surface, or NULL if there was an error.
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
/// Save a surface to a seekable SDL data stream (memory or file).
/// 
/// If \c freedst is non-zero, the stream will be closed after being written.
/// 
/// \return 0 if successful or -1 if there was an error.
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
/// \brief Sets the RLE acceleration hint for a surface.
/// 
/// \return 0 on success, or -1 if the surface is not valid
/// 
/// \note If RLE is enabled, colorkey and alpha blending blits are much faster,
/// but the surface must be locked before directly accessing the pixels.
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
/// \brief Sets the color key (transparent pixel) in a blittable surface.
/// 
/// \param surface The surface to update
/// \param flag Non-zero to enable colorkey and 0 to disable colorkey
/// \param key The transparent pixel in the native surface format
/// 
/// \return 0 on success, or -1 if the surface is not valid
/// 
/// You can pass SDL_RLEACCEL to enable RLE accelerated blits.
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
/// \brief Gets the color key (transparent pixel) in a blittable surface.
/// 
/// \param surface The surface to update
/// \param key A pointer filled in with the transparent pixel in the native
/// surface format
/// 
/// \return 0 on success, or -1 if the surface is not valid or colorkey is not
/// enabled.
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
/// \brief Set an additional color value used in blit operations.
/// 
/// \param surface The surface to update.
/// \param r The red color value multiplied into blit operations.
/// \param g The green color value multiplied into blit operations.
/// \param b The blue color value multiplied into blit operations.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_GetSurfaceColorMod()
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
/// \brief Get the additional color value used in blit operations.
/// 
/// \param surface The surface to query.
/// \param r A pointer filled in with the current red color value.
/// \param g A pointer filled in with the current green color value.
/// \param b A pointer filled in with the current blue color value.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_SetSurfaceColorMod()
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
/// \brief Set an additional alpha value used in blit operations.
/// 
/// \param surface The surface to update.
/// \param alpha The alpha value multiplied into blit operations.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_GetSurfaceAlphaMod()
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
/// \brief Get the additional alpha value used in blit operations.
/// 
/// \param surface The surface to query.
/// \param alpha A pointer filled in with the current alpha value.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_SetSurfaceAlphaMod()
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
/// \brief Set the blend mode used for blit operations.
/// 
/// \param surface The surface to update.
/// \param blendMode ::SDL_BlendMode to use for blit blending.
/// 
/// \return 0 on success, or -1 if the parameters are not valid.
/// 
/// \sa SDL_GetSurfaceBlendMode()
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
/// \brief Get the blend mode used for blit operations.
/// 
/// \param surface   The surface to query.
/// \param blendMode A pointer filled in with the current blend mode.
/// 
/// \return 0 on success, or -1 if the surface is not valid.
/// 
/// \sa SDL_SetSurfaceBlendMode()
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
/// Sets the clipping rectangle for the destination surface in a blit.
/// 
/// If the clip rectangle is NULL, clipping will be disabled.
/// 
/// If the clip rectangle doesn't intersect the surface, the function will
/// return SDL_FALSE and blits will be completely clipped.  Otherwise the
/// function returns SDL_TRUE and blits to the surface will be clipped to
/// the intersection of the surface area and the clipping rectangle.
/// 
/// Note that blits are automatically clipped to the edges of the source
/// and destination surfaces.
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
/// Gets the clipping rectangle for the destination surface in a blit.
/// 
/// \c rect must be a pointer to a valid rectangle which will be filled
/// with the correct values.
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
/// Creates a new surface of the specified format, and then copies and maps
/// the given surface to it so the blit of the converted surface will be as
/// fast as possible.  If this function fails, it returns NULL.
/// 
/// The \c flags parameter is passed to SDL_CreateRGBSurface() and has those
/// semantics.  You can also pass ::SDL_RLEACCEL in the flags parameter and
/// SDL will try to RLE accelerate colorkey and alpha blits in the resulting
/// surface.
/// 
/// ```c
/// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurface (SDL_Surface * src, SDL_PixelFormat * fmt, Uint32 flags)
/// ```
Pointer<SDL_Surface>? SDL_ConvertSurface(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, int flags) {
  final _SDL_ConvertSurface = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, Uint32 flags),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Surface>? src, Pointer<SDL_PixelFormat>? fmt, int flags)>('SDL_ConvertSurface');
  return _SDL_ConvertSurface(src, fmt, flags);
}

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
/// \brief Copy a block of pixels of one format to another format
/// 
/// \return 0 on success, or -1 if there was an error
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
/// Performs a fast fill of the given rectangle with \c color.
/// 
/// If \c rect is NULL, the whole surface will be filled with \c color.
/// 
/// The color should be a pixel of the format used by the surface, and
/// can be generated by the SDL_MapRGB() function.
/// 
/// \return 0 on success, or -1 on error.
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
/// This is the public blit function, SDL_BlitSurface(), and it performs
/// rectangle validation and clipping before passing it to SDL_LowerBlit()
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
/// This is a semi-private blit function and it performs low-level surface
/// blitting only.
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
/// \brief Perform a fast, low quality, stretch blit between two surfaces of the
/// same pixel format.
/// 
/// \note This function uses a static buffer, and is not thread-safe.
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
/// This is the public scaled blit function, SDL_BlitScaled(), and it performs
/// rectangle validation and clipping before passing it to SDL_LowerBlitScaled()
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
/// This is a semi-private blit function and it performs low-level surface
/// scaled blitting only.
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

