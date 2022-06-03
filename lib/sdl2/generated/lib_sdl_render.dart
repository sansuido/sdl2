// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Get the number of 2D rendering drivers available for the current display.
/// 
/// A render driver is a set of code that handles rendering and texture
/// management on a particular display. Normally there is only one, but some
/// drivers may have several available with different capabilities.
/// 
/// There may be none if SDL was compiled without render support.
/// 
/// \returns a number >= 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// \sa SDL_GetRenderDriverInfo
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumRenderDrivers(void)
/// ```
int SDL_GetNumRenderDrivers() {
  final _SDL_GetNumRenderDrivers = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumRenderDrivers');
  return _SDL_GetNumRenderDrivers();
}

/// 
/// Get info about a specific 2D rendering driver for the current display.
/// 
/// \param index the index of the driver to query information about
/// \param info an SDL_RendererInfo structure to be filled with information on
/// the rendering driver
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// \sa SDL_GetNumRenderDrivers
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRenderDriverInfo(int index, SDL_RendererInfo * info)
/// ```
int SDL_GetRenderDriverInfo(int index, Pointer<SDL_RendererInfo>? info) {
  final _SDL_GetRenderDriverInfo = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 index, Pointer<SDL_RendererInfo>? info),
      int Function(int index, Pointer<SDL_RendererInfo>? info)>('SDL_GetRenderDriverInfo');
  return _SDL_GetRenderDriverInfo(index, info);
}

/// 
/// Create a window and default renderer.
/// 
/// \param width the width of the window
/// \param height the height of the window
/// \param window_flags the flags used to create the window (see
/// SDL_CreateWindow())
/// \param window a pointer filled with the window, or NULL on error
/// \param renderer a pointer filled with the renderer, or NULL on error
/// \returns 0 on success, or -1 on error; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// \sa SDL_CreateWindow
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_CreateWindowAndRenderer( int width, int height, Uint32 window_flags, SDL_Window **window, SDL_Renderer **renderer)
/// ```
int SDL_CreateWindowAndRenderer(int width, int height, int window_flags, Pointer<Pointer<SDL_Window>>? window, Pointer<Pointer<SDL_Renderer>>? renderer) {
  final _SDL_CreateWindowAndRenderer = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 window_flags, Pointer<Pointer<SDL_Window>>? window, Pointer<Pointer<SDL_Renderer>>? renderer),
      int Function(int width, int height, int window_flags, Pointer<Pointer<SDL_Window>>? window, Pointer<Pointer<SDL_Renderer>>? renderer)>('SDL_CreateWindowAndRenderer');
  return _SDL_CreateWindowAndRenderer(width, height, window_flags, window, renderer);
}

/// 
/// Create a 2D rendering context for a window.
/// 
/// \param window the window where rendering is displayed
/// \param index the index of the rendering driver to initialize, or -1 to
/// initialize the first one supporting the requested flags
/// \param flags 0, or one or more SDL_RendererFlags OR'd together
/// \returns a valid rendering context or NULL if there was an error; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateSoftwareRenderer
/// \sa SDL_DestroyRenderer
/// \sa SDL_GetNumRenderDrivers
/// \sa SDL_GetRendererInfo
/// 
/// ```c
/// extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateRenderer(SDL_Window * window, int index, Uint32 flags)
/// ```
Pointer<SDL_Renderer>? SDL_CreateRenderer(Pointer<SDL_Window>? window, int index, int flags) {
  final _SDL_CreateRenderer = DLL_SDL2.lookupFunction<
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window, Int32 index, Uint32 flags),
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window, int index, int flags)>('SDL_CreateRenderer');
  return _SDL_CreateRenderer(window, index, flags);
}

/// 
/// Create a 2D software rendering context for a surface.
/// 
/// Two other API which can be used to create SDL_Renderer:
/// SDL_CreateRenderer() and SDL_CreateWindowAndRenderer(). These can _also_
/// create a software renderer, but they are intended to be used with an
/// SDL_Window as the final destination and not an SDL_Surface.
/// 
/// \param surface the SDL_Surface structure representing the surface where
/// rendering is done
/// \returns a valid rendering context or NULL if there was an error; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// \sa SDL_CreateWindowRenderer
/// \sa SDL_DestroyRenderer
/// 
/// ```c
/// extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateSoftwareRenderer(SDL_Surface * surface)
/// ```
Pointer<SDL_Renderer>? SDL_CreateSoftwareRenderer(Pointer<SDL_Surface>? surface) {
  final _SDL_CreateSoftwareRenderer = DLL_SDL2.lookupFunction<
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Surface>? surface),
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Surface>? surface)>('SDL_CreateSoftwareRenderer');
  return _SDL_CreateSoftwareRenderer(surface);
}

/// 
/// Get the renderer associated with a window.
/// 
/// \param window the window to query
/// \returns the rendering context on success or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// 
/// ```c
/// extern DECLSPEC SDL_Renderer * SDLCALL SDL_GetRenderer(SDL_Window * window)
/// ```
Pointer<SDL_Renderer>? SDL_GetRenderer(Pointer<SDL_Window>? window) {
  final _SDL_GetRenderer = DLL_SDL2.lookupFunction<
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window),
      Pointer<SDL_Renderer>? Function(Pointer<SDL_Window>? window)>('SDL_GetRenderer');
  return _SDL_GetRenderer(window);
}

/// 
/// Get the window associated with a renderer.
/// 
/// \param renderer the renderer to query
/// \returns the window on success or NULL on failure; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_RenderGetWindow(SDL_Renderer *renderer)
/// ```
Pointer<SDL_Window>? SDL_RenderGetWindow(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderGetWindow = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<SDL_Window>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderGetWindow');
  return _SDL_RenderGetWindow(renderer);
}

/// 
/// Get information about a rendering context.
/// 
/// \param renderer the rendering context
/// \param info an SDL_RendererInfo structure filled with information about the
/// current renderer
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRendererInfo(SDL_Renderer * renderer, SDL_RendererInfo * info)
/// ```
int SDL_GetRendererInfo(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RendererInfo>? info) {
  final _SDL_GetRendererInfo = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RendererInfo>? info),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RendererInfo>? info)>('SDL_GetRendererInfo');
  return _SDL_GetRendererInfo(renderer, info);
}

/// 
/// Get the output size in pixels of a rendering context.
/// 
/// Due to high-dpi displays, you might end up with a rendering context that
/// has more pixels than the window that contains it, so use this instead of
/// SDL_GetWindowSize() to decide how much drawing area you have.
/// 
/// \param renderer the rendering context
/// \param w an int filled with the width
/// \param h an int filled with the height
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRenderer
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRendererOutputSize(SDL_Renderer * renderer, int *w, int *h)
/// ```
int SDL_GetRendererOutputSize(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetRendererOutputSize = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetRendererOutputSize');
  return _SDL_GetRendererOutputSize(renderer, w, h);
}

/// 
/// Create a texture for a rendering context.
/// 
/// You can set the texture scaling method by setting
/// `SDL_HINT_RENDER_SCALE_QUALITY` before creating the texture.
/// 
/// \param renderer the rendering context
/// \param format one of the enumerated values in SDL_PixelFormatEnum
/// \param access one of the enumerated values in SDL_TextureAccess
/// \param w the width of the texture in pixels
/// \param h the height of the texture in pixels
/// \returns a pointer to the created texture or NULL if no rendering context
/// was active, the format was unsupported, or the width or height
/// were out of range; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateTextureFromSurface
/// \sa SDL_DestroyTexture
/// \sa SDL_QueryTexture
/// \sa SDL_UpdateTexture
/// 
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL SDL_CreateTexture(SDL_Renderer * renderer, Uint32 format, int access, int w, int h)
/// ```
Pointer<SDL_Texture>? SDL_CreateTexture(Pointer<SDL_Renderer>? renderer, int format, int access, int w, int h) {
  final _SDL_CreateTexture = DLL_SDL2.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Uint32 format, Int32 access, Int32 w, Int32 h),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, int format, int access, int w, int h)>('SDL_CreateTexture');
  return _SDL_CreateTexture(renderer, format, access, w, h);
}

/// 
/// Create a texture from an existing surface.
/// 
/// The surface is not modified or freed by this function.
/// 
/// The SDL_TextureAccess hint for the created texture is
/// `SDL_TEXTUREACCESS_STATIC`.
/// 
/// The pixel format of the created texture may be different from the pixel
/// format of the surface. Use SDL_QueryTexture() to query the pixel format of
/// the texture.
/// 
/// \param renderer the rendering context
/// \param surface the SDL_Surface structure containing pixel data used to fill
/// the texture
/// \returns the created texture or NULL on failure; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateTexture
/// \sa SDL_DestroyTexture
/// \sa SDL_QueryTexture
/// 
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL SDL_CreateTextureFromSurface(SDL_Renderer * renderer, SDL_Surface * surface)
/// ```
Pointer<SDL_Texture>? SDL_CreateTextureFromSurface(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Surface>? surface) {
  final _SDL_CreateTextureFromSurface = DLL_SDL2.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Surface>? surface),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Surface>? surface)>('SDL_CreateTextureFromSurface');
  return _SDL_CreateTextureFromSurface(renderer, surface);
}

