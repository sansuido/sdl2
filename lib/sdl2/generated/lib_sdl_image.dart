// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../dylib.dart' as dylib;
import 'struct_sdl.dart';
import 'struct_sdl_image.dart';

final libSdl2Image = dylib.dylibOpen('SDL2_image');

///
/// This function gets the version of the dynamically linked SDL_image library.
///
/// it should NOT be used to fill a version structure, instead you should use
/// the SDL_IMAGE_VERSION() macro.
///
/// \returns SDL_image version
///
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL IMG_Linked_Version(void)
/// ```
Pointer<SdlVersion> imgLinkedVersion() {
  final imgLinkedVersionLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlVersion> Function(),
      Pointer<SdlVersion> Function()>('IMG_Linked_Version');
  return imgLinkedVersionLookupFunction();
}

///
/// Initialize SDL_image.
///
/// This function loads dynamic libraries that SDL_image needs, and prepares
/// them for use. This must be the first function you call in SDL_image, and if
/// it fails you should not continue with the library.
///
/// Flags should be one or more flags from IMG_InitFlags OR'd together. It
/// returns the flags successfully initialized, or 0 on failure.
///
/// Currently, these flags are:
///
/// - `_INIT_JPG`
/// - `_INIT_PNG`
/// - `_INIT_TIF`
/// - `_INIT_WEBP`
/// - `_INIT_JXL`
/// - `_INIT_AVIF`
///
/// More flags may be added in a future SDL_image release.
///
/// This function may need to load external shared libraries to support various
/// codecs, which means this function can fail to initialize that support on an
/// otherwise-reasonable system if the library isn't available; this is not
/// just a question of exceptional circumstances like running out of memory at
/// startup!
///
/// Note that you may call this function more than once to initialize with
/// additional flags. The return value will reflect both new flags that
/// successfully initialized, and also include flags that had previously been
/// initialized as well.
///
/// As this will return previously-initialized flags, it's legal to call this
/// with zero (no flags set). This is a safe no-op that can be used to query
/// the current initialization state without changing it at all.
///
/// Since this returns previously-initialized flags as well as new ones, and
/// you can call this with zero, you should not check for a zero return value
/// to determine an error condition. Instead, you should check to make sure all
/// the flags you require are set in the return value. If you have a game with
/// data in a specific format, this might be a fatal error. If you're a generic
/// image displaying app, perhaps you are fine with only having JPG and PNG
/// support and can live without WEBP, even if you request support for
/// everything.
///
/// Unlike other SDL satellite libraries, calls to IMG_Init do not stack; a
/// single call to IMG_Quit() will deinitialize everything and does not have to
/// be paired with a matching IMG_Init call. For that reason, it's considered
/// best practices to have a single IMG_Init and IMG_Quit call in your program.
/// While this isn't required, be aware of the risks of deviating from that
/// behavior.
///
/// After initializing SDL_image, the app may begin to load images into
/// SDL_Surfaces or SDL_Textures.
///
/// \param flags initialization flags, OR'd together.
/// \returns all currently initialized flags.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_Quit
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_Init(int flags)
/// ```
int imgInit(int flags) {
  final imgInitLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Int32 flags), int Function(int flags)>('IMG_Init');
  return imgInitLookupFunction(flags);
}

///
/// Deinitialize SDL_image.
///
/// This should be the last function you call in SDL_image, after freeing all
/// other resources. This will unload any shared libraries it is using for
/// various codecs.
///
/// After this call, a call to IMG_Init(0) will return 0 (no codecs loaded).
///
/// You can safely call IMG_Init() to reload various codec support after this
/// call.
///
/// Unlike other SDL satellite libraries, calls to IMG_Init do not stack; a
/// single call to IMG_Quit() will deinitialize everything and does not have to
/// be paired with a matching IMG_Init call. For that reason, it's considered
/// best practices to have a single IMG_Init and IMG_Quit call in your program.
/// While this isn't required, be aware of the risks of deviating from that
/// behavior.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_Init
///
/// ```c
/// extern DECLSPEC void SDLCALL IMG_Quit(void)
/// ```
void imgQuit() {
  final imgQuitLookupFunction =
      libSdl2Image.lookupFunction<Void Function(), void Function()>('IMG_Quit');
  return imgQuitLookupFunction();
}

