// https://dxlib.xsrv.jp/dxprogram.html#N2
// 2.ジャンプ処理
// 2.Jump processing

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const TITLE = 'DXLIB Tutorial 02';
const FPS = 60;
const DELAY_TIME = 1000.0 / FPS;
const SCREEN_WIDTH = 640;
const SCREEN_HEIGHT = 480;
const PLAYER_WIDTH = 32;
const PLAYER_HEIGHT = 32;
const FONT_PATH = 'res/SourceHanCodeJP.ttc';

var gWindow;
var gRenderer;
var gPlayerX = (SCREEN_WIDTH - PLAYER_HEIGHT) ~/ 2;
var gPlayerY = (SCREEN_HEIGHT - PLAYER_HEIGHT) ~/ 2;
var gJumpPower = 0;

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
      SDL_WINDOW_SHOWN);
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
  var keys = SDL_GetKeyboardState(nullptr);
  if (keys != null) {
    if (keys[SDL_SCANCODE_UP] != 0) {
      gPlayerY -= PLAYER_HEIGHT ~/ 4;
    }
    if (keys[SDL_SCANCODE_DOWN] != 0) {
      gPlayerY += PLAYER_HEIGHT ~/ 4;
    }
    if (keys[SDL_SCANCODE_LEFT] != 0) {
      gPlayerX -= PLAYER_WIDTH ~/ 4;
    }
    if (keys[SDL_SCANCODE_RIGHT] != 0) {
      gPlayerX += PLAYER_WIDTH ~/ 4;
    }
    if (keys[SDL_SCANCODE_SPACE] != 0) {
      if (gPlayerY == 300) {
        gJumpPower = 20;
      }
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
  // init
  SDL_SetRenderDrawColor(gRenderer, 0x00, 0x00, 0x00, 0xff);
  SDL_RenderClear(gRenderer);
  // player
  var playerRect = calloc<SDL_Rect>();
  SDL_SetRenderDrawColor(gRenderer, 0x00, 0xff, 0x00, 0xff);
  playerRect
    ..ref.x = gPlayerX
    ..ref.y = gPlayerY
    ..ref.w = PLAYER_WIDTH
    ..ref.h = PLAYER_HEIGHT;
  SDL_RenderFillRect(gRenderer, playerRect);
  calloc.free(playerRect);
  // term
  SDL_RenderPresent(gRenderer);
}

int main() {
  // initialize
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
  // close
  close();
  return 0;
}
