// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import '../dylib.dart' as dylib;
import 'struct_sdl.dart';
import 'struct_sdl_gfx.dart';

final libSdl2Gfx = dylib.dylibOpen('SDL2_gfx');

/// Functions return 0 or value for sucess and -1 for error
/// ```c
/// SDL2_FRAMERATE_SCOPE void SDL_initFramerate(FPSmanager * manager)
/// ```
void sdlInitFramerate(Pointer<FPSmanager> manager) {
  final sdlInitFramerateLookupFunction = libSdl2Gfx.lookupFunction<
      Void Function(Pointer<FPSmanager> manager),
      void Function(Pointer<FPSmanager> manager)>('SDL_initFramerate');
  return sdlInitFramerateLookupFunction(manager);
}

/// ```c
/// SDL2_FRAMERATE_SCOPE int SDL_setFramerate(FPSmanager * manager, Uint32 rate)
/// ```
int sdlSetFramerate(Pointer<FPSmanager> manager, int rate) {
  final sdlSetFramerateLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<FPSmanager> manager, Uint32 rate),
      int Function(Pointer<FPSmanager> manager, int rate)>('SDL_setFramerate');
  return sdlSetFramerateLookupFunction(manager, rate);
}

/// ```c
/// SDL2_FRAMERATE_SCOPE int SDL_getFramerate(FPSmanager * manager)
/// ```
int sdlGetFramerate(Pointer<FPSmanager> manager) {
  final sdlGetFramerateLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<FPSmanager> manager),
      int Function(Pointer<FPSmanager> manager)>('SDL_getFramerate');
  return sdlGetFramerateLookupFunction(manager);
}

/// ```c
/// SDL2_FRAMERATE_SCOPE int SDL_getFramecount(FPSmanager * manager)
/// ```
int sdlGetFramecount(Pointer<FPSmanager> manager) {
  final sdlGetFramecountLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<FPSmanager> manager),
      int Function(Pointer<FPSmanager> manager)>('SDL_getFramecount');
  return sdlGetFramecountLookupFunction(manager);
}

/// ```c
/// SDL2_FRAMERATE_SCOPE Uint32 SDL_framerateDelay(FPSmanager * manager)
/// ```
int sdlFramerateDelay(Pointer<FPSmanager> manager) {
  final sdlFramerateDelayLookupFunction = libSdl2Gfx.lookupFunction<
      Uint32 Function(Pointer<FPSmanager> manager),
      int Function(Pointer<FPSmanager> manager)>('SDL_framerateDelay');
  return sdlFramerateDelayLookupFunction(manager);
}

/// Pixel
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int pixelColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Uint32 color)
/// ```
int pixelColor(Pointer<SdlRenderer> renderer, int x, int y, int color) {
  final pixelColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y,
          int color)>('pixelColor');
  return pixelColorLookupFunction(renderer, x, y, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int pixelRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int pixelRgba(
    Pointer<SdlRenderer> renderer, int x, int y, int r, int g, int b, int a) {
  final pixelRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Uint8 r,
          Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int r, int g,
          int b, int a)>('pixelRGBA');
  return pixelRgbaLookupFunction(renderer, x, y, r, g, b, a);
}

/// Horizontal line
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int hlineColor(SDL_Renderer * renderer, Sint16 x1, Sint16 x2, Sint16 y, Uint32 color)
/// ```
int hlineColor(
    Pointer<SdlRenderer> renderer, int x1, int x2, int y, int color) {
  final hlineColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 x2, Int16 y,
          Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int x2, int y,
          int color)>('hlineColor');
  return hlineColorLookupFunction(renderer, x1, x2, y, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int hlineRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 x2, Sint16 y, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int hlineRgba(Pointer<SdlRenderer> renderer, int x1, int x2, int y, int r,
    int g, int b, int a) {
  final hlineRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 x2, Int16 y,
          Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int x2, int y, int r,
          int g, int b, int a)>('hlineRGBA');
  return hlineRgbaLookupFunction(renderer, x1, x2, y, r, g, b, a);
}

/// Vertical line
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int vlineColor(SDL_Renderer * renderer, Sint16 x, Sint16 y1, Sint16 y2, Uint32 color)
/// ```
int vlineColor(
    Pointer<SdlRenderer> renderer, int x, int y1, int y2, int color) {
  final vlineColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y1, Int16 y2,
          Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y1, int y2,
          int color)>('vlineColor');
  return vlineColorLookupFunction(renderer, x, y1, y2, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int vlineRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y1, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int vlineRgba(Pointer<SdlRenderer> renderer, int x, int y1, int y2, int r,
    int g, int b, int a) {
  final vlineRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y1, Int16 y2,
          Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y1, int y2, int r,
          int g, int b, int a)>('vlineRGBA');
  return vlineRgbaLookupFunction(renderer, x, y1, y2, r, g, b, a);
}

/// Rectangle
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int rectangleColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)
/// ```
int rectangleColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  final rectangleColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int color)>('rectangleColor');
  return rectangleColorLookupFunction(renderer, x1, y1, x2, y2, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int rectangleRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int rectangleRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  final rectangleRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int r, int g, int b, int a)>('rectangleRGBA');
  return rectangleRgbaLookupFunction(renderer, x1, y1, x2, y2, r, g, b, a);
}

