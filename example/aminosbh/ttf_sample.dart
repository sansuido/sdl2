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
const gScreenWidth = 800;
const gScreenHeight = 600;

const gFontPath = 'res/SourceHanCodeJP.ttc';
//const gFontPath = 'C:/Windows/Fonts/msgothic.ttc';

int main() {
  // Initialize SDL2
  if (sdlInit(SDL_INIT_VIDEO) < 0) {
    print('SDL2 could not be initialized!\n'
        'SDL2 s: ${sdlGetError()}\n');
    return 0;
  }
  // Initialize SDL2_ttf
  ttfInit();
  // Create window
  var window = sdlCreateWindow(
      'SDL2_ttf sample',
      SDL_WINDOWPOS_UNDEFINED,
      SDL_WINDOWPOS_UNDEFINED,
      gScreenWidth,
      gScreenHeight,
      SDL_WINDOW_SHOWN);
  if (window == nullptr) {
    print('Window could not be created!\n'
        'SDL_Error: ${sdlGetError()}\n');
  } else {
    // Create renderer
    var renderer = sdlCreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    if (renderer == nullptr) {
      print('Renderer could not be created!\n'
          'SDL_Error: ${sdlGetError()}\n');
    } else {
      // Declare rect of square
      var squareRect = calloc<SdlRect>();
      // Square dimensions: Half of the min(gScreenWidth, gScreenHeight)
      squareRect.ref.w = gScreenHeight ~/ 2;
      squareRect.ref.h = gScreenHeight ~/ 2;
      // Square position: In the middle of the screen
      squareRect.ref.x = gScreenWidth ~/ 2 - squareRect.ref.w ~/ 2;
      squareRect.ref.y = gScreenHeight ~/ 2 - squareRect.ref.h ~/ 2;
      var font = ttfOpenFont(gFontPath, 40);
      if (font == nullptr) {
        print('Unable to load font: \'$gFontPath\'!\n'
            'SDL2_ttf Error: ${ttfGetError()}\n');
        return 0;
      }
      var textColor = calloc<SdlColor>()
        ..ref.r = 0x00
        ..ref.g = 0x00
        ..ref.b = 0x00
        ..ref.a = 0xFF;
      var textBackgroundColor = calloc<SdlColor>()
        ..ref.r = 0xFF
        ..ref.g = 0xFF
        ..ref.b = 0xFF
        ..ref.a = 0xFF;
      Pointer<SdlTexture>? text;
      var textRect = calloc<SdlRect>();
      var textSurface = ttfRenderUtf8Shaded(
          font, '赤い四角/Red square', textColor.ref, textBackgroundColor.ref);
      calloc.free(textColor);
      calloc.free(textBackgroundColor);
      if (textSurface == nullptr) {
        print('Unable to render text surface!\n'
            'SDL2_ttf Error: ${ttfGetError()}\n');
      } else {
        // Create texture from surface pixels
        text = sdlCreateTextureFromSurface(renderer, textSurface);
        if (text == nullptr) {
          print('Unable to create texture from rendered text!\n'
              'SDL2 Error: ${sdlGetError()}\n');
          return 0;
        }
        // Get text dimensions
        if (textSurface != null) {
          textRect.ref.w = textSurface.ref.w;
          textRect.ref.h = textSurface.ref.h;
          sdlFreeSurface(textSurface);
        }
      }
      textRect.ref.x = (gScreenWidth - textRect.ref.w) ~/ 2;
      textRect.ref.y = squareRect.ref.y - textRect.ref.h - 10;
      // Event loop exit flag
      var quit = false;
      // Event loop
      while (!quit) {
        var e = calloc<SdlEvent>();
        // Wait indefinitely for the next available event
        sdlWaitEvent(e);
        // User requests quit
        if (e.type == SDL_QUIT) {
          quit = true;
        }
        // Initialize renderer color white for the background
        sdlSetRenderDrawColor(renderer, 0xFF, 0xFF, 0xFF, 0xFF);
        // Clear screen
        sdlRenderClear(renderer);
        // Set renderer color red to draw the square
        sdlSetRenderDrawColor(renderer, 0xFF, 0x00, 0x00, 0xFF);
        // Draw filled square
        sdlRenderFillRect(renderer, squareRect);
        // Draw text
        sdlRenderCopy(renderer, text, nullptr, textRect);
        // Update screen
        sdlRenderPresent(renderer);
        calloc.free(e);
      }
      calloc.free(textRect);
      // Destroy renderer
      sdlDestroyRenderer(renderer);
    }
    // Destroy window
    sdlDestroyWindow(window);
  }
  // Quit SDL2_ttf
  ttfQuit();
  // Quit SDL
  sdlQuit();
  return 0;
}
