import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/struct_sdl_ttf.dart';
import '../../generated/lib_sdl_ttf.dart';
//import 'native_type.dart';
import '../sdl/sdl_color.dart';

extension TtfFontEx on TtfFont {
  // lib_sdl_ttf.dart
  static Pointer<TtfFont> open(String file, int ptsize) {
    // 152
    return ttfOpenFont(file, ptsize);
  }

  static Pointer<TtfFont> openIndex(String file, int ptsize, int index) {
    // 188
    return ttfOpenFontIndex(file, ptsize, index);
  }

  static Pointer<TtfFont> openDpi(String file, int ptsize, int hdpi, int vdpi) {
    // 299
    return ttfOpenFontDpi(file, ptsize, hdpi, vdpi);
  }

  static Pointer<TtfFont> openIndexDpi(
      String file, int ptsize, int index, int hdpi, int vdpi) {
    // 340
    return ttfOpenFontIndexDpi(file, ptsize, index, hdpi, vdpi);
  }
}

extension TtfFontPointerEx on Pointer<TtfFont> {
  // lib_sdl_ttf.dart

  // ttfLinkedVersion
  // ttfGetFreeTypeVersion
  // ttfGetHarfBuzzVersion
  // ttfByteSwappedUnicode
  // ttfInit

  int setSize(int ptsize) {
    // 454
    return ttfSetFontSize(this, ptsize);
  }

  int setSizeDpi(int ptsize, int hdpi, int vdpi) {
    // 477
    return ttfSetFontSizeDpi(this, ptsize, hdpi, vdpi);
  }

  int getStyle() {
    // 507
    return ttfGetFontStyle(this);
  }

  void setStyle(int style) {
    // 537
    ttfSetFontStyle(this, style);
  }

  int getOutline() {
    // 557
    return ttfGetFontOutline(this);
  }

  void setOutline(int outline) {
    // 577
    ttfSetFontOutline(this, outline);
  }

  int getHinting() {
    // 605
    return ttfGetFontHinting(this);
  }

  void setHinting(int hinting) {
    // 635
    ttfSetFontHinting(this, hinting);
  }

  int getWrappedAlign() {
    // 661
    return ttfGetFontWrappedAlign(this);
  }

  void setWrappedAlign(int align) {
    // 687
    ttfSetFontWrappedAlign(this, align);
  }

  int height() {
    // 708
    return ttfFontHeight(this);
  }

  int ascent() {
    // 728
    return ttfFontAscent(this);
  }

  int descent() {
    // 748
    return ttfFontDescent(this);
  }

  int lineSkip() {
    // 766
    return ttfFontLineSkip(this);
  }

  int getKerning() {
    // 784
    return ttfGetFontKerning(this);
  }

  void setKerning(int allowed) {
    // 807
    ttfSetFontKerning(this, allowed);
  }

  int faces() {
    // 825
    return ttfFontFaces(this);
  }

  int faceIsFixedWidth() {
    // 849
    return ttfFontFaceIsFixedWidth(this);
  }

  String? faceFamilyName() {
    // 873
    return ttfFontFaceFamilyName(this);
  }

  String? faceStyleName() {
    // 897
    return ttfFontFaceStyleName(this);
  }

  int glyphIsProvided(int ch) {
    // 927
    return ttfGlyphIsProvided(this, ch);
  }

  int glyphIsProvided32(int ch) {
    // 951
    return ttfGlyphIsProvided32(this, ch);
  }

  int glyphMetrics(int ch, Pointer<Int32> minx, Pointer<Int32> maxx,
      Pointer<Int32> miny, Pointer<Int32> maxy, Pointer<Int32> advance) {
    // 984
    return ttfGlyphMetrics(this, ch, minx, maxx, miny, maxy, advance);
  }

  int glyphMetrics32(int ch, Pointer<Int32> minx, Pointer<Int32> maxx,
      Pointer<Int32> miny, Pointer<Int32> maxy, Pointer<Int32> advance) {
    // 1033
    return ttfGlyphMetrics32(this, ch, minx, maxx, miny, maxy, advance);
  }

  int sizeText(String text, Pointer<Int32> w, Pointer<Int32> h) {
    // 1089
    return ttfSizeText(this, text, w, h);
  }

  int sizeUtf8(String text, Pointer<Int32> w, Pointer<Int32> h) {
    // 1123
    return ttfSizeUtf8(this, text, w, h);
  }

  int sizeUnicode(Pointer<Uint16> text, Pointer<Int32> w, Pointer<Int32> h) {
    // 1162
    return ttfSizeUnicode(this, text, w, h);
  }

  int measureText(String text, int measureWidth, Pointer<Int32> extent,
      Pointer<Int32> count) {
    // 1202
    return ttfMeasureText(this, text, measureWidth, extent, count);
  }

  int measureUtf8(String text, int measureWidth, Pointer<Int32> extent,
      Pointer<Int32> count) {
    // 1241
    return ttfMeasureUtf8(this, text, measureWidth, extent, count);
  }

  int measureUnicode(Pointer<Uint16> text, int measureWidth,
      Pointer<Int32> extent, Pointer<Int32> count) {
    // 1285
    return ttfMeasureUnicode(this, text, measureWidth, extent, count);
  }

