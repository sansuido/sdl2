import 'dart:ffi';
import 'dart:math' as math;
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2/generated/const_sdl.dart';

import '../../generated/lib_sdl.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/lib_sdl_render.dart';
import '../../generated/lib_sdl_video.dart';
import '../../lib_sdl_ex.dart';
import '../dart/rectangle.dart';
import 'sdl_rect.dart';

extension SdlWindowEx on SdlWindow {
  // lib_sdl_video.dart
  static Pointer<SdlWindow> create(
      {required String title,
      int? x,
      int? y,
      required int w,
      required int h,
      flags = 0}) {
    x ??= SDL_WINDOWPOS_CENTERED;
    y ??= SDL_WINDOWPOS_CENTERED;
    // 709
    return sdlCreateWindow(title, x, y, w, h, flags);
  }
}

extension SdlWindowPointerEx on Pointer<SdlWindow> {
  // lib_sdl_video.dart

  // sdlCreateWindowFrom

  int getId() {
    // 766
    return sdlGetWindowId(this);
  }

  // sdlGetWindowFromId

  int getFlags() {
    // 816
    return sdlGetWindowFlags(this);
  }

  void setTitle(String title) {
    // 838
    sdlSetWindowTitle(this, title);
  }

  String? getTitle() {
    // 863
    return sdlGetWindowTitle(this);
  }

  void setIcon(Pointer<SdlSurface> icon) {
    // 881
    sdlSetWindowIcon(this, icon);
  }

  void setData(String name, Pointer<NativeType> userdata) {
    // 906
    sdlSetWindowData(this, name, userdata);
  }

  Pointer<void> getData(String name) {
    // 933
    return sdlGetWindowData(this, name);
  }

  void setPosition(int x, int y) {
    // 962
    sdlSetWindowPosition(this, x, y);
  }

  math.Point<double> getPosition() {
    var x = calloc<Int32>();
    var y = calloc<Int32>();
    // 989
    sdlGetWindowPosition(this, x, y);
    var result = math.Point<double>(x.value.toDouble(), y.value.toDouble());
    calloc.free(x);
    calloc.free(y);
    return result;
  }

  void setSize(int w, int h) {
    // 1024
    sdlSetWindowSize(this, w, h);
  }

  math.Point<double> getSize() {
    var w = calloc<Int32>();
    var h = calloc<Int32>();
    sdlGetWindowSize(this, w, h);
    // 1059
    var result = math.Point<double>(w.value.toDouble(), h.value.toDouble());
    calloc.free(w);
    calloc.free(h);
    return result;
  }

  math.Rectangle<double> getBordersSize() {
    var top = calloc<Int32>();
    var left = calloc<Int32>();
    var bottom = calloc<Int32>();
    var right = calloc<Int32>();
    // 1104
    sdlGetWindowBordersSize(this, top, left, bottom, right);
    var result = math.Rectangle<double>(top.value.toDouble(),
        left.value.toDouble(), bottom.value.toDouble(), right.value.toDouble());
    calloc.free(top);
    calloc.free(left);
    calloc.free(bottom);
    calloc.free(right);
    return result;
  }

  math.Point<double> getSizeInPixels() {
    var w = calloc<Int32>();
    var h = calloc<Int32>();
    sdlGetWindowSizeInPixels(this, w, h);
    var result = math.Point<double>(w.value.toDouble(), h.value.toDouble());
    calloc.free(w);
    calloc.free(h);
    return result;
  }

  void setMinimumSize(int w, int h) {
    // 1134
    sdlSetWindowMinimumSize(this, w, h);
  }

  math.Point<double> getMinimumSize() {
    var w = calloc<Int32>();
    var h = calloc<Int32>();
    sdlGetWindowMinimumSize(this, w, h);
    // 1159
    var result = math.Point<double>(w.value.toDouble(), h.value.toDouble());
    calloc.free(w);
    calloc.free(h);
    return result;
  }

  void setMaximumSize(int w, int h) {
    // 1184
    sdlSetWindowMaximumSize(this, w, h);
  }

  math.Point<double> getMaximumSize() {
    var w = calloc<Int32>();
    var h = calloc<Int32>();
    sdlGetWindowMaximumSize(this, w, h);
    // 1209
    var result = math.Point<double>(w.value.toDouble(), h.value.toDouble());
    calloc.free(w);
    calloc.free(h);
    return result;
  }

  void setBorderd(bool bordered) {
    // 1238
    sdlSetWindowBordered(this, bordered ? SDL_TRUE : SDL_FALSE);
  }

  void setResizable(bool resizable) {
    // 1265
    sdlSetWindowResizable(this, resizable ? SDL_TRUE : SDL_FALSE);
  }

