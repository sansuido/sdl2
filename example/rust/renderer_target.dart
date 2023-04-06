// https://github.com/Rust-SDL2/rust-sdl2/blob/master/examples/renderer-target.rs
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
    title: 'rust-sdl2 resource-manager demo',
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
  var texture = renderer.createTexture(
      SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_TARGET, 400, 300);
  var event = calloc<SdlEvent>();
  var running = true;
  var angle = 0.0;
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
    angle += 0.5;
    var dstrect = Rectangle<double>(0, 0, 400, 300);
    renderer
      ..setTarget(texture)
      ..clear()
      ..setDrawColor(255, 0, 0, SDL_ALPHA_OPAQUE)
      ..fillRect(dstrect)
      ..setTarget(nullptr)
      ..setDrawColor(0, 0, 0, SDL_ALPHA_OPAQUE)
      ..clear()
      ..copyEx(texture, dstrect: dstrect, angle: angle, center: Point(400, 300))
      ..present();
  }
  texture.destroy();
  event.callocFree();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