/// 
/// Query the attributes of a texture.
/// 
/// \param texture the texture to query
/// \param format a pointer filled in with the raw format of the texture; the
/// actual format may differ, but pixel transfers will use this
/// format (one of the SDL_PixelFormatEnum values). This argument
/// can be NULL if you don't need this information.
/// \param access a pointer filled in with the actual access to the texture
/// (one of the SDL_TextureAccess values). This argument can be
/// NULL if you don't need this information.
/// \param w a pointer filled in with the width of the texture in pixels. This
/// argument can be NULL if you don't need this information.
/// \param h a pointer filled in with the height of the texture in pixels. This
/// argument can be NULL if you don't need this information.
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateTexture
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_QueryTexture(SDL_Texture * texture, Uint32 * format, int *access, int *w, int *h)
/// ```
int SDL_QueryTexture(Pointer<SDL_Texture>? texture, Pointer<Uint32>? format, Pointer<Int32>? access, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_QueryTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Uint32>? format, Pointer<Int32>? access, Pointer<Int32>? w, Pointer<Int32>? h),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Uint32>? format, Pointer<Int32>? access, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_QueryTexture');
  return _SDL_QueryTexture(texture, format, access, w, h);
}

/// 
/// Set an additional color value multiplied into render copy operations.
/// 
/// When this texture is rendered, during the copy operation each source color
/// channel is modulated by the appropriate color value according to the
/// following formula:
/// 
/// `srcC = srcC * (color / 255)`
/// 
/// Color modulation is not always supported by the renderer; it will return -1
/// if color modulation is not supported.
/// 
/// \param texture the texture to update
/// \param r the red color value multiplied into copy operations
/// \param g the green color value multiplied into copy operations
/// \param b the blue color value multiplied into copy operations
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetTextureColorMod
/// \sa SDL_SetTextureAlphaMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureColorMod(SDL_Texture * texture, Uint8 r, Uint8 g, Uint8 b)
/// ```
int SDL_SetTextureColorMod(Pointer<SDL_Texture>? texture, int r, int g, int b) {
  final _SDL_SetTextureColorMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_Texture>? texture, int r, int g, int b)>('SDL_SetTextureColorMod');
  return _SDL_SetTextureColorMod(texture, r, g, b);
}

/// 
/// Get the additional color value multiplied into render copy operations.
/// 
/// \param texture the texture to query
/// \param r a pointer filled in with the current red color value
/// \param g a pointer filled in with the current green color value
/// \param b a pointer filled in with the current blue color value
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetTextureAlphaMod
/// \sa SDL_SetTextureColorMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureColorMod(SDL_Texture * texture, Uint8 * r, Uint8 * g, Uint8 * b)
/// ```
int SDL_GetTextureColorMod(Pointer<SDL_Texture>? texture, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b) {
  final _SDL_GetTextureColorMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b)>('SDL_GetTextureColorMod');
  return _SDL_GetTextureColorMod(texture, r, g, b);
}

/// 
/// Set an additional alpha value multiplied into render copy operations.
/// 
/// When this texture is rendered, during the copy operation the source alpha
/// value is modulated by this alpha value according to the following formula:
/// 
/// `srcA = srcA * (alpha / 255)`
/// 
/// Alpha modulation is not always supported by the renderer; it will return -1
/// if alpha modulation is not supported.
/// 
/// \param texture the texture to update
/// \param alpha the source alpha value multiplied into copy operations
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetTextureAlphaMod
/// \sa SDL_SetTextureColorMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureAlphaMod(SDL_Texture * texture, Uint8 alpha)
/// ```
int SDL_SetTextureAlphaMod(Pointer<SDL_Texture>? texture, int alpha) {
  final _SDL_SetTextureAlphaMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Uint8 alpha),
      int Function(Pointer<SDL_Texture>? texture, int alpha)>('SDL_SetTextureAlphaMod');
  return _SDL_SetTextureAlphaMod(texture, alpha);
}

/// 
/// Get the additional alpha value multiplied into render copy operations.
/// 
/// \param texture the texture to query
/// \param alpha a pointer filled in with the current alpha value
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetTextureColorMod
/// \sa SDL_SetTextureAlphaMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureAlphaMod(SDL_Texture * texture, Uint8 * alpha)
/// ```
int SDL_GetTextureAlphaMod(Pointer<SDL_Texture>? texture, Pointer<Uint8>? alpha) {
  final _SDL_GetTextureAlphaMod = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? alpha),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Uint8>? alpha)>('SDL_GetTextureAlphaMod');
  return _SDL_GetTextureAlphaMod(texture, alpha);
}

/// 
/// Set the blend mode for a texture, used by SDL_RenderCopy().
/// 
/// If the blend mode is not supported, the closest supported mode is chosen
/// and this function returns -1.
/// 
/// \param texture the texture to update
/// \param blendMode the SDL_BlendMode to use for texture blending
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetTextureBlendMode
/// \sa SDL_RenderCopy
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode blendMode)
/// ```
int SDL_SetTextureBlendMode(Pointer<SDL_Texture>? texture, int blendMode) {
  final _SDL_SetTextureBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Int32 blendMode),
      int Function(Pointer<SDL_Texture>? texture, int blendMode)>('SDL_SetTextureBlendMode');
  return _SDL_SetTextureBlendMode(texture, blendMode);
}

/// 
/// Get the blend mode used for texture copy operations.
/// 
/// \param texture the texture to query
/// \param blendMode a pointer filled in with the current SDL_BlendMode
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetTextureBlendMode
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode *blendMode)
/// ```
int SDL_GetTextureBlendMode(Pointer<SDL_Texture>? texture, Pointer<Int32>? blendMode) {
  final _SDL_GetTextureBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Int32>? blendMode),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Int32>? blendMode)>('SDL_GetTextureBlendMode');
  return _SDL_GetTextureBlendMode(texture, blendMode);
}

/// 
/// Set the scale mode used for texture scale operations.
/// 
/// If the scale mode is not supported, the closest supported mode is chosen.
/// 
/// \param texture The texture to update.
/// \param scaleMode the SDL_ScaleMode to use for texture scaling.
/// \returns 0 on success, or -1 if the texture is not valid.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// \sa SDL_GetTextureScaleMode
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureScaleMode(SDL_Texture * texture, SDL_ScaleMode scaleMode)
/// ```
int SDL_SetTextureScaleMode(Pointer<SDL_Texture>? texture, int scaleMode) {
  final _SDL_SetTextureScaleMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Int32 scaleMode),
      int Function(Pointer<SDL_Texture>? texture, int scaleMode)>('SDL_SetTextureScaleMode');
  return _SDL_SetTextureScaleMode(texture, scaleMode);
}

/// 
/// Get the scale mode used for texture scale operations.
/// 
/// \param texture the texture to query.
/// \param scaleMode a pointer filled in with the current scale mode.
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// \sa SDL_SetTextureScaleMode
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetTextureScaleMode(SDL_Texture * texture, SDL_ScaleMode *scaleMode)
/// ```
int SDL_GetTextureScaleMode(Pointer<SDL_Texture>? texture, Pointer<Int32>? scaleMode) {
  final _SDL_GetTextureScaleMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Int32>? scaleMode),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Int32>? scaleMode)>('SDL_GetTextureScaleMode');
  return _SDL_GetTextureScaleMode(texture, scaleMode);
}

/// 
/// Associate a user-specified pointer with a texture.
/// 
/// \param texture the texture to update.
/// \param userdata the pointer to associate with the texture.
/// \returns 0 on success, or -1 if the texture is not valid.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_GetTextureUserData
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetTextureUserData(SDL_Texture * texture, void *userdata)
/// ```
int SDL_SetTextureUserData(Pointer<SDL_Texture>? texture, Pointer<Void>? userdata) {
  final _SDL_SetTextureUserData = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Void>? userdata),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Void>? userdata)>('SDL_SetTextureUserData');
  return _SDL_SetTextureUserData(texture, userdata);
}

/// 
/// Get the user-specified pointer associated with a texture
/// 
/// \param texture the texture to query.
/// \return the pointer associated with the texture, or NULL if the texture is
/// not valid.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_SetTextureUserData
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_GetTextureUserData(SDL_Texture * texture)
/// ```
Pointer<Void>? SDL_GetTextureUserData(Pointer<SDL_Texture>? texture) {
  final _SDL_GetTextureUserData = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Texture>? texture),
      Pointer<Void>? Function(Pointer<SDL_Texture>? texture)>('SDL_GetTextureUserData');
  return _SDL_GetTextureUserData(texture);
}

