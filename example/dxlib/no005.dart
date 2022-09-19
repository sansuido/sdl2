// https://dxlib.xsrv.jp/dxprogram.html#N5
// 5.シューティング基本
// 5.Shooting basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

import './dxlib.dart' as dxlib;

const gTitle = 'DXLIB Tutorial 05';
const gFps = 60;
const gDelayTime = 1000.0 / gFps;
const gScreenWidth = 640;
const gScreenHeight = 480;
const gMaxShot = 4;

Pointer<SdlWindow>? gWindow;
Pointer<SdlRenderer>? gRenderer;
var gPlayer = Position();
var gShotList = <Position>[];

class Position {
  int x = 0;
  int y = 0;
}

bool init() {
  if (sdlInit(SDL_INIT_VIDEO) < 0) {
    print(sdlGetError());
    return false;
  }
  gWindow = sdlCreateWindow(
    gTitle,
    SDL_WINDOWPOS_UNDEFINED,
    SDL_WINDOWPOS_UNDEFINED,
    gScreenWidth,
    gScreenHeight,
    SDL_WINDOW_SHOWN
  );
  if (gWindow == nullptr) {
    print(sdlGetError());
    return false;
  }
  gRenderer = sdlCreateRenderer(gWindow, -1, SDL_RENDERER_ACCELERATED);
  if (gRenderer == nullptr) {
    print(sdlGetError());
    return false;
  }
  gPlayer.x = 320;
  gPlayer.y = 400;
  return true;
}

void close() {
  if (gRenderer != nullptr) {
    sdlDestroyRenderer(gRenderer);
    gRenderer = nullptr;
  }
  if (gWindow != nullptr) {
    sdlDestroyWindow(gWindow);
    gWindow = nullptr;
  }
  sdlQuit();
}

void update() {
  var keys = sdlGetKeyboardState(nullptr);
  if (keys != null) {
    if (keys[SDL_SCANCODE_LEFT] != 0) {
      gPlayer.x -= 3;
    }
    if (keys[SDL_SCANCODE_RIGHT] != 0) {
      gPlayer.x += 3;
    }
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
  if (keys != null) {
    if (keys[SDL_SCANCODE_Z] != 0 && gShotList.length < gMaxShot) {
      gShotList.add(Position()..x = gPlayer.x ..y = gPlayer.y);
    }
  }
}


bool handleEvents() {
  var quit = false;
  var e = calloc<SdlEvent>();
  while (sdlPollEvent(e) != 0) {
    switch (e.type) {
      case SDL_QUIT:
        quit = true;
        break;
      default:
        break;
    }
  }
  calloc.free(e);
  return quit;
}

void renderer() {
  sdlSetRenderDrawColor(gRenderer, 0x00, 0x00, 0x00, 0xff);
  sdlRenderClear(gRenderer);
  // draw player
  dxlib.drawBox(gRenderer, gPlayer.x, gPlayer.y, gPlayer.x + 48, gPlayer.y + 48, dxlib.getColor(red: 255, green: 0, blue: 0), fillFlag: true);
  for (var i = 0; i < gShotList.length; i++) {
    var shot = gShotList[i];
    dxlib.drawBox(gRenderer, shot.x, shot.y, shot.x + 16, shot.y + 16, dxlib.getColor(red: 255, green: 255, blue: 255));
  }
  sdlRenderPresent(gRenderer);
}

int main() {
  if (init()) {
    var quit = false;
    while (!quit) {
      // frameStart
      var frameStart = sdlGetTicks();
      // update
      update();
      // handleEvents
      quit = handleEvents();
      // renderer
      renderer();
      // frameEnd
      var frameTime = sdlGetTicks() - frameStart;
      if (frameTime < gDelayTime) {
        sdlDelay((gDelayTime - frameTime).toInt());
      } else {
        sdlDelay(gDelayTime.toInt());
      }
    }
  }
  close();
  return 0;
}