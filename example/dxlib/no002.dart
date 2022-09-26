// https://dxlib.xsrv.jp/dxprogram.html#N2
// 2.ジャンプ処理
// 2.Jump processing

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 02';
const gFps = 60;
const gDelayTime = 1000.0 / gFps;
const gScreenWidth = 640;
const gScreenHeight = 480;
const gPlayerWidth = 32;
const gPlayerHeight = 32;

Pointer<SdlWindow>? gWindow;
Pointer<SdlRenderer>? gRenderer;
var gPlayerX = (gScreenWidth - gPlayerHeight) ~/ 2;
var gPlayerY = (gScreenHeight - gPlayerHeight) ~/ 2;
var gJumpPower = 0;

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
      SDL_WINDOW_SHOWN);
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
  var keys = sdlGetKeyboardState(nullptr);
  if (keys[SDL_SCANCODE_UP] != 0) {
    gPlayerY -= gPlayerHeight ~/ 4;
  }
  if (keys[SDL_SCANCODE_DOWN] != 0) {
    gPlayerY += gPlayerHeight ~/ 4;
  }
  if (keys[SDL_SCANCODE_LEFT] != 0) {
    gPlayerX -= gPlayerWidth ~/ 4;
  }
  if (keys[SDL_SCANCODE_RIGHT] != 0) {
    gPlayerX += gPlayerWidth ~/ 4;
  }
  if (keys[SDL_SCANCODE_SPACE] != 0) {
    if (gPlayerY == 300) {
      gJumpPower = 20;
    }
  }
  gPlayerY -= gJumpPower;
  gJumpPower -= 1;
  if (gPlayerY > 300) {
    gPlayerY = 300;
    gJumpPower = 0;
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
  // init
  sdlSetRenderDrawColor(gRenderer!, 0x00, 0x00, 0x00, 0xff);
  sdlRenderClear(gRenderer!);
  // player
  var playerRect = calloc<SdlRect>();
  sdlSetRenderDrawColor(gRenderer!, 0x00, 0xff, 0x00, 0xff);
  playerRect
    ..ref.x = gPlayerX
    ..ref.y = gPlayerY
    ..ref.w = gPlayerWidth
    ..ref.h = gPlayerHeight;
  sdlRenderFillRect(gRenderer!, playerRect);
  calloc.free(playerRect);
  // term
  sdlRenderPresent(gRenderer!);
}

int main() {
  // initialize
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
  // close
  close();
  return 0;
}
