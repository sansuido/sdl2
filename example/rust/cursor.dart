// https://github.com/Rust-SDL2/rust-sdl2/blob/master/examples/cursor.rs
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
    title: 'rust-sdl2 demo: Cursor [usage: drag and drop file.(png|jpg|bmp)]',
    w: 800,
    h: 600,
  );
  if (window == nullptr) {
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
  Pointer<SdlCursor> cursor = nullptr;
  var surface = imgLoad('assets/rust/cursor.png');
  if (surface != nullptr) {
    cursor = surface.createColorCursor(0, 0)..set();
    surface.free();
  }
  var event = calloc<SdlEvent>();
  var running = true;
  while (running) {
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_DROPFILE:
          var file = event.drop.ref.file.cast<Utf8>().toDartString();
          sdlFree(event.drop.ref.file);
          var surface = imgLoad(file);
          if (surface != nullptr) {
            if (cursor != nullptr) {
              cursor.free();
              cursor = nullptr;
            }
            cursor = surface.createColorCursor(0, 0)..set();
            surface.free();
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
      ..clear()
      ..present();
  }
  event.callocFree();
  cursor.free();
  renderer.destroy();
  window.destroy();
  imgQuit();
  sdlQuit();
  return 0;
}
