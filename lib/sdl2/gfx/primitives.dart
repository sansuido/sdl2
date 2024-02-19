/* 

SDL2_gfxPrimitives.c: graphics primitives for SDL2 renderers

Copyright (C) 2012-2014  Andreas Schiffler

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not
claim that you wrote the original software. If you use this software
in a product, an acknowledgment in the product documentation would be
appreciated but is not required.

2. Altered source versions must be plainly marked as such, and must not be
misrepresented as being the original software.

3. This notice may not be removed or altered from any source
distribution.

Andreas Schiffler -- aschiffler at ferzkopp dot net

*/
import 'dart:ffi';
import 'dart:math';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import '../generated/const_sdl.dart';
import '../generated/lib_sdl_render.dart';
import '../generated/lib_sdl_stdinc.dart';
import '../generated/lib_sdl_surface.dart';
import '../generated/struct_sdl.dart';
import 'primitives_font.dart';
import 'rotozoom.dart';

var charRotation = 0;
var charSize = 8;
var charWidth = 8;
var charHeight = 8;
var charWidthLocal = 8;
var charHeightLocal = 8;
var charPitch = 1;
var currentFontdata = gfxPrimitivesFontdata;
const aaLevels = 256;
const aaBits = 8;
const defaultEllipseOverscan = 4;

/* ---- Pixel */

/*!
\brief Draw pixel  in currently set color.

\param renderer The renderer to draw on.
\param x X (horizontal) coordinate of the pixel.
\param y Y (vertical) coordinate of the pixel.

\returns Returns 0 on success, -1 on failure.
*/
int pixel(Pointer<SdlRenderer> renderer, int x, int y) {
  return sdlRenderDrawPoint(renderer, x, y);
}

/*!
\brief Draw pixel with blending enabled if a<255.

\param renderer The renderer to draw on.
\param x X (horizontal) coordinate of the pixel.
\param y Y (vertical) coordinate of the pixel.
\param color The color value of the pixel to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int pixelColor(Pointer<SdlRenderer> renderer, int x, int y, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return pixelRgba(renderer, x, y, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw pixel with blending enabled if a<255.

\param renderer The renderer to draw on.
\param x X (horizontal) coordinate of the pixel.
\param y Y (vertical) coordinate of the pixel.
\param r The red color value of the pixel to draw. 
\param g The green color value of the pixel to draw.
\param b The blue color value of the pixel to draw.
\param a The alpha value of the pixel to draw.

\returns Returns 0 on success, -1 on failure.
*/
int pixelRgba(
    Pointer<SdlRenderer> renderer, int x, int y, int r, int g, int b, int a) {
  int result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
  result |= sdlRenderDrawPoint(renderer, x, y);
  return result;
}

/*!
\brief Draw pixel with blending enabled and using alpha weight on color.

\param renderer The renderer to draw on.
\param x The horizontal coordinate of the pixel.
\param y The vertical position of the pixel.
\param r The red color value of the pixel to draw. 
\param g The green color value of the pixel to draw.
\param b The blue color value of the pixel to draw.
\param a The alpha value of the pixel to draw.
\param weight The weight multiplied into the alpha value of the pixel.

\returns Returns 0 on success, -1 on failure.
*/
int pixelRgbaWeight(Pointer<SdlRenderer> renderer, int x, int y, int r, int g,
    int b, int a, int weight) {
  /*
	* Modify Alpha by weight 
	*/
  int ax = a;
  ax = ((ax * weight) >> 8);
  if (ax > 255) {
    a = 255;
  } else {
    a = ax & 0x000000ff;
  }
  return pixelRgba(renderer, x, y, r, g, b, a);
}

/* ---- Hline */

/*!
\brief Draw horizontal line in currently set color

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. left) of the line.
\param x2 X coordinate of the second point (i.e. right) of the line.
\param y Y coordinate of the points of the line.

\returns Returns 0 on success, -1 on failure.
*/
int hline(Pointer<SdlRenderer> renderer, int x1, int x2, int y) {
  return sdlRenderDrawLine(renderer, x1, y, x2, y);
}

/*!
\brief Draw horizontal line with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. left) of the line.
\param x2 X coordinate of the second point (i.e. right) of the line.
\param y Y coordinate of the points of the line.
\param color The color value of the line to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int hlineColor(
    Pointer<SdlRenderer> renderer, int x1, int x2, int y, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return hlineRgba(renderer, x1, x2, y, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw horizontal line with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. left) of the line.
\param x2 X coordinate of the second point (i.e. right) of the line.
\param y Y coordinate of the points of the line.
\param r The red value of the line to draw. 
\param g The green value of the line to draw. 
\param b The blue value of the line to draw. 
\param a The alpha value of the line to draw. 

\returns Returns 0 on success, -1 on failure.
*/
int hlineRgba(Pointer<SdlRenderer> renderer, int x1, int x2, int y, int r,
    int g, int b, int a) {
  int result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
  result |= sdlRenderDrawLine(renderer, x1, y, x2, y);
  return result;
}

/* ---- Vline */

/*!
\brief Draw vertical line in currently set color

\param renderer The renderer to draw on.
\param x X coordinate of points of the line.
\param y1 Y coordinate of the first point (i.e. top) of the line.
\param y2 Y coordinate of the second point (i.e. bottom) of the line.

\returns Returns 0 on success, -1 on failure.
*/
int vline(Pointer<SdlRenderer> renderer, int x, int y1, int y2) {
  return sdlRenderDrawLine(renderer, x, y1, x, y2);
}

/*!
\brief Draw vertical line with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the points of the line.
\param y1 Y coordinate of the first point (i.e. top) of the line.
\param y2 Y coordinate of the second point (i.e. bottom) of the line.
\param color The color value of the line to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int vlineColor(
    Pointer<SdlRenderer> renderer, int x, int y1, int y2, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return vlineRgba(renderer, x, y1, y2, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw vertical line with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the points of the line.
\param y1 Y coordinate of the first point (i.e. top) of the line.
\param y2 Y coordinate of the second point (i.e. bottom) of the line.
\param r The red value of the line to draw. 
\param g The green value of the line to draw. 
\param b The blue value of the line to draw. 
\param a The alpha value of the line to draw. 

\returns Returns 0 on success, -1 on failure.
*/
int vlineRgba(Pointer<SdlRenderer> renderer, int x, int y1, int y2, int r,
    int g, int b, int a) {
  int result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
  result |= sdlRenderDrawLine(renderer, x, y1, x, y2);
  return result;
}

/* ---- Rectangle */

/*!
\brief Draw rectangle with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the rectangle.
\param y1 Y coordinate of the first point (i.e. top right) of the rectangle.
\param x2 X coordinate of the second point (i.e. bottom left) of the rectangle.
\param y2 Y coordinate of the second point (i.e. bottom left) of the rectangle.
\param color The color value of the rectangle to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int rectangleColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return rectangleRgba(renderer, x1, y1, x2, y2, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw rectangle with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the rectangle.
\param y1 Y coordinate of the first point (i.e. top right) of the rectangle.
\param x2 X coordinate of the second point (i.e. bottom left) of the rectangle.
\param y2 Y coordinate of the second point (i.e. bottom left) of the rectangle.
\param r The red value of the rectangle to draw. 
\param g The green value of the rectangle to draw. 
\param b The blue value of the rectangle to draw. 
\param a The alpha value of the rectangle to draw. 

\returns Returns 0 on success, -1 on failure.
*/
int rectangleRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  int result;
  int tmp;

  /*
	* Test for special cases of straight lines or single point 
	*/
  if (x1 == x2) {
    if (y1 == y2) {
      return (pixelRgba(renderer, x1, y1, r, g, b, a));
    } else {
      return (vlineRgba(renderer, x1, y1, y2, r, g, b, a));
    }
  } else {
    if (y1 == y2) {
      return (hlineRgba(renderer, x1, x2, y1, r, g, b, a));
    }
  }

  /*
	* Swap x1, x2 if required 
	*/
  if (x1 > x2) {
    tmp = x1;
    x1 = x2;
    x2 = tmp;
  }

  /*
	* Swap y1, y2 if required 
	*/
  if (y1 > y2) {
    tmp = y1;
    y1 = y2;
    y2 = tmp;
  }

  /* 
	* Create destination rect
	*/
  var rect = calloc<SdlRect>();
  rect.ref.x = x1;
  rect.ref.y = y1;
  rect.ref.w = x2 - x1;
  rect.ref.h = y2 - y1;

  /*
	* Draw
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
  result |= sdlRenderDrawRect(renderer, rect);
  calloc.free(rect);
  return result;
}

/* ---- Rounded Rectangle */

/*!
\brief Draw rounded-corner rectangle with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the rectangle.
\param y1 Y coordinate of the first point (i.e. top right) of the rectangle.
\param x2 X coordinate of the second point (i.e. bottom left) of the rectangle.
\param y2 Y coordinate of the second point (i.e. bottom left) of the rectangle.
\param rad The radius of the corner arc.
\param color The color value of the rectangle to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int roundedRectangleColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return roundedRectangleRgba(
      renderer, x1, y1, x2, y2, rad, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw rounded-corner rectangle with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the rectangle.
\param y1 Y coordinate of the first point (i.e. top right) of the rectangle.
\param x2 X coordinate of the second point (i.e. bottom left) of the rectangle.
\param y2 Y coordinate of the second point (i.e. bottom left) of the rectangle.
\param rad The radius of the corner arc.
\param r The red value of the rectangle to draw. 
\param g The green value of the rectangle to draw. 
\param b The blue value of the rectangle to draw. 
\param a The alpha value of the rectangle to draw. 

\returns Returns 0 on success, -1 on failure.
*/
int roundedRectangleRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int r, int g, int b, int a) {
  int result = 0;
  int tmp;
  int w, h;
  int xx1, xx2;
  int yy1, yy2;

  /*
	* Check renderer
	*/
  if (renderer == nullptr) {
    return -1;
  }

  /*
	* Check radius vor valid range
	*/
  if (rad < 0) {
    return -1;
  }

  /*
	* Special case - no rounding
	*/
  if (rad <= 1) {
    return rectangleRgba(renderer, x1, y1, x2, y2, r, g, b, a);
  }

  /*
	* Test for special cases of straight lines or single point 
	*/
  if (x1 == x2) {
    if (y1 == y2) {
      return (pixelRgba(renderer, x1, y1, r, g, b, a));
    } else {
      return (vlineRgba(renderer, x1, y1, y2, r, g, b, a));
    }
  } else {
    if (y1 == y2) {
      return (hlineRgba(renderer, x1, x2, y1, r, g, b, a));
    }
  }

  /*
	* Swap x1, x2 if required 
	*/
  if (x1 > x2) {
    tmp = x1;
    x1 = x2;
    x2 = tmp;
  }

  /*
	* Swap y1, y2 if required 
	*/
  if (y1 > y2) {
    tmp = y1;
    y1 = y2;
    y2 = tmp;
  }

  /*
	* Calculate width&height 
	*/
  w = x2 - x1;
  h = y2 - y1;

  /*
	* Maybe adjust radius
	*/
  if ((rad * 2) > w) {
    rad = w ~/ 2;
  }
  if ((rad * 2) > h) {
    rad = h ~/ 2;
  }

  /*
	* Draw corners
	*/
  xx1 = x1 + rad;
  xx2 = x2 - rad;
  yy1 = y1 + rad;
  yy2 = y2 - rad;
  result |= arcRgba(renderer, xx1, yy1, rad, 180, 270, r, g, b, a);
  result |= arcRgba(renderer, xx2, yy1, rad, 270, 360, r, g, b, a);
  result |= arcRgba(renderer, xx1, yy2, rad, 90, 180, r, g, b, a);
  result |= arcRgba(renderer, xx2, yy2, rad, 0, 90, r, g, b, a);

  /*
	* Draw lines
	*/
  if (xx1 <= xx2) {
    result |= hlineRgba(renderer, xx1, xx2, y1, r, g, b, a);
    result |= hlineRgba(renderer, xx1, xx2, y2, r, g, b, a);
  }
  if (yy1 <= yy2) {
    result |= vlineRgba(renderer, x1, yy1, yy2, r, g, b, a);
    result |= vlineRgba(renderer, x2, yy1, yy2, r, g, b, a);
  }
  return result;
}

