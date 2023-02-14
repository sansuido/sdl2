// https://github.com/Rust-SDL2/rust-sdl2/blob/master/examples/demo.rs
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
    title: 'rust-sdl2 demo: Video',
    w: 800,
    h: 600,
  );
  if (window == nullptr) {
    print(sdlGetError());
    sdlQuit();
    return -1;
  }
  var renderer = window.createRenderer(
      -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (renderer == nullptr) {
    print(sdlGetError());
    window.destroy();
    sdlQuit();
    return -1;
  }
  var event = calloc<SdlEvent>();
  var running = true;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        default:
          break;
      }
    }
    renderer
      ..setDrawColor(255, 255, 255, SDL_ALPHA_OPAQUE)
      ..present();
  }
  event.callocFree();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
