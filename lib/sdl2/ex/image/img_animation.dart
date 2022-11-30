import 'dart:ffi';
import '../../generated/lib_sdl_image.dart';
import '../../generated/struct_sdl_image.dart';

extension ImgAnimationPointerEx on Pointer<ImgAnimation> {
  // lis_sdl_image.dart

  void free() {
    // 2540
    imgFreeAnimation(this);
  }
}