/* ---- Rounded Box */

/*!
\brief Draw rounded-corner box (filled rectangle) with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the box.
\param y1 Y coordinate of the first point (i.e. top right) of the box.
\param x2 X coordinate of the second point (i.e. bottom left) of the box.
\param y2 Y coordinate of the second point (i.e. bottom left) of the box.
\param rad The radius of the corner arcs of the box.
\param color The color value of the box to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int roundedBoxColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return roundedBoxRgba(
      renderer, x1, y1, x2, y2, rad, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw rounded-corner box (filled rectangle) with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the box.
\param y1 Y coordinate of the first point (i.e. top right) of the box.
\param x2 X coordinate of the second point (i.e. bottom left) of the box.
\param y2 Y coordinate of the second point (i.e. bottom left) of the box.
\param rad The radius of the corner arcs of the box.
\param r The red value of the box to draw. 
\param g The green value of the box to draw. 
\param b The blue value of the box to draw. 
\param a The alpha value of the box to draw. 

\returns Returns 0 on success, -1 on failure.
*/
int roundedBoxRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int rad, int r, int g, int b, int a) {
  int result;
  int w, h, r2, tmp;
  int cx = 0;
  int cy = rad;
  int ocx = 0xffff;
  int ocy = 0xffff;
  int df = 1 - rad;
  int dE = 3;
  int dSe = -2 * rad + 5;
  int xpcx, xmcx, xpcy, xmcy;
  int ypcy, ymcy, ypcx, ymcx;
  int x, y, dx, dy;

  /* 
	* Check destination renderer 
	*/
  if (renderer == nullptr) {
    return -1;
  }

  /*
	* Check radius vor valid range
	*/
  if (rad < 0) {
    return -1;
  }

  /*
	* Special case - no rounding
	*/
  if (rad <= 1) {
    return boxRgba(renderer, x1, y1, x2, y2, r, g, b, a);
  }

  /*
	* Test for special cases of straight lines or single point 
	*/
  if (x1 == x2) {
    if (y1 == y2) {
      return (pixelRgba(renderer, x1, y1, r, g, b, a));
    } else {
      return (vlineRgba(renderer, x1, y1, y2, r, g, b, a));
    }
  } else {
    if (y1 == y2) {
      return (hlineRgba(renderer, x1, x2, y1, r, g, b, a));
    }
  }

  /*
	* Swap x1, x2 if required 
	*/
  if (x1 > x2) {
    tmp = x1;
    x1 = x2;
    x2 = tmp;
  }

  /*
	* Swap y1, y2 if required 
	*/
  if (y1 > y2) {
    tmp = y1;
    y1 = y2;
    y2 = tmp;
  }

  /*
	* Calculate width&height 
	*/
  w = x2 - x1 + 1;
  h = y2 - y1 + 1;

  /*
	* Maybe adjust radius
	*/
  r2 = rad + rad;
  if (r2 > w) {
    rad = w ~/ 2;
    r2 = rad + rad;
  }
  if (r2 > h) {
    rad = h ~/ 2;
  }

  /* Setup filled circle drawing for corners */
  x = x1 + rad;
  y = y1 + rad;
  dx = x2 - x1 - rad - rad;
  dy = y2 - y1 - rad - rad;

  /*
	* Set color
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);

  /*
	* Draw corners
	*/
  do {
    xpcx = x + cx;
    xmcx = x - cx;
    xpcy = x + cy;
    xmcy = x - cy;
    if (ocy != cy) {
      if (cy > 0) {
        ypcy = y + cy;
        ymcy = y - cy;
        result |= hline(renderer, xmcx, xpcx + dx, ypcy + dy);
        result |= hline(renderer, xmcx, xpcx + dx, ymcy);
      } else {
        result |= hline(renderer, xmcx, xpcx + dx, y);
      }
      ocy = cy;
    }
    if (ocx != cx) {
      if (cx != cy) {
        if (cx > 0) {
          ypcx = y + cx;
          ymcx = y - cx;
          result |= hline(renderer, xmcy, xpcy + dx, ymcx);
          result |= hline(renderer, xmcy, xpcy + dx, ypcx + dy);
        } else {
          result |= hline(renderer, xmcy, xpcy + dx, y);
        }
      }
      ocx = cx;
    }

    /*
		* Update 
		*/
    if (df < 0) {
      df += dE;
      dE += 2;
      dSe += 2;
    } else {
      df += dSe;
      dE += 2;
      dSe += 4;
      cy--;
    }
    cx++;
  } while (cx <= cy);

  /* Inside */
  if (dx > 0 && dy > 0) {
    result |= boxRgba(renderer, x1, y1 + rad + 1, x2, y2 - rad, r, g, b, a);
  }
  return (result);
}

/* ---- Box */

/*!
\brief Draw box (filled rectangle) with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the box.
\param y1 Y coordinate of the first point (i.e. top right) of the box.
\param x2 X coordinate of the second point (i.e. bottom left) of the box.
\param y2 Y coordinate of the second point (i.e. bottom left) of the box.
\param color The color value of the box to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int boxColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return boxRgba(renderer, x1, y1, x2, y2, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw box (filled rectangle) with blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. top right) of the box.
\param y1 Y coordinate of the first point (i.e. top right) of the box.
\param x2 X coordinate of the second point (i.e. bottom left) of the box.
\param y2 Y coordinate of the second point (i.e. bottom left) of the box.
\param r The red value of the box to draw. 
\param g The green value of the box to draw. 
\param b The blue value of the box to draw. 
\param a The alpha value of the box to draw.

\returns Returns 0 on success, -1 on failure.
*/
int boxRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  int result;
  int tmp;

  /*
	* Test for special cases of straight lines or single point 
	*/
  if (x1 == x2) {
    if (y1 == y2) {
      return (pixelRgba(renderer, x1, y1, r, g, b, a));
    } else {
      return (vlineRgba(renderer, x1, y1, y2, r, g, b, a));
    }
  } else {
    if (y1 == y2) {
      return (hlineRgba(renderer, x1, x2, y1, r, g, b, a));
    }
  }

  /*
	* Swap x1, x2 if required 
	*/
  if (x1 > x2) {
    tmp = x1;
    x1 = x2;
    x2 = tmp;
  }

  /*
	* Swap y1, y2 if required 
	*/
  if (y1 > y2) {
    tmp = y1;
    y1 = y2;
    y2 = tmp;
  }

  /* 
	* Create destination rect
	*/
  var rect = calloc<SdlRect>();
  rect.ref.x = x1;
  rect.ref.y = y1;
  rect.ref.w = x2 - x1;
  rect.ref.h = y2 - y1;
  // changed 1.5.3
  //rect.ref.w = x2 - x1 + 1;
  //rect.ref.h = y2 - y1 + 1;

  /*
	* Draw
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
  result |= sdlRenderFillRect(renderer, rect);
  calloc.free(rect);
  return result;
}

/* ----- Line */

/*!
\brief Draw line with alpha blending using the currently set color.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the line.
\param y1 Y coordinate of the first point of the line.
\param x2 X coordinate of the second point of the line.
\param y2 Y coordinate of the second point of the line.

\returns Returns 0 on success, -1 on failure.
*/
int line(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2) {
  /*
	* Draw
	*/
  return sdlRenderDrawLine(renderer, x1, y1, x2, y2);
}

/*!
\brief Draw line with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the line.
\param y1 Y coordinate of the first point of the line.
\param x2 X coordinate of the second point of the line.
\param y2 Y coordinate of the seond point of the line.
\param color The color value of the line to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int lineColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return lineRgba(renderer, x1, y1, x2, y2, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw line with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the line.
\param y1 Y coordinate of the first point of the line.
\param x2 X coordinate of the second point of the line.
\param y2 Y coordinate of the second point of the line.
\param r The red value of the line to draw. 
\param g The green value of the line to draw. 
\param b The blue value of the line to draw. 
\param a The alpha value of the line to draw.

\returns Returns 0 on success, -1 on failure.
*/
int lineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  /*
	* Draw
	*/
  int result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
  result |= sdlRenderDrawLine(renderer, x1, y1, x2, y2);
  return result;
}

/*!
\brief Internal function to draw anti-aliased line with alpha blending and endpoint control.

This implementation of the Wu antialiasing code is based on Mike Abrash's
DDJ article which was reprinted as Chapter 42 of his Graphics Programming
Black Book, but has been optimized to work with SDL and utilizes 32-bit
fixed-point arithmetic by A. Schiffler. The endpoint control allows the
supression to draw the last pixel useful for rendering continous aa-lines
with alpha<255.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the aa-line.
\param y1 Y coordinate of the first point of the aa-line.
\param x2 X coordinate of the second point of the aa-line.
\param y2 Y coordinate of the second point of the aa-line.
\param r The red value of the aa-line to draw. 
\param g The green value of the aa-line to draw. 
\param b The blue value of the aa-line to draw. 
\param a The alpha value of the aa-line to draw.
\param draw_endpoint Flag indicating if the endpoint should be drawn; draw if non-zero.

\returns Returns 0 on success, -1 on failure.
*/
int _aalineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a, int drawEndpoint) {
  int xx0, yy0, xx1, yy1;
  int result;
  double erracc, erradj;
  int wgt;
  int dx, dy, tmp, xdir, y0p1, x0pxdir;

  /*
	* Keep on working with 32bit numbers 
	*/
  xx0 = x1;
  yy0 = y1;
  xx1 = x2;
  yy1 = y2;

  /*
	* Reorder points to make dy positive 
	*/
  if (yy0 > yy1) {
    tmp = yy0;
    yy0 = yy1;
    yy1 = tmp;
    tmp = xx0;
    xx0 = xx1;
    xx1 = tmp;
  }

  /*
	* Calculate distance 
	*/
  dx = xx1 - xx0;
  dy = yy1 - yy0;

  /*
	* Adjust for negative dx and set xdir 
	*/
  if (dx >= 0) {
    xdir = 1;
  } else {
    xdir = -1;
    dx = (-dx);
  }

  /*
	* Check for special cases 
	*/
  if (dx == 0) {
    /*
		* Vertical line 
		*/
    if (drawEndpoint != 0) {
      return (vlineRgba(renderer, x1, y1, y2, r, g, b, a));
    } else {
      if (dy > 0) {
        return (vlineRgba(renderer, x1, yy0, yy0 + dy, r, g, b, a));
      } else {
        return (pixelRgba(renderer, x1, y1, r, g, b, a));
      }
    }
  } else if (dy == 0) {
    /*
		* Horizontal line 
		*/
    if (drawEndpoint != 0) {
      return (hlineRgba(renderer, x1, x2, y1, r, g, b, a));
    } else {
      if (dx > 0) {
        return (hlineRgba(renderer, xx0, xx0 + (xdir * dx), y1, r, g, b, a));
      } else {
        return (pixelRgba(renderer, x1, y1, r, g, b, a));
      }
    }
  } else if ((dx == dy) && (drawEndpoint != 0)) {
    /*
		* Diagonal line (with endpoint)
		*/
    return (lineRgba(renderer, x1, y1, x2, y2, r, g, b, a));
  }

  /*
	* Line is not horizontal, vertical or diagonal (with endpoint)
	*/
  result = 0;

  /*
	* Zero accumulator 
	*/
  erracc = 0;

  /*
	* # of bits by which to shift erracc to get intensity level 
	*/

  /*
	* Mask used to flip all bits in an intensity weighting 
	*/

  /*
	* Draw the initial pixel in the foreground color 
	*/
  result |= pixelRgba(renderer, x1, y1, r, g, b, a);

  /*
	* x-major or y-major? 
	*/
  if (dy > dx) {
    /*
		* y-major.  Calculate 16-bit fixed point fractional part of a pixel that
		* X advances every time Y advances 1 pixel, truncating the result so that
		* we won't overrun the endpoint along the X axis 
		*/
    /*
		* Not-so-portable version: erradj = ((Uint64)dx << 32) / (Uint64)dy; 
		*/
    erradj = dx / dy;

    /*
		* draw all pixels other than the first and last 
		*/
    x0pxdir = xx0 + xdir;
    while ((--dy) != 0) {
      erracc += erradj;
      while (erracc > 1) {
        erracc -= 1;
        xx0 = x0pxdir;
        x0pxdir += xdir;
      }
      //erracctmp = erracc;
      //erracc += erradj;
      //if (erracc <= erracctmp) {
      //  print('$erracc <= $erracctmp');
      //  /*
      //	* rollover in error accumulator, x coord advances
      //	*/
      //  xx0 = x0pxdir;
      //  x0pxdir += xdir;
      //}
      yy0++; /* y-major so always advance Y */

      /*
			* the AAbits most significant bits of erracc give us the intensity
			* weighting for this pixel, and the complement of the weighting for
			* the paired pixel. 
			*/
      wgt = (erracc * 256).toInt() & 255;
      result |= pixelRgbaWeight(renderer, xx0, yy0, r, g, b, a, 255 - wgt);
      result |= pixelRgbaWeight(renderer, x0pxdir, yy0, r, g, b, a, wgt);
    }
  } else {
    /*
		* x-major line.  Calculate 16-bit fixed-point fractional part of a pixel
		* that Y advances each time X advances 1 pixel, truncating the result so
		* that we won't overrun the endpoint along the X axis. 
		*/
    /*
		* Not-so-portable version: erradj = ((Uint64)dy << 32) / (Uint64)dx; 
		*/
    erradj = dy / dx;

    /*
		* draw all pixels other than the first and last 
		*/
    y0p1 = yy0 + 1;
    while ((--dx) != 0) {
      erracc += erradj;
      while (erracc > 1) {
        erracc -= 1;
        yy0 = y0p1;
        y0p1++;
      }
      xx0 += xdir; /* x-major so always advance X */
      /*
			* the AAbits most significant bits of erracc give us the intensity
			* weighting for this pixel, and the complement of the weighting for
			* the paired pixel. 
			*/
      wgt = (erracc * 256).toInt() & 255;
      result |= pixelRgbaWeight(renderer, xx0, yy0, r, g, b, a, 255 - wgt);
      result |= pixelRgbaWeight(renderer, xx0, y0p1, r, g, b, a, wgt);
    }
  }

  /*
	* Do we have to draw the endpoint 
	*/
  if (drawEndpoint != 0) {
    /*
		* Draw final pixel, always exactly intersected by the line and doesn't
		* need to be weighted. 
		*/
    result |= pixelRgba(renderer, x2, y2, r, g, b, a);
  }

  return (result);
}

