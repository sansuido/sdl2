// https://github.com/Rust-SDL2/rust-sdl2/blob/master/examples/mouse-state.rs
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(title: 'Mouse', w: 800, h: 600);
  if (window == nullptr) {
    print(sdlGetError());
    sdlQuit();
    return -1;
  }
  var event = calloc<SdlEvent>();
  var running = true;
  Point<double> oldPoint = Point(0, 0);
  int oldButton = 0;
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
    var newPoint = PointEx.getMouseState();
    var newButton = sdlGetMouseState(nullptr, nullptr);
    if (oldPoint != newPoint || oldButton != newButton) {
      print('X = ${newPoint.x} Y = ${newPoint.y} : $oldButton => $newButton');
      oldPoint = newPoint;
      oldButton = newButton;
    }
  }
  event.callocFree();
  window.destroy();
  sdlQuit();
  return 0;
}