///
/// Load an image from an SDL data source into a software surface.
///
/// An SDL_Surface is a buffer of pixels in memory accessible by the CPU. Use
/// this if you plan to hand the data to something else or manipulate it
/// further in code.
///
/// There are no guarantees about what format the new SDL_Surface data will be;
/// in many cases, SDL_image will attempt to supply a surface that exactly
/// matches the provided image, but in others it might have to convert (either
/// because the image is in a format that SDL doesn't directly support or
/// because it's compressed data that could reasonably uncompress to various
/// formats and SDL_image had to pick one). You can inspect an SDL_Surface for
/// its specifics, and use SDL_ConvertSurface to then migrate to any supported
/// format.
///
/// If the image format supports a transparent pixel, SDL will set the colorkey
/// for the surface. You can enable RLE acceleration on the surface afterwards
/// by calling: SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_image reads everything it needs
/// from the RWops during this call in any case.
///
/// Even though this function accepts a file type, SDL_image may still try
/// other decoders that are capable of detecting file type from the contents of
/// the image data, but may rely on the caller-provided type string for formats
/// that it cannot autodetect. If `type` is NULL, SDL_image will rely solely on
/// its ability to guess the format.
///
/// There is a separate function to read files from disk without having to deal
/// with SDL_RWops: `IMG_Load("filename.jpg")` will call this function and
/// manage those details for you, determining the file type from the filename's
/// extension.
///
/// There is also IMG_Load_RW(), which is equivalent to this function except
/// that it will rely on SDL_image to determine what type of data it is
/// loading, much like passing a NULL for type.
///
/// If you are using SDL's 2D rendering API, there is an equivalent call to
/// load images directly into an SDL_Texture for use by the GPU without using a
/// software surface: call IMG_LoadTextureTyped_RW() instead.
///
/// When done with the returned surface, the app should dispose of it with a
/// call to SDL_FreeSurface().
///
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \param type a filename extension that represent this data ("BMP", "GIF",
/// "PNG", etc).
/// \returns a new SDL surface, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_Load
/// \sa IMG_Load_RW
/// \sa SDL_FreeSurface
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadTyped_RW(SDL_RWops *src, int freesrc, const char *type)
/// ```
Pointer<SdlSurface> imgLoadTypedRw(
    Pointer<SdlRWops> src, int freesrc, String type) {
  final imgLoadTypedRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<SdlRWops> src, Int32 freesrc, Pointer<Utf8> type),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src, int freesrc,
          Pointer<Utf8> type)>('IMG_LoadTyped_RW');
  final typePointer = type.toNativeUtf8();
  final result = imgLoadTypedRwLookupFunction(src, freesrc, typePointer);
  calloc.free(typePointer);
  return result;
}

///
/// Load an image from a filesystem path into a software surface.
///
/// An SDL_Surface is a buffer of pixels in memory accessible by the CPU. Use
/// this if you plan to hand the data to something else or manipulate it
/// further in code.
///
/// There are no guarantees about what format the new SDL_Surface data will be;
/// in many cases, SDL_image will attempt to supply a surface that exactly
/// matches the provided image, but in others it might have to convert (either
/// because the image is in a format that SDL doesn't directly support or
/// because it's compressed data that could reasonably uncompress to various
/// formats and SDL_image had to pick one). You can inspect an SDL_Surface for
/// its specifics, and use SDL_ConvertSurface to then migrate to any supported
/// format.
///
/// If the image format supports a transparent pixel, SDL will set the colorkey
/// for the surface. You can enable RLE acceleration on the surface afterwards
/// by calling: SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
///
/// There is a separate function to read files from an SDL_RWops, if you need
/// an i/o abstraction to provide data from anywhere instead of a simple
/// filesystem read; that function is IMG_Load_RW().
///
/// If you are using SDL's 2D rendering API, there is an equivalent call to
/// load images directly into an SDL_Texture for use by the GPU without using a
/// software surface: call IMG_LoadTexture() instead.
///
/// When done with the returned surface, the app should dispose of it with a
/// call to SDL_FreeSurface().
///
/// \param file a path on the filesystem to load an image from.
/// \returns a new SDL surface, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadTyped_RW
/// \sa IMG_Load_RW
/// \sa SDL_FreeSurface
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_Load(const char *file)
/// ```
Pointer<SdlSurface> imgLoad(String file) {
  final imgLoadLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<Utf8> file),
      Pointer<SdlSurface> Function(Pointer<Utf8> file)>('IMG_Load');
  final filePointer = file.toNativeUtf8();
  final result = imgLoadLookupFunction(filePointer);
  calloc.free(filePointer);
  return result;
}

///
/// Load an image from an SDL data source into a software surface.
///
/// An SDL_Surface is a buffer of pixels in memory accessible by the CPU. Use
/// this if you plan to hand the data to something else or manipulate it
/// further in code.
///
/// There are no guarantees about what format the new SDL_Surface data will be;
/// in many cases, SDL_image will attempt to supply a surface that exactly
/// matches the provided image, but in others it might have to convert (either
/// because the image is in a format that SDL doesn't directly support or
/// because it's compressed data that could reasonably uncompress to various
/// formats and SDL_image had to pick one). You can inspect an SDL_Surface for
/// its specifics, and use SDL_ConvertSurface to then migrate to any supported
/// format.
///
/// If the image format supports a transparent pixel, SDL will set the colorkey
/// for the surface. You can enable RLE acceleration on the surface afterwards
/// by calling: SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_image reads everything it needs
/// from the RWops during this call in any case.
///
/// There is a separate function to read files from disk without having to deal
/// with SDL_RWops: `IMG_Load("filename.jpg")` will call this function and
/// manage those details for you, determining the file type from the filename's
/// extension.
///
/// There is also IMG_LoadTyped_RW(), which is equivalent to this function
/// except a file extension (like "BMP", "JPG", etc) can be specified, in case
/// SDL_image cannot autodetect the file format.
///
/// If you are using SDL's 2D rendering API, there is an equivalent call to
/// load images directly into an SDL_Texture for use by the GPU without using a
/// software surface: call IMG_LoadTexture_RW() instead.
///
/// When done with the returned surface, the app should dispose of it with a
/// call to SDL_FreeSurface().
///
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \returns a new SDL surface, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_Load
/// \sa IMG_LoadTyped_RW
/// \sa SDL_FreeSurface
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_Load_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<SdlSurface> imgLoadRw(Pointer<SdlRWops> src, int freesrc) {
  final imgLoadRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src, Int32 freesrc),
      Pointer<SdlSurface> Function(
          Pointer<SdlRWops> src, int freesrc)>('IMG_Load_RW');
  return imgLoadRwLookupFunction(src, freesrc);
}

