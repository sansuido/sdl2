import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';
import 'package:sdl2/sdl2gfx.dart' as gfx;

const gScreenWidth = 800;
const gScreenHeight = 600;

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
      title: 'enclose',
      w: gScreenWidth,
      h: gScreenHeight,
      flags: SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE);
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
  var fpsManager = gfx.FpsManager();
  var event = calloc<SdlEvent>();
  List<Point<double>> clickPoints = [];
  var running = true;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_KEYDOWN:
          switch (event.key.keysym.ref.sym) {
            case SDLK_ESCAPE:
              running = false;
              break;
          }
          break;
        case SDL_MOUSEBUTTONDOWN:
          switch (event.button.ref.button) {
            case SDL_BUTTON_LEFT:
              clickPoints.add(PointEx.getMousePosition());
              break;
            case SDL_BUTTON_RIGHT:
              if (clickPoints.isNotEmpty) {
                clickPoints.removeLast();
              }
              break;
            default:
              break;
          }
          break;
        default:
          break;
      }
    }
    var marge = 64;
    var clip = Rectangle<double>(marge.toDouble(), marge.toDouble(),
        window.getSize().x - marge * 2, window.getSize().y - marge * 2);
    renderer
      ..setDrawColor(0, 0, 0, 0)
      ..clear()
      ..boxColor(clip, SdlColorEx.rgbaToU32(0, 0, 255, 64));
    var rect = clickPoints.getEncloseRect(clip: clip);
    if (rect != null) {
      renderer.rectangleColor(rect, SdlColorEx.rgbaToU32(255, 255, 255, 255));
    }
    for (var n = 0; n < clickPoints.length; n++) {
      renderer.stringColor(clickPoints[n], (n + 1).toString(),
          SdlColorEx.rgbaToU32(0, 255, 0, 255));
    }
    renderer.present();
    fpsManager.delay();
  }
  gfx.gfxFree();
  event.callocFree();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
