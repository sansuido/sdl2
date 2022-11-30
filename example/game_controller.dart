import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gScreenWidth = 800;
const gScreenHeight = 600;

int main() {
  if (sdlInit(SDL_INIT_VIDEO | SDL_INIT_GAMECONTROLLER | SDL_INIT_JOYSTICK) !=
      0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
      title: 'GameController',
      w: gScreenWidth,
      h: gScreenHeight,
      flags: SDL_WINDOW_OPENGL);
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
  var gameController = SdlGameControllerEx.open(0);
  if (gameController == nullptr) {
    print(sdlGetError());
    renderer.destroy();
    window.destroy();
    sdlQuit();
    return -1;
  }
  window.setTitle(SdlGameControllerEx.nameForIndex(0)!);
  var buttonNames = [
    'A',
    'B',
    'X',
    'Y',
    'BACK',
    'GUIDE',
    'START',
    'LEFTSTICK',
    'RIGHTSTICK',
    'LEFTSHOULDER',
    'RIGHTSHOULDER',
    'DPAD_UP',
    'DPAD_DOWN',
    'DPAD_LEFT',
    'DPAD_RIGHT',
    'MISC1',
    'PADDLE1',
    'PADDLE2',
    'PADDLE3',
    'PADDLE4',
    'TOUCHPAD',
  ];
  var buttonEnables = <bool>[];
  for (var n = 0; n < SDL_CONTROLLER_BUTTON_MAX; n++) {
    buttonEnables.add(false);
  }
  var event = calloc<SdlEvent>();
  var running = true;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_KEYDOWN:
          if (event.key.keysym.ref.sym == SDLK_ESCAPE) {
            running = false;
            break;
          }
          break;
        case SDL_CONTROLLERBUTTONDOWN:
          buttonEnables[event.cbutton.ref.button] = true;
          break;
        case SDL_CONTROLLERBUTTONUP:
          buttonEnables[event.cbutton.ref.button] = false;
          break;
        default:
          break;
      }
      renderer
        ..setDrawColor(255, 255, 255, SDL_ALPHA_OPAQUE)
        ..clear();
      for (var n = 0; n < buttonEnables.length; n++) {
        var color = SdlColorEx.rgbaToU32(255, 0, 0, SDL_ALPHA_OPAQUE);
        if (buttonEnables[n] == true) {
          color = SdlColorEx.rgbaToU32(0, 255, 0, SDL_ALPHA_OPAQUE);
        }
        renderer
          ..filledCircleColor(Point(20, (n + 1) * 20), 10, color)
          ..stringColor(Point(20 + 20, (n + 1) * 20), buttonNames[n],
              SdlColorEx.rgbaToU32(0, 0, 0, SDL_ALPHA_OPAQUE));
      }
      renderer.present();
    }
  }
  event.callocFree();
  gameController.close();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
