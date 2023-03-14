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
  Point get size => Point(width, height);
  Point get center => Point(left + width / 2, top + height / 2);

  Rectangle setX(num x) {
    return fromLTWH(Point(x, top), size);
  }

  Rectangle setY(num y) {
    return fromLTWH(Point(left, y), size);
  }

  Rectangle setWidth(num width_) {
    return fromLTWH(topLeft, Point(width_, height));
  }

  Rectangle setHeight(num height_) {
    return fromLTWH(topLeft, Point(width, height_));
  }

  Rectangle shift(Point shift) {
    return fromLTWH(Point(left + shift.x, top + shift.y), size);
  }

  Rectangle centerOn(Point center_) {
    return fromCenter(center_, size);
  }

  Rectangle expansion(num value) {
    return fromCenter(center, Point(width + value, height + value));
  }

  Rectangle expansionLT(num value) {
    return fromLTWH(topLeft, Point(width + value, height + value));
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

  static Rectangle fromCenter(Point center, Point size) {
    return Rectangle.fromPoints(
        Point(center.x - size.x / 2, center.y - size.y / 2),
        Point(center.x + size.x / 2, center.y + size.y / 2));
  }

  static Rectangle fromLTWH(Point topLeft, Point size) {
    return Rectangle(topLeft.x, topLeft.y, size.x, size.y);
  }

  // == intersects
  //bool hasIntersection(Rectangle b) {
  //  var aPointer = calloc();
  //  var bPointer = b.calloc();
  //  var result = aPointer.hasIntersection(bPointer);
  //  ffi.calloc.free(aPointer);
  //  ffi.calloc.free(bPointer);
  //  return result;
  //}

  // == intersection
  //Rectangle? intersect(Rectangle b) {
  //  var aPointer = calloc();
  //  var bPointer = b.calloc();
  //  var resultPointer = ffi.calloc<SdlRect>();
  //  Rectangle? result;
  //  var bl = aPointer.intersectRect(bPointer, resultPointer);
  //  if (bl == true) {
  //    result = resultPointer.create();
  //  }
  //  ffi.calloc.free(aPointer);
  //  ffi.calloc.free(bPointer);
  //  ffi.calloc.free(resultPointer);
  //  return result;
  //}

  // == Rectangle.fromPoints
  //static Rectangle fromLTRB(num left, num top, num right, num bottom) {
  //  return Rectangle(left, top, right - left, bottom - top);
  //}
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