/// Rounded-Corner Rectangle
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int roundedRectangleColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 rad, Uint32 color)
/// ```
int roundedRectangleColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int color) {
  final roundedRectangleColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 rad, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int rad, int color)>('roundedRectangleColor');
  return roundedRectangleColorLookupFunction(
      renderer, x1, y1, x2, y2, rad, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int roundedRectangleRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int roundedRectangleRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int r, int g, int b, int a) {
  final roundedRectangleRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int rad, int r, int g, int b, int a)>('roundedRectangleRGBA');
  return roundedRectangleRgbaLookupFunction(
      renderer, x1, y1, x2, y2, rad, r, g, b, a);
}

/// Filled rectangle (Box)
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int boxColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)
/// ```
int boxColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  final boxColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int color)>('boxColor');
  return boxColorLookupFunction(renderer, x1, y1, x2, y2, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int boxRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int boxRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  final boxRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int r, int g, int b, int a)>('boxRGBA');
  return boxRgbaLookupFunction(renderer, x1, y1, x2, y2, r, g, b, a);
}

/// Rounded-Corner Filled rectangle (Box)
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int roundedBoxColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 rad, Uint32 color)
/// ```
int roundedBoxColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int color) {
  final roundedBoxColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 rad, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int rad, int color)>('roundedBoxColor');
  return roundedBoxColorLookupFunction(renderer, x1, y1, x2, y2, rad, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int roundedBoxRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int roundedBoxRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int r, int g, int b, int a) {
  final roundedBoxRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int rad, int r, int g, int b, int a)>('roundedBoxRGBA');
  return roundedBoxRgbaLookupFunction(
      renderer, x1, y1, x2, y2, rad, r, g, b, a);
}

/// Line
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int lineColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)
/// ```
int lineColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  final lineColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int color)>('lineColor');
  return lineColorLookupFunction(renderer, x1, y1, x2, y2, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int lineRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int lineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  final lineRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int r, int g, int b, int a)>('lineRGBA');
  return lineRgbaLookupFunction(renderer, x1, y1, x2, y2, r, g, b, a);
}

/// AA Line
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aalineColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)
/// ```
int aalineColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  final aalineColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int color)>('aalineColor');
  return aalineColorLookupFunction(renderer, x1, y1, x2, y2, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aalineRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int aalineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  final aalineRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int r, int g, int b, int a)>('aalineRGBA');
  return aalineRgbaLookupFunction(renderer, x1, y1, x2, y2, r, g, b, a);
}

/// Thick Line
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int thickLineColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 width, Uint32 color)
/// ```
int thickLineColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int width, int color) {
  final thickLineColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint8 width, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int width, int color)>('thickLineColor');
  return thickLineColorLookupFunction(renderer, x1, y1, x2, y2, width, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int thickLineRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint8 width, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int thickLineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int width, int r, int g, int b, int a) {
  final thickLineRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Uint8 width, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int width, int r, int g, int b, int a)>('thickLineRGBA');
  return thickLineRgbaLookupFunction(
      renderer, x1, y1, x2, y2, width, r, g, b, a);
}

/// Circle
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int circleColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Uint32 color)
/// ```
int circleColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rad, int color) {
  final circleColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int color)>('circleColor');
  return circleColorLookupFunction(renderer, x, y, rad, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int circleRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int circleRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
    int g, int b, int a) {
  final circleRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
          int g, int b, int a)>('circleRGBA');
  return circleRgbaLookupFunction(renderer, x, y, rad, r, g, b, a);
}

/// Arc
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int arcColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color)
/// ```
int arcColor(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int color) {
  final arcColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Int16 start, Int16 end, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int start, int end, int color)>('arcColor');
  return arcColorLookupFunction(renderer, x, y, rad, start, end, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int arcRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int arcRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int r, int g, int b, int a) {
  final arcRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Int16 start, Int16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int start, int end, int r, int g, int b, int a)>('arcRGBA');
  return arcRgbaLookupFunction(renderer, x, y, rad, start, end, r, g, b, a);
}

/// AA Circle
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aacircleColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Uint32 color)
/// ```
int aacircleColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rad, int color) {
  final aacircleColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int color)>('aacircleColor');
  return aacircleColorLookupFunction(renderer, x, y, rad, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aacircleRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int aacircleRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
    int g, int b, int a) {
  final aacircleRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
          int g, int b, int a)>('aacircleRGBA');
  return aacircleRgbaLookupFunction(renderer, x, y, rad, r, g, b, a);
}

/// Filled Circle
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledCircleColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 r, Uint32 color)
/// ```
int filledCircleColor(
    Pointer<SdlRenderer> renderer, int x, int y, int r, int color) {
  final filledCircleColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 r,
          Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int r,
          int color)>('filledCircleColor');
  return filledCircleColorLookupFunction(renderer, x, y, r, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledCircleRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int filledCircleRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad,
    int r, int g, int b, int a) {
  final filledCircleRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
          int g, int b, int a)>('filledCircleRGBA');
  return filledCircleRgbaLookupFunction(renderer, x, y, rad, r, g, b, a);
}

