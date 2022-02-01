// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';

/// 
/// Compose a custom blend mode for renderers.
/// 
/// The functions SDL_SetRenderDrawBlendMode and SDL_SetTextureBlendMode accept
/// the SDL_BlendMode returned by this function if the renderer supports it.
/// 
/// A blend mode controls how the pixels from a drawing operation (source) get
/// combined with the pixels from the render target (destination). First, the
/// components of the source and destination pixels get multiplied with their
/// blend factors. Then, the blend operation takes the two products and
/// calculates the result that will get stored in the render target.
/// 
/// Expressed in pseudocode, it would look like this:
/// 
/// ```c
/// dstRGB = colorOperation(srcRGB * srcColorFactor, dstRGB * dstColorFactor);
/// dstA = alphaOperation(srcA * srcAlphaFactor, dstA * dstAlphaFactor);
/// ```
/// 
/// Where the functions `colorOperation(src, dst)` and `alphaOperation(src,
/// dst)` can return one of the following:
/// 
/// - `src + dst`
/// - `src - dst`
/// - `dst - src`
/// - `min(src, dst)`
/// - `max(src, dst)`
/// 
/// The red, green, and blue components are always multiplied with the first,
/// second, and third components of the SDL_BlendFactor, respectively. The
/// fourth component is not used.
/// 
/// The alpha component is always multiplied with the fourth component of the
/// SDL_BlendFactor. The other components are not used in the alpha
/// calculation.
/// 
/// Support for these blend modes varies for each renderer. To check if a
/// specific SDL_BlendMode is supported, create a renderer and pass it to
/// either SDL_SetRenderDrawBlendMode or SDL_SetTextureBlendMode. They will
/// return with an error if the blend mode is not supported.
/// 
/// This list describes the support of custom blend modes for each renderer in
/// SDL 2.0.6. All renderers support the four blend modes listed in the
/// SDL_BlendMode enumeration.
/// 
/// - **direct3d**: Supports `SDL_BLENDOPERATION_ADD` with all factors.
/// - **direct3d11**: Supports all operations with all factors. However, some
/// factors produce unexpected results with `SDL_BLENDOPERATION_MINIMUM` and
/// `SDL_BLENDOPERATION_MAXIMUM`.
/// - **opengl**: Supports the `SDL_BLENDOPERATION_ADD` operation with all
/// factors. OpenGL versions 1.1, 1.2, and 1.3 do not work correctly with SDL
/// 2.0.6.
/// - **opengles**: Supports the `SDL_BLENDOPERATION_ADD` operation with all
/// factors. Color and alpha factors need to be the same. OpenGL ES 1
/// implementation specific: May also support `SDL_BLENDOPERATION_SUBTRACT`
/// and `SDL_BLENDOPERATION_REV_SUBTRACT`. May support color and alpha
/// operations being different from each other. May support color and alpha
/// factors being different from each other.
/// - **opengles2**: Supports the `SDL_BLENDOPERATION_ADD`,
/// `SDL_BLENDOPERATION_SUBTRACT`, `SDL_BLENDOPERATION_REV_SUBTRACT`
/// operations with all factors.
/// - **psp**: No custom blend mode support.
/// - **software**: No custom blend mode support.
/// 
/// Some renderers do not provide an alpha component for the default render
/// target. The `SDL_BLENDFACTOR_DST_ALPHA` and
/// `SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA` factors do not have an effect in this
/// case.
/// 
/// \param srcColorFactor the SDL_BlendFactor applied to the red, green, and
/// blue components of the source pixels
/// \param dstColorFactor the SDL_BlendFactor applied to the red, green, and
/// blue components of the destination pixels
/// \param colorOperation the SDL_BlendOperation used to combine the red,
/// green, and blue components of the source and
/// destination pixels
/// \param srcAlphaFactor the SDL_BlendFactor applied to the alpha component of
/// the source pixels
/// \param dstAlphaFactor the SDL_BlendFactor applied to the alpha component of
/// the destination pixels
/// \param alphaOperation the SDL_BlendOperation used to combine the alpha
/// component of the source and destination pixels
/// \returns an SDL_BlendMode that represents the chosen factors and
/// operations.
/// 
/// \since This function is available since SDL 2.0.6.
/// 
/// \sa SDL_SetRenderDrawBlendMode
/// \sa SDL_GetRenderDrawBlendMode
/// \sa SDL_SetTextureBlendMode
/// \sa SDL_GetTextureBlendMode
/// 
/// ```c
/// extern DECLSPEC SDL_BlendMode SDLCALL SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor, SDL_BlendFactor dstColorFactor, SDL_BlendOperation colorOperation, SDL_BlendFactor srcAlphaFactor, SDL_BlendFactor dstAlphaFactor, SDL_BlendOperation alphaOperation)
/// ```
int SDL_ComposeCustomBlendMode(int srcColorFactor, int dstColorFactor, int colorOperation, int srcAlphaFactor, int dstAlphaFactor, int alphaOperation) {
  final _SDL_ComposeCustomBlendMode = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 srcColorFactor, Int32 dstColorFactor, Int32 colorOperation, Int32 srcAlphaFactor, Int32 dstAlphaFactor, Int32 alphaOperation),
      int Function(int srcColorFactor, int dstColorFactor, int colorOperation, int srcAlphaFactor, int dstAlphaFactor, int alphaOperation)>('SDL_ComposeCustomBlendMode');
  return _SDL_ComposeCustomBlendMode(srcColorFactor, dstColorFactor, colorOperation, srcAlphaFactor, dstAlphaFactor, alphaOperation);
}

