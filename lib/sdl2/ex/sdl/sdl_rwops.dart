import 'dart:ffi';
import '../../generated/const_sdl.dart';
import '../../generated/lib_sdl_audio.dart';
import '../../generated/lib_sdl_gamecontroller.dart';
import '../../generated/lib_sdl_gesture.dart';
import '../../generated/lib_sdl_image.dart';
import '../../generated/lib_sdl_mixer.dart';
import '../../generated/lib_sdl_rwops.dart';
import '../../generated/lib_sdl_ttf.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/struct_sdl_image.dart';
import '../../generated/struct_sdl_mixer.dart';
import '../../generated/struct_sdl_ttf.dart';

extension SdlRWopsEx on SdlRWops {
  // lib_sdl_rwops.dart
  static Pointer<SdlRWops> fromFile(String file, String mode) {
    // 71
    return sdlRwFromFile(file, mode);
  }

  static Pointer<SdlRWops> fromFp(Pointer<IntPtr> fp, int autoclose) {
    // 87
    return sdlRwFromFp(fp, autoclose);
  }

  static Pointer<SdlRWops> fromMem(Pointer<NativeType> mem, int size) {
    // 129
    return sdlRwFromMem(mem, size);
  }

  static Pointer<SdlRWops> fromConstMem(Pointer<NativeType> mem, int size) {
    // 172
    return sdlRwFromConstMem(mem, size);
  }

  static Pointer<SdlRWops> alloc() {
    // 206
    return sdlAllocRw();
  }
}

extension SdlRWopsPointerEx on Pointer<SdlRWops> {
  // lib_sdl_audio.dart
  Pointer<SdlAudioSpec> loadWavFromSpec(int freesrc, Pointer<SdlAudioSpec> spec,
      Pointer<Pointer<Uint8>> audioBuf, Pointer<Uint32> audioLen) {
    // 708
    return sdlLoadWavRw(this, freesrc, spec, audioBuf, audioLen);
  }

  // lib_sdl_gesture.dart
  int saveAllDollarTemplates() {
    // 44
    return sdlSaveAllDollarTemplates(this);
  }

  int saveDollarTemplate(int gestureId) {
    // 67
    return sdlSaveDollarTemplate(gestureId, this);
  }

  int loadDollarTemplates(int touchId) {
    // 91
    return sdlLoadDollarTemplates(touchId, this);
  }

  // lib_sdl_gamecontroller.dart

  int gameControllerAddMappings(int freerw) {
    // 38
    return sdlGameControllerAddMappingsFromRw(this, freerw);
  }

  // lib_sdl_image.dart
  bool isAvif() {
    // 546
    return imgIsAvif(this) == SDL_TRUE;
  }

  bool isIco() {
    // 597
    return imgIsIco(this) == SDL_TRUE;
  }

  bool isCur() {
    // 648
    return imgIsCur(this) == SDL_TRUE;
  }

  bool isBmp() {
    // 699
    return imgIsBmp(this) == SDL_TRUE;
  }

  bool isGif() {
    // 750
    return imgIsGif(this) == SDL_TRUE;
  }

  bool isJpg() {
    // 801
    return imgIsJpg(this) == SDL_TRUE;
  }

  bool isJxl() {
    // 852
    return imgIsJxl(this) == SDL_TRUE;
  }

  bool isLbm() {
    // 903
    return imgIsLbm(this) == SDL_TRUE;
  }

  bool isPcx() {
    // 954
    return imgIsPcx(this) == SDL_TRUE;
  }

  bool isPng() {
    // 1005
    return imgIsPng(this) == SDL_TRUE;
  }

  bool isPnm() {
    // 1056
    return imgIsPnm(this) == SDL_TRUE;
  }

  bool isSvg() {
    // 1107
    return imgIsSvg(this) == SDL_TRUE;
  }

  bool isQoi() {
    // 1158
    return imgIsQoi(this) == SDL_TRUE;
  }

  bool isTif() {
    // 1209
    return imgIsTif(this) == SDL_TRUE;
  }

  bool isXcf() {
    // 1260
    return imgIsXcf(this) == SDL_TRUE;
  }

  bool isXpm() {
    // 1311
    return imgIsXpm(this) == SDL_TRUE;
  }

  bool isXv() {
    // 1362
    return imgIsXv(this) == SDL_TRUE;
  }

  bool isWebp() {
    // 1413
    return imgIsWebp(this) == SDL_TRUE;
  }

  Pointer<SdlSurface> loadAvif() {
    // 1455
    return imgLoadAvifRw(this);
  }

  Pointer<SdlSurface> loadIco() {
    // 1497
    return imgLoadIcoRw(this);
  }

  Pointer<SdlSurface> loadCur() {
    // 1539
    return imgLoadCurRw(this);
  }

  Pointer<SdlSurface> loadBmp() {
    // 1581
    return imgLoadBmpRw(this);
  }

  Pointer<SdlSurface> loadGif() {
    // 1623
    return imgLoadGifRw(this);
  }

  Pointer<SdlSurface> loadJpg() {
    // 1665
    return imgLoadJpgRw(this);
  }

  Pointer<SdlSurface> loadJxl() {
    // 1707
    return imgLoadJxlRw(this);
  }

  Pointer<SdlSurface> loadLbm() {
    // 1749
    return imgLoadLbmRw(this);
  }