/// Ellipse
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int ellipseColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color)
/// ```
int ellipseColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry, int color) {
  final ellipseColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rx,
          Int16 ry, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
          int color)>('ellipseColor');
  return ellipseColorLookupFunction(renderer, x, y, rx, ry, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int ellipseRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int ellipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
    int r, int g, int b, int a) {
  final ellipseRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rx,
          Int16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
          int r, int g, int b, int a)>('ellipseRGBA');
  return ellipseRgbaLookupFunction(renderer, x, y, rx, ry, r, g, b, a);
}

/// AA Ellipse
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aaellipseColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color)
/// ```
int aaellipseColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry, int color) {
  final aaellipseColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rx,
          Int16 ry, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
          int color)>('aaellipseColor');
  return aaellipseColorLookupFunction(renderer, x, y, rx, ry, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aaellipseRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int aaellipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
    int r, int g, int b, int a) {
  final aaellipseRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rx,
          Int16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
          int r, int g, int b, int a)>('aaellipseRGBA');
  return aaellipseRgbaLookupFunction(renderer, x, y, rx, ry, r, g, b, a);
}

/// Filled Ellipse
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledEllipseColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint32 color)
/// ```
int filledEllipseColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry, int color) {
  final filledEllipseColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rx,
          Int16 ry, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
          int color)>('filledEllipseColor');
  return filledEllipseColorLookupFunction(renderer, x, y, rx, ry, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledEllipseRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rx, Sint16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int filledEllipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx,
    int ry, int r, int g, int b, int a) {
  final filledEllipseRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rx,
          Int16 ry, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
          int r, int g, int b, int a)>('filledEllipseRGBA');
  return filledEllipseRgbaLookupFunction(renderer, x, y, rx, ry, r, g, b, a);
}

/// Pie
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int pieColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color)
/// ```
int pieColor(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int color) {
  final pieColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Int16 start, Int16 end, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int start, int end, int color)>('pieColor');
  return pieColorLookupFunction(renderer, x, y, rad, start, end, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int pieRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int pieRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int r, int g, int b, int a) {
  final pieRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Int16 start, Int16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int start, int end, int r, int g, int b, int a)>('pieRGBA');
  return pieRgbaLookupFunction(renderer, x, y, rad, start, end, r, g, b, a);
}

/// Filled Pie
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledPieColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint32 color)
/// ```
int filledPieColor(Pointer<SdlRenderer> renderer, int x, int y, int rad,
    int start, int end, int color) {
  final filledPieColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Int16 start, Int16 end, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int start, int end, int color)>('filledPieColor');
  return filledPieColorLookupFunction(renderer, x, y, rad, start, end, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledPieRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, Sint16 rad, Sint16 start, Sint16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int filledPieRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad,
    int start, int end, int r, int g, int b, int a) {
  final filledPieRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int16 rad,
          Int16 start, Int16 end, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int rad,
          int start, int end, int r, int g, int b, int a)>('filledPieRGBA');
  return filledPieRgbaLookupFunction(
      renderer, x, y, rad, start, end, r, g, b, a);
}

/// Trigon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int trigonColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color)
/// ```
int trigonColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int color) {
  final trigonColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 x3, Int16 y3, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int x3, int y3, int color)>('trigonColor');
  return trigonColorLookupFunction(renderer, x1, y1, x2, y2, x3, y3, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int trigonRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int trigonRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int r, int g, int b, int a) {
  final trigonRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<SdlRenderer> renderer,
          Int16 x1,
          Int16 y1,
          Int16 x2,
          Int16 y2,
          Int16 x3,
          Int16 y3,
          Uint8 r,
          Uint8 g,
          Uint8 b,
          Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int x3, int y3, int r, int g, int b, int a)>('trigonRGBA');
  return trigonRgbaLookupFunction(renderer, x1, y1, x2, y2, x3, y3, r, g, b, a);
}

/// AA-Trigon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aatrigonColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color)
/// ```
int aatrigonColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int color) {
  final aatrigonColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 x3, Int16 y3, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int x3, int y3, int color)>('aatrigonColor');
  return aatrigonColorLookupFunction(renderer, x1, y1, x2, y2, x3, y3, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aatrigonRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int aatrigonRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int r, int g, int b, int a) {
  final aatrigonRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<SdlRenderer> renderer,
          Int16 x1,
          Int16 y1,
          Int16 x2,
          Int16 y2,
          Int16 x3,
          Int16 y3,
          Uint8 r,
          Uint8 g,
          Uint8 b,
          Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int x3, int y3, int r, int g, int b, int a)>('aatrigonRGBA');
  return aatrigonRgbaLookupFunction(
      renderer, x1, y1, x2, y2, x3, y3, r, g, b, a);
}