/*!
\brief Draw anti-aliased line with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the aa-line.
\param y1 Y coordinate of the first point of the aa-line.
\param x2 X coordinate of the second point of the aa-line.
\param y2 Y coordinate of the second point of the aa-line.
\param color The color value of the aa-line to draw (0xRRGGBBAA).

\returns Returns 0 on success, -1 on failure.
*/
int aalineColor(
    Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return _aalineRgba(renderer, x1, y1, x2, y2, co[0], co[1], co[2], co[3], 1);
}

/*!
\brief Draw anti-aliased line with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the aa-line.
\param y1 Y coordinate of the first point of the aa-line.
\param x2 X coordinate of the second point of the aa-line.
\param y2 Y coordinate of the second point of the aa-line.
\param r The red value of the aa-line to draw. 
\param g The green value of the aa-line to draw. 
\param b The blue value of the aa-line to draw. 
\param a The alpha value of the aa-line to draw.

\returns Returns 0 on success, -1 on failure.
*/
int aalineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int r, int g, int b, int a) {
  return _aalineRgba(renderer, x1, y1, x2, y2, r, g, b, a, 1);
}

/* ----- Circle */

/*!
\brief Draw circle with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the circle.
\param y Y coordinate of the center of the circle.
\param rad Radius in pixels of the circle.
\param color The color value of the circle to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int circleColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rad, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return ellipseRgba(renderer, x, y, rad, rad, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw circle with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the circle.
\param y Y coordinate of the center of the circle.
\param rad Radius in pixels of the circle.
\param r The red value of the circle to draw. 
\param g The green value of the circle to draw. 
\param b The blue value of the circle to draw. 
\param a The alpha value of the circle to draw.

\returns Returns 0 on success, -1 on failure.
*/
int circleRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
    int g, int b, int a) {
  return ellipseRgba(renderer, x, y, rad, rad, r, g, b, a);
}

/* ----- Arc */

/*!
\brief Arc with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the arc.
\param y Y coordinate of the center of the arc.
\param rad Radius in pixels of the arc.
\param start Starting radius in degrees of the arc. 0 degrees is down, increasing counterclockwise.
\param end Ending radius in degrees of the arc. 0 degrees is down, increasing counterclockwise.
\param color The color value of the arc to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int arcColor(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return arcRgba(renderer, x, y, rad, start, end, co[0], co[1], co[2], co[3]);
}

/*!
\brief Arc with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the arc.
\param y Y coordinate of the center of the arc.
\param rad Radius in pixels of the arc.
\param start Starting radius in degrees of the arc. 0 degrees is down, increasing counterclockwise.
\param end Ending radius in degrees of the arc. 0 degrees is down, increasing counterclockwise.
\param r The red value of the arc to draw. 
\param g The green value of the arc to draw. 
\param b The blue value of the arc to draw. 
\param a The alpha value of the arc to draw.

\returns Returns 0 on success, -1 on failure.
*/
int arcRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int r, int g, int b, int a) {
  int result;
  int cx = 0;
  int cy = rad;
  int df = 1 - rad;
  int dE = 3;
  int dSe = -2 * rad + 5;
  int xpcx, xmcx, xpcy, xmcy;
  int ypcy, ymcy, ypcx, ymcx;
  int drawoct;
  int startoct, endoct, oct, stopvalStart = 0, stopvalEnd = 0;
  double dstart, dend, temp = 0.0;

  /*
	* Sanity check radius 
	*/
  if (rad < 0) {
    return (-1);
  }

  /*
	* Special case for rad=0 - draw a point 
	*/
  if (rad == 0) {
    return (pixelRgba(renderer, x, y, r, g, b, a));
  }

  /*
	 Octant labeling
	      
	  \ 5 | 6 /
	   \  |  /
	  4 \ | / 7
	     \|/
	------+------ +x
	     /|\
	  3 / | \ 0
	   /  |  \
	  / 2 | 1 \
	      +y

	 Initially reset bitmask to 0x00000000
	 the set whether or not to keep drawing a given octant.
	 For example: 0x00111100 means we're drawing in octants 2-5
	*/
  drawoct = 0;

  /*
	* Fixup angles
	*/
  start %= 360;
  end %= 360;
  /* 0 <= start & end < 360; note that sometimes start > end - if so, arc goes back through 0. */
  while (start < 0) {
    start += 360;
  }
  while (end < 0) {
    end += 360;
  }
  start %= 360;
  end %= 360;

  /* now, we find which octants we're drawing in. */
  startoct = start ~/ 45;
  endoct = end ~/ 45;
  oct = startoct - 1;

  /* stopvalStart, stopvalEnd; what values of cx to stop at. */
  do {
    oct = (oct + 1) % 8;

    if (oct == startoct) {
      /* need to compute stopvalStart for this octant.  Look at picture above if this is unclear */
      dstart = start.toDouble();
      switch (oct) {
        case 0:
        case 3:
          temp = sin(dstart * M_PI / 180.0);
          break;
        case 1:
        case 6:
          temp = cos(dstart * M_PI / 180.0);
          break;
        case 2:
        case 5:
          temp = -cos(dstart * M_PI / 180.0);
          break;
        case 4:
        case 7:
          temp = -sin(dstart * M_PI / 180.0);
          break;
      }
      temp *= rad;
      stopvalStart = temp.toInt();
      /* 
			This isn't arbitrary, but requires graph paper to explain well.
			The basic idea is that we're always changing drawoct after we draw, so we
			stop immediately after we render the last sensible pixel at x = ((int)temp).
			and whether to draw in this octant initially
			*/
      if ((oct % 2) != 0) {
        drawoct |= (1 <<
            oct); /* this is basically like saying drawoct[oct] = true, if drawoct were a bool array */
      } else {
        drawoct &= 255 -
            (1 << oct); /* this is basically like saying drawoct[oct] = false */
      }
    }
    if (oct == endoct) {
      /* need to compute stopvalEnd for this octant */
      dend = end.toDouble();
      switch (oct) {
        case 0:
        case 3:
          temp = sin(dend * M_PI / 180);
          break;
        case 1:
        case 6:
          temp = cos(dend * M_PI / 180);
          break;
        case 2:
        case 5:
          temp = -cos(dend * M_PI / 180);
          break;
        case 4:
        case 7:
          temp = -sin(dend * M_PI / 180);
          break;
      }
      temp *= rad;
      stopvalEnd = temp.toInt();

      /* and whether to draw in this octant initially */
      if (startoct == endoct) {
        /* note:      we start drawing, stop, then start again in this case */
        /* otherwise: we only draw in this octant, so initialize it to false, it will get set back to true */
        if (start > end) {
          /* unfortunately, if we're in the same octant and need to draw over the whole circle, */
          /* we need to set the rest to true, because the while loop will end at the bottom. */
          drawoct = 255;
        } else {
          drawoct &= 255 - (1 << oct);
        }
      } else if ((oct % 2) != 0) {
        drawoct &= 255 - (1 << oct);
      } else {
        drawoct |= (1 << oct);
      }
    } else if (oct != startoct) {
      /* already verified that it's != endoct */
      drawoct |= (1 << oct); /* draw this entire segment */
    }
  } while (oct != endoct);

  /* so now we have what octants to draw and when to draw them. all that's left is the actual raster code. */

  /*
	* Set color 
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);

  /*
	* Draw arc 
	*/
  do {
    ypcy = y + cy;
    ymcy = y - cy;
    if (cx > 0) {
      xpcx = x + cx;
      xmcx = x - cx;

      /* always check if we're drawing a certain octant before adding a pixel to that octant. */
      if ((drawoct & 4) != 0) {
        result |= pixel(renderer, xmcx, ypcy);
      }
      if ((drawoct & 2) != 0) {
        result |= pixel(renderer, xpcx, ypcy);
      }
      if ((drawoct & 32) != 0) {
        result |= pixel(renderer, xmcx, ymcy);
      }
      if ((drawoct & 64) != 0) {
        result |= pixel(renderer, xpcx, ymcy);
      }
    } else {
      if ((drawoct & 96) != 0) {
        result |= pixel(renderer, x, ymcy);
      }
      if ((drawoct & 6) != 0) {
        result |= pixel(renderer, x, ypcy);
      }
    }

    xpcy = x + cy;
    xmcy = x - cy;
    if (cx > 0 && cx != cy) {
      ypcx = y + cx;
      ymcx = y - cx;
      if ((drawoct & 8) != 0) {
        result |= pixel(renderer, xmcy, ypcx);
      }
      if ((drawoct & 1) != 0) {
        result |= pixel(renderer, xpcy, ypcx);
      }
      if ((drawoct & 16) != 0) {
        result |= pixel(renderer, xmcy, ymcx);
      }
      if ((drawoct & 128) != 0) {
        result |= pixel(renderer, xpcy, ymcx);
      }
    } else if (cx == 0) {
      if ((drawoct & 24) != 0) {
        result |= pixel(renderer, xmcy, y);
      }
      if ((drawoct & 129) != 0) {
        result |= pixel(renderer, xpcy, y);
      }
    }
    /*
		* Update whether we're drawing an octant
		*/
    if (stopvalStart == cx) {
      /* works like an on-off switch. */
      /* This is just in case start & end are in the same octant. */
      if ((drawoct & (1 << startoct)) != 0) {
        drawoct &= 255 - (1 << startoct);
      } else {
        drawoct |= (1 << startoct);
      }
    }
    if (stopvalEnd == cx) {
      if ((drawoct & (1 << endoct)) != 0) {
        drawoct &= 255 - (1 << endoct);
      } else {
        drawoct |= (1 << endoct);
      }
    }

    /*
		* Update pixels
		*/
    if (df < 0) {
      df += dE;
      dE += 2;
      dSe += 2;
    } else {
      df += dSe;
      dE += 2;
      dSe += 4;
      cy--;
    }
    cx++;
  } while (cx <= cy);
  return result;
}

