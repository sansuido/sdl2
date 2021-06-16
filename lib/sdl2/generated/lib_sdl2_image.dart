// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';

final _SDL2_image = DynamicLibrary.open(Platform.isWindows ? 'SDL2_image.dll' : 'libSDL2_image.so');

/// This function gets the version of the dynamically linked SDL_image library.
/// it should NOT be used to fill a version structure, instead you should
/// use the SDL_IMAGE_VERSION() macro.
/// /
/// ```c
/// extern DECLSPEC const SDL_version * SDLCALL IMG_Linked_Version(void)
/// ```
Pointer<SDL_version>? IMG_Linked_Version() {
  final _IMG_Linked_Version = _SDL2_image.lookupFunction<
      Pointer<SDL_version>? Function(),
      Pointer<SDL_version>? Function()>('IMG_Linked_Version');
  return _IMG_Linked_Version();
}

/// Loads dynamic libraries and prepares them for use.  Flags should be
/// one or more flags from IMG_InitFlags OR'd together.
/// It returns the flags successfully initialized, or 0 on failure.
/// /
/// ```c
/// extern DECLSPEC int SDLCALL IMG_Init(int flags)
/// ```
int IMG_Init(int flags) {
  final _IMG_Init = _SDL2_image.lookupFunction<
      Int32 Function(Int32 flags),
      int Function(int flags)>('IMG_Init');
  return _IMG_Init(flags);
}

/// Unloads libraries loaded with IMG_Init
/// ```c
/// extern DECLSPEC void SDLCALL IMG_Quit(void)
/// ```
void IMG_Quit() {
  final _IMG_Quit = _SDL2_image.lookupFunction<
      Void Function(),
      void Function()>('IMG_Quit');
  return _IMG_Quit();
}

/// Load an image from an SDL data source.
/// The 'type' may be one of: "BMP", "GIF", "PNG", etc.
/// 
/// If the image format supports a transparent pixel, SDL will set the
/// colorkey for the surface.  You can enable RLE acceleration on the
/// surface afterwards by calling:
/// SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
/// /
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadTyped_RW(SDL_RWops *src, int freesrc, const char *type)
/// ```
Pointer<SDL_Surface>? IMG_LoadTyped_RW(Pointer<SDL_RWops>? src, int freesrc, String type) {
  final _IMG_LoadTyped_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, Int32 freesrc, Pointer<Utf8>? type),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, int freesrc, Pointer<Utf8>? type)>('IMG_LoadTyped_RW');
  final _typePointer = type.toNativeUtf8();
  final _result = _IMG_LoadTyped_RW(src, freesrc, _typePointer);
  calloc.free(_typePointer);
  return _result;
}

/// Convenience functions
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_Load(const char *file)
/// ```
Pointer<SDL_Surface>? IMG_Load(String file) {
  final _IMG_Load = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<Utf8>? file),
      Pointer<SDL_Surface>? Function(Pointer<Utf8>? file)>('IMG_Load');
  final _filePointer = file.toNativeUtf8();
  final _result = _IMG_Load(_filePointer);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_Load_RW(SDL_RWops *src, int freesrc)
/// ```
Pointer<SDL_Surface>? IMG_Load_RW(Pointer<SDL_RWops>? src, int freesrc) {
  final _IMG_Load_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src, int freesrc)>('IMG_Load_RW');
  return _IMG_Load_RW(src, freesrc);
}

/// Load an image directly into a render texture.
/// /
/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL IMG_LoadTexture(SDL_Renderer *renderer, const char *file)
/// ```
Pointer<SDL_Texture>? IMG_LoadTexture(Pointer<SDL_Renderer>? renderer, String file) {
  final _IMG_LoadTexture = _SDL2_image.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<Utf8>? file),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<Utf8>? file)>('IMG_LoadTexture');
  final _filePointer = file.toNativeUtf8();
  final _result = _IMG_LoadTexture(renderer, _filePointer);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL IMG_LoadTexture_RW(SDL_Renderer *renderer, SDL_RWops *src, int freesrc)
/// ```
Pointer<SDL_Texture>? IMG_LoadTexture_RW(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RWops>? src, int freesrc) {
  final _IMG_LoadTexture_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RWops>? src, Int32 freesrc),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RWops>? src, int freesrc)>('IMG_LoadTexture_RW');
  return _IMG_LoadTexture_RW(renderer, src, freesrc);
}