/// Filled Trigon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledTrigonColor(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint32 color)
/// ```
int filledTrigonColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int x3, int y3, int color) {
  final filledTrigonColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x1, Int16 y1,
          Int16 x2, Int16 y2, Int16 x3, Int16 y3, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
          int y2, int x3, int y3, int color)>('filledTrigonColor');
  return filledTrigonColorLookupFunction(
      renderer, x1, y1, x2, y2, x3, y3, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledTrigonRGBA(SDL_Renderer * renderer, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Sint16 x3, Sint16 y3, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int filledTrigonRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int x3, int y3, int r, int g, int b, int a) {
  final filledTrigonRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<SdlRenderer> renderer,
          Int16 x1,
          Int16 y1,
          Int16 x2,
          Int16 y2,
          Int16 x3,
          Int16 y3,
          Uint8 r,
          Uint8 g,
          Uint8 b,
          Uint8 a),
      int Function(
          Pointer<SdlRenderer> renderer,
          int x1,
          int y1,
          int x2,
          int y2,
          int x3,
          int y3,
          int r,
          int g,
          int b,
          int a)>('filledTrigonRGBA');
  return filledTrigonRgbaLookupFunction(
      renderer, x1, y1, x2, y2, x3, y3, r, g, b, a);
}

/// Polygon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int polygonColor(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, Uint32 color)
/// ```
int polygonColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int color) {
  final polygonColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, int n, int color)>('polygonColor');
  return polygonColorLookupFunction(renderer, vx, vy, n, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int polygonRGBA(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int polygonRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  final polygonRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, int n, int r, int g, int b, int a)>('polygonRGBA');
  return polygonRgbaLookupFunction(renderer, vx, vy, n, r, g, b, a);
}

/// AA-Polygon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aapolygonColor(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, Uint32 color)
/// ```
int aapolygonColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int color) {
  final aapolygonColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, int n, int color)>('aapolygonColor');
  return aapolygonColorLookupFunction(renderer, vx, vy, n, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int aapolygonRGBA(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int aapolygonRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  final aapolygonRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(
          Pointer<SdlRenderer> renderer,
          Pointer<Int16> vx,
          Pointer<Int16> vy,
          int n,
          int r,
          int g,
          int b,
          int a)>('aapolygonRGBA');
  return aapolygonRgbaLookupFunction(renderer, vx, vy, n, r, g, b, a);
}

/// Filled Polygon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledPolygonColor(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, Uint32 color)
/// ```
int filledPolygonColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int color) {
  final filledPolygonColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, int n, int color)>('filledPolygonColor');
  return filledPolygonColorLookupFunction(renderer, vx, vy, n, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int filledPolygonRGBA(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int filledPolygonRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  final filledPolygonRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(
          Pointer<SdlRenderer> renderer,
          Pointer<Int16> vx,
          Pointer<Int16> vy,
          int n,
          int r,
          int g,
          int b,
          int a)>('filledPolygonRGBA');
  return filledPolygonRgbaLookupFunction(renderer, vx, vy, n, r, g, b, a);
}

/// Textured Polygon
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int texturedPolygon(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, SDL_Surface * texture,int texture_dx,int texture_dy)
/// ```
int texturedPolygon(
    Pointer<SdlRenderer> renderer,
    Pointer<Int16> vx,
    Pointer<Int16> vy,
    int n,
    Pointer<SdlSurface> texture,
    int textureDx,
    int textureDy) {
  final texturedPolygonLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<SdlRenderer> renderer,
          Pointer<Int16> vx,
          Pointer<Int16> vy,
          Int32 n,
          Pointer<SdlSurface> texture,
          Int32 textureDx,
          Int32 textureDy),
      int Function(
          Pointer<SdlRenderer> renderer,
          Pointer<Int16> vx,
          Pointer<Int16> vy,
          int n,
          Pointer<SdlSurface> texture,
          int textureDx,
          int textureDy)>('texturedPolygon');
  return texturedPolygonLookupFunction(
      renderer, vx, vy, n, texture, textureDx, textureDy);
}

/// Bezier
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int bezierColor(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, int s, Uint32 color)
/// ```
int bezierColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int s, int color) {
  final bezierColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, Int32 n, Int32 s, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
          Pointer<Int16> vy, int n, int s, int color)>('bezierColor');
  return bezierColorLookupFunction(renderer, vx, vy, n, s, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int bezierRGBA(SDL_Renderer * renderer, const Sint16 * vx, const Sint16 * vy, int n, int s, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int bezierRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int s, int r, int g, int b, int a) {
  final bezierRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<SdlRenderer> renderer,
          Pointer<Int16> vx,
          Pointer<Int16> vy,
          Int32 n,
          Int32 s,
          Uint8 r,
          Uint8 g,
          Uint8 b,
          Uint8 a),
      int Function(
          Pointer<SdlRenderer> renderer,
          Pointer<Int16> vx,
          Pointer<Int16> vy,
          int n,
          int s,
          int r,
          int g,
          int b,
          int a)>('bezierRGBA');
  return bezierRgbaLookupFunction(renderer, vx, vy, n, s, r, g, b, a);
}