///
/// Load an image from a filesystem path into a GPU texture.
///
/// An SDL_Texture represents an image in GPU memory, usable by SDL's 2D Render
/// API. This can be significantly more efficient than using a CPU-bound
/// SDL_Surface if you don't need to manipulate the image directly after
/// loading it.
///
/// If the loaded image has transparency or a colorkey, a texture with an alpha
/// channel will be created. Otherwise, SDL_image will attempt to create an
/// SDL_Texture in the most format that most reasonably represents the image
/// data (but in many cases, this will just end up being 32-bit RGB or 32-bit
/// RGBA).
///
/// There is a separate function to read files from an SDL_RWops, if you need
/// an i/o abstraction to provide data from anywhere instead of a simple
/// filesystem read; that function is IMG_LoadTexture_RW().
///
/// If you would rather decode an image to an SDL_Surface (a buffer of pixels
/// in CPU memory), call IMG_Load() instead.
///
/// When done with the returned texture, the app should dispose of it with a
/// call to SDL_DestroyTexture().
///
/// \param renderer the SDL_Renderer to use to create the GPU texture.
/// \param file a path on the filesystem to load an image from.
/// \returns a new texture, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadTextureTyped_RW
/// \sa IMG_LoadTexture_RW
/// \sa SDL_DestroyTexture
///
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL IMG_LoadTexture(SDL_Renderer *renderer, const char *file)
/// ```
Pointer<SdlTexture> imgLoadTexture(Pointer<SdlRenderer> renderer, String file) {
  final imgLoadTextureLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlTexture> Function(
          Pointer<SdlRenderer> renderer, Pointer<Utf8> file),
      Pointer<SdlTexture> Function(Pointer<SdlRenderer> renderer,
          Pointer<Utf8> file)>('IMG_LoadTexture');
  final filePointer = file.toNativeUtf8();
  final result = imgLoadTextureLookupFunction(renderer, filePointer);
  calloc.free(filePointer);
  return result;
}

///
/// Load an image from an SDL data source into a GPU texture.
///
/// An SDL_Texture represents an image in GPU memory, usable by SDL's 2D Render
/// API. This can be significantly more efficient than using a CPU-bound
/// SDL_Surface if you don't need to manipulate the image directly after
/// loading it.
///
/// If the loaded image has transparency or a colorkey, a texture with an alpha
/// channel will be created. Otherwise, SDL_image will attempt to create an
/// SDL_Texture in the most format that most reasonably represents the image
/// data (but in many cases, this will just end up being 32-bit RGB or 32-bit
/// RGBA).
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_image reads everything it needs
/// from the RWops during this call in any case.
///
/// There is a separate function to read files from disk without having to deal
/// with SDL_RWops: `IMG_LoadTexture(renderer, "filename.jpg")` will call this
/// function and manage those details for you, determining the file type from
/// the filename's extension.
///
/// There is also IMG_LoadTextureTyped_RW(), which is equivalent to this
/// function except a file extension (like "BMP", "JPG", etc) can be specified,
/// in case SDL_image cannot autodetect the file format.
///
/// If you would rather decode an image to an SDL_Surface (a buffer of pixels
/// in CPU memory), call IMG_Load() instead.
///
/// When done with the returned texture, the app should dispose of it with a
/// call to SDL_DestroyTexture().
///
/// \param renderer the SDL_Renderer to use to create the GPU texture.
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \returns a new texture, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadTexture
/// \sa IMG_LoadTextureTyped_RW
/// \sa SDL_DestroyTexture
///
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL IMG_LoadTexture_RW(SDL_Renderer *renderer, SDL_RWops *src, int freesrc)
/// ```
Pointer<SdlTexture> imgLoadTextureRw(
    Pointer<SdlRenderer> renderer, Pointer<SdlRWops> src, int freesrc) {
  final imgLoadTextureRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlTexture> Function(
          Pointer<SdlRenderer> renderer, Pointer<SdlRWops> src, Int32 freesrc),
      Pointer<SdlTexture> Function(Pointer<SdlRenderer> renderer,
          Pointer<SdlRWops> src, int freesrc)>('IMG_LoadTexture_RW');
  return imgLoadTextureRwLookupFunction(renderer, src, freesrc);
}

