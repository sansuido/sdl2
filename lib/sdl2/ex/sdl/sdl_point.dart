import 'dart:ffi';
import 'dart:math' show Point;
import '../../generated/struct_sdl.dart';

extension SdlPointPointerEx on Pointer<SdlPoint> {
  Point create() {
    return Point(ref.x, ref.y);
  }
}
