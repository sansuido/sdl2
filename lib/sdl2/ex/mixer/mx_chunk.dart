import 'dart:ffi';
import '../../generated/lib_sdl_mixer.dart';
import '../../generated/struct_sdl_mixer.dart';

extension MixChunkEx on MixChunk {
  // lib_sdl_mxer.dart
  static Pointer<MixChunk> loadWav(String file) {
    // 540
    return mixLoadWav(file);
  }
}

extension MixChunkPointerEx on Pointer<MixChunk> {
  // lib_sdl_mixer.dart
  void free() {
    // 805
    mixFreeChunk(this);
  }
}