///
/// Load an image from an SDL data source into a GPU texture.
///
/// An SDL_Texture represents an image in GPU memory, usable by SDL's 2D Render
/// API. This can be significantly more efficient than using a CPU-bound
/// SDL_Surface if you don't need to manipulate the image directly after
/// loading it.
///
/// If the loaded image has transparency or a colorkey, a texture with an alpha
/// channel will be created. Otherwise, SDL_image will attempt to create an
/// SDL_Texture in the most format that most reasonably represents the image
/// data (but in many cases, this will just end up being 32-bit RGB or 32-bit
/// RGBA).
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_image reads everything it needs
/// from the RWops during this call in any case.
///
/// Even though this function accepts a file type, SDL_image may still try
/// other decoders that are capable of detecting file type from the contents of
/// the image data, but may rely on the caller-provided type string for formats
/// that it cannot autodetect. If `type` is NULL, SDL_image will rely solely on
/// its ability to guess the format.
///
/// There is a separate function to read files from disk without having to deal
/// with SDL_RWops: `IMG_LoadTexture("filename.jpg")` will call this function
/// and manage those details for you, determining the file type from the
/// filename's extension.
///
/// There is also IMG_LoadTexture_RW(), which is equivalent to this function
/// except that it will rely on SDL_image to determine what type of data it is
/// loading, much like passing a NULL for type.
///
/// If you would rather decode an image to an SDL_Surface (a buffer of pixels
/// in CPU memory), call IMG_LoadTyped_RW() instead.
///
/// When done with the returned texture, the app should dispose of it with a
/// call to SDL_DestroyTexture().
///
/// \param renderer the SDL_Renderer to use to create the GPU texture.
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \param type a filename extension that represent this data ("BMP", "GIF",
/// "PNG", etc).
/// \returns a new texture, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadTexture
/// \sa IMG_LoadTexture_RW
/// \sa SDL_DestroyTexture
///
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL IMG_LoadTextureTyped_RW(SDL_Renderer *renderer, SDL_RWops *src, int freesrc, const char *type)
/// ```
Pointer<SdlTexture> imgLoadTextureTypedRw(Pointer<SdlRenderer> renderer,
    Pointer<SdlRWops> src, int freesrc, String type) {
  final imgLoadTextureTypedRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlTexture> Function(Pointer<SdlRenderer> renderer,
          Pointer<SdlRWops> src, Int32 freesrc, Pointer<Utf8> type),
      Pointer<SdlTexture> Function(
          Pointer<SdlRenderer> renderer,
          Pointer<SdlRWops> src,
          int freesrc,
          Pointer<Utf8> type)>('IMG_LoadTextureTyped_RW');
  final typePointer = type.toNativeUtf8();
  final result =
      imgLoadTextureTypedRwLookupFunction(renderer, src, freesrc, typePointer);
  calloc.free(typePointer);
  return result;
}

///
/// Detect AVIF image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is AVIF data, zero otherwise.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isAVIF(SDL_RWops *src)
/// ```
int imgIsAvif(Pointer<SdlRWops> src) {
  final imgIsAvifLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isAVIF');
  return imgIsAvifLookupFunction(src);
}

///
/// Detect ICO image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is ICO data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isICO(SDL_RWops *src)
/// ```
int imgIsIco(Pointer<SdlRWops> src) {
  final imgIsIcoLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isICO');
  return imgIsIcoLookupFunction(src);
}

///
/// Detect CUR image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is CUR data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isCUR(SDL_RWops *src)
/// ```
int imgIsCur(Pointer<SdlRWops> src) {
  final imgIsCurLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isCUR');
  return imgIsCurLookupFunction(src);
}

///
/// Detect BMP image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is BMP data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isBMP(SDL_RWops *src)
/// ```
int imgIsBmp(Pointer<SdlRWops> src) {
  final imgIsBmpLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isBMP');
  return imgIsBmpLookupFunction(src);
}

///
/// Detect GIF image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is GIF data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isGIF(SDL_RWops *src)
/// ```
int imgIsGif(Pointer<SdlRWops> src) {
  final imgIsGifLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isGIF');
  return imgIsGifLookupFunction(src);
}

///
/// Detect JPG image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is JPG data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isJPG(SDL_RWops *src)
/// ```
int imgIsJpg(Pointer<SdlRWops> src) {
  final imgIsJpgLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isJPG');
  return imgIsJpgLookupFunction(src);
}

///
/// Detect JXL image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is JXL data, zero otherwise.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isJXL(SDL_RWops *src)
/// ```
int imgIsJxl(Pointer<SdlRWops> src) {
  final imgIsJxlLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isJXL');
  return imgIsJxlLookupFunction(src);
}

///
/// Detect LBM image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is LBM data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isLBM(SDL_RWops *src)
/// ```
int imgIsLbm(Pointer<SdlRWops> src) {
  final imgIsLbmLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isLBM');
  return imgIsLbmLookupFunction(src);
}

///
/// Detect PCX image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is PCX data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isPCX(SDL_RWops *src)
/// ```
int imgIsPcx(Pointer<SdlRWops> src) {
  final imgIsPcxLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isPCX');
  return imgIsPcxLookupFunction(src);
}

///
/// Detect PNG image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is PNG data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isPNG(SDL_RWops *src)
/// ```
int imgIsPng(Pointer<SdlRWops> src) {
  final imgIsPngLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isPNG');
  return imgIsPngLookupFunction(src);
}

///
/// Detect PNM image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is PNM data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isPNM(SDL_RWops *src)
/// ```
int imgIsPnm(Pointer<SdlRWops> src) {
  final imgIsPnmLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isPNM');
  return imgIsPnmLookupFunction(src);
}

///
/// Detect SVG image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is SVG data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.2.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isSVG(SDL_RWops *src)
/// ```
int imgIsSvg(Pointer<SdlRWops> src) {
  final imgIsSvgLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isSVG');
  return imgIsSvgLookupFunction(src);
}

///
/// Detect QOI image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is QOI data, zero otherwise.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isQOI(SDL_RWops *src)
/// ```
int imgIsQoi(Pointer<SdlRWops> src) {
  final imgIsQoiLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isQOI');
  return imgIsQoiLookupFunction(src);
}

///
/// Detect TIFF image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is TIFF data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isTIF(SDL_RWops *src)
/// ```
int imgIsTif(Pointer<SdlRWops> src) {
  final imgIsTifLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isTIF');
  return imgIsTifLookupFunction(src);
}

///
/// Detect XCF image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is XCF data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXPM
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isXCF(SDL_RWops *src)
/// ```
int imgIsXcf(Pointer<SdlRWops> src) {
  final imgIsXcfLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isXCF');
  return imgIsXcfLookupFunction(src);
}

///
/// Detect XPM image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is XPM data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXV
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isXPM(SDL_RWops *src)
/// ```
int imgIsXpm(Pointer<SdlRWops> src) {
  final imgIsXpmLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isXPM');
  return imgIsXpmLookupFunction(src);
}

///
/// Detect XV image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is XV data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isWEBP
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isXV(SDL_RWops *src)
/// ```
int imgIsXv(Pointer<SdlRWops> src) {
  final imgIsXvLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isXV');
  return imgIsXvLookupFunction(src);
}

///
/// Detect WEBP image data on a readable/seekable SDL_RWops.
///
/// This function attempts to determine if a file is a given filetype, reading
/// the least amount possible from the SDL_RWops (usually a few bytes).
///
/// There is no distinction made between "not the filetype in question" and
/// basic i/o errors.
///
/// This function will always attempt to seek the RWops back to where it
/// started when this function was called, but it will not report any errors in
/// doing so, but assuming seeking works, this means you can immediately use
/// this with a different IMG_isTYPE function, or load the image without
/// further seeking.
///
/// You do not need to call this function to load data; SDL_image can work to
/// determine file type in many cases in its standard load functions.
///
/// \param src a seekable/readable SDL_RWops to provide image data.
/// \returns non-zero if this is WEBP data, zero otherwise.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_isAVIF
/// \sa IMG_isICO
/// \sa IMG_isCUR
/// \sa IMG_isBMP
/// \sa IMG_isGIF
/// \sa IMG_isJPG
/// \sa IMG_isJXL
/// \sa IMG_isLBM
/// \sa IMG_isPCX
/// \sa IMG_isPNG
/// \sa IMG_isPNM
/// \sa IMG_isSVG
/// \sa IMG_isQOI
/// \sa IMG_isTIF
/// \sa IMG_isXCF
/// \sa IMG_isXPM
/// \sa IMG_isXV
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isWEBP(SDL_RWops *src)
/// ```
int imgIsWebp(Pointer<SdlRWops> src) {
  final imgIsWebpLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('IMG_isWEBP');
  return imgIsWebpLookupFunction(src);
}

///
/// Load a AVIF image directly.
///
/// If you know you definitely have a AVIF image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadAVIF_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadAvifRw(Pointer<SdlRWops> src) {
  final imgLoadAvifRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadAVIF_RW');
  return imgLoadAvifRwLookupFunction(src);
}

