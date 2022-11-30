import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  print(sdlGetRevision());
  var version = calloc<SdlVersion>();
  Map<String, Function(Pointer<SdlVersion>)> funcs = {
    'sdlVersion': sdlVersion,
    'sdlImageVersion': sdlImageVersion,
    'sdlMixerVersion': sdlMixerVersion,
    'sdlNetVersion': sdlNetVersion,
    'sdlTtfVersion': sdlTtfVersion,
    'sdlGfxVersion': sdlGfxVersion,
  };
  funcs.forEach((name, func) {
    func(version);
    print(
        '$name: ${version.ref.major}.${version.ref.minor}.${version.ref.patch}');
  });
  version.callocFree();
  return 0;
}
