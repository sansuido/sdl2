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
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

// Define screen dimensions
const gScreenWidth = 800;
const gScreenHeight = 600;

const gFontPath = 'res/SourceHanCodeJP.ttc';
//const gFontPath = 'C:/Windows/Fonts/msgothic.ttc';

int main() {
  // Initialize SDL2
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print('SDL2 could not be initialized!\n'
        'SDL2 s: ${sdlGetError()}\n');
    return 0;
  }
  // Initialize SDL2_ttf
  ttfInit();
  // Create window
  Pointer<SdlWindow> window = SdlWindowEx.create(
      title: 'SDL2_ttf sample',
      w: gScreenWidth,
      h: gScreenHeight,
      flags: SDL_WINDOW_SHOWN);
  if (window == nullptr) {
    print('Window could not be created!\n'
        'SDL_Error: ${sdlGetError()}\n');
  } else {
    // Create renderer
    var renderer = window.createRenderer(
        -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_ACCELERATED);
    if (renderer == nullptr) {
      print('Renderer could not be created!\n'
          'SDL_Error: ${sdlGetError()}\n');
    } else {
      // Declare rect of square
      // Square dimensions: Half of the min(gScreenWidth, gScreenHeight)
      // Square position: In the middle of the screen
      var squareRect = Rectangle(
          gScreenWidth ~/ 2 - gScreenHeight ~/ 2 ~/ 2,
          gScreenHeight ~/ 2 - gScreenHeight ~/ 2 ~/ 2,
          gScreenHeight ~/ 2,
          gScreenHeight ~/ 2);
      Pointer<TtfFont> font = nullptr;
      font = TtfFontEx.open(gFontPath, 40);
      //var font = ttfOpenFont(gFontPath, 40);
      if (font == nullptr) {
        print('Unable to load font: \'$gFontPath\'!\n'
            'SDL2_ttf Error: ${ttfGetError()}\n');
        return 0;
      }
      Pointer<SdlTexture> text = nullptr;
      late Rectangle textRect;
      var textSurface = font.renderUtf8Shaded(
          '赤い四角/Red square',
          SdlColorEx.rgbaToU32(0, 0, 0, SDL_ALPHA_OPAQUE),
          SdlColorEx.rgbaToU32(255, 255, 255, SDL_ALPHA_OPAQUE));
      font.close();
      if (textSurface == nullptr) {
        print('Unable to render text surface!\n'
            'SDL2_ttf Error: ${ttfGetError()}\n');
      } else {
        // Create texture from surface pixels
        text = renderer.createTextureFromSurface(textSurface);
        if (text == nullptr) {
          print('Unable to create texture from rendered text!\n'
              'SDL2 Error: ${sdlGetError()}\n');
          return 0;
        }
        // Get text dimensions
        textRect = Rectangle(
            (gScreenWidth - textSurface.ref.w) ~/ 2,
            squareRect.top - textSurface.ref.h - 10,
            textSurface.ref.w,
            textSurface.ref.h);
        textSurface.free();
      }
      // Event loop exit flag
      var quit = false;
      // Event loop
      while (!quit) {
        var event = calloc<SdlEvent>();
        // Wait indefinitely for the next available event
        event.wait();
        // User requests quit
        if (event.type == SDL_QUIT) {
          quit = true;
        }
        // Initialize renderer color white for the background
        renderer.setDrawColor(0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE);
        // Clear screen
        renderer.clear();
        // Set renderer color red to draw the square
        renderer.setDrawColor(0xff, 0x00, 0x00, SDL_ALPHA_OPAQUE);
        // Draw filled square
        renderer.fillRect(squareRect);
        // Draw text
        renderer.copy(text, dstrect: textRect);
        // Update screen
        renderer.present();
        event.callocFree();
      }
      // Destroy renderer
      renderer.destroy();
    }
    // Destroy window
    window.destroy();
  }
  // Quit SDL2_ttf
  ttfQuit();
  // Quit SDL
  sdlQuit();
  return 0;
}
