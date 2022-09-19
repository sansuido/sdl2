// https://dxlib.xsrv.jp/dxprogram.html#N1
// 1.キー入力の基本
// 1.Keystroke basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 01';
const gScreenWidth = 640;
const gScreenHeight = 480;
const gPlayerWidth = 32;
const gPlayerHeight = 32;

Pointer<SdlWindow>? window;
Pointer<SdlRenderer>? renderer;
var playerX = (gScreenWidth - gPlayerWidth) ~/ 2;
var playerY = (gScreenHeight - gPlayerHeight) ~/ 2;

bool init() {
  var success = true;
  if (sdlInit(SDL_INIT_VIDEO) < 0) {
    print(sdlGetError());
    success = false;
  } else {
    window = sdlCreateWindow(
        gTitle,
        SDL_WINDOWPOS_UNDEFINED,
        SDL_WINDOWPOS_UNDEFINED,
        gScreenWidth,
        gScreenHeight,
        SDL_WINDOW_SHOWN);
    if (window == nullptr) {
      print(sdlGetError());
      success = false;
    } else {
      renderer = sdlCreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
      if (renderer == nullptr) {
        success = false;
      }
    }
  }
  return success;
}

void close() {
  if (renderer != nullptr) {
    sdlDestroyRenderer(renderer);
    renderer = nullptr;
  }
  if (window != nullptr) {
    sdlDestroyWindow(window);
    window = nullptr;
  }
  sdlQuit();
}

int main() {
  // initialize
  if (init()) {
    var quit = false;
    var e = calloc<SdlEvent>();
    while (!quit) {
      while (sdlPollEvent(e) != 0) {
        switch (e.type) {
          case SDL_QUIT:
            quit = true;
            break;
          case SDL_KEYDOWN:
            var keys = sdlGetKeyboardState(nullptr);
            if (keys != null) {
              if (keys[SDL_SCANCODE_UP] != 0) {
                playerY -= gPlayerHeight ~/ 2;
              }
              if (keys[SDL_SCANCODE_DOWN] != 0) {
                playerY += gPlayerHeight ~/ 2;
              }
              if (keys[SDL_SCANCODE_LEFT] != 0) {
                playerX -= gPlayerWidth ~/ 2;
              }
              if (keys[SDL_SCANCODE_RIGHT] != 0) {
                playerX += gPlayerWidth ~/ 2;
              }
            }
            break;
          default:
            break;
        }
      }
      // draw
      sdlSetRenderDrawColor(renderer, 0x00, 0x00, 0x00, 0xff);
      sdlRenderClear(renderer);
      sdlSetRenderDrawColor(renderer, 0x00, 0xff, 0x00, 0xff);
      var playerRect = calloc<SdlRect>();
      playerRect
        ..ref.x = playerX
        ..ref.y = playerY
        ..ref.w = gPlayerWidth
        ..ref.h = gPlayerHeight;
      sdlRenderFillRect(renderer, playerRect);
      sdlRenderPresent(renderer);
      calloc.free(playerRect);
    }
    calloc.free(e);
  }
  // close
  close();
  return 0;
}
