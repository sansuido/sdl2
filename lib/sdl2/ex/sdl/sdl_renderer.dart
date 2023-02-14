import 'dart:ffi';
import 'dart:math' as math show Point, Rectangle;
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2/generated/const_sdl.dart';
import '../../generated/lib_sdl_gfx.dart' as gfx;
import '../../generated/struct_sdl.dart';
import '../../generated/lib_sdl_image.dart';
import '../../generated/lib_sdl_render.dart';
import '../dart/rectangle.dart';
import '../dart/point.dart';
import 'sdl_rect.dart';

extension SdlRendererPointerEx on Pointer<SdlRenderer> {
  // lib_sdl_gfx.dart

  // 65
  int pixelColor(math.Point p, int color) {
    return gfx.pixelColor(this, p.x.toInt(), p.y.toInt(), color);
  }

  int pixelRgba(math.Point p, int r, int g, int b, int a) {
    // 77
    return gfx.pixelRgba(this, p.x.toInt(), p.y.toInt(), r, g, b, a);
  }

  int hlineColor(int x1, int x2, int y, int color) {
    // 91
    return gfx.hlineColor(this, x1, x2, y, color);
  }

  int hlineRgba(int x1, int x2, int y, int r, int g, int b, int a) {
    // 104
    return gfx.hlineRgba(this, x1, x2, y, r, g, b, a);
  }

  int vlineColor(int x, int y1, int y2, int color) {
    // 118
    return gfx.vlineColor(this, x, y1, y2, color);
  }

  int vlineRgba(int x, int y1, int y2, int r, int g, int b, int a) {
    // 131
    return gfx.vlineRgba(this, x, y1, y2, r, g, b, a);
  }