/// Characters/Strings
/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE void gfxPrimitivesSetFont(const void *fontdata, Uint32 cw, Uint32 ch)
/// ```
void gfxPrimitivesSetFont(Pointer<NativeType> fontdata, int cw, int ch) {
  final gfxPrimitivesSetFontLookupFunction = libSdl2Gfx.lookupFunction<
      Void Function(Pointer<NativeType> fontdata, Uint32 cw, Uint32 ch),
      void Function(Pointer<NativeType> fontdata, int cw,
          int ch)>('gfxPrimitivesSetFont');
  return gfxPrimitivesSetFontLookupFunction(fontdata, cw, ch);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE void gfxPrimitivesSetFontRotation(Uint32 rotation)
/// ```
void gfxPrimitivesSetFontRotation(int rotation) {
  final gfxPrimitivesSetFontRotationLookupFunction = libSdl2Gfx.lookupFunction<
      Void Function(Uint32 rotation),
      void Function(int rotation)>('gfxPrimitivesSetFontRotation');
  return gfxPrimitivesSetFontRotationLookupFunction(rotation);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int characterColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, char c, Uint32 color)
/// ```
int characterColor(
    Pointer<SdlRenderer> renderer, int x, int y, int c, int color) {
  final characterColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int8 c,
          Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int c,
          int color)>('characterColor');
  return characterColorLookupFunction(renderer, x, y, c, color);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int characterRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, char c, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int characterRgba(Pointer<SdlRenderer> renderer, int x, int y, int c, int r,
    int g, int b, int a) {
  final characterRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y, Int8 c,
          Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, int c, int r,
          int g, int b, int a)>('characterRGBA');
  return characterRgbaLookupFunction(renderer, x, y, c, r, g, b, a);
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int stringColor(SDL_Renderer * renderer, Sint16 x, Sint16 y, const char *s, Uint32 color)
/// ```
int stringColor(
    Pointer<SdlRenderer> renderer, int x, int y, String? s, int color) {
  final stringColorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y,
          Pointer<Utf8> s, Uint32 color),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, Pointer<Utf8> s,
          int color)>('stringColor');
  final sPointer = s != null ? s.toNativeUtf8() : nullptr;
  final result = stringColorLookupFunction(renderer, x, y, sPointer, color);
  calloc.free(sPointer);
  return result;
}

/// ```c
/// SDL2_GFXPRIMITIVES_SCOPE int stringRGBA(SDL_Renderer * renderer, Sint16 x, Sint16 y, const char *s, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
/// ```
int stringRgba(Pointer<SdlRenderer> renderer, int x, int y, String? s, int r,
    int g, int b, int a) {
  final stringRgbaLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<SdlRenderer> renderer, Int16 x, Int16 y,
          Pointer<Utf8> s, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SdlRenderer> renderer, int x, int y, Pointer<Utf8> s,
          int r, int g, int b, int a)>('stringRGBA');
  final sPointer = s != null ? s.toNativeUtf8() : nullptr;
  final result = stringRgbaLookupFunction(renderer, x, y, sPointer, r, g, b, a);
  calloc.free(sPointer);
  return result;
}

/// Detect MMX capability in C
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMMXdetect(void)
/// ```
int sdlImageFilterMmXdetect() {
  final sdlImageFilterMmXdetectLookupFunction =
      libSdl2Gfx.lookupFunction<Int32 Function(), int Function()>(
          'SDL_imageFilterMMXdetect');
  return sdlImageFilterMmXdetectLookupFunction();
}

/// Force use of MMX off (or turn possible use back o
/// ```c
/// SDL2_IMAGEFILTER_SCOPE void SDL_imageFilterMMXoff(void)
/// ```
void sdlImageFilterMmXoff() {
  final sdlImageFilterMmXoffLookupFunction =
      libSdl2Gfx.lookupFunction<Void Function(), void Function()>(
          'SDL_imageFilterMMXoff');
  return sdlImageFilterMmXoffLookupFunction();
}

/// ```c
/// SDL2_IMAGEFILTER_SCOPE void SDL_imageFilterMMXon(void)
/// ```
void sdlImageFilterMmXon() {
  final sdlImageFilterMmXonLookupFunction = libSdl2Gfx
      .lookupFunction<Void Function(), void Function()>('SDL_imageFilterMMXon');
  return sdlImageFilterMmXonLookupFunction();
}

