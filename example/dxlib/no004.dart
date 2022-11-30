// https://dxlib.xsrv.jp/dxprogram.html#N4
// 4.マップスクロール基本
// 4.Map scroll basics
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 04';
const gScreenWidth = 640;
const gScreenHeight = 480;
const gMapSize = 64;
const gMoveFrame = 32 ~/ 4;

Pointer<SdlWindow> gWindow = nullptr;
Pointer<SdlRenderer> gRenderer = nullptr;
var gPlayerX = 2;
var gPlayerY = 2;
var gMoveX = 0, gMoveY = 0;
var gMove = 0;
var gMoveCounter = 0;
var gScrollX = 0, gScrollY = 0;
var gMapData = [
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
  [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0],
  [0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0],
  [0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0],
  [0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0],
  [0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0],
  [0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
  [0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
];

bool init() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return false;
  }
  gWindow = SdlWindowEx.create(
      title: gTitle,
      w: gScreenWidth,
      h: gScreenHeight,
      flags: SDL_WINDOW_SHOWN);
  if (gWindow == nullptr) {
    print(sdlGetError());
    return false;
  }
  gRenderer = gWindow.createRenderer(
      -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (gRenderer == nullptr) {
    print(sdlGetError());
    return false;
  }
  return true;
}

void close() {
  gRenderer.destroy();
  gWindow.destroy();
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
  var event = calloc<SdlEvent>();
  while (event.poll() != 0) {
    switch (event.type) {
      case SDL_QUIT:
        quit = true;
        break;
      default:
        break;
    }
  }
  event.callocFree();
  return quit;
}

void render() {
  // calc
  var drawMapChipNumX = gScreenWidth ~/ gMapSize + 1;
  var drawMapChipNumY = gScreenHeight ~/ gMapSize + 1;
  var mapDrawPointX = gPlayerX - drawMapChipNumX ~/ 2;
  var mapDrawPointY = gPlayerY - drawMapChipNumY ~/ 2;
  // init
  gRenderer
    ..setDrawColor(0x00, 0x00, 0x00, SDL_ALPHA_OPAQUE)
    ..clear()
    // map
    ..setDrawColor(0xff, 0x00, 0x00, SDL_ALPHA_OPAQUE);
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
        gRenderer.fillRect(Rectangle(x * gMapSize + gScrollX,
            y * gMapSize + gScrollY, gMapSize, gMapSize));
      }
    }
  }
  // player
  gRenderer
    ..setDrawColor(0xff, 0xff, 0xff, 0xff)
    ..fillRect(Rectangle((gPlayerX - mapDrawPointX) * gMapSize,
        (gPlayerY - mapDrawPointY) * gMapSize, gMapSize, gMapSize))
    // term
    ..present();
}

int main() {
  if (init()) {
    var quit = false;
    while (!quit) {
      // update
      update();
      // handleEvents
      quit = handleEvents();
      // render
      render();
    }
  }
  close();
  return 0;
}
