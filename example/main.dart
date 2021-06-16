// https://wiki.libsdl.org/SDL_RenderDrawLine
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (SDL_Init(SDL_INIT_VIDEO) == 0) {
    var window = calloc<Pointer<SDL_Window>>();
    var renderer = calloc<Pointer<SDL_Renderer>>();
    if (SDL_CreateWindowAndRenderer(640, 480, 0, window, renderer) == 0) {
      var done = SDL_FALSE;
      while (done == SDL_FALSE) {
        var event = calloc<SDL_Event>();
        SDL_SetRenderDrawColor(renderer.value, 0, 0, 0, SDL_ALPHA_OPAQUE);
        SDL_RenderClear(renderer.value);
        SDL_SetRenderDrawColor(renderer.value, 255, 255, 255, SDL_ALPHA_OPAQUE);
        SDL_RenderDrawLine(renderer.value, 320, 200, 300, 240);
        SDL_RenderDrawLine(renderer.value, 300, 240, 340, 240);
        SDL_RenderDrawLine(renderer.value, 340, 240, 320, 200);
        SDL_RenderPresent(renderer.value);
        while (SDL_PollEvent(event) != 0) {
          if (event.type == SDL_QUIT) {
            done = SDL_TRUE;
          }
        }
        calloc.free(event);
      }
      SDL_DestroyRenderer(renderer.value);
      SDL_DestroyWindow(window.value);
    } else {}
    calloc.free(window);
    calloc.free(renderer);
    SDL_Quit();
  }
  return 0;
}