  int rectangleColor(math.Rectangle rect, int color) {
    // 145
    return gfx.rectangleColor(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), color);
  }

  int rectangleRgba(math.Rectangle rect, int r, int g, int b, int a) {
    // 158
    return gfx.rectangleRgba(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), r, g, b, a);
  }

  int roundedRectangleColor(math.Rectangle rect, int rad, int color) {
    // 172
    return gfx.roundedRectangleColor(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), rad, color);
  }

  int roundedRectangleRgba(
      math.Rectangle rect, int rad, int r, int g, int b, int a) {
    // 186
    return gfx.roundedRectangleRgba(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), rad, r, g, b, a);
  }

  int boxColor(math.Rectangle rect, int color) {
    // 201
    return gfx.boxColor(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), color);
  }

  int boxRgba(math.Rectangle rect, int r, int g, int b, int a) {
    // 214
    return gfx.boxRgba(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), r, g, b, a);
  }

  int roundedBoxColor(math.Rectangle rect, int rad, int color) {
    // 228
    return gfx.roundedBoxColor(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), rad, color);
  }

  int roundedBoxRgba(math.Rectangle rect, int rad, int r, int g, int b, int a) {
    // 241
    return gfx.roundedBoxRgba(this, rect.left.toInt(), rect.top.toInt(),
        rect.right.toInt(), rect.bottom.toInt(), rad, r, g, b, a);
  }

  int lineColor(math.Point p1, math.Point p2, int color) {
    // 256
    return gfx.lineColor(
        this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(), p2.y.toInt(), color);
  }

  int lineRgba(math.Point p1, math.Point p2, int r, int g, int b, int a) {
    // 269
    return gfx.lineRgba(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), r, g, b, a);
  }

  int aaLineColor(math.Point p1, math.Point p2, int color) {
    // 283
    return gfx.aalineColor(
        this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(), p2.y.toInt(), color);
  }

  int aaLineRgba(math.Point p1, math.Point p2, int r, int g, int b, int a) {
    // 296
    return gfx.aalineRgba(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), r, g, b, a);
  }

  int thickLineColor(math.Point p1, math.Point p2, int width, int color) {
    // 310
    return gfx.thickLineColor(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), width, color);
  }

  int thickLineRgba(
      math.Point p1, math.Point p2, int width, int r, int g, int b, int a) {
    // 323
    return gfx.thickLineRgba(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), width, r, g, b, a);
  }

  int circleColor(math.Point p, int rad, int color) {
    // 338
    return gfx.circleColor(this, p.x.toInt(), p.y.toInt(), rad, color);
  }

  int circleRgba(math.Point p, int rad, int r, int g, int b, int a) {
    // 351
    return gfx.circleRgba(this, p.x.toInt(), p.y.toInt(), rad, r, g, b, a);
  }

  int arcColor(math.Point p, int rad, int start, int end, int color) {
    // 338
    return gfx.arcColor(this, p.x.toInt(), p.y.toInt(), rad, start, end, color);
  }

  int arcRgba(
      math.Point p, int rad, int start, int end, int r, int g, int b, int a) {
    // 378
    return gfx.arcRgba(
        this, p.x.toInt(), p.y.toInt(), rad, start, end, r, g, b, a);
  }

  int aaCircleColor(math.Point p, int rad, int color) {
    // 392
    return gfx.aacircleColor(this, p.x.toInt(), p.y.toInt(), rad, color);
  }

  int aaCircleRgba(math.Point p, int rad, int r, int g, int b, int a) {
    // 405
    return gfx.aacircleRgba(this, p.x.toInt(), p.y.toInt(), rad, r, g, b, a);
  }

  int filledCircleColor(math.Point p, int rad, int color) {
    // 419
    return gfx.filledCircleColor(this, p.x.toInt(), p.y.toInt(), rad, color);
  }

  int filledCircleRgba(math.Point p, int rad, int r, int g, int b, int a) {
    // 432
    return gfx.filledCircleRgba(
        this, p.x.toInt(), p.y.toInt(), rad, r, g, b, a);
  }

  int ellipseColor(math.Point p, math.Point rad, int color) {
    // 446
    return gfx.ellipseColor(
        this, p.x.toInt(), p.y.toInt(), rad.x.toInt(), rad.y.toInt(), color);
  }

  int ellipseRgba(math.Point p, math.Point rad, int r, int g, int b, int a) {
    // 459
    return gfx.ellipseRgba(this, p.x.toInt(), p.y.toInt(), rad.x.toInt(),
        rad.y.toInt(), r, g, b, a);
  }

  int aaEllipseColor(math.Point p, math.Point rad, int color) {
    // 473
    return gfx.aaellipseColor(
        this, p.x.toInt(), p.y.toInt(), rad.x.toInt(), rad.y.toInt(), color);
  }

  int aaEllipseRgba(math.Point p, math.Point rad, int r, int g, int b, int a) {
    // 486
    return gfx.aaellipseRgba(this, p.x.toInt(), p.y.toInt(), rad.x.toInt(),
        rad.y.toInt(), r, g, b, a);
  }

  int filledEllipseColor(math.Point p, math.Point rad, int color) {
    // 500
    return gfx.filledEllipseColor(
        this, p.x.toInt(), p.y.toInt(), rad.x.toInt(), rad.y.toInt(), color);
  }

  int filledEllipseRgba(
      math.Point p, math.Point rad, int r, int g, int b, int a) {
    // 513
    return gfx.filledEllipseRgba(this, p.x.toInt(), p.y.toInt(), rad.x.toInt(),
        rad.y.toInt(), r, g, b, a);
  }

  int pieColor(math.Point p, int rad, int start, int end, int color) {
    // 527
    return gfx.pieColor(this, p.x.toInt(), p.y.toInt(), rad, start, end, color);
  }

  int pieRgba(
      math.Point p, int rad, int start, int end, int r, int g, int b, int a) {
    // 540
    return gfx.pieRgba(
        this, p.x.toInt(), p.y.toInt(), rad, start, end, r, g, b, a);
  }

  int filledPieColor(math.Point p, int rad, int start, int end, int color) {
    // 554
    return gfx.filledPieColor(
        this, p.x.toInt(), p.y.toInt(), rad, start, end, color);
  }

  int filledPieRgba(
      math.Point p, int rad, int start, int end, int r, int g, int b, int a) {
    // 567
    return gfx.filledPieRgba(
        this, p.x.toInt(), p.y.toInt(), rad, start, end, r, g, b, a);
  }

  int trigonColor(math.Point p1, math.Point p2, math.Point p3, int color) {
    // 582
    return gfx.trigonColor(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), p3.x.toInt(), p3.y.toInt(), color);
  }

  int trigonRgba(
      math.Point p1, math.Point p2, math.Point p3, int r, int g, int b, int a) {
    // 585
    return gfx.trigonRgba(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), p3.x.toInt(), p3.y.toInt(), r, g, b, a);
  }

  int aaTrigonColor(math.Point p1, math.Point p2, math.Point p3, int color) {
    // 619
    return gfx.aatrigonColor(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), p3.x.toInt(), p3.y.toInt(), color);
  }

  int aaTrigonRgba(
      math.Point p1, math.Point p2, math.Point p3, int r, int g, int b, int a) {
    // 639
    return gfx.aatrigonRgba(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), p3.x.toInt(), p3.y.toInt(), r, g, b, a);
  }

  int filledTrigonColor(
      math.Point p1, math.Point p2, math.Point p3, int color) {
    // 657
    return gfx.filledTrigonColor(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), p3.x.toInt(), p3.y.toInt(), color);
  }

  int filledTrigonRgba(
      math.Point p1, math.Point p2, math.Point p3, int r, int g, int b, int a) {
    // 671
    return gfx.filledTrigonRgba(this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(),
        p2.y.toInt(), p3.x.toInt(), p3.y.toInt(), r, g, b, a);
  }

  int polygonColor(List<math.Point> ps, int color) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 706
    var result = gfx.polygonColor(this, xsPointer, ysPointer, ps.length, color);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int polygonRgba(List<math.Point> ps, int r, int g, int b, int a) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 719
    var result =
        gfx.polygonRgba(this, xsPointer, ysPointer, ps.length, r, g, b, a);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int aaPolygonColor(List<math.Point> ps, int color) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 733
    var result =
        gfx.aapolygonColor(this, xsPointer, ysPointer, ps.length, color);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int aaPolygonRgba(List<math.Point> ps, int r, int g, int b, int a) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 746
    var result =
        gfx.aapolygonRgba(this, xsPointer, ysPointer, ps.length, r, g, b, a);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int filledPolygonColor(List<math.Point> ps, int color) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 767
    var result =
        gfx.filledPolygonColor(this, xsPointer, ysPointer, ps.length, color);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int filledPolygonRgba(List<math.Point> ps, int r, int g, int b, int a) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 780
    var result = gfx.filledPolygonRgba(
        this, xsPointer, ysPointer, ps.length, r, g, b, a);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int texturedPolygon(
      List<math.Point> ps, Pointer<SdlSurface> texture, math.Point texturePos) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 801
    var result = gfx.texturedPolygon(this, xsPointer, ysPointer, ps.length,
        texture, texturePos.x.toInt(), texturePos.y.toInt());
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int bezierColor(List<math.Point> ps, int s, int color) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 834
    var result =
        gfx.bezierColor(this, xsPointer, ysPointer, ps.length, s, color);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int bezierRgba(List<math.Point> ps, int s, int r, int g, int b, int a) {
    var xsPointer = ps.callocInt16X();
    var ysPointer = ps.callocInt16Y();
    // 847
    var result =
        gfx.bezierRgba(this, xsPointer, ysPointer, ps.length, s, r, g, b, a);
    calloc.free(xsPointer);
    calloc.free(ysPointer);
    return result;
  }

  int characterColor(math.Point p, int c, int color) {
    // 898
    return gfx.characterColor(this, p.x.toInt(), p.y.toInt(), c, color);
  }

  int characterRgba(math.Point p, int c, int r, int g, int b, int a) {
    // 811
    return gfx.characterRgba(this, p.x.toInt(), p.y.toInt(), c, r, g, b, a);
  }

  int stringColor(math.Point p, String? s, int color) {
    // 924
    return gfx.stringColor(this, p.x.toInt(), p.y.toInt(), s, color);
  }

  int stringRgba(math.Point p, String? s, int r, int g, int b, int a) {
    // 940
    return gfx.stringRgba(this, p.x.toInt(), p.y.toInt(), s, r, g, b, a);
  }

  // lib_sdl_image.dart
  Pointer<SdlTexture> loadTexture(String file) {
    // 358
    return imgLoadTexture(this, file);
  }

  Pointer<SdlTexture> loadTextureRw(Pointer<SdlRWops> src, int freesrc) {
    // 418
    return imgLoadTextureRw(this, src, freesrc);
  }

  Pointer<SdlTexture> loadTextureTypedRw(
      Pointer<SdlRWops> src, int freesrc, String type) {
    // 484
    return imgLoadTextureTypedRw(this, src, freesrc, type);
  }

  // lib_sdl_renderer.dart
  Pointer<SdlRenderer> createSoftware(Pointer<SdlSurface> surface) {
    // 154
    return sdlCreateSoftwareRenderer(surface);
  }

  Pointer<SdlWindow> getWindow() {
    // 196
    return sdlRenderGetWindow(this);
  }

  math.Point getOutputSize() {
    var wPointer = calloc<Int32>();
    var hPointer = calloc<Int32>();
    // 250
    sdlGetRendererOutputSize(this, wPointer, hPointer);
    var result = math.Point(wPointer.value, hPointer.value);
    calloc.free(wPointer);
    calloc.free(hPointer);
    return result;
  }

  Pointer<SdlTexture> createTexture(int format, int access, int w, int h) {
    // 285
    return sdlCreateTexture(this, format, access, w, h);
  }

  Pointer<SdlTexture> createTextureFromSurface(Pointer<SdlSurface> surface) {
    // 322
    return sdlCreateTextureFromSurface(this, surface);
  }

  bool targetSupported() {
    // 908
    return sdlRenderTargetSupported(this) == SDL_TRUE;
  }

  int setTarget(Pointer<SdlTexture> texture) {
    // 940
    return sdlSetRenderTarget(this, texture);
  }

  Pointer<SdlTexture> getTarget() {
    // 966
    return sdlGetRenderTarget(this);
  }

  int setLogicalSize(int w, int h) {
    // 1003
    return sdlRenderSetLogicalSize(this, w, h);
  }

  math.Point getLogicalSize() {
    var wPointer = calloc<Int32>();
    var hPointer = calloc<Int32>();
    // 1033
    sdlRenderGetLogicalSize(this, wPointer, hPointer);
    var result = math.Point(wPointer.value, hPointer.value);
    calloc.free(wPointer);
    calloc.free(hPointer);
    return result;
  }

  int setIntegerScale(int enable) {
    // 1063
    return sdlRenderSetIntegerScale(this, enable);
  }

  bool getIntegerScale() {
    // 1085
    return sdlRenderGetIntegerScale(this) == SDL_TRUE;
  }

  int setViewport([math.Rectangle? rect]) {
    Pointer<SdlRect> rectPointer = nullptr;
    if (rect != null) {
      rectPointer = rect.calloc();
    }
    // 1111
    var result = sdlRenderSetViewport(this, rectPointer);
    calloc.free(rectPointer);
    return result;
  }

  math.Rectangle getViewport() {
    var rectPointer = calloc<SdlRect>();
    // 1132
    sdlRenderGetViewport(this, rectPointer);
    var result = rectPointer.create();
    calloc.free(rectPointer);
    return result;
  }

  int setClipRect([math.Rectangle? rect]) {
    Pointer<SdlRect> rectPointer = nullptr;
    if (rect != null) {
      rectPointer = rect.calloc();
    }
    // 1159
    var result = sdlRenderSetClipRect(this, rectPointer);
    calloc.free(rectPointer);
    return result;
  }

  math.Rectangle getClipRect() {
    var rectPointer = calloc<SdlRect>();
    // 1183
    sdlRenderGetClipRect(this, rectPointer);
    var result = rectPointer.create();
    calloc.free(rectPointer);
    return result;
  }

  bool isCkipEnabled() {
    // 1207
    return sdlRenderIsClipEnabled(this) == SDL_TRUE;
  }

  int setScale(double scaleX, double scaleY) {
    // 1239
    return sdlRenderSetScale(this, scaleX, scaleY);
  }

  // sdlRenderGetScale
  // sdlRenderWindowToLogical
  // sdlRenderLogicalToWindow

  int setDrawColor(int r, int g, int b, int alpha) {
    // 1382
    return sdlSetRenderDrawColor(this, r, g, b, alpha);
  }

  int getDrawColor() {
    var rPointer = calloc<Uint8>();
    var gPointer = calloc<Uint8>();
    var bPointer = calloc<Uint8>();
    var alphaPointer = calloc<Uint8>();
    // 1414
    sdlGetRenderDrawColor(this, rPointer, gPointer, bPointer, alphaPointer);
    int result = 0;
    result += rPointer.value << 16;
    result += gPointer.value << 8;
    result += bPointer.value << 0;
    result += alphaPointer.value << 24;
    calloc.free(rPointer);
    calloc.free(gPointer);
    calloc.free(bPointer);
    calloc.free(alphaPointer);
    return result;
  }

  int setDrawBlendMode(int blendMode) {
    // 1453
    return sdlSetRenderDrawBlendMode(this, blendMode);
  }

  int getDrawBlendMode() {
    var blendModePointer = calloc<Int32>();
    // 1476
    sdlGetRenderDrawBlendMode(this, blendModePointer);
    var result = blendModePointer.value;
    calloc.free(blendModePointer);
    return result;
  }

  int clear() {
    // 1502
    return sdlRenderClear(this);
  }

  int drawPoint(math.Point point) {
    // 1537
    return sdlRenderDrawPoint(this, point.x.toInt(), point.y.toInt());
  }

  int drawPoints(List<math.Point> points) {
    var pointsPointer = points.calloc();
    // 1571
    var result = sdlRenderDrawPoints(this, pointsPointer, points.length);
    calloc.free(pointsPointer);
    return result;
  }

  int drawLine(math.Point p1, math.Point p2) {
    // 1611
    return sdlRenderDrawLine(
        this, p1.x.toInt(), p1.y.toInt(), p2.x.toInt(), p2.y.toInt());
  }

  int drawLines(List<math.Point> points) {
    var pointsPointer = points.calloc();
    // 1647
    var result = sdlRenderDrawLines(this, pointsPointer, points.length);
    calloc.free(pointsPointer);
    return result;
  }

  int drawRect(math.Rectangle? rect) {
    Pointer<SdlRect> rectPointer = nullptr;
    if (rect != null) {
      rectPointer = rect.calloc();
    }
    // 1682
    var result = sdlRenderDrawRect(this, rectPointer);
    calloc.free(rectPointer);
    return result;
  }

  int drawRects(List<math.Rectangle> rects) {
    var rectsPointer = rects.calloc();
    // 1716
    var result = sdlRenderDrawRects(this, rectsPointer, rects.length);
    calloc.free(rectsPointer);
    return result;
  }

  int fillRect(math.Rectangle? rect) {
    Pointer<SdlRect> rectPointer = nullptr;
    if (rect != null) {
      rectPointer = rect.calloc();
    }
    // 1755
    var result = sdlRenderFillRect(this, rectPointer);
    calloc.free(rectPointer);
    return result;
  }

  int fillRects(List<math.Rectangle> rects) {
    var rectsPointer = rects.calloc();
    // 1788
    var result = sdlRenderFillRects(this, rectsPointer, rects.length);
    calloc.free(rectsPointer);
    return result;
  }

  int copy(Pointer<SdlTexture> texture,
      {math.Rectangle? srcrect, math.Rectangle? dstrect}) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    // 1829
    var result = sdlRenderCopy(this, texture, srcrectPointer, dstrectPointer);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    return result;
  }

  int copyEx(Pointer<SdlTexture> texture,
      {math.Rectangle? srcrect,
      math.Rectangle? dstrect,
      double angle = 0,
      math.Point? center,
      int flip = SDL_FLIP_NONE}) {
    Pointer<SdlRect> srcrectPointer = nullptr;
    Pointer<SdlRect> dstrectPointer = nullptr;
    Pointer<SdlPoint> centerPointer = nullptr;
    if (srcrect != null) {
      srcrectPointer = srcrect.calloc();
    }
    if (dstrect != null) {
      dstrectPointer = dstrect.calloc();
    }
    if (center != null) {
      centerPointer = center.calloc();
    }
    // 1884
    var result = sdlRenderCopyEx(this, texture, srcrectPointer, dstrectPointer,
        angle, centerPointer, flip);
    calloc.free(srcrectPointer);
    calloc.free(dstrectPointer);
    calloc.free(centerPointer);
    return result;
  }

  void present() {
    // 2390
    sdlRenderPresent(this);
  }

  bool destroy() {
    if (this != nullptr) {
      // 2432
      sdlDestroyRenderer(this);
      return true;
    }
    return false;
  }
}
