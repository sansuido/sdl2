import 'dart:ffi';
import 'dart:math' show Point, Rectangle;
import 'package:ffi/ffi.dart' as ffi;
import 'rectangle.dart';
import '../sdl/sdl_rect.dart';
import '../../generated/lib_sdl_mouse.dart';
import '../../generated/lib_sdl_rect.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/const_sdl.dart';

extension PointEx on Point {
  // dependence package:ffi
  Pointer<SdlPoint> calloc() {
    var result = ffi.calloc<SdlPoint>()
      ..ref.x = x.toInt()
      ..ref.y = y.toInt();
    return result;
  }

  // lib_sdl_mouse.dart
  static Point getMouseState() {
    var xPointer = ffi.calloc<Int32>();
    var yPointer = ffi.calloc<Int32>();
    // 47
    sdlGetMouseState(xPointer, yPointer);
    var result = Point(xPointer.value, yPointer.value);
    ffi.calloc.free(xPointer);
    ffi.calloc.free(yPointer);
    return result;
  }

  static Point getGlobalMouseState() {
    var xPointer = ffi.calloc<Int32>();
    var yPointer = ffi.calloc<Int32>();
    // 84
    sdlGetGlobalMouseState(xPointer, yPointer);
    var result = Point(xPointer.value, yPointer.value);
    ffi.calloc.free(xPointer);
    ffi.calloc.free(yPointer);
    return result;
  }

  static Point getRelativeMouseState() {
    var xPointer = ffi.calloc<Int32>();
    var yPointer = ffi.calloc<Int32>();
    // 112
    sdlGetRelativeMouseState(xPointer, yPointer);
    var result = Point(xPointer.value, yPointer.value);
    ffi.calloc.free(xPointer);
    ffi.calloc.free(yPointer);
    return result;
  }
}

extension PointsEx on List<Point> {
  // dependence package:ffi
  Pointer<SdlPoint> calloc() {
    var pointsPointer = ffi.calloc<SdlPoint>(length);
    for (var n = 0; n < length; n++) {
      var pointPointer = pointsPointer.elementAt(n);
      pointPointer.ref.x = this[n].x.toInt();
      pointPointer.ref.y = this[n].y.toInt();
    }
    return pointsPointer;
  }

  Pointer<Int16> callocInt16X() {
    var xsPointer = ffi.calloc<Int16>(length);
    for (var n = 0; n < length; n++) {
      var xPointer = xsPointer.elementAt(n);
      xPointer.value = this[n].x.toInt();
    }
    return xsPointer;
  }

  Pointer<Int16> callocInt16Y() {
    var ysPointer = ffi.calloc<Int16>(length);
    for (var n = 0; n < length; n++) {
      var yPointer = ysPointer.elementAt(n);
      yPointer.value = this[n].y.toInt();
    }
    return ysPointer;
  }

  Rectangle? getEncloseRect({Rectangle? clip}) {
    Rectangle? result;
    var pointsPointer = calloc();
    Pointer<SdlRect> clipPointer = nullptr;
    var resultPointer = ffi.calloc<SdlRect>();
    if (clip != null) {
      clipPointer = clip.calloc();
    }
    var bl =
        sdlEnclosePoints(pointsPointer, length, clipPointer, resultPointer) ==
            SDL_TRUE;
    if (bl == true) {
      result = resultPointer.create();
    }
    ffi.calloc.free(resultPointer);
    if (clipPointer != nullptr) {
      ffi.calloc.free(clipPointer);
    }
    ffi.calloc.free(pointsPointer);
    return result;
  }
}
