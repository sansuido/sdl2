// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the number of 2D rendering drivers available for the current
/// display.
/// 
/// A render driver is a set of code that handles rendering and texture
/// management on a particular display.  Normally there is only one, but
/// some drivers may have several available with different capabilities.
/// 
/// \sa SDL_GetRenderDriverInfo()
/// \sa SDL_CreateRenderer()
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
/// \brief Get information about a specific 2D rendering driver for the current
/// display.
/// 
/// \param index The index of the driver to query information about.
/// \param info  A pointer to an SDL_RendererInfo struct to be filled with
/// information on the rendering driver.
/// 
/// \return 0 on success, -1 if the index was out of range.
/// 
/// \sa SDL_CreateRenderer()
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
/// \brief Create a window and default renderer
/// 
/// \param width    The width of the window
/// \param height   The height of the window
/// \param window_flags The flags used to create the window
/// \param window   A pointer filled with the window, or NULL on error
/// \param renderer A pointer filled with the renderer, or NULL on error
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Create a 2D rendering context for a window.
/// 
/// \param window The window where rendering is displayed.
/// \param index    The index of the rendering driver to initialize, or -1 to
/// initialize the first one supporting the requested flags.
/// \param flags    ::SDL_RendererFlags.
/// 
/// \return A valid rendering context or NULL if there was an error.
/// 
/// \sa SDL_CreateSoftwareRenderer()
/// \sa SDL_GetRendererInfo()
/// \sa SDL_DestroyRenderer()
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
/// \brief Create a 2D software rendering context for a surface.
/// 
/// \param surface The surface where rendering is done.
/// 
/// \return A valid rendering context or NULL if there was an error.
/// 
/// \sa SDL_CreateRenderer()
/// \sa SDL_DestroyRenderer()
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
/// \brief Get the renderer associated with a window.
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
/// \brief Get information about a rendering context.
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
/// \brief Get the output size of a rendering context.
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
/// \brief Create a texture for a rendering context.
/// 
/// \param renderer The renderer.
/// \param format The format of the texture.
/// \param access One of the enumerated values in ::SDL_TextureAccess.
/// \param w      The width of the texture in pixels.
/// \param h      The height of the texture in pixels.
/// 
/// \return The created texture is returned, or 0 if no rendering context was
/// active,  the format was unsupported, or the width or height were out
/// of range.
/// 
/// \sa SDL_QueryTexture()
/// \sa SDL_UpdateTexture()
/// \sa SDL_DestroyTexture()
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
/// \brief Create a texture from an existing surface.
/// 
/// \param renderer The renderer.
/// \param surface The surface containing pixel data used to fill the texture.
/// 
/// \return The created texture is returned, or 0 on error.
/// 
/// \note The surface is not modified or freed by this function.
/// 
/// \sa SDL_QueryTexture()
/// \sa SDL_DestroyTexture()
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
/// \brief Query the attributes of a texture
/// 
/// \param texture A texture to be queried.
/// \param format  A pointer filled in with the raw format of the texture.  The
/// actual format may differ, but pixel transfers will use this
/// format.
/// \param access  A pointer filled in with the actual access to the texture.
/// \param w       A pointer filled in with the width of the texture in pixels.
/// \param h       A pointer filled in with the height of the texture in pixels.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
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
/// \brief Set an additional color value used in render copy operations.
/// 
/// \param texture The texture to update.
/// \param r       The red color value multiplied into copy operations.
/// \param g       The green color value multiplied into copy operations.
/// \param b       The blue color value multiplied into copy operations.
/// 
/// \return 0 on success, or -1 if the texture is not valid or color modulation
/// is not supported.
/// 
/// \sa SDL_GetTextureColorMod()
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
/// \brief Get the additional color value used in render copy operations.
/// 
/// \param texture The texture to query.
/// \param r         A pointer filled in with the current red color value.
/// \param g         A pointer filled in with the current green color value.
/// \param b         A pointer filled in with the current blue color value.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \sa SDL_SetTextureColorMod()
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
/// \brief Set an additional alpha value used in render copy operations.
/// 
/// \param texture The texture to update.
/// \param alpha     The alpha value multiplied into copy operations.
/// 
/// \return 0 on success, or -1 if the texture is not valid or alpha modulation
/// is not supported.
/// 
/// \sa SDL_GetTextureAlphaMod()
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
/// \brief Get the additional alpha value used in render copy operations.
/// 
/// \param texture The texture to query.
/// \param alpha     A pointer filled in with the current alpha value.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \sa SDL_SetTextureAlphaMod()
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
/// \brief Set the blend mode used for texture copy operations.
/// 
/// \param texture The texture to update.
/// \param blendMode ::SDL_BlendMode to use for texture blending.
/// 
/// \return 0 on success, or -1 if the texture is not valid or the blend mode is
/// not supported.
/// 
/// \note If the blend mode is not supported, the closest supported mode is
/// chosen.
/// 
/// \sa SDL_GetTextureBlendMode()
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
/// \brief Get the blend mode used for texture copy operations.
/// 
/// \param texture   The texture to query.
/// \param blendMode A pointer filled in with the current blend mode.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \sa SDL_SetTextureBlendMode()
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
/// \brief Update the given texture rectangle with new pixel data.
/// 
/// \param texture   The texture to update
/// \param rect      A pointer to the rectangle of pixels to update, or NULL to
/// update the entire texture.
/// \param pixels    The raw pixel data.
/// \param pitch     The number of bytes between rows of pixel data.
/// 
/// \return 0 on success, or -1 if the texture is not valid.
/// 
/// \note This is a fairly slow function.
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
/// \brief Lock a portion of the texture for write-only pixel access.
/// 
/// \param texture   The texture to lock for access, which was created with
/// ::SDL_TEXTUREACCESS_STREAMING.
/// \param rect      A pointer to the rectangle to lock for access. If the rect
/// is NULL, the entire texture will be locked.
/// \param pixels    This is filled in with a pointer to the locked pixels,
/// appropriately offset by the locked area.
/// \param pitch     This is filled in with the pitch of the locked pixels.
/// 
/// \return 0 on success, or -1 if the texture is not valid or was not created with ::SDL_TEXTUREACCESS_STREAMING.
/// 
/// \sa SDL_UnlockTexture()
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
/// \brief Unlock a texture, uploading the changes to video memory, if needed.
/// 
/// \sa SDL_LockTexture()
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
/// \brief Determines whether a window supports the use of render targets
/// 
/// \param renderer The renderer that will be checked
/// 
/// \return SDL_TRUE if supported, SDL_FALSE if not.
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
/// \brief Set a texture as the current rendering target.
/// 
/// \param renderer The renderer.
/// \param texture The targeted texture, which must be created with the SDL_TEXTUREACCESS_TARGET flag, or NULL for the default render target
/// 
/// \return 0 on success, or -1 on error
/// 
/// \sa SDL_GetRenderTarget()
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
/// \brief Get the current render target or NULL for the default render target.
/// 
/// \return The current render target
/// 
/// \sa SDL_SetRenderTarget()
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
/// \brief Set device independent resolution for rendering
/// 
/// \param renderer The renderer for which resolution should be set.
/// \param w      The width of the logical resolution
/// \param h      The height of the logical resolution
/// 
/// This function uses the viewport and scaling functionality to allow a fixed logical
/// resolution for rendering, regardless of the actual output resolution.  If the actual
/// output resolution doesn't have the same aspect ratio the output rendering will be
/// centered within the output display.
/// 
/// If the output display is a window, mouse events in the window will be filtered
/// and scaled so they seem to arrive within the logical resolution.
/// 
/// \note If this function results in scaling or subpixel drawing by the
/// rendering backend, it will be handled using the appropriate
/// quality hints.
/// 
/// \sa SDL_RenderGetLogicalSize()
/// \sa SDL_RenderSetScale()
/// \sa SDL_RenderSetViewport()
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
/// \brief Get device independent resolution for rendering
/// 
/// \param renderer The renderer from which resolution should be queried.
/// \param w      A pointer filled with the width of the logical resolution
/// \param h      A pointer filled with the height of the logical resolution
/// 
/// \sa SDL_RenderSetLogicalSize()
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
/// \brief Set the drawing area for rendering on the current target.
/// 
/// \param renderer The renderer for which the drawing area should be set.
/// \param rect The rectangle representing the drawing area, or NULL to set the viewport to the entire target.
/// 
/// The x,y of the viewport rect represents the origin for rendering.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \note If the window associated with the renderer is resized, the viewport is automatically reset.
/// 
/// \sa SDL_RenderGetViewport()
/// \sa SDL_RenderSetLogicalSize()
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
/// \brief Get the drawing area for the current target.
/// 
/// \sa SDL_RenderSetViewport()
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
/// \brief Set the clip rectangle for the current target.
/// 
/// \param renderer The renderer for which clip rectangle should be set.
/// \param rect   A pointer to the rectangle to set as the clip rectangle, or
/// NULL to disable clipping.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \sa SDL_RenderGetClipRect()
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
/// \brief Get the clip rectangle for the current target.
/// 
/// \param renderer The renderer from which clip rectangle should be queried.
/// \param rect   A pointer filled in with the current clip rectangle, or
/// an empty rectangle if clipping is disabled.
/// 
/// \sa SDL_RenderSetClipRect()
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
/// \brief Set the drawing scale for rendering on the current target.
/// 
/// \param renderer The renderer for which the drawing scale should be set.
/// \param scaleX The horizontal scaling factor
/// \param scaleY The vertical scaling factor
/// 
/// The drawing coordinates are scaled by the x/y scaling factors
/// before they are used by the renderer.  This allows resolution
/// independent drawing with a single coordinate system.
/// 
/// \note If this results in scaling or subpixel drawing by the
/// rendering backend, it will be handled using the appropriate
/// quality hints.  For best results use integer scaling factors.
/// 
/// \sa SDL_RenderGetScale()
/// \sa SDL_RenderSetLogicalSize()
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
/// \brief Get the drawing scale for the current target.
/// 
/// \param renderer The renderer from which drawing scale should be queried.
/// \param scaleX A pointer filled in with the horizontal scaling factor
/// \param scaleY A pointer filled in with the vertical scaling factor
/// 
/// \sa SDL_RenderSetScale()
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
/// \brief Set the color used for drawing operations (Rect, Line and Clear).
/// 
/// \param renderer The renderer for which drawing color should be set.
/// \param r The red value used to draw on the rendering target.
/// \param g The green value used to draw on the rendering target.
/// \param b The blue value used to draw on the rendering target.
/// \param a The alpha value used to draw on the rendering target, usually
/// ::SDL_ALPHA_OPAQUE (255).
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDL_SetRenderDrawColor(SDL_Renderer * renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int SDL_SetRenderDrawColor(Pointer<SDL_Renderer>? renderer, int r, int g, int b, int a) {
  final _SDL_SetRenderDrawColor = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_Renderer>? renderer, int r, int g, int b, int a)>('SDL_SetRenderDrawColor');
  return _SDL_SetRenderDrawColor(renderer, r, g, b, a);
}