///
/// Load a ICO image directly.
///
/// If you know you definitely have a ICO image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadICO_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadIcoRw(Pointer<SdlRWops> src) {
  final imgLoadIcoRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadICO_RW');
  return imgLoadIcoRwLookupFunction(src);
}

///
/// Load a CUR image directly.
///
/// If you know you definitely have a CUR image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadCUR_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadCurRw(Pointer<SdlRWops> src) {
  final imgLoadCurRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadCUR_RW');
  return imgLoadCurRwLookupFunction(src);
}

///
/// Load a BMP image directly.
///
/// If you know you definitely have a BMP image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadBMP_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadBmpRw(Pointer<SdlRWops> src) {
  final imgLoadBmpRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadBMP_RW');
  return imgLoadBmpRwLookupFunction(src);
}

///
/// Load a GIF image directly.
///
/// If you know you definitely have a GIF image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadGIF_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadGifRw(Pointer<SdlRWops> src) {
  final imgLoadGifRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadGIF_RW');
  return imgLoadGifRwLookupFunction(src);
}

///
/// Load a JPG image directly.
///
/// If you know you definitely have a JPG image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadJPG_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadJpgRw(Pointer<SdlRWops> src) {
  final imgLoadJpgRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadJPG_RW');
  return imgLoadJpgRwLookupFunction(src);
}

///
/// Load a JXL image directly.
///
/// If you know you definitely have a JXL image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadJXL_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadJxlRw(Pointer<SdlRWops> src) {
  final imgLoadJxlRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadJXL_RW');
  return imgLoadJxlRwLookupFunction(src);
}

///
/// Load a LBM image directly.
///
/// If you know you definitely have a LBM image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadLBM_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadLbmRw(Pointer<SdlRWops> src) {
  final imgLoadLbmRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadLBM_RW');
  return imgLoadLbmRwLookupFunction(src);
}

///
/// Load a PCX image directly.
///
/// If you know you definitely have a PCX image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadPCX_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadPcxRw(Pointer<SdlRWops> src) {
  final imgLoadPcxRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadPCX_RW');
  return imgLoadPcxRwLookupFunction(src);
}

///
/// Load a PNG image directly.
///
/// If you know you definitely have a PNG image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadPNG_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadPngRw(Pointer<SdlRWops> src) {
  final imgLoadPngRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadPNG_RW');
  return imgLoadPngRwLookupFunction(src);
}

///
/// Load a PNM image directly.
///
/// If you know you definitely have a PNM image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadPNM_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadPnmRw(Pointer<SdlRWops> src) {
  final imgLoadPnmRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadPNM_RW');
  return imgLoadPnmRwLookupFunction(src);
}

///
/// Load a SVG image directly.
///
/// If you know you definitely have a SVG image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.2.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadSVG_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadSvgRw(Pointer<SdlRWops> src) {
  final imgLoadSvgRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadSVG_RW');
  return imgLoadSvgRwLookupFunction(src);
}

