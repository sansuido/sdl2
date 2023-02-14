import 'dart:ffi';
import 'dart:math' show Rectangle, Point;
import 'package:ffi/ffi.dart' as ffi;
import '../sdl/sdl_rect.dart';
import '../../generated/struct_sdl.dart';

extension RectangleEx on Rectangle {
  // dependence package:ffi
  Pointer<SdlRect> calloc() {
    var result = ffi.calloc<SdlRect>()
      ..ref.x = left.toInt()
      ..ref.y = top.toInt()
      ..ref.w = width.toInt()
      ..ref.h = height.toInt();
    return result;
  }

  // utility
  Rectangle setX(num x) {
    return fromLTWH(x, top, width, height);
  }

  Rectangle setY(num y) {
    return fromLTWH(left, y, width, height);
  }

  Rectangle setWidth(num width) {
    return fromLTWH(left, top, width, height);
  }

  Rectangle setHeight(num height) {
    return fromLTWH(left, top, width, height);
  }

  Rectangle shift(Point shift) {
    return fromLTWH(left + shift.x, top + shift.y, width, height);
  }

  Rectangle centerOn(Point center) {
    return fromCenter(center, width, height);
  }

  bool hasIntersection(Rectangle b) {
    var aPointer = calloc();
    var bPointer = b.calloc();
    var result = aPointer.hasIntersection(bPointer);
    ffi.calloc.free(aPointer);
    ffi.calloc.free(bPointer);
    return result;
  }

  Rectangle? intersect(Rectangle b) {
    var aPointer = calloc();
    var bPointer = b.calloc();
    var resultPointer = ffi.calloc<SdlRect>();
    Rectangle? result;
    var bl = aPointer.intersectRect(bPointer, resultPointer);
    if (bl == true) {
      result = resultPointer.create();
    }
    ffi.calloc.free(aPointer);
    ffi.calloc.free(bPointer);
    ffi.calloc.free(resultPointer);
    return result;
  }

  Rectangle union(Rectangle b) {
    var aPointer = calloc();
    var bPointer = b.calloc();
    var resultPointer = ffi.calloc<SdlRect>();
    aPointer.unionRect(bPointer, resultPointer);
    var result = resultPointer.create();
    ffi.calloc.free(aPointer);
    ffi.calloc.free(bPointer);
    ffi.calloc.free(resultPointer);
    return result;
  }

  static Rectangle fromCenter(Point center, num width, num height) {
    return fromLTRB(center.x - width / 2, center.y - height / 2,
        center.x + width / 2, center.y + height / 2);
  }

  static Rectangle fromLTRB(num left, num top, num right, num bottom) {
    return Rectangle(left, top, right - left, bottom - top);
  }

  static Rectangle fromLTWH(num left, num top, num width, num height) {
    return Rectangle(left, top, width, height);
  }
}

extension RectanglesEx on List<Rectangle> {
  // dependence package:ffi
  Pointer<SdlRect> calloc() {
    var rectsPointer = ffi.calloc<SdlRect>(length);
    for (var n = 0; n < length; n++) {
      var rectPointer = rectsPointer.elementAt(n);
      rectPointer.ref.x = this[n].left.toInt();
      rectPointer.ref.y = this[n].top.toInt();
      rectPointer.ref.w = this[n].width.toInt();
      rectPointer.ref.h = this[n].height.toInt();
    }
    return rectsPointer;
  }
}