/// 
/// \brief Get the color used for drawing operations (Rect, Line and Clear).
/// 
/// \param renderer The renderer from which drawing color should be queried.
/// \param r A pointer to the red value used to draw on the rendering target.
/// \param g A pointer to the green value used to draw on the rendering target.
/// \param b A pointer to the blue value used to draw on the rendering target.
/// \param a A pointer to the alpha value used to draw on the rendering target,
/// usually ::SDL_ALPHA_OPAQUE (255).
/// 
/// \return 0 on success, or -1 on error
/// 
/// ```c
/// extern DECLSPEC int SDL_GetRenderDrawColor(SDL_Renderer * renderer, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
/// ```
int SDL_GetRenderDrawColor(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a) {
  final _SDL_GetRenderDrawColor = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a),
      int Function(Pointer<SDL_Renderer>? renderer, Pointer<Uint8>? r, Pointer<Uint8>? g, Pointer<Uint8>? b, Pointer<Uint8>? a)>('SDL_GetRenderDrawColor');
  return _SDL_GetRenderDrawColor(renderer, r, g, b, a);
}

/// 
/// \brief Set the blend mode used for drawing operations (Fill and Line).
/// 
/// \param renderer The renderer for which blend mode should be set.
/// \param blendMode ::SDL_BlendMode to use for blending.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \note If the blend mode is not supported, the closest supported mode is
/// chosen.
/// 
/// \sa SDL_GetRenderDrawBlendMode()
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
/// \brief Get the blend mode used for drawing operations.
/// 
/// \param renderer The renderer from which blend mode should be queried.
/// \param blendMode A pointer filled in with the current blend mode.
/// 
/// \return 0 on success, or -1 on error
/// 
/// \sa SDL_SetRenderDrawBlendMode()
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
/// \brief Clear the current rendering target with the drawing color
/// 
/// This function clears the entire rendering target, ignoring the viewport.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Draw a point on the current rendering target.
/// 
/// \param renderer The renderer which should draw a point.
/// \param x The x coordinate of the point.
/// \param y The y coordinate of the point.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Draw multiple points on the current rendering target.
/// 
/// \param renderer The renderer which should draw multiple points.
/// \param points The points to draw
/// \param count The number of points to draw
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Draw a line on the current rendering target.
/// 
/// \param renderer The renderer which should draw a line.
/// \param x1 The x coordinate of the start point.
/// \param y1 The y coordinate of the start point.
/// \param x2 The x coordinate of the end point.
/// \param y2 The y coordinate of the end point.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Draw a series of connected lines on the current rendering target.
/// 
/// \param renderer The renderer which should draw multiple lines.
/// \param points The points along the lines
/// \param count The number of points, drawing count-1 lines
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Draw a rectangle on the current rendering target.
/// 
/// \param renderer The renderer which should draw a rectangle.
/// \param rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Draw some number of rectangles on the current rendering target.
/// 
/// \param renderer The renderer which should draw multiple rectangles.
/// \param rects A pointer to an array of destination rectangles.
/// \param count The number of rectangles.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Fill a rectangle on the current rendering target with the drawing color.
/// 
/// \param renderer The renderer which should fill a rectangle.
/// \param rect A pointer to the destination rectangle, or NULL for the entire
/// rendering target.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Fill some number of rectangles on the current rendering target with the drawing color.
/// 
/// \param renderer The renderer which should fill multiple rectangles.
/// \param rects A pointer to an array of destination rectangles.
/// \param count The number of rectangles.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Copy a portion of the texture to the current rendering target.
/// 
/// \param renderer The renderer which should copy parts of a texture.
/// \param texture The source texture.
/// \param srcrect   A pointer to the source rectangle, or NULL for the entire
/// texture.
/// \param dstrect   A pointer to the destination rectangle, or NULL for the
/// entire rendering target.
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center
/// 
/// \param renderer The renderer which should copy parts of a texture.
/// \param texture The source texture.
/// \param srcrect   A pointer to the source rectangle, or NULL for the entire
/// texture.
/// \param dstrect   A pointer to the destination rectangle, or NULL for the
/// entire rendering target.
/// \param angle    An angle in degrees that indicates the rotation that will be applied to dstrect
/// \param center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done aroud dstrect.w/2, dstrect.h/2)
/// \param flip     An SDL_RendererFlip value stating which flipping actions should be performed on the texture
/// 
/// \return 0 on success, or -1 on error
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
/// \brief Read pixels from the current rendering target.
/// 
/// \param renderer The renderer from which pixels should be read.
/// \param rect   A pointer to the rectangle to read, or NULL for the entire
/// render target.
/// \param format The desired format of the pixel data, or 0 to use the format
/// of the rendering target
/// \param pixels A pointer to be filled in with the pixel data
/// \param pitch  The pitch of the pixels parameter.
/// 
/// \return 0 on success, or -1 if pixel reading is not supported.
/// 
/// \warning This is a very slow operation, and should not be used frequently.
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
/// \brief Update the screen with rendering performed.
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
/// \brief Destroy the specified texture.
/// 
/// \sa SDL_CreateTexture()
/// \sa SDL_CreateTextureFromSurface()
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
/// \brief Destroy the rendering context for a window and free associated
/// textures.
/// 
/// \sa SDL_CreateRenderer()
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
/// \brief Bind the texture to the current OpenGL/ES/ES2 context for use with
/// OpenGL instructions.
/// 
/// \param texture  The SDL texture to bind
/// \param texw     A pointer to a float that will be filled with the texture width
/// \param texh     A pointer to a float that will be filled with the texture height
/// 
/// \return 0 on success, or -1 if the operation is not supported
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
/// \brief Unbind a texture from the current OpenGL/ES/ES2 context.
/// 
/// \param texture  The SDL texture to unbind
/// 
/// \return 0 on success, or -1 if the operation is not supported
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