/// 
/// Update the given texture rectangle with new pixel data.
/// 
/// The pixel data must be in the pixel format of the texture. Use
/// SDL_QueryTexture() to query the pixel format of the texture.
/// 
/// This is a fairly slow function, intended for use with static textures that
/// do not change often.
/// 
/// If the texture is intended to be updated often, it is preferred to create
/// the texture as streaming and use the locking functions referenced below.
/// While this function will work with streaming textures, for optimization
/// reasons you may not get the pixels back if you lock the texture afterward.
/// 
/// \param texture the texture to update
/// \param rect an SDL_Rect structure representing the area to update, or NULL
/// to update the entire texture
/// \param pixels the raw pixel data in the format of the texture
/// \param pitch the number of bytes in a row of pixel data, including padding
/// between lines
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateTexture
/// \sa SDL_LockTexture
/// \sa SDL_UnlockTexture
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateTexture(SDL_Texture * texture, const SDL_Rect * rect, const void *pixels, int pitch)
/// ```
int SDL_UpdateTexture(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Void>? pixels, int pitch) {
  final _SDL_UpdateTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Void>? pixels, Int32 pitch),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Void>? pixels, int pitch)>('SDL_UpdateTexture');
  return _SDL_UpdateTexture(texture, rect, pixels, pitch);
}

/// 
/// Update a rectangle within a planar YV12 or IYUV texture with new pixel
/// data.
/// 
/// You can use SDL_UpdateTexture() as long as your pixel data is a contiguous
/// block of Y and U/V planes in the proper order, but this function is
/// available if your pixel data is not contiguous.
/// 
/// \param texture the texture to update
/// \param rect a pointer to the rectangle of pixels to update, or NULL to
/// update the entire texture
/// \param Yplane the raw pixel data for the Y plane
/// \param Ypitch the number of bytes between rows of pixel data for the Y
/// plane
/// \param Uplane the raw pixel data for the U plane
/// \param Upitch the number of bytes between rows of pixel data for the U
/// plane
/// \param Vplane the raw pixel data for the V plane
/// \param Vpitch the number of bytes between rows of pixel data for the V
/// plane
/// \returns 0 on success or -1 if the texture is not valid; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.1.
/// 
/// \sa SDL_UpdateTexture
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateYUVTexture(SDL_Texture * texture, const SDL_Rect * rect, const Uint8 *Yplane, int Ypitch, const Uint8 *Uplane, int Upitch, const Uint8 *Vplane, int Vpitch)
/// ```
int SDL_UpdateYUVTexture(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Uint8>? Yplane, int Ypitch, Pointer<Uint8>? Uplane, int Upitch, Pointer<Uint8>? Vplane, int Vpitch) {
  final _SDL_UpdateYUVTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Uint8>? Yplane, Int32 Ypitch, Pointer<Uint8>? Uplane, Int32 Upitch, Pointer<Uint8>? Vplane, Int32 Vpitch),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Uint8>? Yplane, int Ypitch, Pointer<Uint8>? Uplane, int Upitch, Pointer<Uint8>? Vplane, int Vpitch)>('SDL_UpdateYUVTexture');
  return _SDL_UpdateYUVTexture(texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch);
}

/// 
/// Update a rectangle within a planar NV12 or NV21 texture with new pixels.
/// 
/// You can use SDL_UpdateTexture() as long as your pixel data is a contiguous
/// block of NV12/21 planes in the proper order, but this function is available
/// if your pixel data is not contiguous.
/// 
/// \param texture the texture to update
/// \param rect a pointer to the rectangle of pixels to update, or NULL to
/// update the entire texture.
/// \param Yplane the raw pixel data for the Y plane.
/// \param Ypitch the number of bytes between rows of pixel data for the Y
/// plane.
/// \param UVplane the raw pixel data for the UV plane.
/// \param UVpitch the number of bytes between rows of pixel data for the UV
/// plane.
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateNVTexture(SDL_Texture * texture, const SDL_Rect * rect, const Uint8 *Yplane, int Ypitch, const Uint8 *UVplane, int UVpitch)
/// ```
int SDL_UpdateNVTexture(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Uint8>? Yplane, int Ypitch, Pointer<Uint8>? UVplane, int UVpitch) {
  final _SDL_UpdateNVTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Uint8>? Yplane, Int32 Ypitch, Pointer<Uint8>? UVplane, Int32 UVpitch),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Uint8>? Yplane, int Ypitch, Pointer<Uint8>? UVplane, int UVpitch)>('SDL_UpdateNVTexture');
  return _SDL_UpdateNVTexture(texture, rect, Yplane, Ypitch, UVplane, UVpitch);
}

/// 
/// Lock a portion of the texture for **write-only** pixel access.
/// 
/// As an optimization, the pixels made available for editing don't necessarily
/// contain the old texture data. This is a write-only operation, and if you
/// need to keep a copy of the texture data you should do that at the
/// application level.
/// 
/// You must use SDL_UnlockTexture() to unlock the pixels and apply any
/// changes.
/// 
/// \param texture the texture to lock for access, which was created with
/// `SDL_TEXTUREACCESS_STREAMING`
/// \param rect an SDL_Rect structure representing the area to lock for access;
/// NULL to lock the entire texture
/// \param pixels this is filled in with a pointer to the locked pixels,
/// appropriately offset by the locked area
/// \param pitch this is filled in with the pitch of the locked pixels; the
/// pitch is the length of one row in bytes
/// \returns 0 on success or a negative error code if the texture is not valid
/// or was not created with `SDL_TEXTUREACCESS_STREAMING`; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_UnlockTexture
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockTexture(SDL_Texture * texture, const SDL_Rect * rect, void **pixels, int *pitch)
/// ```
int SDL_LockTexture(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<Void>>? pixels, Pointer<Int32>? pitch) {
  final _SDL_LockTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<Void>>? pixels, Pointer<Int32>? pitch),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<Void>>? pixels, Pointer<Int32>? pitch)>('SDL_LockTexture');
  return _SDL_LockTexture(texture, rect, pixels, pitch);
}

/// 
/// Lock a portion of the texture for **write-only** pixel access, and expose
/// it as a SDL surface.
/// 
/// Besides providing an SDL_Surface instead of raw pixel data, this function
/// operates like SDL_LockTexture.
/// 
/// As an optimization, the pixels made available for editing don't necessarily
/// contain the old texture data. This is a write-only operation, and if you
/// need to keep a copy of the texture data you should do that at the
/// application level.
/// 
/// You must use SDL_UnlockTexture() to unlock the pixels and apply any
/// changes.
/// 
/// The returned surface is freed internally after calling SDL_UnlockTexture()
/// or SDL_DestroyTexture(). The caller should not free it.
/// 
/// \param texture the texture to lock for access, which was created with
/// `SDL_TEXTUREACCESS_STREAMING`
/// \param rect a pointer to the rectangle to lock for access. If the rect is
/// NULL, the entire texture will be locked
/// \param surface this is filled in with an SDL surface representing the
/// locked area
/// \returns 0 on success, or -1 if the texture is not valid or was not created
/// with `SDL_TEXTUREACCESS_STREAMING`
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// \sa SDL_LockTexture
/// \sa SDL_UnlockTexture
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface)
/// ```
int SDL_LockTextureToSurface(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<SDL_Surface>>? surface) {
  final _SDL_LockTextureToSurface = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<SDL_Surface>>? surface),
      int Function(Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? rect, Pointer<Pointer<SDL_Surface>>? surface)>('SDL_LockTextureToSurface');
  return _SDL_LockTextureToSurface(texture, rect, surface);
}

/// 
/// Unlock a texture, uploading the changes to video memory, if needed.
/// 
/// **Warning**: Please note that SDL_LockTexture() is intended to be
/// write-only; it will not guarantee the previous contents of the texture will
/// be provided. You must fully initialize any area of a texture that you lock
/// before unlocking it, as the pixels might otherwise be uninitialized memory.
/// 
/// Which is to say: locking and immediately unlocking a texture can result in
/// corrupted textures, depending on the renderer in use.
/// 
/// \param texture a texture locked by SDL_LockTexture()
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LockTexture
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockTexture(SDL_Texture * texture)
/// ```
void SDL_UnlockTexture(Pointer<SDL_Texture>? texture) {
  final _SDL_UnlockTexture = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Texture>? texture),
      void Function(Pointer<SDL_Texture>? texture)>('SDL_UnlockTexture');
  return _SDL_UnlockTexture(texture);
}

/// 
/// Determine whether a renderer supports the use of render targets.
/// 
/// \param renderer the renderer that will be checked
/// \returns SDL_TRUE if supported or SDL_FALSE if not.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetRenderTarget
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_RenderTargetSupported(SDL_Renderer *renderer)
/// ```
int SDL_RenderTargetSupported(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderTargetSupported = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderTargetSupported');
  return _SDL_RenderTargetSupported(renderer);
}

