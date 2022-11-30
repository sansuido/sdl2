// https://dxlib.xsrv.jp/dxprogram.html#N5
// 5.シューティング基本
// 5.Shooting basics
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 05';
const gScreenWidth = 640;
const gScreenHeight = 480;
const gMaxShot = 4;

Pointer<SdlWindow> gWindow = nullptr;
Pointer<SdlRenderer> gRenderer = nullptr;
var gPlayer = Position();
var gShotList = <Position>[];

class Position {
  int x = 0;
  int y = 0;
}

bool init() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return false;
  }
  gWindow = SdlWindowEx.create(
      title: gTitle,
      w: gScreenWidth,
      h: gScreenHeight,
      flags: SDL_WINDOW_SHOWN);
  if (gWindow == nullptr) {
    print(sdlGetError());
    return false;
  }
  gRenderer = gWindow.createRenderer(
      -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (gRenderer == nullptr) {
    print(sdlGetError());
    return false;
  }
  gPlayer.x = 320;
  gPlayer.y = 400;
  return true;
}

void close() {
  gRenderer.destroy();
  gWindow.destroy();
  sdlQuit();
}

void update() {
  var keys = sdlGetKeyboardState(nullptr);
  if (keys[SDL_SCANCODE_LEFT] != 0) {
    gPlayer.x -= 3;
  }
  if (keys[SDL_SCANCODE_RIGHT] != 0) {
    gPlayer.x += 3;
  }
  var index = 0;
  while (index < gShotList.length) {
    gShotList[index].y -= 8;
    if (gShotList[index].y < -32) {
      gShotList.removeAt(index);
    } else {
      index++;
    }
  }
  if (keys[SDL_SCANCODE_Z] != 0 && gShotList.length < gMaxShot) {
    gShotList.add(Position()
      ..x = gPlayer.x
      ..y = gPlayer.y);
  }
}

bool handleEvents() {
  var quit = false;
  var event = calloc<SdlEvent>();
  while (event.poll() != 0) {
    switch (event.type) {
      case SDL_QUIT:
        quit = true;
        break;
      default:
        break;
    }
  }
  event.callocFree();
  return quit;
}

void renderer() {
  // init
  gRenderer
    ..setDrawColor(0x00, 0x00, 0x00, SDL_ALPHA_OPAQUE)
    ..clear()
    // draw player
    ..setDrawColor(0xff, 0x00, 0x00, SDL_ALPHA_OPAQUE)
    ..fillRect(Rectangle(gPlayer.x - 24, gPlayer.y - 24, 48, 48))
    // shot
    ..setDrawColor(0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE);
  for (var shot in gShotList) {
    gRenderer.fillRect(Rectangle(shot.x - 8, shot.y - 8, 16, 16));
  }
  // term
  gRenderer.present();
}

int main() {
  if (init()) {
    var quit = false;
    while (!quit) {
      // update
      update();
      // handleEvents
      quit = handleEvents();
      // renderer
      renderer();
    }
  }
  close();
  return 0;
}
