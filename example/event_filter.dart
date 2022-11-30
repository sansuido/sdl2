// https://wiki.libsdl.org/SDL_SetEventFilter
// Just a quick warning: this is a silly way to do things, but it
//  illustrates how event filters work. In real life, you'd just
//  handle the event when you get it from SDL_PollEvent in the main
//  loop. Generally if you find yourself using an event filter, you
//  should stop and think carefully about whether you have a good
//  reason to be doing so in the first place.

// This is the function we'll pass to SDL_SetEventFilter. If it sees
// that the user has pressed the keyboard's space bar, it toggles
// the value pointed to by `userdata`, to represent the color blue,
// between 255 and 0. The main program uses this value to clear the
// window to a specific color as the space bar is pressed.

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int myEventFilter(Pointer<Uint8> blue, Pointer<SdlEvent> event) {
  switch (event.type) {
    case SDL_KEYDOWN:
      switch (event.key.keysym.ref.sym) {
        case SDLK_SPACE:
          if (blue.value == 0) {
            blue.value = 255;
          } else {
            blue.value = 0;
          }
          break;
      }
      break;
  }
  return 1;
}

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var window = SdlWindowEx.create(
    title: 'Hello SDL',
    w: 640,
    h: 480,
  );
  if (window == nullptr) {
    print(sdlGetError());
    sdlQuit();
    return -1;
  }
  var renderer = window.createRenderer(-1, SDL_RENDERER_PRESENTVSYNC);
  if (renderer == nullptr) {
    print(sdlGetError());
    window.destroy();
    sdlQuit();
    return -1;
  }
  var blue = calloc<Uint8>();
  sdlSetEventFilter(Pointer.fromFunction(myEventFilter, 0), blue);
  var event = calloc<SdlEvent>();
  var quit = false;
  while (!quit) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          quit = true;
          break;
        default:
          break;
      }
      renderer
        ..setDrawColor(0, 0, blue.value, SDL_ALPHA_OPAQUE)
        ..clear()
        ..present();
    }
  }
  blue.callocFree();
  event.callocFree();
  renderer.destroy();
  window.destroy();
  sdlQuit();
  return 0;
}
