// https://dxlib.xsrv.jp/dxprogram.html#N4
// 4.マップスクロール基本
// 4.Map scroll basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const TITLE = 'DXLIB Tutorial 04';
const FPS = 60;
const DELAY_TIME = 1000.0 / FPS;
const SCREEN_WIDTH = 640;
const SCREEN_HEIGHT = 480;
const MAP_SIZE = 64;
const MOVE_FRAME = 32 ~/ 4;

var gWindow;
var gRenderer;
var gPlayerX = 2;
var gPlayerY = 2;
var gMoveX = 0, gMoveY = 0;
var gMove = 0;
var gMoveCounter = 0;
var gScrollX = 0, gScrollY = 0;
var gMapData = [
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 1, 0, 0, 0, 0, 0, 0, 0 ,  1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
	[0, 0, 1, 1, 1, 0, 0, 0, 0, 0 ,  1, 0, 0, 0, 0, 0, 0, 0, 1, 0],
	[0, 0, 1, 0, 1, 0, 0, 0, 0, 0 ,  1, 1, 1, 1, 1, 1, 0, 0, 1, 0],
	[0, 1, 1, 0, 1, 0, 0, 1, 1, 0 ,  0, 0, 0, 0, 0, 1, 0, 0, 1, 0],
	[0, 1, 0, 0, 1, 0, 0, 1, 1, 0 ,  0, 0, 1, 1, 1, 1, 1, 0, 1, 0],
	[0, 1, 0, 0, 1, 0, 0, 1, 1, 0 ,  0, 0, 1, 0, 0, 1, 1, 0, 1, 0],
	[0, 1, 0, 0, 1, 0, 0, 1, 1, 0 ,  0, 0, 1, 0, 0, 1, 1, 0, 1, 0],

	[0, 1, 1, 1, 1, 1, 1, 1, 1, 0 ,  0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
	[0, 0, 0, 0, 1, 0, 0, 1, 0, 0 ,  0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
	[0, 0, 0, 0, 1, 0, 0, 1, 0, 0 ,  0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
	[0, 0, 0, 1, 1, 0, 0, 1, 0, 0 ,  0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
	[0, 1, 1, 1, 1, 0, 0, 1, 1, 1 ,  1, 1, 1, 0, 0, 1, 1, 0, 1, 0],
	[0, 1, 1, 1, 1, 0, 0, 0, 0, 0 ,  0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
	[0, 1, 1, 1, 1, 0, 0, 0, 0, 0 ,  0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
];

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
  if (gMove == 0) {
    var keys = SDL_GetKeyboardState(nullptr);
    if (keys[SDL_SCANCODE_UP] != 0) {
      gMove = 1;
      gMoveX = 0;
      gMoveY = -1;
    }
    if (keys[SDL_SCANCODE_DOWN] != 0) {
      gMove = 1;
      gMoveX = 0;
      gMoveY = 1;
    }
    if (keys[SDL_SCANCODE_LEFT] != 0) {
      gMove = 1;
      gMoveX = -1;
      gMoveY = 0;
    }
    if (keys[SDL_SCANCODE_RIGHT] != 0) {
      gMove = 1;
      gMoveX = 1;
      gMoveY = 0;
    }
    if (gMove == 1) {
      if (gMapData[gPlayerY + gMoveY][gPlayerX + gMoveX] == 0) {
          gMove = 0;
      } else {
        gMoveCounter = 0;
      }
    }
    gScrollX = 0;
    gScrollY = 0;
  }
  if (gMove == 1) {
    gMoveCounter++;
    if (gMoveCounter == MOVE_FRAME) {
      gMove = 0;
      gPlayerX += gMoveX;
      gPlayerY += gMoveY;
      gScrollX = 0;
      gScrollY = 0;
    } else {
      gScrollX = -(gMoveX * MAP_SIZE * gMoveCounter ~/ MOVE_FRAME);
      gScrollY = -(gMoveY * MAP_SIZE * gMoveCounter ~/ MOVE_FRAME);
    }
  }
}

bool handleEvents() {
  var quit = false;
  var e = calloc<SDL_Event>();
  while (SDL_PollEvent(e) != 0) {
    switch (e.ref.type) {
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

void render() {
  var mapDrawPointX;
  var mapDrawPointY;
  var drawMapChipNumX;
  var drawMapChipNumY;
  var rect = calloc<SDL_Rect>();
  // calc
  drawMapChipNumX = SCREEN_WIDTH ~/ MAP_SIZE + 1;
  drawMapChipNumY = SCREEN_HEIGHT ~/ MAP_SIZE + 1;
  mapDrawPointX = gPlayerX - drawMapChipNumX ~/ 2;
  mapDrawPointY = gPlayerY - drawMapChipNumY ~/ 2;
  // init
  SDL_SetRenderDrawColor(gRenderer, 0x00, 0x00, 0x00, 0xff);
  SDL_RenderClear(gRenderer);
  // map
  SDL_SetRenderDrawColor(gRenderer, 0xff, 0x00, 0x00, 0xff);
  for (var y = 0; y < gMapData.length; y++) {
    var drawY = y + mapDrawPointY;
    if (drawY < 0 || drawY >= gMapData.length) {
      continue;
    }
    for (var x = 0; x < gMapData[y].length; x++) {
      var drawX = x + mapDrawPointX;
      if (drawX < 0 || drawX >= gMapData[y].length) {
        continue;
      }
      if (gMapData[drawY][drawX] == 0) {
        rect
            ..ref.x = x * MAP_SIZE + gScrollX
            ..ref.y = y * MAP_SIZE + gScrollY
            ..ref.w = MAP_SIZE
            ..ref.h = MAP_SIZE;
        SDL_RenderFillRect(gRenderer, rect);
      }
    }
  }
  // player
  SDL_SetRenderDrawColor(gRenderer, 0xff, 0xff, 0xff, 0xff);
  rect
      ..ref.x = (gPlayerX - mapDrawPointX) * MAP_SIZE
      ..ref.y = (gPlayerY - mapDrawPointY) * MAP_SIZE
      ..ref.w = MAP_SIZE
      ..ref.h = MAP_SIZE;
  SDL_RenderFillRect(gRenderer, rect);
  calloc.free(rect);
  // term
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
      // render
      render();
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