  Pointer<SdlSurface> renderTextSolid(String text, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1335
    var result = ttfRenderTextSolid(this, text, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8Solid(String text, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1379
    var result = ttfRenderUtf8Solid(this, text, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeSolid(Pointer<Uint16> text, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1426
    var result = ttfRenderUnicodeSolid(this, text, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextSolidWrapped(
      String text, int fg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1469
    var result =
        ttfRenderTextSolidWrapped(this, text, fgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8SolidWrapped(
      String text, int fg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1512
    var result =
        ttfRenderUtf8SolidWrapped(this, text, fgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeSolidWrapped(
      Pointer<Uint16> text, int fg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1559
    var result =
        ttfRenderUnicodeSolidWrapped(this, text, fgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyphSolid(int ch, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1603
    var result = ttfRenderGlyphSolid(this, ch, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyph32Solid(int ch, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 1645
    var result = ttfRenderGlyph32Solid(this, ch, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextShaded(String text, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1691
    var result = ttfRenderTextShaded(this, text, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8Shaded(String text, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1734
    var result = ttfRenderUtf8Shaded(this, text, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeShaded(
      Pointer<Uint16> text, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1782
    var result =
        ttfRenderUnicodeShaded(this, text, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextShadedWrapped(
      String text, int fg, int bg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1826
    var result = ttfRenderTextShadedWrapped(
        this, text, fgPointer.ref, bgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8ShadedWrapped(
      String text, int fg, int bg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1874
    var result = ttfRenderUtf8ShadedWrapped(
        this, text, fgPointer.ref, bgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeShadedWrapped(
      Pointer<Uint16> text, int fg, int bg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1926
    var result = ttfRenderUnicodeShadedWrapped(
        this, text, fgPointer.ref, bgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyphShaded(int ch, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 1976
    var result = ttfRenderGlyphShaded(this, ch, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyph32Shaded(int ch, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2019
    var result = ttfRenderGlyph32Shaded(this, ch, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextBlended(String text, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2064
    var result = ttfRenderTextBlended(this, text, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8Blended(String text, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2106
    var result = ttfRenderUtf8Blended(this, text, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeBlended(Pointer<Uint16> text, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2153
    var result = ttfRenderUnicodeBlended(this, text, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextBlendedWrapped(
      String text, int fg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2196
    var result =
        ttfRenderTextBlendedWrapped(this, text, fgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8BlendedWrapped(
      String text, int fg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2239
    var result =
        ttfRenderUtf8BlendedWrapped(this, text, fgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeBlendedWrapped(
      Pointer<Uint16> text, int fg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2286
    var result =
        ttfRenderUnicodeBlendedWrapped(this, text, fgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyphBlended(int ch, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2335
    var result = ttfRenderGlyphBlended(this, ch, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyph32Blended(int ch, int fg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    // 2377
    var result = ttfRenderGlyph32Blended(this, ch, fgPointer.ref);
    calloc.free(fgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextLcd(String text, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2423
    var result = ttfRenderTextLcd(this, text, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8Lcd(String text, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2466
    var result = ttfRenderUtf8Lcd(this, text, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeLcd(Pointer<Uint16> text, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2514
    var result = ttfRenderUnicodeLcd(this, text, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderTextLcdWrapped(
      String text, int fg, int bg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2559
    var result = ttfRenderTextLcdWrapped(
        this, text, fgPointer.ref, bgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUtf8LcdWrapped(
      String text, int fg, int bg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2608
    var result = ttfRenderUtf8LcdWrapped(
        this, text, fgPointer.ref, bgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderUnicodeLcdWrapped(
      Pointer<Uint16> text, int fg, int bg, int wrapLength) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2661
    var result = ttfRenderUnicodeLcdWrapped(
        this, text, fgPointer.ref, bgPointer.ref, wrapLength);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyphLcd(int ch, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2711
    var result = ttfRenderGlyphLcd(this, ch, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  Pointer<SdlSurface> renderGlyph32Lcd(int ch, int fg, int bg) {
    var fgPointer = calloc<SdlColor>()..fromU32(fg);
    var bgPointer = calloc<SdlColor>()..fromU32(bg);
    // 2753
    var result = ttfRenderGlyph32Lcd(this, ch, fgPointer.ref, bgPointer.ref);
    calloc.free(fgPointer);
    calloc.free(bgPointer);
    return result;
  }

  void close() {
    // 2790
    ttfCloseFont(this);
  }

  // ttfQuit
  // ttfWasInit

  int getKerningSizeGlyphs(int previousCh, int ch) {
    // 2877
    return ttfGetFontKerningSizeGlyphs(this, previousCh, ch);
  }

  int getKerningSizeGlyphs32(int previousCh, int ch) {
    // 2903
    return ttfGetFontKerningSizeGlyphs32(this, previousCh, ch);
  }

  int setSdf(bool onOff) {
    // 2932
    return ttfSetFontSdf(this, onOff);
  }

  bool getSdf() {
    // 2953
    return ttfGetFontSdf(this);
  }

  int setDirection(int direction) {
    // 2984
    return ttfSetFontDirection(this, direction);
  }

  int setScriptName(String script) {
    // 3012
    return ttfSetFontScriptName(this, script);
  }
}
