// https://dxlib.xsrv.jp/dxprogram.html#N5
// 5.シューティング基本
// 5.Shooting basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

import './dxlib.dart' as dxlib;

const TITLE = 'DXLIB Tutorial 05';
const FPS = 60;
const DELAY_TIME = 1000.0 / FPS;
const SCREEN_WIDTH = 640;
const SCREEN_HEIGHT = 480;
const MAX_SHOT = 4;

var gWindow;
var gRenderer;
var gPlayer = Position();
var gShotList = <Position>[];

class Position {
  int x = 0;
  int y = 0;
}

bool init() {
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    print('${SDL_GetError()}');
    return false;
  }
  gWindow = SDL_CreateWindow(
    TITLE,
    SDL_WINDOWPOS_UNDEFINED,
    SDL_WINDOWPOS_UNDEFINED,
    SCREEN_WIDTH,
    SCREEN_HEIGHT,
    SDL_WINDOW_SHOWN
  );
  if (gWindow == nullptr) {
    print('${SDL_GetError()}');
    return false;
  }
  gRenderer = SDL_CreateRenderer(gWindow, -1, SDL_RENDERER_ACCELERATED);
  if (gRenderer == nullptr) {
    print('${SDL_GetError()}');
    return false;
  }
  gPlayer.x = 320;
  gPlayer.y = 400;
  return true;
}

void close() {
  if (gRenderer != nullptr) {
    SDL_DestroyRenderer(gRenderer);
    gRenderer = nullptr;
  }
  if (gWindow != nullptr) {
    SDL_DestroyWindow(gWindow);
    gWindow = nullptr;
  }
  SDL_Quit();
}

void update() {
  var keys = SDL_GetKeyboardState(nullptr);
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
    if (keys[SDL_SCANCODE_Z] != 0 && gShotList.length < MAX_SHOT) {
      gShotList.add(Position()..x = gPlayer.x ..y = gPlayer.y);
    }
  }
}


bool handleEvents() {
  var quit = false;
  var e = calloc<SDL_Event>();
  while (SDL_PollEvent(e) != 0) {
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
  SDL_SetRenderDrawColor(gRenderer, 0x00, 0x00, 0x00, 0xff);
  SDL_RenderClear(gRenderer);
  // draw player
  dxlib.drawBox(gRenderer, gPlayer.x, gPlayer.y, gPlayer.x + 48, gPlayer.y + 48, dxlib.getColor(red: 255, green: 0, blue: 0), fillFlag: true);
  for (var i = 0; i < gShotList.length; i++) {
    var shot = gShotList[i];
    dxlib.drawBox(gRenderer, shot.x, shot.y, shot.x + 16, shot.y + 16, dxlib.getColor(red: 255, green: 255, blue: 255));
  }
  SDL_RenderPresent(gRenderer);
}

int main() {
  if (init()) {
    var quit = false;
    while (!quit) {
      // frameStart
      var frameStart = SDL_GetTicks();
      // update
      update();
      // handleEvents
      quit = handleEvents();
      // renderer
      renderer();
      // frameEnd
      var frameTime = SDL_GetTicks() - frameStart;
      if (frameTime < DELAY_TIME) {
        SDL_Delay((DELAY_TIME - frameTime).toInt());
      } else {
        SDL_Delay(DELAY_TIME.toInt());
      }
    }
  }
  close();
  return 0;
}