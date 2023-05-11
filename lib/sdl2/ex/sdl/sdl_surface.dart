import 'dart:ffi';
import 'dart:math' as math show Rectangle;
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2/generated/const_sdl.dart';
import '../../generated/lib_sdl_mouse.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/lib_sdl_surface.dart';
import '../../lib_sdl_ex.dart';
import '../dart/rectangle.dart';
import 'sdl_rect.dart';

extension SdlSurfaceEx on SdlSurface {
  static Pointer<SdlSurface> loadBmp(String file) {
    return sdlLoadBmp(file);
  }
}

extension SdlSurfacePointerEx on Pointer<SdlSurface> {
  // lib_sdl_mouse.dart
  Pointer<SdlCursor> createColorCursor(int hotX, int hotY) {
    return sdlCreateColorCursor(this, hotX, hotY);
  }

  // lib_sdl_surface.dart

  // sdlCreateRgbSurface
  // sdlCreateRgbSurfaceWithFormat
  // sdlCreateRgbSurfaceFrom
  // sdlCreateRgbSurfaceWithFormatFrom

  bool free() {
    if (this != nullptr) {
      // 228
      sdlFreeSurface(this);
      return true;
    }
    return false;
  }

  int setPalette(Pointer<SdlPalette> palette) {
    // 250
    return sdlSetSurfacePalette(this, palette);
  }

  int lock() {
    // 283
    return sdlLockSurface(this);
  }

  void unlock() {
    // 302
    sdlUnlockSurface(this);
  }

  Pointer<SdlSurface> loadBmpRw(Pointer<SdlRWops> src, int freesrc) {
    // 334
    return sdlLoadBmpRw(src, freesrc);
  }

  int saveBmpRw(Pointer<SdlRWops> dst, int freedst) {
    // 365
    return sdlSaveBmpRw(this, dst, freedst);
  }

  int setRre(int flag) {
    // 395
    return sdlSetSurfaceRle(this, flag);
  }

  bool hasRre() {
    // 417
    return sdlHasSurfaceRle(this) == SDL_TRUE;
  }

  int setColorKey(int flag, int key) {
    // 451
    return sdlSetColorKey(this, flag, key);
  }

  bool hadColorKey() {
    // 475
    return sdlHasColorKey(this) == SDL_TRUE;
  }

  int? getColorKey() {
    int? result;
    var keyPointer = calloc<Uint32>();
    // 503
    if (sdlGetColorKey(this, keyPointer) == 0) {
      result = keyPointer.value;
    }
    calloc.free(keyPointer);
    return result;
  }

  int setColorMod(int r, int g, int b) {
    // 535
    return sdlSetSurfaceColorMod(this, r, g, b);
  }

  int? getColorMod() {
    int? result;
    var rPointer = calloc<Uint8>();
    var gPointer = calloc<Uint8>();
    var bPointer = calloc<Uint8>();
    // 561
    if (sdlGetSurfaceColorMod(this, rPointer, gPointer, bPointer) == 0) {
      result = 0;
      result += rPointer.value << 16;
      result += gPointer.value << 8;
      result += bPointer.value << 0;
    }
    calloc.free(rPointer);
    calloc.free(gPointer);
    calloc.free(bPointer);
    return result;
  }

  int setAlphaMod(int alpha) {
    // 592
    return sdlSetSurfaceAlphaMod(this, alpha);
  }

  int? getAlphaMod() {
    int? result;
    var alphaPointer = calloc<Uint8>();
    // 616
    if (sdlGetSurfaceAlphaMod(this, alphaPointer) == 0) {
      result = alphaPointer.value;
    }
    calloc.free(alphaPointer);
    return result;
  }

  int setBlendMode(int blendMode) {
    // 643
    return sdlSetSurfaceBlendMode(this, blendMode);
  }

  int? getBlendMode() {
    int? result;
    var blendModePointer = calloc<Int32>();
    // 666
    if (sdlGetSurfaceBlendMode(this, blendModePointer) == 0) {
      result = blendModePointer.value;
    }
    calloc.free(blendModePointer);
    return result;
  }

  bool setClipRect([math.Rectangle<double>? rect]) {
    Pointer<SdlRect> rectPointer = nullptr;
    if (rect != null) {
      rectPointer = rect.calloc();
    }
    // 698
    var result = sdlSetClipRect(this, rectPointer);
    calloc.free(rectPointer);
    return result == SDL_TRUE;
  }

  math.Rectangle<double> getClipRect() {
    var rectPointer = calloc<SdlRect>();
    // 725
    sdlGetClipRect(this, rectPointer);
    var result = rectPointer.create();
    calloc.free(rectPointer);
    return result;
  }

  Pointer<SdlSurface> duplicate() {
    // 745
    return sdlDuplicateSurface(this);
  }

  Pointer<SdlSurface> convert(Pointer<SdlPixelFormat> fmt, int flags) {
    // 778
    return sdlConvertSurface(this, fmt, flags);
  }

  Pointer<SdlSurface> convertFormat(int pixelFormat, int flags) {
    // 813
    return sdlConvertSurfaceFormat(this, pixelFormat, flags);
  }

  // sdlConvertPixels
  // sdlPremultiplyAlpha

  int fillRect(math.Rectangle<double>? rect, int color) {
    int result;
    Pointer<SdlRect> rectPointer = nullptr;
    if (rect != null) {
      rectPointer = rect.calloc();
    }
    result = sdlFillRect(this, rectPointer, color);
    calloc.free(rectPointer);
    return result;
  }

  int fillRects(List<math.Rectangle<double>> rects, int color) {
    var rectsPointer = rects.calloc();
    // 976
    var result = sdlFillRects(this, rectsPointer, rects.length, color);
    calloc.free(rectsPointer);
    return result;
  }

  int upperBlit(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 999
    var result = sdlUpperBlit(this, srcrectPointer, dst, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  int lowerBlit(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 1034
    var result = sdlLowerBlit(this, srcrectPointer, dst, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  int softStretch(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 1055
    var result = sdlSoftStretch(this, srcrectPointer, dst, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  int softStretchLinear(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 1076
    var result =
        sdlSoftStretchLinear(this, srcrectPointer, dst, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  int upperBlitScaled(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 1102
    var result = sdlUpperBlitScaled(this, srcrectPointer, dst, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  int lowerBlitScaled(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 1137
    var result = sdlLowerBlitScaled(this, srcrectPointer, dst, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  // sdlSetYuvConversionMode
  // sdlGetYuvConversionMode
  // sdlGetYuvConversionModeForResolution

  // lib_sdl_ex.dart
  //Pointer<SdlSurface> loadBmp(String file) {
  //  return sdlLoadBmp(file);
  //}

  int saveBmp(String file) {
    return sdlSaveBmp(this, file);
  }

  int blit(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    return upperBlit(dst, srcrect: srcrect, dstrect: dstrect);
  }

  int blitScaled(
    Pointer<SdlSurface> dst, {
    math.Rectangle<double>? srcrect,
    math.Rectangle<double>? dstrect,
  }) {
    return upperBlitScaled(dst, srcrect: srcrect, dstrect: dstrect);
  }
}
