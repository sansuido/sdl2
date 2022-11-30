import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gWindowWidth = 640;
const gWindowHeight = 480;

void setTitle(Pointer<SdlWindow> window, Pointer<FPSmanager> fpsManager) {
  window.setTitle('FPSmanager example (${fpsManager.getFramerate()})');
}

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
      title: '', w: gWindowWidth, h: gWindowHeight, flags: SDL_WINDOW_OPENGL);
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
  var fpsManager = calloc<FPSmanager>()
    ..init()
    ..setFramerate(30);
  setTitle(window, fpsManager);
  var event = calloc<SdlEvent>();
  var time = sdlGetTicks();
  var frameRate = 0;
  var frameCount = 0;
  var running = true;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_KEYDOWN:
          switch (event.key.keysym.ref.sym) {
            case SDLK_UP:
              fpsManager.setFramerate(fpsManager.getFramerate() + 1);
              setTitle(window, fpsManager);
              break;
            case SDLK_DOWN:
              fpsManager.setFramerate(fpsManager.getFramerate() - 1);
              setTitle(window, fpsManager);
              break;
            default:
              break;
          }
          break;
        default:
          break;
      }
    }
    fpsManager.delay();
    if ((sdlGetTicks() - time) > 1000) {
      frameRate = frameCount;
      frameCount = 0;
      time = sdlGetTicks();
    } else {
      frameCount++;
    }
    renderer
      ..setDrawColor(0, 0, 0, 0)
      ..clear()
      ..stringColor(
          Point(15, 15), 'FPS:$frameRate', SdlColorEx.rgbaToU32(0, 255, 0, 255))
      ..present();
  }
  event.callocFree();
  fpsManager.callocFree();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
