// https://github.com/Rust-SDL2/rust-sdl2/blob/master/examples/image-demo.rs
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int main() {
  if (sdlInit(SDL_INIT_VIDEO) != 0) {
    print(sdlGetError());
    return -1;
  }
  var imgFlags = IMG_INIT_PNG | IMG_INIT_JPG;
  if (imgInit(imgFlags) != imgFlags) {
    print(sdlGetError());
    sdlQuit();
    return -1;
  }
  var window = SdlWindowEx.create(
      title: 'rust-sdl2 demo: Video [usage: drag and drop file.(png|jpg|bmp)]',
      w: 800,
      h: 600,
      flags: SDL_WINDOW_RESIZABLE);
  if (window == nullptr) {
    print(sdlGetError());
    imgQuit();
    sdlQuit();
    return -1;
  }
  sdlEventState(SDL_DROPFILE, SDL_ENABLE);
  var renderer = window.createRenderer(
      -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (renderer == nullptr) {
    print(sdlGetError());
    window.destroy();
    imgQuit();
    sdlQuit();
    return -1;
  }
  var event = calloc<SdlEvent>();
  Pointer<SdlTexture> texture = nullptr;
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
          }
          break;
        case SDL_DROPFILE:
          var file = event.drop.ref.file.cast<Utf8>().toDartString();
          sdlFree(event.drop.ref.file);
          var loadTexture = renderer.loadTexture(file);
          if (loadTexture != nullptr) {
            if (texture != nullptr) {
              texture.destroy();
              texture = nullptr;
            }
            texture = loadTexture;
            var size = loadTexture.getSize();
            if (size != null) {
              print('X=${size.x} Y=${size.y}');
            }
          } else {
            sdlShowSimpleMessageBox(0, 'imgGetError', imgGetError(), window);
          }
          break;
        default:
          break;
      }
    }
    renderer
      ..setDrawColor(255, 255, 255, SDL_ALPHA_OPAQUE)
      ..clear();
    if (texture != nullptr) {
      renderer.copy(texture);
    }
    renderer.present();
  }
  event.callocFree();
  texture.destroy();
  renderer.destroy();
  window.destroy();
  imgQuit();
  sdlQuit();
  return 0;
}
