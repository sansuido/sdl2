// https://github.com/aminosbh/sdl2-ttf-sample/blob/master/src/main.c
/*
 * Copyright (c) 2018, 2019 Amine Ben Hassouna <amine.benhassouna@gmail.com>
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any
 * person obtaining a copy of this software and associated
 * documentation files (the "Software"), to deal in the
 * Software without restriction, including without
 * limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software
 * is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice
 * shall be included in all copies or substantial portions
 * of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF
 * ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
 * TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
 * SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
 * IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 */
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

// Define screen dimensions
const SCREEN_WIDTH = 800;
const SCREEN_HEIGHT = 600;

const FONT_PATH = 'res/SourceHanCodeJP.ttc';
//const FONT_PATH = 'C:/Windows/Fonts/msgothic.ttc';

int main() {
  // Initialize SDL2
  if (SDL_Init(SDL_INIT_VIDEO)! < 0) {
    print('SDL2 could not be initialized!\n'
        'SDL2 s: ${SDL_GetError()}\n');
    return 0;
  }
  // Initialize SDL2_ttf
  TTF_Init();
  // Create window
  var window = SDL_CreateWindow(
      'SDL2_ttf sample',
      SDL_WINDOWPOS_UNDEFINED,
      SDL_WINDOWPOS_UNDEFINED,
      SCREEN_WIDTH,
      SCREEN_HEIGHT,
      SDL_WINDOW_SHOWN);
  if (window == nullptr) {
    print('Window could not be created!\n'
        'SDL_Error: ${SDL_GetError()}\n');
  } else {
    // Create renderer
    var renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    if (renderer == nullptr) {
      print('Renderer could not be created!\n'
          'SDL_Error: ${SDL_GetError()}\n');
    } else {
      // Declare rect of square
      var squareRect = calloc<SDL_Rect>();
      // Square dimensions: Half of the min(SCREEN_WIDTH, SCREEN_HEIGHT)
      squareRect.ref.w = SCREEN_HEIGHT ~/ 2;
      squareRect.ref.h = SCREEN_HEIGHT ~/ 2;
      // Square position: In the middle of the screen
      squareRect.ref.x = SCREEN_WIDTH ~/ 2 - squareRect.ref.w! ~/ 2;
      squareRect.ref.y = SCREEN_HEIGHT ~/ 2 - squareRect.ref.h! ~/ 2;
      var font = TTF_OpenFont(FONT_PATH, 40);
      if (font == nullptr) {
        print('Unable to load font: \'$FONT_PATH\'!\n'
            'SDL2_ttf Error: ${TTF_GetError()}\n');
        return 0;
      }
      var textColor = calloc<SDL_Color>()
        ..ref.r = 0x00
        ..ref.g = 0x00
        ..ref.b = 0x00
        ..ref.a = 0xFF;
      var textBackgroundColor = calloc<SDL_Color>()
        ..ref.r = 0xFF
        ..ref.g = 0xFF
        ..ref.b = 0xFF
        ..ref.a = 0xFF;
      var text;
      var textRect = calloc<SDL_Rect>();
      var textSurface = TTF_RenderUTF8_Shaded(
          font, '赤い四角/Red square', textColor.ref, textBackgroundColor.ref);
      calloc.free(textColor);
      calloc.free(textBackgroundColor);
      if (textSurface == nullptr) {
        print('Unable to render text surface!\n'
            'SDL2_ttf Error: ${TTF_GetError()}\n');
      } else {
        // Create texture from surface pixels
        text = SDL_CreateTextureFromSurface(renderer, textSurface);
        if (text == nullptr) {
          print('Unable to create texture from rendered text!\n'
              'SDL2 Error: ${SDL_GetError()}\n');
          return 0;
        }
        // Get text dimensions
        if (textSurface != null) {
          textRect.ref.w = textSurface.ref.w;
          textRect.ref.h = textSurface.ref.h;
          SDL_FreeSurface(textSurface);
        }
      }
      textRect.ref.x = (SCREEN_WIDTH - textRect.ref.w!) ~/ 2;
      textRect.ref.y = squareRect.ref.y! - textRect.ref.h! - 10;
      // Event loop exit flag
      var quit = false;
      // Event loop
      while (!quit) {
        var e = calloc<SDL_Event>();
        // Wait indefinitely for the next available event
        SDL_WaitEvent(e);
        // User requests quit
        if (e.ref.type == SDL_QUIT) {
          quit = true;
        }
        // Initialize renderer color white for the background
        SDL_SetRenderDrawColor(renderer, 0xFF, 0xFF, 0xFF, 0xFF);
        // Clear screen
        SDL_RenderClear(renderer);
        // Set renderer color red to draw the square
        SDL_SetRenderDrawColor(renderer, 0xFF, 0x00, 0x00, 0xFF);
        // Draw filled square
        SDL_RenderFillRect(renderer, squareRect);
        // Draw text
        SDL_RenderCopy(renderer, text, nullptr, textRect);
        // Update screen
        SDL_RenderPresent(renderer);
        calloc.free(e);
      }
      calloc.free(textRect);
      // Destroy renderer
      SDL_DestroyRenderer(renderer);
    }
    // Destroy window
    SDL_DestroyWindow(window);
  }
  // Quit SDL2_ttf
  TTF_Quit();
  // Quit SDL
  SDL_Quit();
  return 0;
}
