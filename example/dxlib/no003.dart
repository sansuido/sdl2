// https://dxlib.xsrv.jp/dxprogram.html#N3
// 3.マップ表示基本
// 3.Map display basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const TITLE = 'DXLIB Tutorial 03';
const FPS = 60;
const DELAY_TIME = 1000.0 / FPS;
const SCREEN_WIDTH = 640;
const SCREEN_HEIGHT = 480;

var gWindow;
var gRenderer;
var gMapData = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 0, 1, 1, 1, 1, 1, 1, 0],
    [0, 1, 0, 1, 1, 0, 0, 0, 1, 0],
    [0, 1, 1, 1, 1, 0, 0, 0, 1, 0],
    [0, 1, 0, 1, 0, 0, 0, 0, 1, 0],
    [0, 1, 1, 1, 1, 1, 1, 1, 1, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
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

void render() {
  var rect = calloc<SDL_Rect>();
  // init
  SDL_SetRenderDrawColor(gRenderer, 0xff, 0xff, 0xff, 0xff);
  SDL_RenderClear(gRenderer);
  SDL_SetRenderDrawColor(gRenderer, 0xff, 0x00, 0x00, 0xff);
  for (var y = 0; y < gMapData.length; y++) {
    for (var x = 0; x < gMapData[y].length; x++) {
      if (gMapData[y][x] != 0) {
        rect
            ..ref.x = x * 64
            ..ref.y = y * 64
            ..ref.w = 64
            ..ref.h = 64;
        SDL_RenderFillRect(gRenderer, rect);
      }
      
    }
  }
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