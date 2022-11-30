// https://dxlib.xsrv.jp/dxprogram.html#N2
// 2.ジャンプ処理
// 2.Jump processing
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 02';
const gScreenWidth = 640;
const gScreenHeight = 480;
const gPlayerWidth = 32;
const gPlayerHeight = 32;

Pointer<SdlWindow> gWindow = nullptr;
Pointer<SdlRenderer> gRenderer = nullptr;
var gPlayerX = (gScreenWidth - gPlayerHeight) ~/ 2;
var gPlayerY = (gScreenHeight - gPlayerHeight) ~/ 2;
var gJumpPower = 0;

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
  // init
  gRenderer
    ..setDrawColor(0x00, 0x00, 0x00, SDL_ALPHA_OPAQUE)
    ..clear()
    // player
    ..setDrawColor(0x00, 0xff, 0x00, SDL_ALPHA_OPAQUE)
    ..fillRect(Rectangle(gPlayerX, gPlayerY, gPlayerWidth, gPlayerHeight))
    // term
    ..present();
}

int main() {
  // initialize
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
  // close
  close();
  return 0;
}