/// 
/// Set a texture as the current rendering target.
/// 
/// Before using this function, you should check the
/// `SDL_RENDERER_TARGETTEXTURE` bit in the flags of SDL_RendererInfo to see if
/// render targets are supported.
/// 
/// The default render target is the window for which the renderer was created.
/// To stop rendering to a texture and render to the window again, call this
/// function with a NULL `texture`.
/// 
/// \param renderer the rendering context
/// \param texture the targeted texture, which must be created with the
/// `SDL_TEXTUREACCESS_TARGET` flag, or NULL to render to the
/// window instead of a texture.
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRenderTarget
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture)
/// ```
int SDL_SetRenderTarget(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture) {
  final _SDL_SetRenderTarget = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture)>('SDL_SetRenderTarget');
  return _SDL_SetRenderTarget(renderer, texture);
}

/// 
/// Get the current render target.
/// 
/// The default render target is the window for which the renderer was created,
/// and is reported a NULL here.
/// 
/// \param renderer the rendering context
/// \returns the current render target or NULL for the default render target.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetRenderTarget
/// 
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL SDL_GetRenderTarget(SDL_Renderer *renderer)
/// ```
Pointer<SDL_Texture>? SDL_GetRenderTarget(Pointer<SDL_Renderer>? renderer) {
  final _SDL_GetRenderTarget = DLL_SDL2.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_GetRenderTarget');
  return _SDL_GetRenderTarget(renderer);
}

/// 
/// Set a device independent resolution for rendering.
/// 
/// This function uses the viewport and scaling functionality to allow a fixed
/// logical resolution for rendering, regardless of the actual output
/// resolution. If the actual output resolution doesn't have the same aspect
/// ratio the output rendering will be centered within the output display.
/// 
/// If the output display is a window, mouse and touch events in the window
/// will be filtered and scaled so they seem to arrive within the logical
/// resolution. The SDL_HINT_MOUSE_RELATIVE_SCALING hint controls whether
/// relative motion events are also scaled.
/// 
/// If this function results in scaling or subpixel drawing by the rendering
/// backend, it will be handled using the appropriate quality hints.
/// 
/// \param renderer the renderer for which resolution should be set
/// \param w the width of the logical resolution
/// \param h the height of the logical resolution
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderGetLogicalSize
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetLogicalSize(SDL_Renderer * renderer, int w, int h)
/// ```
int SDL_RenderSetLogicalSize(Pointer<SDL_Renderer>? renderer, int w, int h) {
  final _SDL_RenderSetLogicalSize = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 w, Int32 h),
      int Function(Pointer<SDL_Renderer>? renderer, int w, int h)>('SDL_RenderSetLogicalSize');
  return _SDL_RenderSetLogicalSize(renderer, w, h);
}

/// 
/// Get device independent resolution for rendering.
/// 
/// This may return 0 for `w` and `h` if the SDL_Renderer has never had its
/// logical size set by SDL_RenderSetLogicalSize() and never had a render
/// target set.
/// 
/// \param renderer a rendering context
/// \param w an int to be filled with the width
/// \param h an int to be filled with the height
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderSetLogicalSize
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetLogicalSize(SDL_Renderer * renderer, int *w, int *h)
/// ```
void SDL_RenderGetLogicalSize(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_RenderGetLogicalSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_RenderGetLogicalSize');
  return _SDL_RenderGetLogicalSize(renderer, w, h);
}

/// 
/// Set whether to force integer scales for resolution-independent rendering.
/// 
/// This function restricts the logical viewport to integer values - that is,
/// when a resolution is between two multiples of a logical size, the viewport
/// size is rounded down to the lower multiple.
/// 
/// \param renderer the renderer for which integer scaling should be set
/// \param enable enable or disable the integer scaling for rendering
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_RenderGetIntegerScale
/// \sa SDL_RenderSetLogicalSize
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetIntegerScale(SDL_Renderer * renderer, SDL_bool enable)
/// ```
int SDL_RenderSetIntegerScale(Pointer<SDL_Renderer>? renderer, int enable) {
  final _SDL_RenderSetIntegerScale = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 enable),
      int Function(Pointer<SDL_Renderer>? renderer, int enable)>('SDL_RenderSetIntegerScale');
  return _SDL_RenderSetIntegerScale(renderer, enable);
}

/// 
/// Get whether integer scales are forced for resolution-independent rendering.
/// 
/// \param renderer the renderer from which integer scaling should be queried
/// \returns SDL_TRUE if integer scales are forced or SDL_FALSE if not and on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_RenderSetIntegerScale
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_RenderGetIntegerScale(SDL_Renderer * renderer)
/// ```
int SDL_RenderGetIntegerScale(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderGetIntegerScale = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderGetIntegerScale');
  return _SDL_RenderGetIntegerScale(renderer);
}

/// 
/// Set the drawing area for rendering on the current target.
/// 
/// When the window is resized, the viewport is reset to fill the entire new
/// window size.
/// 
/// \param renderer the rendering context
/// \param rect the SDL_Rect structure representing the drawing area, or NULL
/// to set the viewport to the entire target
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderGetViewport
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetViewport(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderSetViewport(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderSetViewport = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderSetViewport');
  return _SDL_RenderSetViewport(renderer, rect);
}

/// 
/// Get the drawing area for the current target.
/// 
/// \param renderer the rendering context
/// \param rect an SDL_Rect structure filled in with the current drawing area
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderSetViewport
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetViewport(SDL_Renderer * renderer, SDL_Rect * rect)
/// ```
void SDL_RenderGetViewport(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderGetViewport = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderGetViewport');
  return _SDL_RenderGetViewport(renderer, rect);
}

/// 
/// Set the clip rectangle for rendering on the specified target.
/// 
/// \param renderer the rendering context for which clip rectangle should be
/// set
/// \param rect an SDL_Rect structure representing the clip area, relative to
/// the viewport, or NULL to disable clipping
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderGetClipRect
/// \sa SDL_RenderIsClipEnabled
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetClipRect(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderSetClipRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderSetClipRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderSetClipRect');
  return _SDL_RenderSetClipRect(renderer, rect);
}

/// 
/// Get the clip rectangle for the current target.
/// 
/// \param renderer the rendering context from which clip rectangle should be
/// queried
/// \param rect an SDL_Rect structure filled in with the current clipping area
/// or an empty rectangle if clipping is disabled
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderIsClipEnabled
/// \sa SDL_RenderSetClipRect
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetClipRect(SDL_Renderer * renderer, SDL_Rect * rect)
/// ```
void SDL_RenderGetClipRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderGetClipRect = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderGetClipRect');
  return _SDL_RenderGetClipRect(renderer, rect);
}

/// 
/// Get whether clipping is enabled on the given renderer.
/// 
/// \param renderer the renderer from which clip state should be queried
/// \returns SDL_TRUE if clipping is enabled or SDL_FALSE if not; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_RenderGetClipRect
/// \sa SDL_RenderSetClipRect
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_RenderIsClipEnabled(SDL_Renderer * renderer)
/// ```
int SDL_RenderIsClipEnabled(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderIsClipEnabled = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderIsClipEnabled');
  return _SDL_RenderIsClipEnabled(renderer);
}

/// 
/// Set the drawing scale for rendering on the current target.
/// 
/// The drawing coordinates are scaled by the x/y scaling factors before they
/// are used by the renderer. This allows resolution independent drawing with a
/// single coordinate system.
/// 
/// If this results in scaling or subpixel drawing by the rendering backend, it
/// will be handled using the appropriate quality hints. For best results use
/// integer scaling factors.
/// 
/// \param renderer a rendering context
/// \param scaleX the horizontal scaling factor
/// \param scaleY the vertical scaling factor
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderGetScale
/// \sa SDL_RenderSetLogicalSize
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetScale(SDL_Renderer * renderer, float scaleX, float scaleY)
/// ```
int SDL_RenderSetScale(Pointer<SDL_Renderer>? renderer, double scaleX, double scaleY) {
  final _SDL_RenderSetScale = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Float scaleX, Float scaleY),
      int Function(Pointer<SDL_Renderer>? renderer, double scaleX, double scaleY)>('SDL_RenderSetScale');
  return _SDL_RenderSetScale(renderer, scaleX, scaleY);
}

/// 
/// Get the drawing scale for the current target.
/// 
/// \param renderer the renderer from which drawing scale should be queried
/// \param scaleX a pointer filled in with the horizontal scaling factor
/// \param scaleY a pointer filled in with the vertical scaling factor
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderSetScale
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderGetScale(SDL_Renderer * renderer, float *scaleX, float *scaleY)
/// ```
void SDL_RenderGetScale(Pointer<SDL_Renderer>? renderer, Pointer<Float>? scaleX, Pointer<Float>? scaleY) {
  final _SDL_RenderGetScale = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Pointer<Float>? scaleX, Pointer<Float>? scaleY),
      void Function(Pointer<SDL_Renderer>? renderer, Pointer<Float>? scaleX, Pointer<Float>? scaleY)>('SDL_RenderGetScale');
  return _SDL_RenderGetScale(renderer, scaleX, scaleY);
}

