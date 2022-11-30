import 'dart:ffi';
import 'dart:math' show Rectangle;
import '../../generated/struct_sdl.dart';

extension SdlRectPointerEx on Pointer<SdlRect> {
  Rectangle create() {
    return Rectangle(ref.x, ref.y, ref.w, ref.h);
  }
}
