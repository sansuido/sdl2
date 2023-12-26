import 'dart:ffi';
import 'dart:math' as math show Rectangle;

import '../../generated/lib_sdl_rect.dart';
import '../../generated/struct_sdl.dart';

extension SdlRectPointerEx on Pointer<SdlRect> {
  math.Rectangle<double> create() {
    return math.Rectangle<double>(
        ref.x.toDouble(), ref.y.toDouble(), ref.w.toDouble(), ref.h.toDouble());
  }

  bool hasIntersection(Pointer<SdlRect> b) {
    // 22
    return sdlHasIntersection(this, b);
  }

  bool intersectRect(Pointer<SdlRect> b, Pointer<SdlRect> result) {
    // 48
    return sdlIntersectRect(this, b, result);
  }

  void unionRect(Pointer<SdlRect> b, Pointer<SdlRect> result) {
    // 71
    sdlUnionRect(this, b, result);
  }

  bool intersectRectAndLine(Pointer<Int32> x1, Pointer<Int32> y1,
      Pointer<Int32> x2, Pointer<Int32> y2) {
    // 132
    return sdlIntersectRectAndLine(this, x1, y1, x2, y2);
  }
}