/// 
/// Get logical coordinates of point in renderer when given real coordinates of
/// point in window.
/// 
/// Logical coordinates will differ from real coordinates when render is scaled
/// and logical renderer size set
/// 
/// \param renderer the renderer from which the logical coordinates should be
/// calcualted
/// \param windowX the real X coordinate in the window
/// \param windowY the real Y coordinate in the window
/// \param logicalX the pointer filled with the logical x coordinate
/// \param logicalY the pointer filled with the logical y coordinate
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_RenderGetScale
/// \sa SDL_RenderSetScale
/// \sa SDL_RenderGetLogicalSize
/// \sa SDL_RenderSetLogicalSize
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderWindowToLogical(SDL_Renderer * renderer, int windowX, int windowY, float *logicalX, float *logicalY)
/// ```
void SDL_RenderWindowToLogical(Pointer<SDL_Renderer>? renderer, int windowX, int windowY, Pointer<Float>? logicalX, Pointer<Float>? logicalY) {
  final _SDL_RenderWindowToLogical = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Int32 windowX, Int32 windowY, Pointer<Float>? logicalX, Pointer<Float>? logicalY),
      void Function(Pointer<SDL_Renderer>? renderer, int windowX, int windowY, Pointer<Float>? logicalX, Pointer<Float>? logicalY)>('SDL_RenderWindowToLogical');
  return _SDL_RenderWindowToLogical(renderer, windowX, windowY, logicalX, logicalY);
}

/// 
/// Get real coordinates of point in window when given logical coordinates of point in renderer.
/// Logical coordinates will differ from real coordinates when render is scaled and logical renderer size set
/// 
/// \param renderer the renderer from which the window coordinates should be calculated
/// \param logicalX the logical x coordinate
/// \param logicalY the logical y coordinate
/// \param windowX the pointer filled with the real X coordinate in the window
/// \param windowY the pointer filled with the real Y coordinate in the window
/// 
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_RenderGetScale
/// \sa SDL_RenderSetScale
/// \sa SDL_RenderGetLogicalSize
/// \sa SDL_RenderSetLogicalSize
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderLogicalToWindow(SDL_Renderer * renderer, float logicalX, float logicalY, int *windowX, int *windowY)
/// ```
void SDL_RenderLogicalToWindow(Pointer<SDL_Renderer>? renderer, double logicalX, double logicalY, Pointer<Int32>? windowX, Pointer<Int32>? windowY) {
  final _SDL_RenderLogicalToWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer, Float logicalX, Float logicalY, Pointer<Int32>? windowX, Pointer<Int32>? windowY),
      void Function(Pointer<SDL_Renderer>? renderer, double logicalX, double logicalY, Pointer<Int32>? windowX, Pointer<Int32>? windowY)>('SDL_RenderLogicalToWindow');
  return _SDL_RenderLogicalToWindow(renderer, logicalX, logicalY, windowX, windowY);
}

/// 
/// Set the color used for drawing operations (Rect, Line and Clear).
/// 
/// Set the color for drawing or filling rectangles, lines, and points, and for
/// SDL_RenderClear().
/// 
/// \param renderer the rendering context
/// \param r the red value used to draw on the rendering target
/// \param g the green value used to draw on the rendering target
/// \param b the blue value used to draw on the rendering target
/// \param a the alpha value used to draw on the rendering target; usually
/// `SDL_ALPHA_OPAQUE` (255). Use SDL_SetRenderDrawBlendMode to
/// specify how the alpha channel is used
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRenderDrawColor
/// \sa SDL_RenderClear
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRenderDrawColor(SDL_Renderer * renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int SDL_SetRenderDrawColor(Pointer<SDL_Renderer>? renderer, int r, int g, int b, int a) {
  final _SDL_SetRenderDrawColor = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_Renderer>? renderer, int r, int g, int b, int a)>('SDL_SetRenderDrawColor');
  return _SDL_SetRenderDrawColor(renderer, r, g, b, a);
}

/// 
/// Get the color used for drawing operations (Rect, Line and Clear).
/// 
/// \param renderer the rendering context
/// \param r a pointer filled in with the red value used to draw on the
/// rendering target
/// \param g a pointer filled in with the green value used to draw on the
/// rendering target
/// \param b a pointer filled in with the blue value used to draw on the
/// rendering target
/// \param a a pointer filled in with the alpha value used to draw on the
/// rendering target; usually `SDL_ALPHA_OPAQUE` (255)
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRenderDrawColor(SDL_Renderer * renderer, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
/// ```
int SDL_GetRenderDrawColor(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a) {
  final _SDL_GetRenderDrawColor = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a)>('SDL_GetRenderDrawColor');
  return _SDL_GetRenderDrawColor(renderer, r, g, b, a);
}

/// 
/// Set the blend mode used for drawing operations (Fill and Line).
/// 
/// If the blend mode is not supported, the closest supported mode is chosen.
/// 
/// \param renderer the rendering context
/// \param blendMode the SDL_BlendMode to use for blending
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetRenderDrawBlendMode
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode blendMode)
/// ```
int SDL_SetRenderDrawBlendMode(Pointer<SDL_Renderer>? renderer, int blendMode) {
  final _SDL_SetRenderDrawBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 blendMode),
      int Function(Pointer<SDL_Renderer>? renderer, int blendMode)>('SDL_SetRenderDrawBlendMode');
  return _SDL_SetRenderDrawBlendMode(renderer, blendMode);
}

/// 
/// Get the blend mode used for drawing operations.
/// 
/// \param renderer the rendering context
/// \param blendMode a pointer filled in with the current SDL_BlendMode
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetRenderDrawBlendMode
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode *blendMode)
/// ```
int SDL_GetRenderDrawBlendMode(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? blendMode) {
  final _SDL_GetRenderDrawBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? blendMode),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Int32>? blendMode)>('SDL_GetRenderDrawBlendMode');
  return _SDL_GetRenderDrawBlendMode(renderer, blendMode);
}

/// 
/// Clear the current rendering target with the drawing color.
/// 
/// This function clears the entire rendering target, ignoring the viewport and
/// the clip rectangle.
/// 
/// \param renderer the rendering context
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderClear(SDL_Renderer * renderer)
/// ```
int SDL_RenderClear(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderClear = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderClear');
  return _SDL_RenderClear(renderer);
}

/// 
/// Draw a point on the current rendering target.
/// 
/// SDL_RenderDrawPoint() draws a single point. If you want to draw multiple,
/// use SDL_RenderDrawPoints() instead.
/// 
/// \param renderer the rendering context
/// \param x the x coordinate of the point
/// \param y the y coordinate of the point
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawPoint(SDL_Renderer * renderer, int x, int y)
/// ```
int SDL_RenderDrawPoint(Pointer<SDL_Renderer>? renderer, int x, int y) {
  final _SDL_RenderDrawPoint = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 x, Int32 y),
      int Function(Pointer<SDL_Renderer>? renderer, int x, int y)>('SDL_RenderDrawPoint');
  return _SDL_RenderDrawPoint(renderer, x, y);
}

/// 
/// Draw multiple points on the current rendering target.
/// 
/// \param renderer the rendering context
/// \param points an array of SDL_Point structures that represent the points to
/// draw
/// \param count the number of points to draw
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawPoints(SDL_Renderer * renderer, const SDL_Point * points, int count)
/// ```
int SDL_RenderDrawPoints(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count) {
  final _SDL_RenderDrawPoints = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count)>('SDL_RenderDrawPoints');
  return _SDL_RenderDrawPoints(renderer, points, count);
}

/// 
/// Draw a line on the current rendering target.
/// 
/// SDL_RenderDrawLine() draws the line to include both end points. If you want
/// to draw multiple, connecting lines use SDL_RenderDrawLines() instead.
/// 
/// \param renderer the rendering context
/// \param x1 the x coordinate of the start point
/// \param y1 the y coordinate of the start point
/// \param x2 the x coordinate of the end point
/// \param y2 the y coordinate of the end point
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawLine(SDL_Renderer * renderer, int x1, int y1, int x2, int y2)
/// ```
int SDL_RenderDrawLine(Pointer<SDL_Renderer>? renderer, int x1, int y1, int x2, int y2) {
  final _SDL_RenderDrawLine = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 x1, Int32 y1, Int32 x2, Int32 y2),
      int Function(Pointer<SDL_Renderer>? renderer, int x1, int y1, int x2, int y2)>('SDL_RenderDrawLine');
  return _SDL_RenderDrawLine(renderer, x1, y1, x2, y2);
}