///
/// Load a QOI image directly.
///
/// If you know you definitely have a QOI image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadQOI_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadQoiRw(Pointer<SdlRWops> src) {
  final imgLoadQoiRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadQOI_RW');
  return imgLoadQoiRwLookupFunction(src);
}

///
/// Load a TGA image directly.
///
/// If you know you definitely have a TGA image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadTGA_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadTgaRw(Pointer<SdlRWops> src) {
  final imgLoadTgaRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadTGA_RW');
  return imgLoadTgaRwLookupFunction(src);
}

///
/// Load a TIFF image directly.
///
/// If you know you definitely have a TIFF image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadTIF_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadTifRw(Pointer<SdlRWops> src) {
  final imgLoadTifRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadTIF_RW');
  return imgLoadTifRwLookupFunction(src);
}

///
/// Load a XCF image directly.
///
/// If you know you definitely have a XCF image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadXCF_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadXcfRw(Pointer<SdlRWops> src) {
  final imgLoadXcfRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadXCF_RW');
  return imgLoadXcfRwLookupFunction(src);
}

///
/// Load a XPM image directly.
///
/// If you know you definitely have a XPM image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXV_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadXPM_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadXpmRw(Pointer<SdlRWops> src) {
  final imgLoadXpmRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadXPM_RW');
  return imgLoadXpmRwLookupFunction(src);
}

///
/// Load a XV image directly.
///
/// If you know you definitely have a XV image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadWEBP_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadXV_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadXvRw(Pointer<SdlRWops> src) {
  final imgLoadXvRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadXV_RW');
  return imgLoadXvRwLookupFunction(src);
}

///
/// Load a WEBP image directly.
///
/// If you know you definitely have a WEBP image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops to load image data from.
/// \returns SDL surface, or NULL on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_LoadAVIF_RW
/// \sa IMG_LoadICO_RW
/// \sa IMG_LoadCUR_RW
/// \sa IMG_LoadBMP_RW
/// \sa IMG_LoadGIF_RW
/// \sa IMG_LoadJPG_RW
/// \sa IMG_LoadJXL_RW
/// \sa IMG_LoadLBM_RW
/// \sa IMG_LoadPCX_RW
/// \sa IMG_LoadPNG_RW
/// \sa IMG_LoadPNM_RW
/// \sa IMG_LoadSVG_RW
/// \sa IMG_LoadQOI_RW
/// \sa IMG_LoadTGA_RW
/// \sa IMG_LoadTIF_RW
/// \sa IMG_LoadXCF_RW
/// \sa IMG_LoadXPM_RW
/// \sa IMG_LoadXV_RW
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadWEBP_RW(SDL_RWops *src)
/// ```
Pointer<SdlSurface> imgLoadWebpRw(Pointer<SdlRWops> src) {
  final imgLoadWebpRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src),
      Pointer<SdlSurface> Function(Pointer<SdlRWops> src)>('IMG_LoadWEBP_RW');
  return imgLoadWebpRwLookupFunction(src);
}

///
/// Load an SVG image, scaled to a specific size.
///
/// Since SVG files are resolution-independent, you specify the size you would
/// like the output image to be and it will be generated at those dimensions.
///
/// Either width or height may be 0 and the image will be auto-sized to
/// preserve aspect ratio.
///
/// When done with the returned surface, the app should dispose of it with a
/// call to SDL_FreeSurface().
///
/// \param src an SDL_RWops to load SVG data from.
/// \param width desired width of the generated surface, in pixels.
/// \param height desired height of the generated surface, in pixels.
/// \returns a new SDL surface, or NULL on error.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadSizedSVG_RW(SDL_RWops *src, int width, int height)
/// ```
Pointer<SdlSurface> imgLoadSizedSvgRw(
    Pointer<SdlRWops> src, int width, int height) {
  final imgLoadSizedSvgRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<SdlRWops> src, Int32 width, Int32 height),
      Pointer<SdlSurface> Function(
          Pointer<SdlRWops> src, int width, int height)>('IMG_LoadSizedSVG_RW');
  return imgLoadSizedSvgRwLookupFunction(src, width, height);
}

///
/// Load an XPM image from a memory array.
///
/// The returned surface will be an 8bpp indexed surface, if possible,
/// otherwise it will be 32bpp. If you always want 32-bit data, use
/// IMG_ReadXPMFromArrayToRGB888() instead.
///
/// When done with the returned surface, the app should dispose of it with a
/// call to SDL_FreeSurface().
///
/// \param xpm a null-terminated array of strings that comprise XPM data.
/// \returns a new SDL surface, or NULL on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_ReadXPMFromArrayToRGB888
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_ReadXPMFromArray(char **xpm)
/// ```
Pointer<SdlSurface> imgReadXpmFromArray(Pointer<Pointer<Int8>> xpm) {
  final imgReadXpmFromArrayLookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<Pointer<Int8>> xpm),
      Pointer<SdlSurface> Function(
          Pointer<Pointer<Int8>> xpm)>('IMG_ReadXPMFromArray');
  return imgReadXpmFromArrayLookupFunction(xpm);
}

