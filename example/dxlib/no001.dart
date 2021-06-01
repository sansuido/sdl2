// https://dxlib.xsrv.jp/dxprogram.html#N1
// 1.キー入力の基本
// 1.Keystroke basics

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const TITLE = 'DXLIB Tutorial 01';
const SCREEN_WIDTH = 640;
const SCREEN_HEIGHT = 480;
const PLAYER_WIDTH = 32;
const PLAYER_HEIGHT = 32;

var window;
var renderer;
var playerX = (SCREEN_WIDTH - PLAYER_WIDTH) ~/ 2;
var playerY = (SCREEN_HEIGHT - PLAYER_HEIGHT) ~/ 2;

bool init() {
  var success = true;
  if (SDL_Init(SDL_INIT_VIDEO)! < 0) {
    print('${SDL_GetError()}');
    success = false;
  } else {
    window = SDL_CreateWindow(
        TITLE,
        SDL_WINDOWPOS_UNDEFINED,
        SDL_WINDOWPOS_UNDEFINED,
        SCREEN_WIDTH,
        SCREEN_HEIGHT,
        SDL_WINDOW_SHOWN);
    if (window == nullptr) {
      print('${SDL_GetError()}');
      success = false;
    } else {
      renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
      if (renderer == nullptr) {
        success = false;
      }
    }
  }
  return success;
}

void close() {
  if (renderer != nullptr) {
    SDL_DestroyRenderer(renderer);
    renderer = nullptr;
  }
  if (window != nullptr) {
    SDL_DestroyWindow(window);
    window = nullptr;
  }
  SDL_Quit();
}

int main() {
  // initialize
  if (init()) {
    var quit = false;
    var e = calloc<SDL_Event>();
    while (!quit) {
      while (SDL_PollEvent(e) != 0) {
        switch (e.ref.type) {
          case SDL_QUIT:
            quit = true;
            break;
          case SDL_KEYDOWN:
            var keys = SDL_GetKeyboardState(nullptr);
            if (keys != null) {
              if (keys[SDL_SCANCODE_UP] != 0) {
                playerY -= PLAYER_HEIGHT ~/ 2;
              }
              if (keys[SDL_SCANCODE_DOWN] != 0) {
                playerY += PLAYER_HEIGHT ~/ 2;
              }
              if (keys[SDL_SCANCODE_LEFT] != 0) {
                playerX -= PLAYER_WIDTH ~/ 2;
              }
              if (keys[SDL_SCANCODE_RIGHT] != 0) {
                playerX += PLAYER_WIDTH ~/ 2;
              }
            }
            break;
          default:
            break;
        }
      }
      // draw
      SDL_SetRenderDrawColor(renderer, 0x00, 0x00, 0x00, 0xff);
      SDL_RenderClear(renderer);
      SDL_SetRenderDrawColor(renderer, 0x00, 0xff, 0x00, 0xff);
      var playerRect = calloc<SDL_Rect>();
      playerRect
        ..ref.x = playerX
        ..ref.y = playerY
        ..ref.w = PLAYER_WIDTH
        ..ref.h = PLAYER_HEIGHT;
      SDL_RenderFillRect(renderer, playerRect);
      SDL_RenderPresent(renderer);
      calloc.free(playerRect);
    }
    calloc.free(e);
  }
  // close
  close();
  return 0;
}