  Pointer<SdlSurface> loadPcx() {
    // 1791
    return imgLoadPcxRw(this);
  }

  Pointer<SdlSurface> loadPng() {
    // 1833
    return imgLoadPngRw(this);
  }

  Pointer<SdlSurface> loadPnm() {
    // 1875
    return imgLoadPnmRw(this);
  }

  Pointer<SdlSurface> loadSvg() {
    // 1917
    return imgLoadSvgRw(this);
  }

  Pointer<SdlSurface> loadQoi() {
    // 1959
    return imgLoadQoiRw(this);
  }

  Pointer<SdlSurface> loadTga() {
    // 2001
    return imgLoadTgaRw(this);
  }

  Pointer<SdlSurface> loadTif() {
    // 2043
    return imgLoadTifRw(this);
  }

  Pointer<SdlSurface> loadXcf() {
    // 2085
    return imgLoadXcfRw(this);
  }

  Pointer<SdlSurface> loadXpm() {
    // 2127
    return imgLoadXpmRw(this);
  }

  Pointer<SdlSurface> loadXv() {
    // 2169
    return imgLoadXvRw(this);
  }

  Pointer<SdlSurface> loadWebp() {
    // 2211
    return imgLoadWebpRw(this);
  }

  Pointer<SdlSurface> loadSizedSvgRw(int width, int height) {
    // 2240
    return imgLoadSizedSvgRw(this, width, height);
  }

  Pointer<ImgAnimation> loadAnimationRw(int freesrc) {
    // 2471
    return imgLoadAnimationRw(this, freesrc);
  }

  Pointer<ImgAnimation> loadAnimationTypedRw(int freesrc, String type) {
    // 2510
    return imgLoadAnimationTypedRw(this, freesrc, type);
  }

  Pointer<ImgAnimation> loadGifAnimation() {
    // 2568
    return imgLoadGifAnimationRw(this);
  }

  // lib_sdl_mixer.dart
  Pointer<MixChunk> loadWav(int freesrc) {
    // 490
    return mixLoadWavRw(this, freesrc);
  }

  Pointer<MixMusic> loadMus(int freesrc) {
    // 636
    return mixLoadMusRw(this, freesrc);
  }

  Pointer<MixMusic> loadMusType(int type, int freesrc) {
    // 701
    return mixLoadMusTypeRw(this, type, freesrc);
  }

  // lib_sdl_rwops.dart
  void free() {
    // 238
    sdlFreeRw(this);
  }

  int size() {
    // 260
    return sdlRWsize(this);
  }

  int seek(int offset, int whence) {
    // 305
    return sdlRWseek(this, offset, whence);
  }

  int tell() {
    // 341
    return sdlRWtell(this);
  }

  int read(Pointer<NativeType> ptr, int size, int maxnum) {
    // 381
    return sdlRWread(this, ptr, size, maxnum);
  }

  int write(Pointer<NativeType> ptr, int size, int num) {
    // 424
    return sdlRWwrite(this, ptr, size, num);
  }

  int close() {
    // 464
    return sdlRWclose(this);
  }

  Pointer<NativeType> loadFile(Pointer<Uint32> datasize, int freesrc) {
    // 490
    return sdlLoadFileRw(this, datasize, freesrc);
  }

  int readU8() {
    // 547
    return sdlReadU8(this);
  }

  int readLe16() {
    // 571
    return sdlReadLe16(this);
  }

  int readBe16() {
    // 595
    return sdlReadBe16(this);
  }

  int readLe32() {
    // 619
    return sdlReadLe32(this);
  }

  int readBe32() {
    // 643
    return sdlReadBe32(this);
  }

  int readLe64() {
    // 667
    return sdlReadLe64(this);
  }

  int readBe64() {
    // 691
    return sdlReadBe64(this);
  }

  int writeU8(int value) {
    // 713
    return sdlWriteU8(this, value);
  }

  int writeLe16(int value) {
    // 739
    return sdlWriteLe16(this, value);
  }

  int writeBe16(int value) {
    // 764
    return sdlWriteBe16(this, value);
  }

  int writeLe32(int value) {
    // 790
    return sdlWriteLe32(this, value);
  }

  int writeBe32(int value) {
    // 815
    return sdlWriteBe32(this, value);
  }

  int writeLe64(int value) {
    // 841
    return sdlWriteLe64(this, value);
  }

  int writeBe64(int value) {
    // 866
    return sdlWriteBe64(this, value);
  }

  // lib_sdl_ttf.dart
  Pointer<TtfFont> openFont(int freesrc, int ptsize) {
    // 225
    return ttfOpenFontRw(this, freesrc, ptsize);
  }

  Pointer<TtfFont> openFontIndex(int freesrc, int ptsize, int index) {
    // 265
    return ttfOpenFontIndexRw(this, freesrc, ptsize, index);
  }

  Pointer<TtfFont> openFontDpi(int freesrc, int ptsize, int hdpi, int vdpi) {
    // 384
    return ttfOpenFontDpirw(this, freesrc, ptsize, hdpi, vdpi);
  }

  Pointer<TtfFont> openFontIndexDpi(
      int freesrc, int ptsize, int index, int hdpi, int vdpi) {
    // 429
    return ttfOpenFontIndexDpirw(this, freesrc, ptsize, index, hdpi, vdpi);
  }
}