///
/// Load an XPM image from a memory array.
///
/// The returned surface will always be a 32-bit RGB surface. If you want 8-bit
/// indexed colors (and the XPM data allows it), use IMG_ReadXPMFromArray()
/// instead.
///
/// When done with the returned surface, the app should dispose of it with a
/// call to SDL_FreeSurface().
///
/// \param xpm a null-terminated array of strings that comprise XPM data.
/// \returns a new SDL surface, or NULL on error.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_ReadXPMFromArray
///
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_ReadXPMFromArrayToRGB888(char **xpm)
/// ```
Pointer<SdlSurface> imgReadXpmFromArrayToRgb888(Pointer<Pointer<Int8>> xpm) {
  final imgReadXpmFromArrayToRgb888LookupFunction = libSdl2Image.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<Pointer<Int8>> xpm),
      Pointer<SdlSurface> Function(
          Pointer<Pointer<Int8>> xpm)>('IMG_ReadXPMFromArrayToRGB888');
  return imgReadXpmFromArrayToRgb888LookupFunction(xpm);
}

///
/// Save an SDL_Surface into a PNG image file.
///
/// If the file already exists, it will be overwritten.
///
/// \param surface the SDL surface to save
/// \param file path on the filesystem to write new file to.
/// \returns 0 if successful, -1 on error
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_SavePNG_RW
/// \sa IMG_SaveJPG
/// \sa IMG_SaveJPG_RW
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_SavePNG(SDL_Surface *surface, const char *file)
/// ```
int imgSavePng(Pointer<SdlSurface> surface, String file) {
  final imgSavePngLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlSurface> surface, Pointer<Utf8> file),
      int Function(
          Pointer<SdlSurface> surface, Pointer<Utf8> file)>('IMG_SavePNG');
  final filePointer = file.toNativeUtf8();
  final result = imgSavePngLookupFunction(surface, filePointer);
  calloc.free(filePointer);
  return result;
}

///
/// Save an SDL_Surface into PNG image data, via an SDL_RWops.
///
/// If you just want to save to a filename, you can use IMG_SavePNG() instead.
///
/// \param surface the SDL surface to save
/// \param dst the SDL_RWops to save the image data to.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_image 2.0.0.
///
/// \sa IMG_SavePNG
/// \sa IMG_SaveJPG
/// \sa IMG_SaveJPG_RW
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_SavePNG_RW(SDL_Surface *surface, SDL_RWops *dst, int freedst)
/// ```
int imgSavePngRw(
    Pointer<SdlSurface> surface, Pointer<SdlRWops> dst, int freedst) {
  final imgSavePngRwLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(
          Pointer<SdlSurface> surface, Pointer<SdlRWops> dst, Int32 freedst),
      int Function(Pointer<SdlSurface> surface, Pointer<SdlRWops> dst,
          int freedst)>('IMG_SavePNG_RW');
  return imgSavePngRwLookupFunction(surface, dst, freedst);
}

///
/// Save an SDL_Surface into a JPEG image file.
///
/// If the file already exists, it will be overwritten.
///
/// \param surface the SDL surface to save
/// \param file path on the filesystem to write new file to.
/// \param quality [0; 33] is Lowest quality, [34; 66] is Middle quality, [67;
/// 100] is Highest quality
/// \returns 0 if successful, -1 on error
///
/// \since This function is available since SDL_image 2.0.2.
///
/// \sa IMG_SaveJPG_RW
/// \sa IMG_SavePNG
/// \sa IMG_SavePNG_RW
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_SaveJPG(SDL_Surface *surface, const char *file, int quality)
/// ```
int imgSaveJpg(Pointer<SdlSurface> surface, String file, int quality) {
  final imgSaveJpgLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(
          Pointer<SdlSurface> surface, Pointer<Utf8> file, Int32 quality),
      int Function(Pointer<SdlSurface> surface, Pointer<Utf8> file,
          int quality)>('IMG_SaveJPG');
  final filePointer = file.toNativeUtf8();
  final result = imgSaveJpgLookupFunction(surface, filePointer, quality);
  calloc.free(filePointer);
  return result;
}

///
/// Save an SDL_Surface into JPEG image data, via an SDL_RWops.
///
/// If you just want to save to a filename, you can use IMG_SaveJPG() instead.
///
/// \param surface the SDL surface to save
/// \param dst the SDL_RWops to save the image data to.
/// \returns 0 if successful, -1 on error.
///
/// \since This function is available since SDL_image 2.0.2.
///
/// \sa IMG_SaveJPG
/// \sa IMG_SavePNG
/// \sa IMG_SavePNG_RW
///
/// ```c
/// extern DECLSPEC int SDLCALL IMG_SaveJPG_RW(SDL_Surface *surface, SDL_RWops *dst, int freedst, int quality)
/// ```
int imgSaveJpgRw(Pointer<SdlSurface> surface, Pointer<SdlRWops> dst,
    int freedst, int quality) {
  final imgSaveJpgRwLookupFunction = libSdl2Image.lookupFunction<
      Int32 Function(Pointer<SdlSurface> surface, Pointer<SdlRWops> dst,
          Int32 freedst, Int32 quality),
      int Function(Pointer<SdlSurface> surface, Pointer<SdlRWops> dst,
          int freedst, int quality)>('IMG_SaveJPG_RW');
  return imgSaveJpgRwLookupFunction(surface, dst, freedst, quality);
}