/// 
/// Draw a series of connected lines on the current rendering target.
/// 
/// \param renderer the rendering context
/// \param points an array of SDL_Point structures representing points along
/// the lines
/// \param count the number of points, drawing count-1 lines
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawLines(SDL_Renderer * renderer, const SDL_Point * points, int count)
/// ```
int SDL_RenderDrawLines(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count) {
  final _SDL_RenderDrawLines = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Point>? points, int count)>('SDL_RenderDrawLines');
  return _SDL_RenderDrawLines(renderer, points, count);
}

/// 
/// Draw a rectangle on the current rendering target.
/// 
/// \param renderer the rendering context
/// \param rect an SDL_Rect structure representing the rectangle to draw, or
/// NULL to outline the entire rendering target
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawRect(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderDrawRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderDrawRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderDrawRect');
  return _SDL_RenderDrawRect(renderer, rect);
}

/// 
/// Draw some number of rectangles on the current rendering target.
/// 
/// \param renderer the rendering context
/// \param rects an array of SDL_Rect structures representing the rectangles to
/// be drawn
/// \param count the number of rectangles
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count)
/// ```
int SDL_RenderDrawRects(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count) {
  final _SDL_RenderDrawRects = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count)>('SDL_RenderDrawRects');
  return _SDL_RenderDrawRects(renderer, rects, count);
}

/// 
/// Fill a rectangle on the current rendering target with the drawing color.
/// 
/// The current drawing color is set by SDL_SetRenderDrawColor(), and the
/// color's alpha value is ignored unless blending is enabled with the
/// appropriate call to SDL_SetRenderDrawBlendMode().
/// 
/// \param renderer the rendering context
/// \param rect the SDL_Rect structure representing the rectangle to fill, or
/// NULL for the entire rendering target
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRects
/// \sa SDL_RenderPresent
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFillRect(SDL_Renderer * renderer, const SDL_Rect * rect)
/// ```
int SDL_RenderFillRect(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect) {
  final _SDL_RenderFillRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect)>('SDL_RenderFillRect');
  return _SDL_RenderFillRect(renderer, rect);
}

/// 
/// Fill some number of rectangles on the current rendering target with the
/// drawing color.
/// 
/// \param renderer the rendering context
/// \param rects an array of SDL_Rect structures representing the rectangles to
/// be filled
/// \param count the number of rectangles
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderPresent
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFillRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count)
/// ```
int SDL_RenderFillRects(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count) {
  final _SDL_RenderFillRects = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rects, int count)>('SDL_RenderFillRects');
  return _SDL_RenderFillRects(renderer, rects, count);
}

/// 
/// Copy a portion of the texture to the current rendering target.
/// 
/// The texture is blended with the destination based on its blend mode set
/// with SDL_SetTextureBlendMode().
/// 
/// The texture color is affected based on its color modulation set by
/// SDL_SetTextureColorMod().
/// 
/// The texture alpha is affected based on its alpha modulation set by
/// SDL_SetTextureAlphaMod().
/// 
/// \param renderer the rendering context
/// \param texture the source texture
/// \param srcrect the source SDL_Rect structure or NULL for the entire texture
/// \param dstrect the destination SDL_Rect structure or NULL for the entire
/// rendering target; the texture will be stretched to fill the
/// given rectangle
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderCopyEx
/// \sa SDL_SetTextureAlphaMod
/// \sa SDL_SetTextureBlendMode
/// \sa SDL_SetTextureColorMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderCopy(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect)
/// ```
int SDL_RenderCopy(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect) {
  final _SDL_RenderCopy = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect)>('SDL_RenderCopy');
  return _SDL_RenderCopy(renderer, texture, srcrect, dstrect);
}

/// 
/// Copy a portion of the texture to the current rendering, with optional
/// rotation and flipping.
/// 
/// Copy a portion of the texture to the current rendering target, optionally
/// rotating it by angle around the given center and also flipping it
/// top-bottom and/or left-right.
/// 
/// The texture is blended with the destination based on its blend mode set
/// with SDL_SetTextureBlendMode().
/// 
/// The texture color is affected based on its color modulation set by
/// SDL_SetTextureColorMod().
/// 
/// The texture alpha is affected based on its alpha modulation set by
/// SDL_SetTextureAlphaMod().
/// 
/// \param renderer the rendering context
/// \param texture the source texture
/// \param srcrect the source SDL_Rect structure or NULL for the entire texture
/// \param dstrect the destination SDL_Rect structure or NULL for the entire
/// rendering target
/// \param angle an angle in degrees that indicates the rotation that will be
/// applied to dstrect, rotating it in a clockwise direction
/// \param center a pointer to a point indicating the point around which
/// dstrect will be rotated (if NULL, rotation will be done
/// around `dstrect.w / 2`, `dstrect.h / 2`)
/// \param flip a SDL_RendererFlip value stating which flipping actions should
/// be performed on the texture
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderCopy
/// \sa SDL_SetTextureAlphaMod
/// \sa SDL_SetTextureBlendMode
/// \sa SDL_SetTextureColorMod
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderCopyEx(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect, const double angle, const SDL_Point *center, const SDL_RendererFlip flip)
/// ```
int SDL_RenderCopyEx(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect, double angle, Pointer<SDL_Point>? center, int flip) {
  final _SDL_RenderCopyEx = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect, Double angle, Pointer<SDL_Point>? center, Int32 flip),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Rect>? dstrect, double angle, Pointer<SDL_Point>? center, int flip)>('SDL_RenderCopyEx');
  return _SDL_RenderCopyEx(renderer, texture, srcrect, dstrect, angle, center, flip);
}

/// 
/// Draw a point on the current rendering target at subpixel precision.
/// 
/// \param renderer The renderer which should draw a point.
/// \param x The x coordinate of the point.
/// \param y The y coordinate of the point.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawPointF(SDL_Renderer * renderer, float x, float y)
/// ```
int SDL_RenderDrawPointF(Pointer<SDL_Renderer>? renderer, double x, double y) {
  final _SDL_RenderDrawPointF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Float x, Float y),
      int Function(Pointer<SDL_Renderer>? renderer, double x, double y)>('SDL_RenderDrawPointF');
  return _SDL_RenderDrawPointF(renderer, x, y);
}

/// 
/// Draw multiple points on the current rendering target at subpixel precision.
/// 
/// \param renderer The renderer which should draw multiple points.
/// \param points The points to draw
/// \param count The number of points to draw
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawPointsF(SDL_Renderer * renderer, const SDL_FPoint * points, int count)
/// ```
int SDL_RenderDrawPointsF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FPoint>? points, int count) {
  final _SDL_RenderDrawPointsF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FPoint>? points, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FPoint>? points, int count)>('SDL_RenderDrawPointsF');
  return _SDL_RenderDrawPointsF(renderer, points, count);
}

/// 
/// Draw a line on the current rendering target at subpixel precision.
/// 
/// \param renderer The renderer which should draw a line.
/// \param x1 The x coordinate of the start point.
/// \param y1 The y coordinate of the start point.
/// \param x2 The x coordinate of the end point.
/// \param y2 The y coordinate of the end point.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawLineF(SDL_Renderer * renderer, float x1, float y1, float x2, float y2)
/// ```
int SDL_RenderDrawLineF(Pointer<SDL_Renderer>? renderer, double x1, double y1, double x2, double y2) {
  final _SDL_RenderDrawLineF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Float x1, Float y1, Float x2, Float y2),
      int Function(Pointer<SDL_Renderer>? renderer, double x1, double y1, double x2, double y2)>('SDL_RenderDrawLineF');
  return _SDL_RenderDrawLineF(renderer, x1, y1, x2, y2);
}

/// 
/// Draw a series of connected lines on the current rendering target at
/// subpixel precision.
/// 
/// \param renderer The renderer which should draw multiple lines.
/// \param points The points along the lines
/// \param count The number of points, drawing count-1 lines
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawLinesF(SDL_Renderer * renderer, const SDL_FPoint * points, int count)
/// ```
int SDL_RenderDrawLinesF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FPoint>? points, int count) {
  final _SDL_RenderDrawLinesF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FPoint>? points, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FPoint>? points, int count)>('SDL_RenderDrawLinesF');
  return _SDL_RenderDrawLinesF(renderer, points, count);
}

/// 
/// Draw a rectangle on the current rendering target at subpixel precision.
/// 
/// \param renderer The renderer which should draw a rectangle.
/// \param rect A pointer to the destination rectangle, or NULL to outline the
/// entire rendering target.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawRectF(SDL_Renderer * renderer, const SDL_FRect * rect)
/// ```
int SDL_RenderDrawRectF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rect) {
  final _SDL_RenderDrawRectF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rect)>('SDL_RenderDrawRectF');
  return _SDL_RenderDrawRectF(renderer, rect);
}

/// 
/// Draw some number of rectangles on the current rendering target at subpixel
/// precision.
/// 
/// \param renderer The renderer which should draw multiple rectangles.
/// \param rects A pointer to an array of destination rectangles.
/// \param count The number of rectangles.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderDrawRectsF(SDL_Renderer * renderer, const SDL_FRect * rects, int count)
/// ```
int SDL_RenderDrawRectsF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rects, int count) {
  final _SDL_RenderDrawRectsF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rects, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rects, int count)>('SDL_RenderDrawRectsF');
  return _SDL_RenderDrawRectsF(renderer, rects, count);
}

