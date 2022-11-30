// https://dxlib.xsrv.jp/dxprogram.html#N1
// 1.キー入力の基本
// 1.Keystroke basics
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 01';
const gScreenWidth = 640;
const gScreenHeight = 480;
const gPlayerWidth = 32;
const gPlayerHeight = 32;

Pointer<SdlWindow> gWindow = nullptr;
Pointer<SdlRenderer> gRenderer = nullptr;
var gPlayerX = (gScreenWidth - gPlayerWidth) ~/ 2;
var gPlayerY = (gScreenHeight - gPlayerHeight) ~/ 2;

bool init() {
  var success = true;
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    success = false;
  } else {
    gWindow = SdlWindowEx.create(
        title: gTitle,
        w: gScreenWidth,
        h: gScreenHeight,
        flags: SDL_WINDOW_SHOWN);
    if (gWindow == nullptr) {
      print(sdlGetError());
      success = false;
    } else {
      gRenderer = gWindow.createRenderer(
          -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
      if (gRenderer == nullptr) {
        success = false;
      }
    }
  }
  return success;
}

void close() {
  gRenderer.destroy();
  gWindow.destroy();
  sdlQuit();
}

int main() {
  // initialize
  if (init()) {
    var quit = false;
    var event = calloc<SdlEvent>();
    while (!quit) {
      while (event.poll() != 0) {
        switch (event.type) {
          case SDL_QUIT:
            quit = true;
            break;
          case SDL_KEYDOWN:
            var keys = sdlGetKeyboardState(nullptr);
            if (keys[SDL_SCANCODE_UP] != 0) {
              gPlayerY -= gPlayerHeight ~/ 2;
            }
            if (keys[SDL_SCANCODE_DOWN] != 0) {
              gPlayerY += gPlayerHeight ~/ 2;
            }
            if (keys[SDL_SCANCODE_LEFT] != 0) {
              gPlayerX -= gPlayerWidth ~/ 2;
            }
            if (keys[SDL_SCANCODE_RIGHT] != 0) {
              gPlayerX += gPlayerWidth ~/ 2;
            }
            break;
          default:
            break;
        }
      }
      // draw
      gRenderer
        ..setDrawColor(0x00, 0x00, 0x00, SDL_ALPHA_OPAQUE)
        ..clear()
        ..setDrawColor(0x00, 0xff, 0x00, SDL_ALPHA_OPAQUE)
        ..fillRect(Rectangle(gPlayerX, gPlayerY, gPlayerWidth, gPlayerHeight))
        ..present();
    }
    event.callocFree();
  }
  // close
  close();
  return 0;
}
