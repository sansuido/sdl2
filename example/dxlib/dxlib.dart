import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

int getColor(
    {int red = 0x00, int green = 0x00, int blue = 0x00, int alpha = 0xff}) {
  return (alpha << 8 * 3) + (red << 8 * 2) + (green << 8 * 1) + (blue << 8 * 0);
}

int getRedFromColor(int color) {
  return (color & 0x00ff0000) >> 8 * 2;
}

int getGreenFromColor(int color) {
  return (color & 0x0000ff00) >> 8 * 1;
}

int getBlueFromColor(int color) {
  return (color & 0x000000ff) >> 8 * 0;
}

int getAlphaFromColor(int color) {
  return (color & 0xff000000) >> 8 * 3;
}

int setDrawColor(Pointer<SDL_Renderer>? renderer, int color) {
  return SDL_SetRenderDrawColor(
      renderer,
      getRedFromColor(color),
      getGreenFromColor(color),
      getBlueFromColor(color),
      getAlphaFromColor(color));
}

int drawLine(Pointer<SDL_Renderer>? renderer, int x1, int y1, int x2, int y2,
    int color) {
  return SDL_RenderDrawLine(renderer, x1, y1, x2, y2);
}

// https://gist.github.com/Gumichan01/332c26f6197a432db91cc4327fcabb1c
int drawCircle(
    Pointer<SDL_Renderer>? renderer, int x, int y, int radius, int color,
    {bool fillFlag = true}) {
  setDrawColor(renderer, color);
  int offsetx, offsety, d;
  int status;
  offsetx = 0;
  offsety = radius;
  d = radius - 1;
  status = 0;
  while (offsety >= offsetx) {
    if (fillFlag) {
      status += SDL_RenderDrawLine(
          renderer, x - offsety, y + offsetx, x + offsety, y + offsetx);
      status += SDL_RenderDrawLine(
          renderer, x - offsetx, y + offsety, x + offsetx, y + offsety);
      status += SDL_RenderDrawLine(
          renderer, x - offsetx, y - offsety, x + offsetx, y - offsety);
      status += SDL_RenderDrawLine(
          renderer, x - offsety, y - offsetx, x + offsety, y - offsetx);
    } else {
      status += SDL_RenderDrawPoint(renderer, x + offsetx, y + offsety);
      status += SDL_RenderDrawPoint(renderer, x + offsety, y + offsetx);
      status += SDL_RenderDrawPoint(renderer, x - offsetx, y + offsety);
      status += SDL_RenderDrawPoint(renderer, x - offsety, y + offsetx);
      status += SDL_RenderDrawPoint(renderer, x + offsetx, y - offsety);
      status += SDL_RenderDrawPoint(renderer, x + offsety, y - offsetx);
      status += SDL_RenderDrawPoint(renderer, x - offsetx, y - offsety);
      status += SDL_RenderDrawPoint(renderer, x - offsety, y - offsetx);
    }
    if (status < 0) {
      status = -1;
      break;
    }
    if (d >= 2 * offsetx) {
      d -= 2 * offsetx + 1;
      offsetx += 1;
    } else if (d < 2 * (radius - offsety)) {
      d += 2 * offsety - 1;
      offsety -= 1;
    } else {
      d += 2 * (offsety - offsetx - 1);
      offsety -= 1;
      offsetx += 1;
    }
  }
  return status;
}

int drawBox(
    Pointer<SDL_Renderer>? renderer, int x1, int y1, int x2, int y2, int color,
    {bool fillFlag = true}) {
  setDrawColor(renderer, color);
  var result;
  var rect = calloc<SDL_Rect>();
  rect
    ..ref.x = x1
    ..ref.y = y1
    ..ref.w = x2 - x1 - 1
    ..ref.h = y2 - y1 - 1;
  if (fillFlag) {
    result = SDL_RenderFillRect(renderer, rect);
  } else {
    result = SDL_RenderDrawRect(renderer, rect);
  }
  calloc.free(rect);
  return result;
}
