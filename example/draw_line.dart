// https://wiki.libsdl.org/SDL_RenderDrawLine
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_VIDEO) == 0) {
    var window = calloc<Pointer<SdlWindow>>();
    var renderer = calloc<Pointer<SdlRenderer>>();
    if (sdlCreateWindowAndRenderer(640, 480, 0, window, renderer) == 0) {
      var done = SDL_FALSE;
      while (done == SDL_FALSE) {
        var event = calloc<SdlEvent>();
        sdlSetRenderDrawColor(renderer.value, 0, 0, 0, SDL_ALPHA_OPAQUE);
        sdlRenderClear(renderer.value);
        sdlSetRenderDrawColor(renderer.value, 255, 255, 255, SDL_ALPHA_OPAQUE);
        sdlRenderDrawLine(renderer.value, 320, 200, 300, 240);
        sdlRenderDrawLine(renderer.value, 300, 240, 340, 240);
        sdlRenderDrawLine(renderer.value, 340, 240, 320, 200);
        sdlRenderPresent(renderer.value);
        while (sdlPollEvent(event) != 0) {
          if (event.type == SDL_QUIT) {
            done = SDL_TRUE;
          }
        }
        calloc.free(event);
      }
      sdlDestroyRenderer(renderer.value);
      sdlDestroyWindow(window.value);
    } else {}
    calloc.free(window);
    calloc.free(renderer);
    sdlQuit();
  }
  return 0;
}