/// SDL_imageFilterAdd: D = saturation255(S1 + S
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterAdd(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterAdd(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterAddLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterAdd');
  return sdlImageFilterAddLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterMean: D = S1/2 + S2
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMean(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterMean(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterMeanLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterMean');
  return sdlImageFilterMeanLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterSub: D = saturation0(S1 - S
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterSub(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterSub(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterSubLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterSub');
  return sdlImageFilterSubLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterAbsDiff: D = | S1 - S2
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterAbsDiff(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterAbsDiff(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterAbsDiffLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterAbsDiff');
  return sdlImageFilterAbsDiffLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterMult: D = saturation(S1 * S
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMult(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterMult(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterMultLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterMult');
  return sdlImageFilterMultLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterMultNor: D = S1 * S2   (non-MM
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMultNor(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterMultNor(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterMultNorLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterMultNor');
  return sdlImageFilterMultNorLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterMultDivby2: D = saturation255(S1/2 * S
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMultDivby2(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterMultDivby2(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterMultDivby2LookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterMultDivby2');
  return sdlImageFilterMultDivby2LookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterMultDivby4: D = saturation255(S1/2 * S2/
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMultDivby4(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterMultDivby4(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterMultDivby4LookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterMultDivby4');
  return sdlImageFilterMultDivby4LookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterBitAnd: D = S1 &
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterBitAnd(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterBitAnd(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterBitAndLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterBitAnd');
  return sdlImageFilterBitAndLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterBitOr: D = S1 |
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterBitOr(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterBitOr(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterBitOrLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterBitOr');
  return sdlImageFilterBitOrLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterDiv: D = S1 / S2   (non-MM
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterDiv(unsigned char *Src1, unsigned char *Src2, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterDiv(
    Pointer<Uint8> src1, Pointer<Uint8> src2, Pointer<Uint8> dest, int length) {
  final sdlImageFilterDivLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> src2,
          Pointer<Uint8> dest, int length)>('SDL_imageFilterDiv');
  return sdlImageFilterDivLookupFunction(src1, src2, dest, length);
}

/// SDL_imageFilterBitNegation: D =
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterBitNegation(unsigned char *Src1, unsigned char *Dest, unsigned int length)
/// ```
int sdlImageFilterBitNegation(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length) {
  final sdlImageFilterBitNegationLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest,
          int length)>('SDL_imageFilterBitNegation');
  return sdlImageFilterBitNegationLookupFunction(src1, dest, length);
}

/// SDL_imageFilterAddByte: D = saturation255(S +
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterAddByte(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char C)
/// ```
int sdlImageFilterAddByte(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int c) {
  final sdlImageFilterAddByteLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 c),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int c)>('SDL_imageFilterAddByte');
  return sdlImageFilterAddByteLookupFunction(src1, dest, length, c);
}

/// SDL_imageFilterAddUint: D = saturation255(S + (uint)
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterAddUint(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned int C)
/// ```
int sdlImageFilterAddUint(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int c) {
  final sdlImageFilterAddUintLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint32 c),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int c)>('SDL_imageFilterAddUint');
  return sdlImageFilterAddUintLookupFunction(src1, dest, length, c);
}

/// SDL_imageFilterAddByteToHalf: D = saturation255(S/2 +
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterAddByteToHalf(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char C)
/// ```
int sdlImageFilterAddByteToHalf(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int c) {
  final sdlImageFilterAddByteToHalfLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 c),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int c)>('SDL_imageFilterAddByteToHalf');
  return sdlImageFilterAddByteToHalfLookupFunction(src1, dest, length, c);
}

/// SDL_imageFilterSubByte: D = saturation0(S -
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterSubByte(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char C)
/// ```
int sdlImageFilterSubByte(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int c) {
  final sdlImageFilterSubByteLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 c),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int c)>('SDL_imageFilterSubByte');
  return sdlImageFilterSubByteLookupFunction(src1, dest, length, c);
}

/// SDL_imageFilterSubUint: D = saturation0(S - (uint)
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterSubUint(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned int C)
/// ```
int sdlImageFilterSubUint(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int c) {
  final sdlImageFilterSubUintLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint32 c),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int c)>('SDL_imageFilterSubUint');
  return sdlImageFilterSubUintLookupFunction(src1, dest, length, c);
}

/// SDL_imageFilterShiftRight: D = saturation0(S >>
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterShiftRight(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char N)
/// ```
int sdlImageFilterShiftRight(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int n) {
  final sdlImageFilterShiftRightLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 n),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int n)>('SDL_imageFilterShiftRight');
  return sdlImageFilterShiftRightLookupFunction(src1, dest, length, n);
}

/// SDL_imageFilterShiftRightUint: D = saturation0((uint)S >>
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterShiftRightUint(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char N)
/// ```
int sdlImageFilterShiftRightUint(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int n) {
  final sdlImageFilterShiftRightUintLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 n),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int n)>('SDL_imageFilterShiftRightUint');
  return sdlImageFilterShiftRightUintLookupFunction(src1, dest, length, n);
}

/// SDL_imageFilterMultByByte: D = saturation255(S *
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterMultByByte(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char C)
/// ```
int sdlImageFilterMultByByte(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int c) {
  final sdlImageFilterMultByByteLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 c),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int c)>('SDL_imageFilterMultByByte');
  return sdlImageFilterMultByByteLookupFunction(src1, dest, length, c);
}

/// SDL_imageFilterShiftRightAndMultByByte: D = saturation255((S >> N) *
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterShiftRightAndMultByByte(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char N, unsigned char C)
/// ```
int sdlImageFilterShiftRightAndMultByByte(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int n, int c) {
  final sdlImageFilterShiftRightAndMultByByteLookupFunction =
      libSdl2Gfx.lookupFunction<
          Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> dest,
              Uint32 length, Uint8 n, Uint8 c),
          int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
              int n, int c)>('SDL_imageFilterShiftRightAndMultByByte');
  return sdlImageFilterShiftRightAndMultByByteLookupFunction(
      src1, dest, length, n, c);
}

/// SDL_imageFilterShiftLeftByte: D = (S <<
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterShiftLeftByte(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char N)
/// ```
int sdlImageFilterShiftLeftByte(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int n) {
  final sdlImageFilterShiftLeftByteLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 n),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int n)>('SDL_imageFilterShiftLeftByte');
  return sdlImageFilterShiftLeftByteLookupFunction(src1, dest, length, n);
}

/// SDL_imageFilterShiftLeftUint: D = ((uint)S <<
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterShiftLeftUint(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char N)
/// ```
int sdlImageFilterShiftLeftUint(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int n) {
  final sdlImageFilterShiftLeftUintLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 n),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int n)>('SDL_imageFilterShiftLeftUint');
  return sdlImageFilterShiftLeftUintLookupFunction(src1, dest, length, n);
}

/// SDL_imageFilterShiftLeft: D = saturation255(S <<
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterShiftLeft(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char N)
/// ```
int sdlImageFilterShiftLeft(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int n) {
  final sdlImageFilterShiftLeftLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(
          Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 n),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int n)>('SDL_imageFilterShiftLeft');
  return sdlImageFilterShiftLeftLookupFunction(src1, dest, length, n);
}

/// SDL_imageFilterBinarizeUsingThreshold: D = S >= T ? 255
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterBinarizeUsingThreshold(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char T)
/// ```
int sdlImageFilterBinarizeUsingThreshold(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int t) {
  final sdlImageFilterBinarizeUsingThresholdLookupFunction =
      libSdl2Gfx.lookupFunction<
          Int32 Function(
              Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length, Uint8 t),
          int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
              int t)>('SDL_imageFilterBinarizeUsingThreshold');
  return sdlImageFilterBinarizeUsingThresholdLookupFunction(
      src1, dest, length, t);
}

/// SDL_imageFilterClipToRange: D = (S >= Tmin) & (S <= Tmax) 255
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterClipToRange(unsigned char *Src1, unsigned char *Dest, unsigned int length, unsigned char Tmin, unsigned char Tmax)
/// ```
int sdlImageFilterClipToRange(
    Pointer<Uint8> src1, Pointer<Uint8> dest, int length, int tmin, int tmax) {
  final sdlImageFilterClipToRangeLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src1, Pointer<Uint8> dest, Uint32 length,
          Uint8 tmin, Uint8 tmax),
      int Function(Pointer<Uint8> src1, Pointer<Uint8> dest, int length,
          int tmin, int tmax)>('SDL_imageFilterClipToRange');
  return sdlImageFilterClipToRangeLookupFunction(
      src1, dest, length, tmin, tmax);
}