/* ----- AA Circle */

/*!
\brief Draw anti-aliased circle with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the aa-circle.
\param y Y coordinate of the center of the aa-circle.
\param rad Radius in pixels of the aa-circle.
\param color The color value of the aa-circle to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int aacircleColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rad, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return aaellipseRgba(renderer, x, y, rad, rad, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw anti-aliased circle with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the aa-circle.
\param y Y coordinate of the center of the aa-circle.
\param rad Radius in pixels of the aa-circle.
\param r The red value of the aa-circle to draw. 
\param g The green value of the aa-circle to draw. 
\param b The blue value of the aa-circle to draw. 
\param a The alpha value of the aa-circle to draw.

\returns Returns 0 on success, -1 on failure.
*/
int aacircleRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int r,
    int g, int b, int a) {
  /*
	* Draw 
	*/
  return aaellipseRgba(renderer, x, y, rad, rad, r, g, b, a);
}

/* ----- Ellipse */

/*!
\brief Internal function to draw pixels or lines in 4 quadrants.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the quadrant.
\param y Y coordinate of the center of the quadrant.
\param dx X offset in pixels of the corners of the quadrant.
\param dy Y offset in pixels of the corners of the quadrant.
\param f Flag indicating if the quadrant should be filled (1) or not (0).

\returns Returns 0 on success, -1 on failure.
*/
int _drawQuadrants(
    Pointer<SdlRenderer> renderer, int x, int y, int dx, int dy, int f) {
  int result = 0;
  int xpdx, xmdx;
  int ypdy, ymdy;

  if (dx == 0) {
    if (dy == 0) {
      result |= pixel(renderer, x, y);
    } else {
      ypdy = y + dy;
      ymdy = y - dy;
      if (f != 0) {
        result |= vline(renderer, x, ymdy, ypdy);
      } else {
        result |= pixel(renderer, x, ypdy);
        result |= pixel(renderer, x, ymdy);
      }
    }
  } else {
    xpdx = x + dx;
    xmdx = x - dx;
    ypdy = y + dy;
    ymdy = y - dy;
    if (f != 0) {
      result |= vline(renderer, xpdx, ymdy, ypdy);
      result |= vline(renderer, xmdx, ymdy, ypdy);
    } else {
      result |= pixel(renderer, xpdx, ypdy);
      result |= pixel(renderer, xmdx, ypdy);
      result |= pixel(renderer, xpdx, ymdy);
      result |= pixel(renderer, xmdx, ymdy);
    }
  }

  return result;
}

/*!
\brief Internal function to draw ellipse or filled ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the ellipse.
\param y Y coordinate of the center of the ellipse.
\param rx Horizontal radius in pixels of the ellipse.
\param ry Vertical radius in pixels of the ellipse.
\param r The red value of the ellipse to draw. 
\param g The green value of the ellipse to draw. 
\param b The blue value of the ellipse to draw. 
\param a The alpha value of the ellipse to draw.
\param f Flag indicating if the ellipse should be filled (1) or not (0).

\returns Returns 0 on success, -1 on failure.
*/
int _ellipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
    int r, int g, int b, int a, int f) {
  int result;
  int rxi, ryi;
  int rx2, ry2, rx22, ry22;
  int error;
  int curX, curY, curXp1, curYm1;
  int scrX, scrY, oldX, oldY;
  int deltaX, deltaY;
  int ellipseOverscan;

  /*
	* Sanity check radii 
	*/
  if ((rx < 0) || (ry < 0)) {
    return (-1);
  }

  /*
	* Set color
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);

  /*
	* Special cases for rx=0 and/or ry=0: draw a hline/vline/pixel 
	*/
  if (rx == 0) {
    if (ry == 0) {
      return (pixel(renderer, x, y));
    } else {
      return (vline(renderer, x, y - ry, y + ry));
    }
  } else {
    if (ry == 0) {
      return (hline(renderer, x - rx, x + rx, y));
    }
  }

  /*
 	 * Adjust overscan 
	 */
  rxi = rx;
  ryi = ry;
  if (rxi >= 512 || ryi >= 512) {
    ellipseOverscan = defaultEllipseOverscan ~/ 4;
  } else if (rxi >= 256 || ryi >= 256) {
    ellipseOverscan = defaultEllipseOverscan ~/ 2;
  } else {
    ellipseOverscan = defaultEllipseOverscan ~/ 1;
  }

  /*
	 * Top/bottom center points.
	 */
  oldX = scrX = 0;
  oldY = scrY = ryi;
  result |= _drawQuadrants(renderer, x, y, 0, ry, f);

  /* Midpoint ellipse algorithm with overdraw */
  rxi *= ellipseOverscan;
  ryi *= ellipseOverscan;
  rx2 = rxi * rxi;
  rx22 = rx2 + rx2;
  ry2 = ryi * ryi;
  ry22 = ry2 + ry2;
  curX = 0;
  curY = ryi;
  deltaX = 0;
  deltaY = rx22 * curY;

  /* Points in segment 1 */
  error = ry2 - rx2 * ryi + rx2 ~/ 4;
  while (deltaX <= deltaY) {
    curX++;
    deltaX += ry22;

    error += deltaX + ry2;
    if (error >= 0) {
      curY--;
      deltaY -= rx22;
      error -= deltaY;
    }

    scrX = curX ~/ ellipseOverscan;
    scrY = curY ~/ ellipseOverscan;
    if ((scrX != oldX && scrY == oldY) || (scrX != oldX && scrY != oldY)) {
      result |= _drawQuadrants(renderer, x, y, scrX, scrY, f);
      oldX = scrX;
      oldY = scrY;
    }
  }

  /* Points in segment 2 */
  if (curY > 0) {
    curXp1 = curX + 1;
    curYm1 = curY - 1;
    error = ry2 * curX * curXp1 +
        ((ry2 + 3) ~/ 4) +
        rx2 * curYm1 * curYm1 -
        rx2 * ry2;
    while (curY > 0) {
      curY--;
      deltaY -= rx22;

      error += rx2;
      error -= deltaY;

      if (error <= 0) {
        curX++;
        deltaX += ry22;
        error += deltaX;
      }

      scrX = curX ~/ ellipseOverscan;
      scrY = curY ~/ ellipseOverscan;
      if ((scrX != oldX && scrY == oldY) || (scrX != oldX && scrY != oldY)) {
        oldY--;
        for (; oldY >= scrY; oldY--) {
          result |= _drawQuadrants(renderer, x, y, scrX, oldY, f);
          /* prevent overdraw */
          if (f != 0) {
            oldY = scrY - 1;
          }
        }
        oldX = scrX;
        oldY = scrY;
      }
    }

    /* Remaining points in vertical */
    if (f == 0) {
      oldY--;
      for (; oldY >= 0; oldY--) {
        result |= _drawQuadrants(renderer, x, y, scrX, oldY, f);
      }
    }
  }
  return (result);
}

/*!
\brief Draw ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the ellipse.
\param y Y coordinate of the center of the ellipse.
\param rx Horizontal radius in pixels of the ellipse.
\param ry Vertical radius in pixels of the ellipse.
\param color The color value of the ellipse to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int ellipseColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return _ellipseRgba(renderer, x, y, rx, ry, co[0], co[1], co[2], co[3], 0);
}

/*!
\brief Draw ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the ellipse.
\param y Y coordinate of the center of the ellipse.
\param rx Horizontal radius in pixels of the ellipse.
\param ry Vertical radius in pixels of the ellipse.
\param r The red value of the ellipse to draw. 
\param g The green value of the ellipse to draw. 
\param b The blue value of the ellipse to draw. 
\param a The alpha value of the ellipse to draw.

\returns Returns 0 on success, -1 on failure.
*/
int ellipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
    int r, int g, int b, int a) {
  return _ellipseRgba(renderer, x, y, rx, ry, r, g, b, a, 0);
}

/* ----- Filled Circle */

/*!
\brief Draw filled circle with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the filled circle.
\param y Y coordinate of the center of the filled circle.
\param rad Radius in pixels of the filled circle.
\param color The color value of the filled circle to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int filledCircleColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rad, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return filledEllipseRgba(
      renderer, x, y, rad, rad, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw filled circle with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the filled circle.
\param y Y coordinate of the center of the filled circle.
\param rad Radius in pixels of the filled circle.
\param r The red value of the filled circle to draw. 
\param g The green value of the filled circle to draw. 
\param b The blue value of the filled circle to draw. 
\param a The alpha value of the filled circle to draw.

\returns Returns 0 on success, -1 on failure.
*/
int filledCircleRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad,
    int r, int g, int b, int a) {
  return _ellipseRgba(renderer, x, y, rad, rad, r, g, b, a, 1);
}

