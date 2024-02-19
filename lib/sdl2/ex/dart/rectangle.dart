import 'dart:ffi';
import 'dart:math' as math show Rectangle, Point;
import 'package:ffi/ffi.dart' as ffi;
import '../sdl/sdl_rect.dart';
import '../../generated/struct_sdl.dart';

extension RectangleEx on math.Rectangle<double> {
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
  math.Point<double> get size =>
      math.Point<double>(width.toDouble(), height.toDouble());
  math.Point<double> get center =>
      math.Point<double>(left + width / 2, top + height / 2);

  math.Rectangle<double> setX(double x) {
    return fromLTWH(math.Point<double>(x, top), size);
  }

  math.Rectangle<double> setY(double y) {
    return fromLTWH(math.Point<double>(left, y), size);
  }

  math.Rectangle<double> setWidth(double width_) {
    return fromLTWH(topLeft, math.Point<double>(width_, height));
  }

  math.Rectangle<double> setHeight(double height_) {
    return fromLTWH(topLeft, math.Point<double>(width, height_));
  }

  math.Rectangle<double> shift(math.Point<double> shift) {
    return fromLTWH(math.Point<double>(left + shift.x, top + shift.y), size);
  }

  math.Rectangle<double> centerOn(math.Point<double> center_) {
    return fromCenter(center_, size);
  }

  math.Rectangle<double> expansion(num value) {
    return fromCenter(
        center, math.Point<double>(width + value, height + value));
  }

  math.Rectangle<double> expansionLT(num value) {
    return fromLTWH(topLeft, math.Point<double>(width + value, height + value));
  }

  math.Rectangle<double> union(math.Rectangle<double> b) {
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

  static math.Rectangle<double> fromCenter(
      math.Point<double> center, math.Point<double> size) {
    return math.Rectangle<double>.fromPoints(
        math.Point<double>(center.x - size.x / 2, center.y - size.y / 2),
        math.Point<double>(center.x + size.x / 2, center.y + size.y / 2));
  }

  static math.Rectangle<double> fromLTWH(
      math.Point<double> topLeft, math.Point<double> size) {
    return math.Rectangle<double>(topLeft.x, topLeft.y, size.x, size.y);
  }
}

extension RectanglesEx on List<math.Rectangle<double>> {
  // dependence package:ffi
  Pointer<SdlRect> calloc() {
    var rectsPointer = ffi.calloc<SdlRect>(length);
    for (var n = 0; n < length; n++) {
      var rectPointer = rectsPointer + n;
      rectPointer.ref.x = this[n].left.toInt();
      rectPointer.ref.y = this[n].top.toInt();
      rectPointer.ref.w = this[n].width.toInt();
      rectPointer.ref.h = this[n].height.toInt();
    }
    return rectsPointer;
  }
}
