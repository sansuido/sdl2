// https://github.com/Rust-SDL2/rust-sdl2/blob/master/examples/window-properties.rs
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
      title: 'rust-sdl2 demo: Window',
      w: 800,
      h: 600,
      flags: SDL_WINDOW_RESIZABLE);
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
  }
  var event = calloc<SdlEvent>();
  var running = true;
  var tick = 0;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_KEYDOWN:
          if (event.key.keysym.ref.sym == SDLK_ESCAPE) {
            running = false;
          }
          break;
        default:
          break;
      }
    }
    var position = window.getPosition();
    var size = window.getSize();
    window.setTitle(
        'Window - pos(${position.x}x${position.y}), size(${size.x}x${size.y}): $tick');
    tick++;
    renderer
      ..setDrawColor(0, 0, 0, SDL_ALPHA_OPAQUE)
      ..clear()
      ..present();
  }
  event.callocFree();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
