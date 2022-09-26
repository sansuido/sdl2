// https://dxlib.xsrv.jp/dxprogram.html#N3
// 3.マップ表示基本
// 3.Map display basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 03';
const gFps = 60;
const gDelayTime = 1000.0 / gFps;
const gScreenWidth = 640;
const gScreenHeight = 480;

Pointer<SdlWindow>? gWindow;
Pointer<SdlRenderer>? gRenderer;
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
  var rect = calloc<SdlRect>();
  // init
  sdlSetRenderDrawColor(gRenderer!, 0xff, 0xff, 0xff, 0xff);
  sdlRenderClear(gRenderer!);
  sdlSetRenderDrawColor(gRenderer!, 0xff, 0x00, 0x00, 0xff);
  for (var y = 0; y < gMapData.length; y++) {
    for (var x = 0; x < gMapData[y].length; x++) {
      if (gMapData[y][x] != 0) {
        rect
            ..ref.x = x * 64
            ..ref.y = y * 64
            ..ref.w = 64
            ..ref.h = 64;
        sdlRenderFillRect(gRenderer!, rect);
      }
      
    }
  }
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