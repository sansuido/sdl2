// https://github.com/aminosbh/sdl2-audio-sample/blob/master/src/main.c
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
    'res/waves-at-baltic-sea-shore/waves-at-baltic-sea-shore.wav';

int main() {
  // Initialize SDL
  if (sdlInit(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0) {
    print('SDL could not be initialized!\n'
        'SDL_Error: ${sdlGetError()}%s\n');
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
    sdlQuit();
    return 0;
  }
  // Load .WAV sound
  var wavSpec = calloc<SdlAudioSpec>();
  var wavLength = calloc<Uint32>();
  var wavBuffer = calloc<Pointer<Uint8>>();
  var rwops = sdlRwFromFile(gWavesSound, 'rb');
  if (rwops == nullptr ||
      sdlLoadWavRw(rwops, 1, wavSpec, wavBuffer, wavLength) == nullptr) {
    print('.WAV sound \'$gWavesSound\' could not be loaded!\n'
        'SDL_Error: ${sdlGetError()}\n');
  } else {
    // Open audio device
    var deviceId =
        sdlOpenAudioDevice(sdlGetAudioDeviceName(0, 0), 0, wavSpec, nullptr, 0);
    if (deviceId <= 0) {
      print('Audio device could not be opened!\n'
          'SDL_Error: ${sdlGetError()}\n');
    } else {
      if (sdlQueueAudio(deviceId, wavBuffer.value, wavLength.value) < 0) {
        print('Audio could not be queued!\n'
            'SDL_Error: ${sdlGetError()}%s\n');
      } else {
        // Play audio
        sdlPauseAudioDevice(deviceId, 0);
        // Declare rect of square
        var bar = min(gScreenWidth, gScreenHeight) / 2;
        var squareRect = Rectangle<double>(
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
                if (event.key.keysym.ref.sym == SDLK_ESCAPE) {
                  running = false;
                } else if (event.key.keysym.ref.sym == SDLK_SPACE) {
                  if (sdlGetAudioDeviceStatus(deviceId) == SDL_AUDIO_PLAYING) {
                    sdlPauseAudioDevice(deviceId, 1);
                  } else if (sdlGetAudioDeviceStatus(deviceId) ==
                      SDL_AUDIO_PAUSED) {
                    sdlPauseAudioDevice(deviceId, 0);
                  }
                }
                break;
              default:
                break;
            }
          }
          renderer
            ..setDrawColor(0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE)
            ..clear()
            ..setDrawColor(0x19, 0x71, 0xa9, SDL_ALPHA_OPAQUE)
            ..fillRect(squareRect);
          if (sdlGetAudioDeviceStatus(deviceId) == SDL_AUDIO_PAUSED) {
            renderer
              ..setDrawColor(0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE)
              ..fillRect(pauseRect1)
              ..fillRect(pauseRect2);
          }
          renderer.present();
        }
        event.callocFree();
      }
      sdlPauseAudioDevice(deviceId, 1);
      sdlCloseAudioDevice(deviceId);
    }
    sdlFreeWav(wavBuffer.value);
  }
  wavBuffer.callocFree();
  wavLength.callocFree();
  wavSpec.callocFree();
  // Destroy renderer
  renderer.destroy();
  // Destroy window
  window.destroy();
  // Quit SDL
  sdlQuit();
  return 0;
}
