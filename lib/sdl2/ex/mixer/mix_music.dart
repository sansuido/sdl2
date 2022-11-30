import 'dart:ffi';
import '../../generated/lib_sdl_mixer.dart';
import '../../generated/struct_sdl_mixer.dart';

extension MixMusicEx on MixMusic {
  // lib_sdl_mxer.dart
  static Pointer<MixMusic> load(String file) {
    // 581
    return mixLoadMus(file);
  }
}

extension MixMusicPointerEx on Pointer<MixMusic> {
  // lib_sdl_mixer.dart
  void free() {
    // 832
    mixFreeMusic(this);
  }

  int getType() {
    // 1044
    return mixGetMusicType(this);
  }

  String? getTitle() {
    // 1082
    return mixGetMusicTitle(this);
  }

  String? getTitleTag() {
    // 1117
    return mixGetMusicTitleTag(this);
  }

  String? getArtistTag() {
    // 1147
    return mixGetMusicArtistTag(this);
  }

  String? getAlbumTag() {
    // 1177
    return mixGetMusicAlbumTag(this);
  }

  String? getCopyrightTag() {
    // 1207
    return mixGetMusicCopyrightTag(this);
  }

  int play(int loops) {
    // 2041
    return mixPlayMusic(this, loops);
  }

  int fadeIn(int loops, int ms) {
    // 2076
    return mixFadeInMusic(this, loops, ms);
  }

  int fadeInPos(int loops, int ms, double position) {
    // 2125
    return mixFadeInMusicPos(this, loops, ms, position);
  }

  int getVolume() {
    // 2353
    return mixGetMusicVolume(this);
  }

  double getPosition() {
    // 2887
    return mixGetMusicPosition(this);
  }

  double duration() {
    // 2909
    return mixMusicDuration(this);
  }

  double getLoopStartTime() {
    // 2932
    return mixGetMusicLoopStartTime(this);
  }

  double getLoopEndTime() {
    // 2955
    return mixGetMusicLoopEndTime(this);
  }

  double getLoopLengthTime() {
    // 2978
    return mixGetMusicLoopLengthTime(this);
  }
}