/*!
\brief Draw anti-aliased ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the aa-ellipse.
\param y Y coordinate of the center of the aa-ellipse.
\param rx Horizontal radius in pixels of the aa-ellipse.
\param ry Vertical radius in pixels of the aa-ellipse.
\param color The color value of the aa-ellipse to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int aaellipseColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return aaellipseRgba(renderer, x, y, rx, ry, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw anti-aliased ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the aa-ellipse.
\param y Y coordinate of the center of the aa-ellipse.
\param rx Horizontal radius in pixels of the aa-ellipse.
\param ry Vertical radius in pixels of the aa-ellipse.
\param r The red value of the aa-ellipse to draw. 
\param g The green value of the aa-ellipse to draw. 
\param b The blue value of the aa-ellipse to draw. 
\param a The alpha value of the aa-ellipse to draw.

\returns Returns 0 on success, -1 on failure.
*/
int aaellipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry,
    int r, int g, int b, int a) {
  int result;
  int i;
  int a2, b2, ds, dt, dxt, t, s, d;
  int xp, yp, xs, ys, dyt, od, xx, yy, xc2, yc2;
  double cp;
  double sab;
  int weight, iweight;

  /*
	* Sanity check radii 
	*/
  if ((rx < 0) || (ry < 0)) {
    return (-1);
  }

  /*
	* Special cases for rx=0 and/or ry=0: draw a hline/vline/pixel 
	*/
  if (rx == 0) {
    if (ry == 0) {
      return (pixelRgba(renderer, x, y, r, g, b, a));
    } else {
      return (vlineRgba(renderer, x, y - ry, y + ry, r, g, b, a));
    }
  } else {
    if (ry == 0) {
      return (hlineRgba(renderer, x - rx, x + rx, y, r, g, b, a));
    }
  }

  /* Variable setup */
  a2 = rx * rx;
  b2 = ry * ry;

  ds = 2 * a2;
  dt = 2 * b2;

  xc2 = 2 * x;
  yc2 = 2 * y;

  sab = sqrt(a2 + b2);
  od = (sab * 0.01).toInt() + 1; /* introduce some overdraw */
  dxt = (a2 ~/ sab) + od;

  t = 0;
  s = -2 * a2 * ry;
  d = 0;

  xp = x;
  yp = y - ry;

  /* Draw */
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);

  /* "End points" */
  result |= pixelRgba(renderer, xp, yp, r, g, b, a);
  result |= pixelRgba(renderer, xc2 - xp, yp, r, g, b, a);
  result |= pixelRgba(renderer, xp, yc2 - yp, r, g, b, a);
  result |= pixelRgba(renderer, xc2 - xp, yc2 - yp, r, g, b, a);

  for (i = 1; i <= dxt; i++) {
    xp--;
    d += t - b2;

    if (d >= 0) {
      ys = yp - 1;
    } else if ((d - s - a2) > 0) {
      if ((2 * d - s - a2) >= 0) {
        ys = yp + 1;
      } else {
        ys = yp;
        yp++;
        d -= s + a2;
        s += ds;
      }
    } else {
      yp++;
      ys = yp + 1;
      d -= s + a2;
      s += ds;
    }

    t -= dt;

    /* Calculate alpha */
    if (s != 0) {
      cp = d.abs() / s.abs();
      if (cp > 1.0) {
        cp = 1.0;
      }
    } else {
      cp = 1.0;
    }

    /* Calculate weights */
    weight = (cp * 255).toInt();
    iweight = 255 - weight;

    /* Upper half */
    xx = xc2 - xp;
    result |= pixelRgbaWeight(renderer, xp, yp, r, g, b, a, iweight);
    result |= pixelRgbaWeight(renderer, xx, yp, r, g, b, a, iweight);

    result |= pixelRgbaWeight(renderer, xp, ys, r, g, b, a, weight);
    result |= pixelRgbaWeight(renderer, xx, ys, r, g, b, a, weight);

    /* Lower half */
    yy = yc2 - yp;
    result |= pixelRgbaWeight(renderer, xp, yy, r, g, b, a, iweight);
    result |= pixelRgbaWeight(renderer, xx, yy, r, g, b, a, iweight);

    yy = yc2 - ys;
    result |= pixelRgbaWeight(renderer, xp, yy, r, g, b, a, weight);
    result |= pixelRgbaWeight(renderer, xx, yy, r, g, b, a, weight);
  }

  /* Replaces original approximation code dyt = abs(yp - yc); */
  dyt = b2 ~/ sab + od;

  for (i = 1; i <= dyt; i++) {
    yp++;
    d -= s + a2;
    if (d <= 0) {
      xs = xp + 1;
    } else if ((d + t - b2) < 0) {
      if ((2 * d + t - b2) <= 0) {
        xs = xp - 1;
      } else {
        xs = xp;
        xp--;
        d += t - b2;
        t -= dt;
      }
    } else {
      xp--;
      xs = xp - 1;
      d += t - b2;
      t -= dt;
    }

    s += ds;

    /* Calculate alpha */
    if (t != 0) {
      cp = d.abs() / t.abs();
      if (cp > 1.0) {
        cp = 1.0;
      }
    } else {
      cp = 1.0;
    }

    /* Calculate weight */
    weight = (cp * 255).toInt();
    iweight = 255 - weight;

    /* Left half */
    xx = xc2 - xp;
    yy = yc2 - yp;
    result |= pixelRgbaWeight(renderer, xp, yp, r, g, b, a, iweight);
    result |= pixelRgbaWeight(renderer, xx, yp, r, g, b, a, iweight);

    result |= pixelRgbaWeight(renderer, xp, yy, r, g, b, a, iweight);
    result |= pixelRgbaWeight(renderer, xx, yy, r, g, b, a, iweight);

    /* Right half */
    xx = xc2 - xs;
    result |= pixelRgbaWeight(renderer, xs, yp, r, g, b, a, weight);
    result |= pixelRgbaWeight(renderer, xx, yp, r, g, b, a, weight);

    result |= pixelRgbaWeight(renderer, xs, yy, r, g, b, a, weight);
    result |= pixelRgbaWeight(renderer, xx, yy, r, g, b, a, weight);
  }
  return (result);
}

/* ---- Filled Ellipse */

/*!
\brief Draw filled ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the filled ellipse.
\param y Y coordinate of the center of the filled ellipse.
\param rx Horizontal radius in pixels of the filled ellipse.
\param ry Vertical radius in pixels of the filled ellipse.
\param color The color value of the filled ellipse to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int filledEllipseColor(
    Pointer<SdlRenderer> renderer, int x, int y, int rx, int ry, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return _ellipseRgba(renderer, x, y, rx, ry, co[0], co[1], co[2], co[3], 1);
}

/*!
\brief Draw filled ellipse with blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the filled ellipse.
\param y Y coordinate of the center of the filled ellipse.
\param rx Horizontal radius in pixels of the filled ellipse.
\param ry Vertical radius in pixels of the filled ellipse.
\param r The red value of the filled ellipse to draw. 
\param g The green value of the filled ellipse to draw. 
\param b The blue value of the filled ellipse to draw. 
\param a The alpha value of the filled ellipse to draw.

\returns Returns 0 on success, -1 on failure.
*/
int filledEllipseRgba(Pointer<SdlRenderer> renderer, int x, int y, int rx,
    int ry, int r, int g, int b, int a) {
  return _ellipseRgba(renderer, x, y, rx, ry, r, g, b, a, 1);
}

/* ----- Pie */

/*!
\brief Internal float (low-speed) pie-calc implementation by drawing polygons.

Note: Determines vertex array and uses polygon or filledPolygon drawing routines to render.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the pie.
\param y Y coordinate of the center of the pie.
\param rad Radius in pixels of the pie.
\param start Starting radius in degrees of the pie.
\param end Ending radius in degrees of the pie.
\param r The red value of the pie to draw. 
\param g The green value of the pie to draw. 
\param b The blue value of the pie to draw. 
\param a The alpha value of the pie to draw.
\param filled Flag indicating if the pie should be filled (=1) or not (=0).

\returns Returns 0 on success, -1 on failure.
*/
int _pieRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int r, int g, int b, int a, int filled) {
  int result;
  double angle, startAngle, endAngle;
  double deltaAngle;
  double dr;
  int numpoints, i;

  /*
	* Sanity check radii 
	*/
  if (rad < 0) {
    return (-1);
  }

  /*
	* Fixup angles
	*/
  start = start % 360;
  end = end % 360;

  /*
	* Special case for rad=0 - draw a point 
	*/
  if (rad == 0) {
    return (pixelRgba(renderer, x, y, r, g, b, a));
  }

  /*
	* Variable setup 
	*/
  dr = rad.toDouble();
  deltaAngle = 3.0 / dr;
  startAngle = start.toDouble() * (2.0 * M_PI / 360.0);
  endAngle = end.toDouble() * (2.0 * M_PI / 360.0);
  if (start > end) {
    endAngle += (2.0 * M_PI);
  }

  /* We will always have at least 2 points */
  numpoints = 2;

  /* Count points (rather than calculating it) */
  angle = startAngle;
  while (angle < endAngle) {
    angle += deltaAngle;
    numpoints++;
  }

  /* Allocate combined vertex array */
  var vx = calloc<Int16>(numpoints);
  var vy = calloc<Int16>(numpoints);

  /* Update point to start of vy */

  /* Center */
  vx[0] = x;
  vy[0] = y;

  /* First vertex */
  angle = startAngle;
  vx[1] = x + (dr * cos(angle)).toInt();
  vy[1] = y + (dr * sin(angle)).toInt();

  if (numpoints < 3) {
    result = lineRgba(renderer, vx[0], vy[0], vx[1], vy[1], r, g, b, a);
  } else {
    /* Calculate other vertices */
    i = 2;
    angle = startAngle;
    while (angle < endAngle) {
      angle += deltaAngle;
      if (angle > endAngle) {
        angle = endAngle;
      }
      vx[i] = x + (dr * cos(angle)).toInt();
      vy[i] = y + (dr * sin(angle)).toInt();
      i++;
    }

    /* Draw */
    if (filled != 0) {
      result = filledPolygonRgba(renderer, vx, vy, numpoints, r, g, b, a);
    } else {
      result = polygonRgba(renderer, vx, vy, numpoints, r, g, b, a);
    }
  }

  /* Free combined vertex array */
  //free(vx);
  calloc.free(vx);
  calloc.free(vy);

  return (result);
}

/*!
\brief Draw pie (outline) with alpha blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the pie.
\param y Y coordinate of the center of the pie.
\param rad Radius in pixels of the pie.
\param start Starting radius in degrees of the pie.
\param end Ending radius in degrees of the pie.
\param color The color value of the pie to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int pieColor(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return _pieRgba(
      renderer, x, y, rad, start, end, co[0], co[1], co[2], co[3], 0);
}

/*!
\brief Draw pie (outline) with alpha blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the pie.
\param y Y coordinate of the center of the pie.
\param rad Radius in pixels of the pie.
\param start Starting radius in degrees of the pie.
\param end Ending radius in degrees of the pie.
\param r The red value of the pie to draw. 
\param g The green value of the pie to draw. 
\param b The blue value of the pie to draw. 
\param a The alpha value of the pie to draw.

\returns Returns 0 on success, -1 on failure.
*/
int pieRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad, int start,
    int end, int r, int g, int b, int a) {
  return _pieRgba(renderer, x, y, rad, start, end, r, g, b, a, 0);
}

/*!
\brief Draw filled pie with alpha blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the filled pie.
\param y Y coordinate of the center of the filled pie.
\param rad Radius in pixels of the filled pie.
\param start Starting radius in degrees of the filled pie.
\param end Ending radius in degrees of the filled pie.
\param color The color value of the filled pie to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int filledPieColor(Pointer<SdlRenderer> renderer, int x, int y, int rad,
    int start, int end, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return _pieRgba(
      renderer, x, y, rad, start, end, co[0], co[1], co[2], co[3], 1);
}

/*!
\brief Draw filled pie with alpha blending.

\param renderer The renderer to draw on.
\param x X coordinate of the center of the filled pie.
\param y Y coordinate of the center of the filled pie.
\param rad Radius in pixels of the filled pie.
\param start Starting radius in degrees of the filled pie.
\param end Ending radius in degrees of the filled pie.
\param r The red value of the filled pie to draw. 
\param g The green value of the filled pie to draw. 
\param b The blue value of the filled pie to draw. 
\param a The alpha value of the filled pie to draw.

\returns Returns 0 on success, -1 on failure.
*/
int filledPieRgba(Pointer<SdlRenderer> renderer, int x, int y, int rad,
    int start, int end, int r, int g, int b, int a) {
  return _pieRgba(renderer, x, y, rad, start, end, r, g, b, a, 1);
}

/* ------ Trigon */

/*!
\brief Draw trigon (triangle outline) with alpha blending.

Note: Creates vertex array and uses polygon routine to render.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the trigon.
\param y1 Y coordinate of the first point of the trigon.
\param x2 X coordinate of the second point of the trigon.
\param y2 Y coordinate of the second point of the trigon.
\param x3 X coordinate of the third point of the trigon.
\param y3 Y coordinate of the third point of the trigon.
\param color The color value of the trigon to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int trigonColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int color) {
  var vx = calloc<Int16>(3);
  var vy = calloc<Int16>(3);

  vx[0] = x1;
  vx[1] = x2;
  vx[2] = x3;
  vy[0] = y1;
  vy[1] = y2;
  vy[2] = y3;

  var result = polygonColor(renderer, vx, vy, 3, color);
  calloc.free(vx);
  calloc.free(vy);

  return result;
}

/*!
\brief Draw trigon (triangle outline) with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the trigon.
\param y1 Y coordinate of the first point of the trigon.
\param x2 X coordinate of the second point of the trigon.
\param y2 Y coordinate of the second point of the trigon.
\param x3 X coordinate of the third point of the trigon.
\param y3 Y coordinate of the third point of the trigon.
\param r The red value of the trigon to draw. 
\param g The green value of the trigon to draw. 
\param b The blue value of the trigon to draw. 
\param a The alpha value of the trigon to draw.

\returns Returns 0 on success, -1 on failure.
*/
int trigonRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int r, int g, int b, int a) {
  var vx = calloc<Int16>(3);
  var vy = calloc<Int16>(3);

  vx[0] = x1;
  vx[1] = x2;
  vx[2] = x3;
  vy[0] = y1;
  vy[1] = y2;
  vy[2] = y3;

  var result = polygonRgba(renderer, vx, vy, 3, r, g, b, a);
  calloc.free(vx);
  calloc.free(vy);

  return result;
}