/// 
/// Fill a rectangle on the current rendering target with the drawing color at
/// subpixel precision.
/// 
/// \param renderer The renderer which should fill a rectangle.
/// \param rect A pointer to the destination rectangle, or NULL for the entire
/// rendering target.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFillRectF(SDL_Renderer * renderer, const SDL_FRect * rect)
/// ```
int SDL_RenderFillRectF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rect) {
  final _SDL_RenderFillRectF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rect)>('SDL_RenderFillRectF');
  return _SDL_RenderFillRectF(renderer, rect);
}

/// 
/// Fill some number of rectangles on the current rendering target with the
/// drawing color at subpixel precision.
/// 
/// \param renderer The renderer which should fill multiple rectangles.
/// \param rects A pointer to an array of destination rectangles.
/// \param count The number of rectangles.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFillRectsF(SDL_Renderer * renderer, const SDL_FRect * rects, int count)
/// ```
int SDL_RenderFillRectsF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rects, int count) {
  final _SDL_RenderFillRectsF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rects, Int32 count),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_FRect>? rects, int count)>('SDL_RenderFillRectsF');
  return _SDL_RenderFillRectsF(renderer, rects, count);
}

/// 
/// Copy a portion of the texture to the current rendering target at subpixel
/// precision.
/// 
/// \param renderer The renderer which should copy parts of a texture.
/// \param texture The source texture.
/// \param srcrect A pointer to the source rectangle, or NULL for the entire
/// texture.
/// \param dstrect A pointer to the destination rectangle, or NULL for the
/// entire rendering target.
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderCopyF(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_FRect * dstrect)
/// ```
int SDL_RenderCopyF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_FRect>? dstrect) {
  final _SDL_RenderCopyF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_FRect>? dstrect),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_FRect>? dstrect)>('SDL_RenderCopyF');
  return _SDL_RenderCopyF(renderer, texture, srcrect, dstrect);
}

/// 
/// Copy a portion of the source texture to the current rendering target, with
/// rotation and flipping, at subpixel precision.
/// 
/// \param renderer The renderer which should copy parts of a texture.
/// \param texture The source texture.
/// \param srcrect A pointer to the source rectangle, or NULL for the entire
/// texture.
/// \param dstrect A pointer to the destination rectangle, or NULL for the
/// entire rendering target.
/// \param angle An angle in degrees that indicates the rotation that will be
/// applied to dstrect, rotating it in a clockwise direction
/// \param center A pointer to a point indicating the point around which
/// dstrect will be rotated (if NULL, rotation will be done
/// around dstrect.w/2, dstrect.h/2).
/// \param flip An SDL_RendererFlip value stating which flipping actions should
/// be performed on the texture
/// \return 0 on success, or -1 on error
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderCopyExF(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_FRect * dstrect, const double angle, const SDL_FPoint *center, const SDL_RendererFlip flip)
/// ```
int SDL_RenderCopyExF(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_FRect>? dstrect, double angle, Pointer<SDL_FPoint>? center, int flip) {
  final _SDL_RenderCopyExF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_FRect>? dstrect, Double angle, Pointer<SDL_FPoint>? center, Int32 flip),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Rect>? srcrect, Pointer<SDL_FRect>? dstrect, double angle, Pointer<SDL_FPoint>? center, int flip)>('SDL_RenderCopyExF');
  return _SDL_RenderCopyExF(renderer, texture, srcrect, dstrect, angle, center, flip);
}

/// 
/// Render a list of triangles, optionally using a texture and indices into the
/// vertex array Color and alpha modulation is done per vertex
/// (SDL_SetTextureColorMod and SDL_SetTextureAlphaMod are ignored).
/// 
/// \param renderer The rendering context.
/// \param texture (optional) The SDL texture to use.
/// \param vertices Vertices.
/// \param num_vertices Number of vertices.
/// \param indices (optional) An array of integer indices into the 'vertices'
/// array, if NULL all vertices will be rendered in sequential
/// order.
/// \param num_indices Number of indices.
/// \return 0 on success, or -1 if the operation is not supported
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_RenderGeometryRaw
/// \sa SDL_Vertex
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderGeometry(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_Vertex *vertices, int num_vertices, const int *indices, int num_indices)
/// ```
int SDL_RenderGeometry(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Vertex>? vertices, int num_vertices, Pointer<Int32>? indices, int num_indices) {
  final _SDL_RenderGeometry = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Vertex>? vertices, Int32 num_vertices, Pointer<Int32>? indices, Int32 num_indices),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<SDL_Vertex>? vertices, int num_vertices, Pointer<Int32>? indices, int num_indices)>('SDL_RenderGeometry');
  return _SDL_RenderGeometry(renderer, texture, vertices, num_vertices, indices, num_indices);
}

/// 
/// Render a list of triangles, optionally using a texture and indices into the
/// vertex arrays Color and alpha modulation is done per vertex
/// (SDL_SetTextureColorMod and SDL_SetTextureAlphaMod are ignored).
/// 
/// \param renderer The rendering context.
/// \param texture (optional) The SDL texture to use.
/// \param xy Vertex positions
/// \param xy_stride Byte size to move from one element to the next element
/// \param color Vertex colors (as SDL_Color)
/// \param color_stride Byte size to move from one element to the next element
/// \param uv Vertex normalized texture coordinates
/// \param uv_stride Byte size to move from one element to the next element
/// \param num_vertices Number of vertices.
/// \param indices (optional) An array of indices into the 'vertices' arrays,
/// if NULL all vertices will be rendered in sequential order.
/// \param num_indices Number of indices.
/// \param size_indices Index size: 1 (byte), 2 (short), 4 (int)
/// \return 0 on success, or -1 if the operation is not supported
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_RenderGeometry
/// \sa SDL_Vertex
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderGeometryRaw(SDL_Renderer *renderer, SDL_Texture *texture, const float *xy, int xy_stride, const SDL_Color *color, int color_stride, const float *uv, int uv_stride, int num_vertices, const void *indices, int num_indices, int size_indices)
/// ```
int SDL_RenderGeometryRaw(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<Float>? xy, int xy_stride, Pointer<SDL_Color>? color, int color_stride, Pointer<Float>? uv, int uv_stride, int num_vertices, Pointer<Void>? indices, int num_indices, int size_indices) {
  final _SDL_RenderGeometryRaw = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<Float>? xy, Int32 xy_stride, Pointer<SDL_Color>? color, Int32 color_stride, Pointer<Float>? uv, Int32 uv_stride, Int32 num_vertices, Pointer<Void>? indices, Int32 num_indices, Int32 size_indices),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Texture>? texture, Pointer<Float>? xy, int xy_stride, Pointer<SDL_Color>? color, int color_stride, Pointer<Float>? uv, int uv_stride, int num_vertices, Pointer<Void>? indices, int num_indices, int size_indices)>('SDL_RenderGeometryRaw');
  return _SDL_RenderGeometryRaw(renderer, texture, xy, xy_stride, color, color_stride, uv, uv_stride, num_vertices, indices, num_indices, size_indices);
}

/// 
/// Read pixels from the current rendering target to an array of pixels.
/// 
/// **WARNING**: This is a very slow operation, and should not be used
/// frequently. If you're using this on the main rendering target, it should be
/// called after rendering and before SDL_RenderPresent().
/// 
/// `pitch` specifies the number of bytes between rows in the destination
/// `pixels` data. This allows you to write to a subrectangle or have padded
/// rows in the destination. Generally, `pitch` should equal the number of
/// pixels per row in the `pixels` data times the number of bytes per pixel,
/// but it might contain additional padding (for example, 24bit RGB Windows
/// Bitmap data pads all rows to multiples of 4 bytes).
/// 
/// \param renderer the rendering context
/// \param rect an SDL_Rect structure representing the area to read, or NULL
/// for the entire render target
/// \param format an SDL_PixelFormatEnum value of the desired format of the
/// pixel data, or 0 to use the format of the rendering target
/// \param pixels a pointer to the pixel data to copy into
/// \param pitch the pitch of the `pixels` parameter
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderReadPixels(SDL_Renderer * renderer, const SDL_Rect * rect, Uint32 format, void *pixels, int pitch)
/// ```
int SDL_RenderReadPixels(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect, int format, Pointer<Void>? pixels, int pitch) {
  final _SDL_RenderReadPixels = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect, Uint32 format, Pointer<Void>? pixels, Int32 pitch),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_Rect>? rect, int format, Pointer<Void>? pixels, int pitch)>('SDL_RenderReadPixels');
  return _SDL_RenderReadPixels(renderer, rect, format, pixels, pitch);
}