  void setAlwaysOnTop(bool onTop) {
    // 1290
    sdlSetWindowAlwaysOnTop(this, onTop ? SDL_TRUE : SDL_FALSE);
  }

  void show() {
    // 1311
    sdlShowWindow(this);
  }

  void hide() {
    // 1330
    sdlHideWindow(this);
  }

  void raise() {
    // 1347
    sdlRaiseWindow(this);
  }

  void maximize() {
    // 1367
    sdlMaximizeWindow(this);
  }

  void minimize() {
    // 1387
    sdlMinimizeWindow(this);
  }

  void restore() {
    // 1407
    sdlRestoreWindow(this);
  }

  void setFullscreen(int flags) {
    // 1434
    sdlSetWindowFullscreen(this, flags);
  }

  Pointer<SdlSurface> getSurface() {
    // 1468
    return sdlGetWindowSurface(this);
  }

  void updateSurface() {
    // 1496
    sdlUpdateWindowSurface(this);
  }

  int updateSurfaceRects(List<math.Rectangle<double>> rects) {
    var rectsPointer = rects.calloc();
    // 1526
    var result = sdlUpdateWindowSurfaceRects(this, rectsPointer, rects.length);
    calloc.free(rectsPointer);
    return result;
  }

  void setGrab(bool grabbed) {
    // 1557
    sdlSetWindowGrab(this, grabbed ? SDL_TRUE : SDL_FALSE);
  }

  void setKeyboardGrab(bool grabbed) {
    // 1596
    sdlSetWindowKeyboardGrab(this, grabbed ? SDL_TRUE : SDL_FALSE);
  }

  void setMouseGrab(bool grabbed) {
    // 1621
    sdlSetWindowMouseGrab(this, grabbed ? SDL_TRUE : SDL_FALSE);
  }

  bool getGrab() {
    // 1642
    return sdlGetWindowGrab(this) == SDL_TRUE;
  }

  bool getKeyboardGrab() {
    // 1663
    return sdlGetWindowKeyboardGrab(this) == SDL_TRUE;
  }

  bool getMouseGrab() {
    // 1684
    return sdlGetWindowMouseGrab(this) == SDL_TRUE;
  }

  // sdlGetGrabbedWindow

  int setMouseRect(math.Rectangle<double> rect) {
    var rectPointer = rect.calloc();
    // 1731
    var result = sdlSetWindowMouseRect(this, rectPointer);
    calloc.free(rectPointer);
    return result;
  }

  math.Rectangle<double>? getMouseRect() {
    math.Rectangle<double>? result;
    // 1753
    var rectPointer = sdlGetWindowMouseRect(this);
    if (rectPointer != nullptr) {
      result = rectPointer.create();
    }
    return result;
  }

  int setBrightness(double brightness) {
    // 1790
    return sdlSetWindowBrightness(this, brightness);
  }

  double getBrightness() {
    // 1818
    return sdlGetWindowBrightness(this);
  }

  void setOpacity(double opacity) {
    // 1845
    sdlSetWindowOpacity(this, opacity);
  }

  double? getOpacity() {
    double? result;
    var opacityPointer = calloc<Float>();
    // 1875
    if (sdlGetWindowOpacity(this, opacityPointer) == 0) {
      result = opacityPointer.value;
    }
    calloc.free(opacityPointer);
    return result;
  }

  int setModalFor(Pointer<SdlWindow> parentWindow) {
    // 1896
    return sdlSetWindowModalFor(this, parentWindow);
  }

  int setInputFocus() {
    // 1924
    return sdlSetWindowInputFocus(this);
  }

  // sdlSetWindowGammaRamp
  // sdlGetWindowGammaRamp

  int setHitTest(SdlHitTest callback, Pointer<NativeType> callbackData) {
    // 2059
    return sdlSetWindowHitTest(this, callback, callbackData);
  }

  int flash(int operation) {
    // 2082
    return sdlFlashWindow(this, operation);
  }

  bool destroy() {
    if (this != nullptr) {
      // 2106
      sdlDestroyWindow(this);
      return true;
    }
    return false;
  }

  Pointer<NativeType> glCreateContext() {
    // 2415
    return sdlGlCreateContext(this);
  }

  int getDisplayIndex() {
    // 527
    return sdlGetWindowDisplayIndex(this);
  }

  // lib_sdl_renderer.dart
  Pointer<SdlRenderer> createRenderer(int index, int flags) {
    // 122
    return sdlCreateRenderer(this, index, flags);
  }

  Pointer<SdlRenderer> getRenderer() {
    // 176
    return sdlGetRenderer(this);
  }
}