/* ------ AA-Trigon */

/*!
\brief Draw anti-aliased trigon (triangle outline) with alpha blending.

Note: Creates vertex array and uses aapolygon routine to render.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the aa-trigon.
\param y1 Y coordinate of the first point of the aa-trigon.
\param x2 X coordinate of the second point of the aa-trigon.
\param y2 Y coordinate of the second point of the aa-trigon.
\param x3 X coordinate of the third point of the aa-trigon.
\param y3 Y coordinate of the third point of the aa-trigon.
\param color The color value of the aa-trigon to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int aatrigonColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int color) {
  var vx = calloc<Int16>(3);
  var vy = calloc<Int16>(3);

  vx[0] = x1;
  vx[1] = x2;
  vx[2] = x3;
  vy[0] = y1;
  vy[1] = y2;
  vy[2] = y3;

  var result = aapolygonColor(renderer, vx, vy, 3, color);
  calloc.free(vx);
  calloc.free(vy);

  return result;
}

/*!
\brief Draw anti-aliased trigon (triangle outline) with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the aa-trigon.
\param y1 Y coordinate of the first point of the aa-trigon.
\param x2 X coordinate of the second point of the aa-trigon.
\param y2 Y coordinate of the second point of the aa-trigon.
\param x3 X coordinate of the third point of the aa-trigon.
\param y3 Y coordinate of the third point of the aa-trigon.
\param r The red value of the aa-trigon to draw. 
\param g The green value of the aa-trigon to draw. 
\param b The blue value of the aa-trigon to draw. 
\param a The alpha value of the aa-trigon to draw.

\returns Returns 0 on success, -1 on failure.
*/
int aatrigonRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int x3, int y3, int r, int g, int b, int a) {
  var vx = calloc<Int16>(3);
  var vy = calloc<Int16>(3);

  vx[0] = x1;
  vx[1] = x2;
  vx[2] = x3;
  vy[0] = y1;
  vy[1] = y2;
  vy[2] = y3;

  var result = aapolygonRgba(renderer, vx, vy, 3, r, g, b, a);
  calloc.free(vx);
  calloc.free(vy);

  return result;
}

/* ------ Filled Trigon */

/*!
\brief Draw filled trigon (triangle) with alpha blending.

Note: Creates vertex array and uses aapolygon routine to render.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the filled trigon.
\param y1 Y coordinate of the first point of the filled trigon.
\param x2 X coordinate of the second point of the filled trigon.
\param y2 Y coordinate of the second point of the filled trigon.
\param x3 X coordinate of the third point of the filled trigon.
\param y3 Y coordinate of the third point of the filled trigon.
\param color The color value of the filled trigon to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int filledTrigonColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int x3, int y3, int color) {
  var vx = calloc<Int16>(3);
  var vy = calloc<Int16>(3);

  vx[0] = x1;
  vx[1] = x2;
  vx[2] = x3;
  vy[0] = y1;
  vy[1] = y2;
  vy[2] = y3;

  var result = filledPolygonColor(renderer, vx, vy, 3, color);
  calloc.free(vx);
  calloc.free(vy);

  return result;
}

/*!
\brief Draw filled trigon (triangle) with alpha blending.

Note: Creates vertex array and uses aapolygon routine to render.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the filled trigon.
\param y1 Y coordinate of the first point of the filled trigon.
\param x2 X coordinate of the second point of the filled trigon.
\param y2 Y coordinate of the second point of the filled trigon.
\param x3 X coordinate of the third point of the filled trigon.
\param y3 Y coordinate of the third point of the filled trigon.
\param r The red value of the filled trigon to draw. 
\param g The green value of the filled trigon to draw. 
\param b The blue value of the filled trigon to draw. 
\param a The alpha value of the filled trigon to draw.

\returns Returns 0 on success, -1 on failure.
*/
int filledTrigonRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int x3, int y3, int r, int g, int b, int a) {
  var vx = calloc<Int16>(3);
  var vy = calloc<Int16>(3);

  vx[0] = x1;
  vx[1] = x2;
  vx[2] = x3;
  vy[0] = y1;
  vy[1] = y2;
  vy[2] = y3;

  var result = filledPolygonRgba(renderer, vx, vy, 3, r, g, b, a);
  calloc.free(vx);
  calloc.free(vy);

  return result;
}

/* ---- Polygon */

/*!
\brief Draw polygon with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the polygon.
\param vy Vertex array containing Y coordinates of the points of the polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param color The color value of the polygon to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int polygonColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return polygonRgba(renderer, vx, vy, n, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw polygon with the currently set color and blend mode.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the polygon.
\param vy Vertex array containing Y coordinates of the points of the polygon.
\param n Number of points in the vertex array. Minimum number is 3.

\returns Returns 0 on success, -1 on failure.
*/
int polygon(Pointer<SdlRenderer> renderer, Pointer<Int16> vx, Pointer<Int16> vy,
    int n) {
  /*
	* Draw 
	*/
  int result = 0;
  int i, nn;

  /*
	* Vertex array NULL check 
	*/
  if (vx == nullptr) {
    return (-1);
  }
  if (vy == nullptr) {
    return (-1);
  }

  /*
	* Sanity check 
	*/
  if (n < 3) {
    return (-1);
  }

  /*
	* Create array of points
	*/
  nn = n + 1;
  var points = calloc<SdlPoint>(nn);
//	points = (SDL_Point*)malloc(sizeof(SDL_Point) * nn);
  if (points == nullptr) {
    return -1;
  }
  for (i = 0; i < n; i++) {
    points[i].x = vx[i];
    points[i].y = vy[i];
  }
  points[n].x = vx[0];
  points[n].y = vy[0];

  /*
	* Draw 
	*/
  result |= sdlRenderDrawLines(renderer, points, nn);
  calloc.free(points);

  return (result);
}

/*!
\brief Draw polygon with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the polygon.
\param vy Vertex array containing Y coordinates of the points of the polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param r The red value of the polygon to draw. 
\param g The green value of the polygon to draw. 
\param b The blue value of the polygon to draw. 
\param a The alpha value of the polygon to draw.

\returns Returns 0 on success, -1 on failure.
*/
int polygonRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  /*
	* Draw 
	*/
  int result;

  /*
	* Vertex array NULL check 
	*/
  if (vx == nullptr) {
    return (-1);
  }
  if (vy == nullptr) {
    return (-1);
  }

  /*
	* Sanity check 
	*/
  if (n < 3) {
    return (-1);
  }

  /*
	* Pointer setup 
	*/

  /*
	* Set color 
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);

  /*
	* Draw 
	*/
  result |= polygon(renderer, vx, vy, n);

  return (result);
}

/* ---- AA-Polygon */

/*!
\brief Draw anti-aliased polygon with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the aa-polygon.
\param vy Vertex array containing Y coordinates of the points of the aa-polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param color The color value of the aa-polygon to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int aapolygonColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return aapolygonRgba(renderer, vx, vy, n, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw anti-aliased polygon with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the aa-polygon.
\param vy Vertex array containing Y coordinates of the points of the aa-polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param r The red value of the aa-polygon to draw. 
\param g The green value of the aa-polygon to draw. 
\param b The blue value of the aa-polygon to draw. 
\param a The alpha value of the aa-polygon to draw.

\returns Returns 0 on success, -1 on failure.
*/
int aapolygonRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  int result;
  int i;

  /*
	* Vertex array NULL check 
	*/
  if (vx == nullptr) {
    return (-1);
  }
  if (vy == nullptr) {
    return (-1);
  }

  /*
	* Sanity check 
	*/
  if (n < 3) {
    return (-1);
  }

  /*
	* Pointer setup 
	*/

  /*
	* Draw 
	*/
  result = 0;
  for (i = 1; i < n; i++) {
    result |= _aalineRgba(
        renderer, vx[i - 1], vy[i - 1], vx[i], vy[i], r, g, b, a, 0);
  }
  result |=
      _aalineRgba(renderer, vx[n - 1], vy[n - 1], vx[0], vy[0], r, g, b, a, 0);

  return (result);
}

/*!
\brief Draw filled polygon with alpha blending (multi-threaded capable).

Note: The last two parameters are optional; but are required for multithreaded operation.  

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the filled polygon.
\param vy Vertex array containing Y coordinates of the points of the filled polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param r The red value of the filled polygon to draw. 
\param g The green value of the filled polygon to draw. 
\param b The blue value of the filled polygon to draw. 
\param a The alpha value of the filled polygon to draw.
\param polyInts Preallocated, temporary vertex array used for sorting vertices. Required for multithreaded operation; set to NULL otherwise.
\param polyAllocated Flag indicating if temporary vertex array was allocated. Required for multithreaded operation; set to NULL otherwise.

\returns Returns 0 on success, -1 on failure.
*/
int filledPolygonRgbaMt(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  int result;
  int i;
  int y, xa, xb;
  int miny, maxy;
  int x1, y1;
  int x2, y2;
  int ind1, ind2;
  var gfxPrimitivesPolyInts = <int>[];

  /*
	* Vertex array NULL check 
	*/
  if (vx == nullptr) {
    return (-1);
  }
  if (vy == nullptr) {
    return (-1);
  }

  /*
	* Sanity check number of edges
	*/
  if (n < 3) {
    return -1;
  }

  miny = vy[0];
  maxy = vy[0];
  for (i = 1; (i < n); i++) {
    if (vy[i] < miny) {
      miny = vy[i];
    } else if (vy[i] > maxy) {
      maxy = vy[i];
    }
  }

  /*
	* Draw, scanning y 
	*/
  result = 0;
  for (y = miny; (y <= maxy); y++) {
    gfxPrimitivesPolyInts.clear();
    for (i = 0; (i < n); i++) {
      if (i == 0) {
        ind1 = n - 1;
        ind2 = 0;
      } else {
        ind1 = i - 1;
        ind2 = i;
      }
      y1 = vy[ind1];
      y2 = vy[ind2];
      if (y1 < y2) {
        x1 = vx[ind1];
        x2 = vx[ind2];
      } else if (y1 > y2) {
        y2 = vy[ind1];
        y1 = vy[ind2];
        x2 = vx[ind1];
        x1 = vx[ind2];
      } else {
        continue;
      }
      if (((y >= y1) && (y < y2)) || ((y == maxy) && (y > y1) && (y <= y2))) {
        gfxPrimitivesPolyInts
            .add(((65536 * (y - y1)) ~/ (y2 - y1)) * (x2 - x1) + (65536 * x1));
      }
    }
    gfxPrimitivesPolyInts.sort((a, b) => b - a);
    /*
		* Set color 
		*/
    result = 0;
    result |= sdlSetRenderDrawBlendMode(
        renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
    result |= sdlSetRenderDrawColor(renderer, r, g, b, a);
    for (i = 0; (i < gfxPrimitivesPolyInts.length); i += 2) {
      xa = gfxPrimitivesPolyInts[i] + 1;
      xa = (xa >> 16) + ((xa & 32768) >> 15);
      xb = gfxPrimitivesPolyInts[i + 1] - 1;
      xb = (xb >> 16) + ((xb & 32768) >> 15);
      result |= hline(renderer, xa, xb, y);
    }
  }
  return result;
}

/*!
\brief Draw filled polygon with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the filled polygon.
\param vy Vertex array containing Y coordinates of the points of the filled polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param color The color value of the filled polygon to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int filledPolygonColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return filledPolygonRgbaMt(renderer, vx, vy, n, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw filled polygon with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the filled polygon.
\param vy Vertex array containing Y coordinates of the points of the filled polygon.
\param n Number of points in the vertex array. Minimum number is 3.
\param r The red value of the filled polygon to draw. 
\param g The green value of the filled polygon to draw. 
\param b The blue value of the filed polygon to draw. 
\param a The alpha value of the filled polygon to draw.

\returns Returns 0 on success, -1 on failure.
*/
int filledPolygonRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int r, int g, int b, int a) {
  return filledPolygonRgbaMt(renderer, vx, vy, n, r, g, b, a);
}