/// 
/// Update the screen with any rendering performed since the previous call.
/// 
/// SDL's rendering functions operate on a backbuffer; that is, calling a
/// rendering function such as SDL_RenderDrawLine() does not directly put a
/// line on the screen, but rather updates the backbuffer. As such, you compose
/// your entire scene and *present* the composed backbuffer to the screen as a
/// complete picture.
/// 
/// Therefore, when using SDL's rendering API, one does all drawing intended
/// for the frame, and then calls this function once per frame to present the
/// final drawing to the user.
/// 
/// The backbuffer should be considered invalidated after each present; do not
/// assume that previous contents will exist between frames. You are strongly
/// encouraged to call SDL_RenderClear() to initialize the backbuffer before
/// starting each new frame's drawing, even if you plan to overwrite every
/// pixel.
/// 
/// \param renderer the rendering context
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_RenderClear
/// \sa SDL_RenderDrawLine
/// \sa SDL_RenderDrawLines
/// \sa SDL_RenderDrawPoint
/// \sa SDL_RenderDrawPoints
/// \sa SDL_RenderDrawRect
/// \sa SDL_RenderDrawRects
/// \sa SDL_RenderFillRect
/// \sa SDL_RenderFillRects
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_SetRenderDrawColor
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RenderPresent(SDL_Renderer * renderer)
/// ```
void SDL_RenderPresent(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderPresent = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer),
      void Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderPresent');
  return _SDL_RenderPresent(renderer);
}

/// 
/// Destroy the specified texture.
/// 
/// Passing NULL or an otherwise invalid texture will set the SDL error message
/// to "Invalid texture".
/// 
/// \param texture the texture to destroy
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateTexture
/// \sa SDL_CreateTextureFromSurface
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyTexture(SDL_Texture * texture)
/// ```
void SDL_DestroyTexture(Pointer<SDL_Texture>? texture) {
  final _SDL_DestroyTexture = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Texture>? texture),
      void Function(Pointer<SDL_Texture>? texture)>('SDL_DestroyTexture');
  return _SDL_DestroyTexture(texture);
}

/// 
/// Destroy the rendering context for a window and free associated textures.
/// 
/// \param renderer the rendering context
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateRenderer
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyRenderer(SDL_Renderer * renderer)
/// ```
void SDL_DestroyRenderer(Pointer<SDL_Renderer>? renderer) {
  final _SDL_DestroyRenderer = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer>? renderer),
      void Function(Pointer<SDL_Renderer>? renderer)>('SDL_DestroyRenderer');
  return _SDL_DestroyRenderer(renderer);
}

/// 
/// Force the rendering context to flush any pending commands to the underlying
/// rendering API.
/// 
/// You do not need to (and in fact, shouldn't) call this function unless you
/// are planning to call into OpenGL/Direct3D/Metal/whatever directly in
/// addition to using an SDL_Renderer.
/// 
/// This is for a very-specific case: if you are using SDL's render API, you
/// asked for a specific renderer backend (OpenGL, Direct3D, etc), you set
/// SDL_HINT_RENDER_BATCHING to "1", and you plan to make OpenGL/D3D/whatever
/// calls in addition to SDL render API calls. If all of this applies, you
/// should call SDL_RenderFlush() between calls to SDL's render API and the
/// low-level API you're using in cooperation.
/// 
/// In all other cases, you can ignore this function. This is only here to get
/// maximum performance out of a specific situation. In all other cases, SDL
/// will do the right thing, perhaps at a performance loss.
/// 
/// This function is first available in SDL 2.0.10, and is not needed in 2.0.9
/// and earlier, as earlier versions did not queue rendering commands at all,
/// instead flushing them to the OS immediately.
/// 
/// \param renderer the rendering context
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.10.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderFlush(SDL_Renderer * renderer)
/// ```
int SDL_RenderFlush(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderFlush = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer),
      int Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderFlush');
  return _SDL_RenderFlush(renderer);
}

/// 
/// Bind an OpenGL/ES/ES2 texture to the current context.
/// 
/// This is for use with OpenGL instructions when rendering OpenGL primitives
/// directly.
/// 
/// If not NULL, `texw` and `texh` will be filled with the width and height
/// values suitable for the provided texture. In most cases, both will be 1.0,
/// however, on systems that support the GL_ARB_texture_rectangle extension,
/// these values will actually be the pixel width and height used to create the
/// texture, so this factor needs to be taken into account when providing
/// texture coordinates to OpenGL.
/// 
/// You need a renderer to create an SDL_Texture, therefore you can only use
/// this function with an implicit OpenGL context from SDL_CreateRenderer(),
/// not with your own OpenGL context. If you need control over your OpenGL
/// context, you need to write your own texture-loading methods.
/// 
/// Also note that SDL may upload RGB textures as BGR (or vice-versa), and
/// re-order the color channels in the shaders phase, so the uploaded texture
/// may have swapped color channels.
/// 
/// \param texture the texture to bind to the current OpenGL/ES/ES2 context
/// \param texw a pointer to a float value which will be filled with the
/// texture width or NULL if you don't need that value
/// \param texh a pointer to a float value which will be filled with the
/// texture height or NULL if you don't need that value
/// \returns 0 on success, or -1 if the operation is not supported; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_MakeCurrent
/// \sa SDL_GL_UnbindTexture
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_BindTexture(SDL_Texture *texture, float *texw, float *texh)
/// ```
int SDL_GL_BindTexture(Pointer<SDL_Texture>? texture, Pointer<Float>? texw, Pointer<Float>? texh) {
  final _SDL_GL_BindTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture, Pointer<Float>? texw, Pointer<Float>? texh),
      int Function(Pointer<SDL_Texture>? texture, Pointer<Float>? texw, Pointer<Float>? texh)>('SDL_GL_BindTexture');
  return _SDL_GL_BindTexture(texture, texw, texh);
}

/// 
/// Unbind an OpenGL/ES/ES2 texture from the current context.
/// 
/// See SDL_GL_BindTexture() for examples on how to use these functions
/// 
/// \param texture the texture to unbind from the current OpenGL/ES/ES2 context
/// \returns 0 on success, or -1 if the operation is not supported
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_BindTexture
/// \sa SDL_GL_MakeCurrent
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_UnbindTexture(SDL_Texture *texture)
/// ```
int SDL_GL_UnbindTexture(Pointer<SDL_Texture>? texture) {
  final _SDL_GL_UnbindTexture = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture>? texture),
      int Function(Pointer<SDL_Texture>? texture)>('SDL_GL_UnbindTexture');
  return _SDL_GL_UnbindTexture(texture);
}

/// 
/// Get the CAMetalLayer associated with the given Metal renderer.
/// 
/// This function returns `void *`, so SDL doesn't have to include Metal's
/// headers, but it can be safely cast to a `CAMetalLayer *`.
/// 
/// \param renderer The renderer to query
/// \returns a `CAMetalLayer *` on success, or NULL if the renderer isn't a
/// Metal renderer
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// \sa SDL_RenderGetMetalCommandEncoder
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_RenderGetMetalLayer(SDL_Renderer * renderer)
/// ```
Pointer<Void>? SDL_RenderGetMetalLayer(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderGetMetalLayer = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<Void>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderGetMetalLayer');
  return _SDL_RenderGetMetalLayer(renderer);
}

/// 
/// Get the Metal command encoder for the current frame
/// 
/// This function returns `void *`, so SDL doesn't have to include Metal's
/// headers, but it can be safely cast to an `id<MTLRenderCommandEncoder>`.
/// 
/// Note that as of SDL 2.0.18, this will return NULL if Metal refuses to give
/// SDL a drawable to render to, which might happen if the window is
/// hidden/minimized/offscreen. This doesn't apply to command encoders for
/// render targets, just the window's backbacker. Check your return values!
/// 
/// \param renderer The renderer to query
/// \returns an `id<MTLRenderCommandEncoder>` on success, or NULL if the
/// renderer isn't a Metal renderer or there was an error.
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// \sa SDL_RenderGetMetalLayer
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_RenderGetMetalCommandEncoder(SDL_Renderer * renderer)
/// ```
Pointer<Void>? SDL_RenderGetMetalCommandEncoder(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderGetMetalCommandEncoder = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<Void>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderGetMetalCommandEncoder');
  return _SDL_RenderGetMetalCommandEncoder(renderer);
}

/// 
/// Toggle VSync of the given renderer.
/// 
/// \param renderer The renderer to toggle
/// \param vsync 1 for on, 0 for off. All other values are reserved
/// \returns a 0 int on success, or non-zero on failure
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RenderSetVSync(SDL_Renderer* renderer, int vsync)
/// ```
int SDL_RenderSetVSync(Pointer<SDL_Renderer>? renderer, int vsync) {
  final _SDL_RenderSetVSync = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Int32 vsync),
      int Function(Pointer<SDL_Renderer>? renderer, int vsync)>('SDL_RenderSetVSync');
  return _SDL_RenderSetVSync(renderer, vsync);
}

