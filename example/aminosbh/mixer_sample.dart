// https://github.com/aminosbh/sdl2-mixer-sample/blob/master/src/main.c
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

const gScreenWidth = 800;
const gScreenHeight = 600;
const gWavesSound =
    'assets/waves-at-baltic-sea-shore/waves-at-baltic-sea-shore.wav';
const gClapSound = 'assets/claps-and-snares/clap.ogg';
const gSnareSound = 'assets/claps-and-snares/snare.ogg';
const gTechnoClapSnareSound = 'assets/claps-and-snares/techno-clap-snare.ogg';
const gReverbSnareSound = 'assets/claps-and-snares/dubstep-reverb-snare.ogg';

int main() {
  // Initialize SDL
  if (sdlInit(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0) {
    print('SDL could not be initialized!\n'
        'SDL_Error: ${sdlGetError()}\n');
    return 0;
  }
  //Initialize SDL2_mixer
  if (mixOpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT,
          MIX_DEFAULT_CHANNELS, 4096) !=
      0) {
    print('SDL2_mixer could not be initialized!\n'
        'SDL_Error: ${sdlGetError()}%s\n');
    sdlQuit();
    return 0;
  }
  // Create window
  var window = SdlWindowEx.create(
      title: 'SDL2 audio sample (Press SPACE to pause/play)',
      w: gScreenWidth,
      h: gScreenHeight,
      flags: SDL_WINDOW_SHOWN);
  if (window == nullptr) {
    print('Window could not be created!\n'
        'SDL_Error: ${sdlGetError()}\n');
    window.destroy();
    mixCloseAudio();
    sdlQuit();
    return 0;
  }
  // Create renderer
  var renderer = window.createRenderer(
      -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (renderer == nullptr) {
    print('Renderer could not be created!\n'
        'SDL_Error: ${sdlGetError()}\n');
    window.destroy();
    mixCloseAudio();
    sdlQuit();
    return 0;
  }
  var sounds = <Pointer<MixMusic>>[];
  sounds.add(mixLoadMus(gWavesSound));
  sounds.add(mixLoadMus(gClapSound));
  sounds.add(mixLoadMus(gSnareSound));
  sounds.add(mixLoadMus(gTechnoClapSnareSound));
  sounds.add(mixLoadMus(gReverbSnareSound));
  // Declare rect of square
  var bar = min(gScreenWidth, gScreenHeight) / 2;
  var squareRect = Rectangle(
      gScreenWidth / 2 - bar / 2, gScreenHeight / 2 - bar / 2, bar, bar);
  var pauseRect1 = Rectangle<double>(
      squareRect.left + (squareRect.width - 40 * 3) / 2,
      squareRect.top + squareRect.height / 4,
      40,
      squareRect.height / 2);
  var pauseRect2 = pauseRect1.shift(Point(40 * 2, 0));

  var event = calloc<SdlEvent>();
  var running = true;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_KEYDOWN:
          switch (event.key.keysym.ref.sym) {
            case SDLK_RIGHT:
              sounds[1].play(1);
              break;
            case SDLK_LEFT:
              sounds[2].play(1);
              break;
            case SDLK_UP:
              sounds[3].play(1);
              break;
            case SDLK_DOWN:
              sounds[4].play(1);
              break;
          }
          break;
        default:
          break;
      }
    }
    renderer
      // Initialize renderer color white for the background
      ..setDrawColor(0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE)
      // Clear screen
      ..clear()
      // Set renderer color blue to draw the square
      ..setDrawColor(0x19, 0x71, 0xA9, SDL_ALPHA_OPAQUE)
      // Draw filled square
      ..fillRect(squareRect);
    if (mixPaused(-1) == SDL_TRUE) {
      renderer
        ..setDrawColor(0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE)
        ..fillRect(pauseRect1)
        ..fillRect(pauseRect2);
    }
    // Update screen
    renderer.present();
  }
  event.callocFree();
  for (var sound in sounds) {
    sound.free();
  }
  renderer.destroy();
  window.destroy();
  mixCloseAudio();
  sdlQuit();
  return 0;
}