/// SDL_imageFilterNormalizeLinear: D = saturation255((Nmax - Nmin)/(Cmax - Cmin)*(S - Cmin) + Nmi
/// ```c
/// SDL2_IMAGEFILTER_SCOPE int SDL_imageFilterNormalizeLinear(unsigned char *Src, unsigned char *Dest, unsigned int length, int Cmin, int Cmax, int Nmin, int Nmax)
/// ```
int sdlImageFilterNormalizeLinear(Pointer<Uint8> src, Pointer<Uint8> dest,
    int length, int cmin, int cmax, int nmin, int nmax) {
  final sdlImageFilterNormalizeLinearLookupFunction = libSdl2Gfx.lookupFunction<
      Int32 Function(Pointer<Uint8> src, Pointer<Uint8> dest, Uint32 length,
          Int32 cmin, Int32 cmax, Int32 nmin, Int32 nmax),
      int Function(
          Pointer<Uint8> src,
          Pointer<Uint8> dest,
          int length,
          int cmin,
          int cmax,
          int nmin,
          int nmax)>('SDL_imageFilterNormalizeLinear');
  return sdlImageFilterNormalizeLinearLookupFunction(
      src, dest, length, cmin, cmax, nmin, nmax);
}

///
///
/// otozoom functions
///
/// /
/// ```c
/// SDL2_ROTOZOOM_SCOPE SDL_Surface *rotozoomSurface(SDL_Surface * src, double angle, double zoom, int smooth)
/// ```
Pointer<SdlSurface> rotozoomSurface(
    Pointer<SdlSurface> src, double angle, double zoom, int smooth) {
  final rotozoomSurfaceLookupFunction = libSdl2Gfx.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<SdlSurface> src, Double angle, Double zoom, Int32 smooth),
      Pointer<SdlSurface> Function(Pointer<SdlSurface> src, double angle,
          double zoom, int smooth)>('rotozoomSurface');
  return rotozoomSurfaceLookupFunction(src, angle, zoom, smooth);
}

/// ```c
/// SDL2_ROTOZOOM_SCOPE SDL_Surface *rotozoomSurfaceXY (SDL_Surface * src, double angle, double zoomx, double zoomy, int smooth)
/// ```
Pointer<SdlSurface> rotozoomSurfaceXy(Pointer<SdlSurface> src, double angle,
    double zoomx, double zoomy, int smooth) {
  final rotozoomSurfaceXyLookupFunction = libSdl2Gfx.lookupFunction<
      Pointer<SdlSurface> Function(Pointer<SdlSurface> src, Double angle,
          Double zoomx, Double zoomy, Int32 smooth),
      Pointer<SdlSurface> Function(Pointer<SdlSurface> src, double angle,
          double zoomx, double zoomy, int smooth)>('rotozoomSurfaceXY');
  return rotozoomSurfaceXyLookupFunction(src, angle, zoomx, zoomy, smooth);
}