/* ---- Textured Polygon */

/*!
\brief Internal function to draw a textured horizontal line.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point (i.e. left) of the line.
\param x2 X coordinate of the second point (i.e. right) of the line.
\param y Y coordinate of the points of the line.
\param texture The texture to retrieve color information from.
\param textureW The width of the texture.
\param textureH The height of the texture.
\param textureDx The X offset for the texture lookup.
\param textureDy The Y offset for the textured lookup.

\returns Returns 0 on success, -1 on failure.
*/
int _hLineTextured(
    Pointer<SdlRenderer> renderer,
    int x1,
    int x2,
    int y,
    Pointer<SdlTexture> texture,
    int textureW,
    int textureH,
    int textureDx,
    int textureDy) {
  int w;
  int xtmp;
  int result = 0;
  int textureXWalker;
  int textureYStart;
  int pixelsWritten, writeWidth;

  /*
	* Swap x1, x2 if required to ensure x1<=x2
	*/
  if (x1 > x2) {
    xtmp = x1;
    x1 = x2;
    x2 = xtmp;
  }

  /*
	* Calculate width to draw
	*/
  w = x2 - x1 + 1;

  /*
	* Determine where in the texture we start drawing
	*/
  textureXWalker = (x1 - textureDx) % textureW;
  if (textureXWalker < 0) {
    textureXWalker = textureW + textureXWalker;
  }

  textureYStart = (y + textureDy) % textureH;
  if (textureYStart < 0) {
    textureYStart = textureH + textureYStart;
  }

  /* setup the source rectangle; we are only drawing one horizontal line */
  var sourceRect = calloc<SdlRect>();
  sourceRect.ref.y = textureYStart;
  sourceRect.ref.x = textureXWalker;
  sourceRect.ref.h = 1;

  /* we will draw to the current y */
  var dstRect = calloc<SdlRect>();
  dstRect.ref.y = y;
  dstRect.ref.h = 1;

  /* if there are enough pixels left in the current row of the texture */
  /* draw it all at once */
  if (w <= textureW - textureXWalker) {
    sourceRect.ref.w = w;
    sourceRect.ref.x = textureXWalker;
    dstRect.ref.x = x1;
    dstRect.ref.w = sourceRect.ref.w;
    result = sdlRenderCopy(renderer, texture, sourceRect, dstRect);
  } else {
    /* we need to draw multiple times */
    /* draw the first segment */
    pixelsWritten = textureW - textureXWalker;
    sourceRect.ref.w = pixelsWritten;
    sourceRect.ref.x = textureXWalker;
    dstRect.ref.x = x1;
    dstRect.ref.w = sourceRect.ref.w;
    result |= sdlRenderCopy(renderer, texture, sourceRect, dstRect);
    writeWidth = textureW;

    /* now draw the rest */
    /* set the source x to 0 */
    sourceRect.ref.x = 0;
    while (pixelsWritten < w) {
      if (writeWidth >= w - pixelsWritten) {
        writeWidth = w - pixelsWritten;
      }
      sourceRect.ref.w = writeWidth;
      dstRect.ref.x = x1 + pixelsWritten;
      dstRect.ref.w = sourceRect.ref.w;
      result |= sdlRenderCopy(renderer, texture, sourceRect, dstRect);
      pixelsWritten += writeWidth;
    }
  }
  calloc.free(sourceRect);
  calloc.free(dstRect);
  return result;
}

/*!
\brief Draws a polygon filled with the given texture (Multi-Threading Capable). 

\param renderer The renderer to draw on.
\param vx array of x vector components
\param vy array of x vector components
\param n the amount of vectors in the vx and vy array
\param texture the sdl surface to use to fill the polygon
\param textureDx the offset of the texture relative to the screeen. If you move the polygon 10 pixels 
to the left and want the texture to apear the same you need to increase the textureDx value
\param textureDy see textureDx
\param polyInts Preallocated temp array storage for vertex sorting (used for multi-threaded operation)
\param polyAllocated Flag indicating oif the temp array was allocated (used for multi-threaded operation)

\returns Returns 0 on success, -1 on failure.
*/
int texturedPolygonMt(
    Pointer<SdlRenderer> renderer,
    Pointer<Int16> vx,
    Pointer<Int16> vy,
    int n,
    Pointer<SdlSurface> texture,
    int textureDx,
    int textureDy) {
  int result;
  int i;
  int y, xa, xb;
  int minx, maxx, miny, maxy;
  int x1, y1;
  int x2, y2;
  int ind1, ind2;
  var gfxPrimitivesPolyInts = <int>[];
  Pointer<SdlTexture> textureAsTexture;

  /*
	* Sanity check number of edges
	*/
  if (n < 3) {
    return -1;
  }

  /*
	* Map polygon cache  
	*/

  /*
	* Allocate temp array, only grow array 
	*/

  /*
	* Check temp array
	*/

  /*
	* Update cache variables
	*/

  /*
	* Check temp array again
	*/

  /*
	* Determine X,Y minima,maxima 
	*/
  miny = vy[0];
  maxy = vy[0];
  minx = vx[0];
  maxx = vx[0];
  for (i = 1; (i < n); i++) {
    if (vy[i] < miny) {
      miny = vy[i];
    } else if (vy[i] > maxy) {
      maxy = vy[i];
    }
    if (vx[i] < minx) {
      minx = vx[i];
    } else if (vx[i] > maxx) {
      maxx = vx[i];
    }
  }

  /* Create texture for drawing */
  textureAsTexture = sdlCreateTextureFromSurface(renderer, texture);
  if (textureAsTexture == nullptr) {
    return -1;
  }
  sdlSetTextureBlendMode(textureAsTexture, SDL_BLENDMODE_BLEND);

  /*
	* Draw, scanning y 
	*/
  result = 0;
  for (y = miny; (y <= maxy); y++) {
    gfxPrimitivesPolyInts.clear();
    for (i = 0; (i < n); i++) {
      if (i == 0) {
        ind1 = n - 1;
        ind2 = 0;
      } else {
        ind1 = i - 1;
        ind2 = i;
      }
      y1 = vy[ind1];
      y2 = vy[ind2];
      if (y1 < y2) {
        x1 = vx[ind1];
        x2 = vx[ind2];
      } else if (y1 > y2) {
        y2 = vy[ind1];
        y1 = vy[ind2];
        x2 = vx[ind1];
        x1 = vx[ind2];
      } else {
        continue;
      }
      if (((y >= y1) && (y < y2)) || ((y == maxy) && (y > y1) && (y <= y2))) {
        gfxPrimitivesPolyInts
            .add(((65536 * (y - y1)) ~/ (y2 - y1)) * (x2 - x1) + (65536 * x1));
      }
    }
    gfxPrimitivesPolyInts.sort((a, b) => b - a);

    for (i = 0; i < gfxPrimitivesPolyInts.length; i += 2) {
      xa = gfxPrimitivesPolyInts[i] + 1;
      xa = (xa >> 16) + ((xa & 32768) >> 15);
      xb = gfxPrimitivesPolyInts[i + 1] - 1;
      xb = (xb >> 16) + ((xb & 32768) >> 15);
      result |= _hLineTextured(renderer, xa, xb, y, textureAsTexture,
          texture.ref.w, texture.ref.h, textureDx, textureDy);
    }
  }

  sdlRenderPresent(renderer);
  sdlDestroyTexture(textureAsTexture);

  return (result);
}

/*!
\brief Draws a polygon filled with the given texture. 

This standard version is calling multithreaded versions with NULL cache parameters.

\param renderer The renderer to draw on.
\param vx array of x vector components
\param vy array of x vector components
\param n the amount of vectors in the vx and vy array
\param texture the sdl surface to use to fill the polygon
\param textureDx the offset of the texture relative to the screeen. if you move the polygon 10 pixels 
to the left and want the texture to apear the same you need to increase the textureDx value
\param textureDy see textureDx

\returns Returns 0 on success, -1 on failure.
*/
int texturedPolygon(
    Pointer<SdlRenderer> renderer,
    Pointer<Int16> vx,
    Pointer<Int16> vy,
    int n,
    Pointer<SdlSurface> texture,
    int textureDx,
    int textureDy) {
  /*
	* Draw
	*/
  return (texturedPolygonMt(
      renderer, vx, vy, n, texture, textureDx, textureDy));
}

/*!
\brief Sets or resets the current global font data.

The font data array is organized in follows: 
[fontdata] = [character 0][character 1]...[character 255] where
[character n] = [byte 1 row 1][byte 2 row 1]...[byte {pitch} row 1][byte 1 row 2] ...[byte {pitch} row height] where
[byte n] = [bit 0]...[bit 7] where 
[bit n] = [0 for transparent pixel|1 for colored pixel]

\param fontdata Pointer to array of font data. Set to NULL, to reset global font to the default 8x8 font.
\param cw Width of character in bytes. Ignored if fontdata==NULL.
\param ch Height of character in bytes. Ignored if fontdata==NULL.
*/
void gfxPrimitivesSetFont(List<int> fontdata, int cw, int ch) {
  int i;

  if (fontdata.isNotEmpty && cw != 0 && ch != 0) {
    currentFontdata = fontdata;
    charWidth = cw;
    charHeight = ch;
  } else {
    currentFontdata = gfxPrimitivesFontdata;
    charWidth = 8;
    charHeight = 8;
  }

  charPitch = (charWidth + 7) ~/ 8;
  charSize = charPitch * charHeight;

  /* Maybe flip width/height for rendering */
  if ((charRotation == 1) || (charRotation == 3)) {
    charWidthLocal = charHeight;
    charHeightLocal = charWidth;
  } else {
    charWidthLocal = charWidth;
    charHeightLocal = charHeight;
  }

  /* Clear character cache */
  for (i = 0; i < 256; i++) {
    if (gfxPrimitivesFont[i] != nullptr) {
      sdlDestroyTexture(gfxPrimitivesFont[i]);
      gfxPrimitivesFont[i] = nullptr;
    }
  }
}

/*!
\brief Sets current global font character rotation steps. 

Default is 0 (no rotation). 1 = 90deg clockwise. 2 = 180deg clockwise. 3 = 270deg clockwise.
Changing the rotation, will reset the character cache.

\param rotation Number of 90deg clockwise steps to rotate
*/
void gfxPrimitivesSetFontRotation(int rotation) {
  int i;

  rotation = rotation & 3;
  if (charRotation != rotation) {
    /* Store rotation */
    charRotation = rotation;

    /* Maybe flip width/height for rendering */
    if ((charRotation == 1) || (charRotation == 3)) {
      charWidthLocal = charHeight;
      charHeightLocal = charWidth;
    } else {
      charWidthLocal = charWidth;
      charHeightLocal = charHeight;
    }

    /* Clear character cache */
    for (i = 0; i < 256; i++) {
      if (gfxPrimitivesFont[i] != nullptr) {
        sdlDestroyTexture(gfxPrimitivesFont[i]);
        gfxPrimitivesFont[i] = nullptr;
      }
    }
  }
}

