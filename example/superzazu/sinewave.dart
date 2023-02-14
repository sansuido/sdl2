// https://gist.github.com/superzazu/c0f923181a9cdb82c6d84dcf8b61c8c5
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_AUDIO) != 0) {
    return 1;
  }
  // opening an audio device:
  var audioSpec = calloc<SdlAudioSpec>()
    ..ref.freq = 44100
    ..ref.format = AUDIO_S16SYS
    ..ref.channels = 1
    ..ref.samples = 1024;
  // the representation of our audio device in SDL:
  var audioDevice = sdlOpenAudioDevice(null, 0, audioSpec, nullptr, 0);
  if (audioDevice <= 0) {
    audioSpec.callocFree();
    sdlQuit();
    return 1;
  }
  // pushing 3 seconds of samples to the audio buffer:
  var x = 0.0;
  for (var i = 0; i < audioSpec.ref.freq * 3; i++) {
    x += 0.10;
    var sample = calloc<Int16>();
    sample.value = (sin(x * 4) * 5000).toInt();
    // SDL_QueueAudio expects a signed 16-bit value
    // note: "5000" here is just gain so that we will hear something
    sdlQueueAudio(audioDevice, sample, sizeOf<Int16>());
    sample.callocFree();
  }
  // unpausing the audio device (starts playing):
  sdlPauseAudioDevice(audioDevice, 0);
  sdlDelay(3000);
  sdlCloseAudioDevice(audioDevice);
  audioSpec.callocFree();
  sdlQuit();
  return 0;
}