/// ```c
/// SDL2_ROTOZOOM_SCOPE void rotozoomSurfaceSize(int width, int height, double angle, double zoom, int *dstwidth, int *dstheight)
/// ```
void rotozoomSurfaceSize(int width, int height, double angle, double zoom,
    Pointer<Int32> dstwidth, Pointer<Int32> dstheight) {
  final rotozoomSurfaceSizeLookupFunction = libSdl2Gfx.lookupFunction<
      Void Function(Int32 width, Int32 height, Double angle, Double zoom,
          Pointer<Int32> dstwidth, Pointer<Int32> dstheight),
      void Function(
          int width,
          int height,
          double angle,
          double zoom,
          Pointer<Int32> dstwidth,
          Pointer<Int32> dstheight)>('rotozoomSurfaceSize');
  return rotozoomSurfaceSizeLookupFunction(
      width, height, angle, zoom, dstwidth, dstheight);
}

/// ```c
/// SDL2_ROTOZOOM_SCOPE void rotozoomSurfaceSizeXY (int width, int height, double angle, double zoomx, double zoomy, int *dstwidth, int *dstheight)
/// ```
void rotozoomSurfaceSizeXy(int width, int height, double angle, double zoomx,
    double zoomy, Pointer<Int32> dstwidth, Pointer<Int32> dstheight) {
  final rotozoomSurfaceSizeXyLookupFunction = libSdl2Gfx.lookupFunction<
      Void Function(Int32 width, Int32 height, Double angle, Double zoomx,
          Double zoomy, Pointer<Int32> dstwidth, Pointer<Int32> dstheight),
      void Function(
          int width,
          int height,
          double angle,
          double zoomx,
          double zoomy,
          Pointer<Int32> dstwidth,
          Pointer<Int32> dstheight)>('rotozoomSurfaceSizeXY');
  return rotozoomSurfaceSizeXyLookupFunction(
      width, height, angle, zoomx, zoomy, dstwidth, dstheight);
}

///
///
/// ooming functions
///
/// /
/// ```c
/// SDL2_ROTOZOOM_SCOPE SDL_Surface *zoomSurface(SDL_Surface * src, double zoomx, double zoomy, int smooth)
/// ```
Pointer<SdlSurface> zoomSurface(
    Pointer<SdlSurface> src, double zoomx, double zoomy, int smooth) {
  final zoomSurfaceLookupFunction = libSdl2Gfx.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<SdlSurface> src, Double zoomx, Double zoomy, Int32 smooth),
      Pointer<SdlSurface> Function(Pointer<SdlSurface> src, double zoomx,
          double zoomy, int smooth)>('zoomSurface');
  return zoomSurfaceLookupFunction(src, zoomx, zoomy, smooth);
}

/// ```c
/// SDL2_ROTOZOOM_SCOPE void zoomSurfaceSize(int width, int height, double zoomx, double zoomy, int *dstwidth, int *dstheight)
/// ```
void zoomSurfaceSize(int width, int height, double zoomx, double zoomy,
    Pointer<Int32> dstwidth, Pointer<Int32> dstheight) {
  final zoomSurfaceSizeLookupFunction = libSdl2Gfx.lookupFunction<
      Void Function(Int32 width, Int32 height, Double zoomx, Double zoomy,
          Pointer<Int32> dstwidth, Pointer<Int32> dstheight),
      void Function(
          int width,
          int height,
          double zoomx,
          double zoomy,
          Pointer<Int32> dstwidth,
          Pointer<Int32> dstheight)>('zoomSurfaceSize');
  return zoomSurfaceSizeLookupFunction(
      width, height, zoomx, zoomy, dstwidth, dstheight);
}

///
///
/// hrinking functions
///
/// /
/// ```c
/// SDL2_ROTOZOOM_SCOPE SDL_Surface *shrinkSurface(SDL_Surface * src, int factorx, int factory)
/// ```
Pointer<SdlSurface> shrinkSurface(
    Pointer<SdlSurface> src, int factorx, int factory) {
  final shrinkSurfaceLookupFunction = libSdl2Gfx.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<SdlSurface> src, Int32 factorx, Int32 factory),
      Pointer<SdlSurface> Function(
          Pointer<SdlSurface> src, int factorx, int factory)>('shrinkSurface');
  return shrinkSurfaceLookupFunction(src, factorx, factory);
}

///
///
/// pecialized rotation functions
///
/// /
/// ```c
/// SDL2_ROTOZOOM_SCOPE SDL_Surface* rotateSurface90Degrees(SDL_Surface* src, int numClockwiseTurns)
/// ```
Pointer<SdlSurface> rotateSurface90Degrees(
    Pointer<SdlSurface> src, int numClockwiseTurns) {
  final rotateSurface90DegreesLookupFunction = libSdl2Gfx.lookupFunction<
      Pointer<SdlSurface> Function(
          Pointer<SdlSurface> src, Int32 numClockwiseTurns),
      Pointer<SdlSurface> Function(Pointer<SdlSurface> src,
          int numClockwiseTurns)>('rotateSurface90Degrees');
  return rotateSurface90DegreesLookupFunction(src, numClockwiseTurns);
}