/// ```c
/// extern DECLSPEC SDL_Texture * SDLCALL IMG_LoadTextureTyped_RW(SDL_Renderer *renderer, SDL_RWops *src, int freesrc, const char *type)
/// ```
Pointer<SDL_Texture>? IMG_LoadTextureTyped_RW(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RWops>? src, int freesrc, String type) {
  final _IMG_LoadTextureTyped_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RWops>? src, Int32 freesrc, Pointer<Utf8>? type),
      Pointer<SDL_Texture>? Function(Pointer<SDL_Renderer>? renderer, Pointer<SDL_RWops>? src, int freesrc, Pointer<Utf8>? type)>('IMG_LoadTextureTyped_RW');
  final _typePointer = type.toNativeUtf8();
  final _result = _IMG_LoadTextureTyped_RW(renderer, src, freesrc, _typePointer);
  calloc.free(_typePointer);
  return _result;
}

/// Functions to detect a file type, given a seekable source
/// ```c
/// extern DECLSPEC int SDLCALL IMG_isICO(SDL_RWops *src)
/// ```
int IMG_isICO(Pointer<SDL_RWops>? src) {
  final _IMG_isICO = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isICO');
  return _IMG_isICO(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isCUR(SDL_RWops *src)
/// ```
int IMG_isCUR(Pointer<SDL_RWops>? src) {
  final _IMG_isCUR = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isCUR');
  return _IMG_isCUR(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isBMP(SDL_RWops *src)
/// ```
int IMG_isBMP(Pointer<SDL_RWops>? src) {
  final _IMG_isBMP = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isBMP');
  return _IMG_isBMP(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isGIF(SDL_RWops *src)
/// ```
int IMG_isGIF(Pointer<SDL_RWops>? src) {
  final _IMG_isGIF = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isGIF');
  return _IMG_isGIF(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isJPG(SDL_RWops *src)
/// ```
int IMG_isJPG(Pointer<SDL_RWops>? src) {
  final _IMG_isJPG = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isJPG');
  return _IMG_isJPG(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isLBM(SDL_RWops *src)
/// ```
int IMG_isLBM(Pointer<SDL_RWops>? src) {
  final _IMG_isLBM = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isLBM');
  return _IMG_isLBM(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isPCX(SDL_RWops *src)
/// ```
int IMG_isPCX(Pointer<SDL_RWops>? src) {
  final _IMG_isPCX = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isPCX');
  return _IMG_isPCX(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isPNG(SDL_RWops *src)
/// ```
int IMG_isPNG(Pointer<SDL_RWops>? src) {
  final _IMG_isPNG = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isPNG');
  return _IMG_isPNG(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isPNM(SDL_RWops *src)
/// ```
int IMG_isPNM(Pointer<SDL_RWops>? src) {
  final _IMG_isPNM = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isPNM');
  return _IMG_isPNM(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isSVG(SDL_RWops *src)
/// ```
int IMG_isSVG(Pointer<SDL_RWops>? src) {
  final _IMG_isSVG = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isSVG');
  return _IMG_isSVG(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isTIF(SDL_RWops *src)
/// ```
int IMG_isTIF(Pointer<SDL_RWops>? src) {
  final _IMG_isTIF = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isTIF');
  return _IMG_isTIF(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isXCF(SDL_RWops *src)
/// ```
int IMG_isXCF(Pointer<SDL_RWops>? src) {
  final _IMG_isXCF = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isXCF');
  return _IMG_isXCF(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isXPM(SDL_RWops *src)
/// ```
int IMG_isXPM(Pointer<SDL_RWops>? src) {
  final _IMG_isXPM = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isXPM');
  return _IMG_isXPM(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isXV(SDL_RWops *src)
/// ```
int IMG_isXV(Pointer<SDL_RWops>? src) {
  final _IMG_isXV = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isXV');
  return _IMG_isXV(src);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_isWEBP(SDL_RWops *src)
/// ```
int IMG_isWEBP(Pointer<SDL_RWops>? src) {
  final _IMG_isWEBP = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_RWops>? src),
      int Function(Pointer<SDL_RWops>? src)>('IMG_isWEBP');
  return _IMG_isWEBP(src);
}

/// Individual loading functions
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadICO_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadICO_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadICO_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadICO_RW');
  return _IMG_LoadICO_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadCUR_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadCUR_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadCUR_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadCUR_RW');
  return _IMG_LoadCUR_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadBMP_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadBMP_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadBMP_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadBMP_RW');
  return _IMG_LoadBMP_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadGIF_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadGIF_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadGIF_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadGIF_RW');
  return _IMG_LoadGIF_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadJPG_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadJPG_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadJPG_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadJPG_RW');
  return _IMG_LoadJPG_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadLBM_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadLBM_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadLBM_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadLBM_RW');
  return _IMG_LoadLBM_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadPCX_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadPCX_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadPCX_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadPCX_RW');
  return _IMG_LoadPCX_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadPNG_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadPNG_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadPNG_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadPNG_RW');
  return _IMG_LoadPNG_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadPNM_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadPNM_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadPNM_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadPNM_RW');
  return _IMG_LoadPNM_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadSVG_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadSVG_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadSVG_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadSVG_RW');
  return _IMG_LoadSVG_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadTGA_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadTGA_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadTGA_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadTGA_RW');
  return _IMG_LoadTGA_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadTIF_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadTIF_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadTIF_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadTIF_RW');
  return _IMG_LoadTIF_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadXCF_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadXCF_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadXCF_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadXCF_RW');
  return _IMG_LoadXCF_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadXPM_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadXPM_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadXPM_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadXPM_RW');
  return _IMG_LoadXPM_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadXV_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadXV_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadXV_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadXV_RW');
  return _IMG_LoadXV_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_LoadWEBP_RW(SDL_RWops *src)
/// ```
Pointer<SDL_Surface>? IMG_LoadWEBP_RW(Pointer<SDL_RWops>? src) {
  final _IMG_LoadWEBP_RW = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src),
      Pointer<SDL_Surface>? Function(Pointer<SDL_RWops>? src)>('IMG_LoadWEBP_RW');
  return _IMG_LoadWEBP_RW(src);
}

/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL IMG_ReadXPMFromArray(char **xpm)
/// ```
Pointer<SDL_Surface>? IMG_ReadXPMFromArray(Pointer<Pointer<Int8>>? xpm) {
  final _IMG_ReadXPMFromArray = _SDL2_image.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<Pointer<Int8>>? xpm),
      Pointer<SDL_Surface>? Function(Pointer<Pointer<Int8>>? xpm)>('IMG_ReadXPMFromArray');
  return _IMG_ReadXPMFromArray(xpm);
}

/// Individual saving functions
/// ```c
/// extern DECLSPEC int SDLCALL IMG_SavePNG(SDL_Surface *surface, const char *file)
/// ```
int IMG_SavePNG(Pointer<SDL_Surface>? surface, String file) {
  final _IMG_SavePNG = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Utf8>? file),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Utf8>? file)>('IMG_SavePNG');
  final _filePointer = file.toNativeUtf8();
  final _result = _IMG_SavePNG(surface, _filePointer);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_SavePNG_RW(SDL_Surface *surface, SDL_RWops *dst, int freedst)
/// ```
int IMG_SavePNG_RW(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst) {
  final _IMG_SavePNG_RW = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, Int32 freedst),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst)>('IMG_SavePNG_RW');
  return _IMG_SavePNG_RW(surface, dst, freedst);
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_SaveJPG(SDL_Surface *surface, const char *file, int quality)
/// ```
int IMG_SaveJPG(Pointer<SDL_Surface>? surface, String file, int quality) {
  final _IMG_SaveJPG = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<Utf8>? file, Int32 quality),
      int Function(Pointer<SDL_Surface>? surface, Pointer<Utf8>? file, int quality)>('IMG_SaveJPG');
  final _filePointer = file.toNativeUtf8();
  final _result = _IMG_SaveJPG(surface, _filePointer, quality);
  calloc.free(_filePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL IMG_SaveJPG_RW(SDL_Surface *surface, SDL_RWops *dst, int freedst, int quality)
/// ```
int IMG_SaveJPG_RW(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst, int quality) {
  final _IMG_SaveJPG_RW = _SDL2_image.lookupFunction<
      Int32 Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, Int32 freedst, Int32 quality),
      int Function(Pointer<SDL_Surface>? surface, Pointer<SDL_RWops>? dst, int freedst, int quality)>('IMG_SaveJPG_RW');
  return _IMG_SaveJPG_RW(surface, dst, freedst, quality);
}