///
/// Load an animation from a file.
///
/// When done with the returned animation, the app should dispose of it with a
/// call to IMG_FreeAnimation().
///
/// \param file path on the filesystem containing an animated image.
/// \returns a new IMG_Animation, or NULL on error.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_FreeAnimation
///
/// ```c
/// extern DECLSPEC IMG_Animation * SDLCALL IMG_LoadAnimation(const char *file)
/// ```
Pointer<ImgAnimation> imgLoadAnimation(String file) {
  final imgLoadAnimationLookupFunction = libSdl2Image.lookupFunction<
      Pointer<ImgAnimation> Function(Pointer<Utf8> file),
      Pointer<ImgAnimation> Function(Pointer<Utf8> file)>('IMG_LoadAnimation');
  final filePointer = file.toNativeUtf8();
  final result = imgLoadAnimationLookupFunction(filePointer);
  calloc.free(filePointer);
  return result;
}

///
/// Load an animation from an SDL_RWops.
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_image reads everything it needs
/// from the RWops during this call in any case.
///
/// When done with the returned animation, the app should dispose of it with a
/// call to IMG_FreeAnimation().
///
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \returns a new IMG_Animation, or NULL on error.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_FreeAnimation
///
/// ```c
/// extern DECLSPEC IMG_Animation * SDLCALL IMG_LoadAnimation_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<ImgAnimation> imgLoadAnimationRw(Pointer<SdlRWops> src, int freesrc) {
  final imgLoadAnimationRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<ImgAnimation> Function(Pointer<SdlRWops> src, Int32 freesrc),
      Pointer<ImgAnimation> Function(
          Pointer<SdlRWops> src, int freesrc)>('IMG_LoadAnimation_RW');
  return imgLoadAnimationRwLookupFunction(src, freesrc);
}

///
/// Load an animation from an SDL datasource
///
/// Even though this function accepts a file type, SDL_image may still try
/// other decoders that are capable of detecting file type from the contents of
/// the image data, but may rely on the caller-provided type string for formats
/// that it cannot autodetect. If `type` is NULL, SDL_image will rely solely on
/// its ability to guess the format.
///
/// If `freesrc` is non-zero, the RWops will be closed before returning,
/// whether this function succeeds or not. SDL_image reads everything it needs
/// from the RWops during this call in any case.
///
/// When done with the returned animation, the app should dispose of it with a
/// call to IMG_FreeAnimation().
///
/// \param src an SDL_RWops that data will be read from.
/// \param freesrc non-zero to close/free the SDL_RWops before returning, zero
/// to leave it open.
/// \param type a filename extension that represent this data ("GIF", etc).
/// \returns a new IMG_Animation, or NULL on error.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_LoadAnimation
/// \sa IMG_LoadAnimation_RW
/// \sa IMG_FreeAnimation
///
/// ```c
/// extern DECLSPEC IMG_Animation * SDLCALL IMG_LoadAnimationTyped_RW(SDL_RWops *src, int freesrc, const char *type)
/// ```
Pointer<ImgAnimation> imgLoadAnimationTypedRw(
    Pointer<SdlRWops> src, int freesrc, String type) {
  final imgLoadAnimationTypedRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<ImgAnimation> Function(
          Pointer<SdlRWops> src, Int32 freesrc, Pointer<Utf8> type),
      Pointer<ImgAnimation> Function(Pointer<SdlRWops> src, int freesrc,
          Pointer<Utf8> type)>('IMG_LoadAnimationTyped_RW');
  final typePointer = type.toNativeUtf8();
  final result =
      imgLoadAnimationTypedRwLookupFunction(src, freesrc, typePointer);
  calloc.free(typePointer);
  return result;
}

///
/// Dispose of an IMG_Animation and free its resources.
///
/// The provided `anim` pointer is not valid once this call returns.
///
/// \param anim IMG_Animation to dispose of.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_LoadAnimation
/// \sa IMG_LoadAnimation_RW
/// \sa IMG_LoadAnimationTyped_RW
///
/// ```c
/// extern DECLSPEC void SDLCALL IMG_FreeAnimation(IMG_Animation *anim)
/// ```
void imgFreeAnimation(Pointer<ImgAnimation> anim) {
  final imgFreeAnimationLookupFunction = libSdl2Image.lookupFunction<
      Void Function(Pointer<ImgAnimation> anim),
      void Function(Pointer<ImgAnimation> anim)>('IMG_FreeAnimation');
  return imgFreeAnimationLookupFunction(anim);
}

///
/// Load a GIF animation directly.
///
/// If you know you definitely have a GIF image, you can call this function,
/// which will skip SDL_image's file format detection routines. Generally it's
/// better to use the abstract interfaces; also, there is only an SDL_RWops
/// interface available here.
///
/// \param src an SDL_RWops that data will be read from.
/// \returns a new IMG_Animation, or NULL on error.
///
/// \since This function is available since SDL_image 2.6.0.
///
/// \sa IMG_LoadAnimation
/// \sa IMG_LoadAnimation_RW
/// \sa IMG_LoadAnimationTyped_RW
/// \sa IMG_FreeAnimation
///
/// ```c
/// extern DECLSPEC IMG_Animation * SDLCALL IMG_LoadGIFAnimation_RW(SDL_RWops *src)
/// ```
Pointer<ImgAnimation> imgLoadGifAnimationRw(Pointer<SdlRWops> src) {
  final imgLoadGifAnimationRwLookupFunction = libSdl2Image.lookupFunction<
      Pointer<ImgAnimation> Function(Pointer<SdlRWops> src),
      Pointer<ImgAnimation> Function(
          Pointer<SdlRWops> src)>('IMG_LoadGIFAnimation_RW');
  return imgLoadGifAnimationRwLookupFunction(src);
}
