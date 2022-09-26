// https://dxlib.xsrv.jp/dxprogram.html#N4
// 4.マップスクロール基本
// 4.Map scroll basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 04';
const gFps = 60;
const gDelayTime = 1000.0 / gFps;
const gScreenWidth = 640;
const gScreenHeight = 480;
const gMapSize = 64;
const gMoveFrame = 32 ~/ 4;

Pointer<SdlWindow>? gWindow;
Pointer<SdlRenderer>? gRenderer;
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
  gRenderer = sdlCreateRenderer(gWindow!, -1, SDL_RENDERER_ACCELERATED);
  if (gRenderer == nullptr) {
    print(sdlGetError());
    return false;
  }
  return true;
}

void close() {
  if (gRenderer != nullptr) {
    sdlDestroyRenderer(gRenderer!);
    gRenderer = nullptr;
  }
  if (gWindow != nullptr) {
    sdlDestroyWindow(gWindow!);
    gWindow = nullptr;
  }
  sdlQuit();
}

void update() {
  if (gMove == 0) {
    var keys = sdlGetKeyboardState(nullptr);
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
    if (gMoveCounter == gMoveFrame) {
      gMove = 0;
      gPlayerX += gMoveX;
      gPlayerY += gMoveY;
      gScrollX = 0;
      gScrollY = 0;
    } else {
      gScrollX = -(gMoveX * gMapSize * gMoveCounter ~/ gMoveFrame);
      gScrollY = -(gMoveY * gMapSize * gMoveCounter ~/ gMoveFrame);
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

void render() {
  //var mapDrawPointX = null;
  //var mapDrawPointY = null;
  //var drawMapChipNumX = null;
  //var drawMapChipNumY = null;
  var rect = calloc<SdlRect>();
  // calc
  var drawMapChipNumX = gScreenWidth ~/ gMapSize + 1;
  var drawMapChipNumY = gScreenHeight ~/ gMapSize + 1;
  var mapDrawPointX = gPlayerX - drawMapChipNumX ~/ 2;
  var mapDrawPointY = gPlayerY - drawMapChipNumY ~/ 2;
  // init
  sdlSetRenderDrawColor(gRenderer!, 0x00, 0x00, 0x00, 0xff);
  sdlRenderClear(gRenderer!);
  // map
  sdlSetRenderDrawColor(gRenderer!, 0xff, 0x00, 0x00, 0xff);
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
            ..ref.x = x * gMapSize + gScrollX
            ..ref.y = y * gMapSize + gScrollY
            ..ref.w = gMapSize
            ..ref.h = gMapSize;
        sdlRenderFillRect(gRenderer!, rect);
      }
    }
  }
  // player
  sdlSetRenderDrawColor(gRenderer!, 0xff, 0xff, 0xff, 0xff);
  rect
      ..ref.x = ((gPlayerX - mapDrawPointX) * gMapSize)
      ..ref.y = ((gPlayerY - mapDrawPointY) * gMapSize)
      ..ref.w = gMapSize
      ..ref.h = gMapSize;
  sdlRenderFillRect(gRenderer!, rect);
  calloc.free(rect);
  // term
  sdlRenderPresent(gRenderer!);
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
      // render
      render();
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