/*!
\brief Draw a character of the currently set font.

\param renderer The Renderer to draw on.
\param x X (horizontal) coordinate of the upper left corner of the character.
\param y Y (vertical) coordinate of the upper left corner of the character.
\param c The character to draw.
\param r The red value of the character to draw. 
\param g The green value of the character to draw. 
\param b The blue value of the character to draw. 
\param a The alpha value of the character to draw.

\returns Returns 0 on success, -1 on failure.
*/
int characterRgba(Pointer<SdlRenderer> renderer, int x, int y, int c, int r,
    int g, int b, int a) {
  Pointer<SdlRect> srect = calloc<SdlRect>();
  Pointer<SdlRect> drect = calloc<SdlRect>();
  int result;
  int ix, iy;
  int patt;
  Pointer<Uint32> pixels;
  int linepos;
  Pointer<SdlSurface> character;
  Pointer<SdlSurface> rotatedCharacter;
  int ci;
  /* Character index in cache */
  ci = c;
  /*
	* Create new charWidth x charHeight bitmap surface if not already present.
	* Might get rotated later.
	*/
  if (gfxPrimitivesFont[ci] == nullptr) {
    /*
		* Redraw character into surface
		*/
    character = sdlCreateRgbSurface(SDL_SWSURFACE, charWidth, charHeight, 32,
        0xFF000000, 0x00FF0000, 0x0000FF00, 0x000000FF);
    if (character == nullptr) {
      return -1;
    }
    var charpos = ci * charSize;
    pixels = character.ref.pixels.cast<Uint32>();
    /*
		* Drawing loop 
		*/
    patt = 0;
    linepos = 0;
    for (iy = 0; iy < charHeight; iy++) {
      patt = currentFontdata[charpos + iy];
      for (ix = 0; ix < charWidth; ix++) {
        var pixel = pixels + linepos;
        if (patt & 0x80 != 0) {
          pixel.value = 0xffffffff;
        } else {
          pixel.value = 0;
        }
        linepos++;
        patt = patt << 1;
      }
    }
    /* Maybe rotate and replace cached image */
    if (charRotation > 0) {
      rotatedCharacter = rotateSurface90Degrees(character, charRotation);
      sdlFreeSurface(character);
      character = rotatedCharacter;
    }
    /* Convert temp surface into texture */
    gfxPrimitivesFont[ci] = sdlCreateTextureFromSurface(renderer, character);
    sdlFreeSurface(character);
    /*
		* Check pointer 
		*/
    if (gfxPrimitivesFont[ci] == nullptr) {
      return -1;
    }
  }
  /*
	* Set color 
	*/
  result = 0;
  result |= sdlSetTextureColorMod(gfxPrimitivesFont[ci], r, g, b);
  result |= sdlSetTextureAlphaMod(gfxPrimitivesFont[ci], a);
  /*
	* Setup source rectangle
	*/
  srect.ref.x = 0;
  srect.ref.y = 0;
  srect.ref.w = charWidthLocal;
  srect.ref.h = charHeightLocal;
  /*
	* Setup destination rectangle
	*/
  drect.ref.x = x;
  drect.ref.y = y;
  drect.ref.w = charWidthLocal;
  drect.ref.h = charHeightLocal;
  /*
	* Draw texture onto destination 
	*/
  result |= sdlRenderCopy(renderer, gfxPrimitivesFont[ci], srect, drect);
  calloc.free(srect);
  calloc.free(drect);
  return result;
}

/*!
\brief Draw a character of the currently set font.

\param renderer The renderer to draw on.
\param x X (horizontal) coordinate of the upper left corner of the character.
\param y Y (vertical) coordinate of the upper left corner of the character.
\param c The character to draw.
\param color The color value of the character to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int characterColor(
    Pointer<SdlRenderer> renderer, int x, int y, int c, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return characterRgba(renderer, x, y, c, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw a string in the currently set font.

The spacing between consequtive characters in the string is the fixed number of pixels 
of the character width of the current global font.

\param renderer The renderer to draw on.
\param x X (horizontal) coordinate of the upper left corner of the string.
\param y Y (vertical) coordinate of the upper left corner of the string.
\param s The string to draw.
\param color The color value of the string to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int stringColor(
    Pointer<SdlRenderer> renderer, int x, int y, String s, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return stringRgba(renderer, x, y, s, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw a string in the currently set font.

\param renderer The renderer to draw on.
\param x X (horizontal) coordinate of the upper left corner of the string.
\param y Y (vertical) coordinate of the upper left corner of the string.
\param s The string to draw.
\param r The red value of the string to draw. 
\param g The green value of the string to draw. 
\param b The blue value of the string to draw. 
\param a The alpha value of the string to draw.

\returns Returns 0 on success, -1 on failure.
*/
int stringRgba(Pointer<SdlRenderer> renderer, int x, int y, String s, int r,
    int g, int b, int a) {
  int result = 0;
  int curx = x;
  int cury = y;
  for (var i = 0; i < s.length; i++) {
    var curchar = s[i];
    result |=
        characterRgba(renderer, curx, cury, curchar.codeUnitAt(0), r, g, b, a);
    switch (charRotation) {
      case 0:
        curx += charWidthLocal;
        break;
      case 2:
        curx -= charWidthLocal;
        break;
      case 1:
        cury += charHeightLocal;
        break;
      case 3:
        cury -= charHeightLocal;
        break;
    }
  }
  return result;
}

/* ---- Bezier curve */

/*!
\brief Internal function to calculate bezier interpolator of data array with ndata values at position 't'.

\param data Array of values.
\param ndata Size of array.
\param t Position for which to calculate interpolated value. t should be between [0, ndata].

\returns Interpolated value at position t, value[0] when t<0, value[n-1] when t>n.
*/
double _evaluateBezier(List<double> data, int ndata, double t) {
  double mu, result;
  int n, k, kn, nn, nkn;
  double blend, muk, munk;

  /* Sanity check bounds */
  if (t < 0.0) {
    return (data[0]);
  }
  if (t >= ndata.toDouble()) {
    return (data[ndata - 1]);
  }

  /* Adjust t to the range 0.0 to 1.0 */
  mu = t / ndata.toDouble();

  /* Calculate interpolate */
  n = ndata - 1;
  result = 0.0;
  muk = 1;
  munk = sdlPow((1 - mu).toDouble(), n.toDouble());
  for (k = 0; k <= n; k++) {
    nn = n;
    kn = k;
    nkn = n - k;
    blend = muk * munk;
    muk *= mu;
    munk /= (1 - mu);
    while (nn >= 1) {
      blend *= nn;
      nn--;
      if (kn > 1) {
        blend /= kn.toDouble();
        kn--;
      }
      if (nkn > 1) {
        blend /= nkn.toDouble();
        nkn--;
      }
    }
    result += data[k] * blend;
  }

  return (result);
}

/*!
\brief Draw a bezier curve with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the bezier curve.
\param vy Vertex array containing Y coordinates of the points of the bezier curve.
\param n Number of points in the vertex array. Minimum number is 3.
\param s Number of steps for the interpolation. Minimum number is 2.
\param color The color value of the bezier curve to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int bezierColor(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int s, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return bezierRgba(renderer, vx, vy, n, s, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw a bezier curve with alpha blending.

\param renderer The renderer to draw on.
\param vx Vertex array containing X coordinates of the points of the bezier curve.
\param vy Vertex array containing Y coordinates of the points of the bezier curve.
\param n Number of points in the vertex array. Minimum number is 3.
\param s Number of steps for the interpolation. Minimum number is 2.
\param r The red value of the bezier curve to draw. 
\param g The green value of the bezier curve to draw. 
\param b The blue value of the bezier curve to draw. 
\param a The alpha value of the bezier curve to draw.

\returns Returns 0 on success, -1 on failure.
*/
int bezierRgba(Pointer<SdlRenderer> renderer, Pointer<Int16> vx,
    Pointer<Int16> vy, int n, int s, int r, int g, int b, int a) {
  int result;
  int i;
  double t, stepsize;
  List<double> x = [];
  List<double> y = [];
  int x1, y1, x2, y2;

  /*
	* Sanity check 
	*/
  if (n < 3) {
    return (-1);
  }
  if (s < 2) {
    return (-1);
  }

  /*
	* Variable setup 
	*/
  stepsize = 1.0 / s;

  /* Transfer vertices into float arrays */
  for (i = 0; i < n; i++) {
    x.add(vx[i].toDouble());
    y.add(vy[i].toDouble());
  }
  x.add(vx[0].toDouble());
  y.add(vy[0].toDouble());

  /*
	* Set color 
	*/
  result = 0;
  result |= sdlSetRenderDrawBlendMode(
      renderer, (a == 255) ? SDL_BLENDMODE_NONE : SDL_BLENDMODE_BLEND);
  result |= sdlSetRenderDrawColor(renderer, r, g, b, a);

  /*
	* Draw 
	*/
  t = 0.0;
  x1 = _evaluateBezier(x, n + 1, t).toInt();
  y1 = _evaluateBezier(y, n + 1, t).toInt();
  for (i = 0; i <= (n * s); i++) {
    t += stepsize;
    x2 = _evaluateBezier(x, n, t).toInt();
    y2 = _evaluateBezier(y, n, t).toInt();
    result |= line(renderer, x1, y1, x2, y2);
    x1 = x2;
    y1 = y2;
  }

  /* Clean up temporary array */
  //free(x);
  //free(y);

  return (result);
}

/*!
\brief Draw a thick line with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the line.
\param y1 Y coordinate of the first point of the line.
\param x2 X coordinate of the second point of the line.
\param y2 Y coordinate of the second point of the line.
\param width Width of the line in pixels. Must be >0.
\param color The color value of the line to draw (0xRRGGBBAA). 

\returns Returns 0 on success, -1 on failure.
*/
int thickLineColor(Pointer<SdlRenderer> renderer, int x1, int y1, int x2,
    int y2, int width, int color) {
  var co = Uint32List.fromList([color]).buffer.asUint8List();
  return thickLineRgba(
      renderer, x1, y1, x2, y2, width, co[0], co[1], co[2], co[3]);
}

/*!
\brief Draw a thick line with alpha blending.

\param renderer The renderer to draw on.
\param x1 X coordinate of the first point of the line.
\param y1 Y coordinate of the first point of the line.
\param x2 X coordinate of the second point of the line.
\param y2 Y coordinate of the second point of the line.
\param width Width of the line in pixels. Must be >0.
\param r The red value of the character to draw. 
\param g The green value of the character to draw. 
\param b The blue value of the character to draw. 
\param a The alpha value of the character to draw.

\returns Returns 0 on success, -1 on failure.
*/
int thickLineRgba(Pointer<SdlRenderer> renderer, int x1, int y1, int x2, int y2,
    int width, int r, int g, int b, int a) {
  int wh;
  double dx, dy, dx1, dy1, dx2, dy2;
  double l, wl2, nx, ny, ang, adj;
  var px = calloc<Int16>(4);
  var py = calloc<Int16>(4);

  if (renderer == nullptr) {
    return -1;
  }

  if (width < 1) {
    return -1;
  }

  /* Special case: thick "point" */
  if ((x1 == x2) && (y1 == y2)) {
    wh = width ~/ 2;
    return boxRgba(
        renderer, x1 - wh, y1 - wh, x2 + width, y2 + width, r, g, b, a);
  }

  /* Special case: width == 1 */
  if (width == 1) {
    return lineRgba(renderer, x1, y1, x2, y2, r, g, b, a);
  }

  /* Calculate offsets for sides */
  dx = (x2 - x1).toDouble();
  dy = (y2 - y1).toDouble();
  l = sdlSqrt(dx * dx + dy * dy);
  ang = sdlAtan2(dx, dy);
  adj = 0.1 + 0.9 * sdlFabs(sdlCos(2.0 * ang));
  wl2 = (width.toDouble() - adj) / (2.0 * l);
  nx = dx * wl2;
  ny = dy * wl2;

  /* Build polygon */
  dx1 = x1.toDouble();
  dy1 = y1.toDouble();
  dx2 = x2.toDouble();
  dy2 = y2.toDouble();
  px[0] = (dx1 + ny).toInt();
  px[1] = (dx1 - ny).toInt();
  px[2] = (dx2 - ny).toInt();
  px[3] = (dx2 + ny).toInt();
  py[0] = (dy1 - nx).toInt();
  py[1] = (dy1 + nx).toInt();
  py[2] = (dy2 + nx).toInt();
  py[3] = (dy2 - nx).toInt();

  /* Draw polygon */
  var result = filledPolygonRgba(renderer, px, py, 4, r, g, b, a);
  calloc.free(px);
  calloc.free(py);

  return result;
}

void gfxFree() {
  for (var i = 0; i < 256; i++) {
    if (gfxPrimitivesFont[i] != nullptr) {
      sdlDestroyTexture(gfxPrimitivesFont[i]);
      gfxPrimitivesFont[i] = nullptr;
    }
  }
}
