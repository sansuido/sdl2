/*  

SDL2_rotozoom.c: rotozoomer, zoomer and shrinker for 32bit or 8bit surfaces

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
import 'package:ffi/ffi.dart';

import '../generated/lib_sdl_stdinc.dart';
import '../generated/lib_sdl_surface.dart';
import '../generated/struct_sdl.dart';

/*!
\brief Rotates a 8/16/24/32 bit surface in increments of 90 degrees.

Specialized 90 degree rotator which rotates a 'src' surface in 90 degree 
increments clockwise returning a new surface. Faster than rotozoomer since
no scanning or interpolation takes place. Input surface must be 8/16/24/32 bit.
(code contributed by J. Schiller, improved by C. Allport and A. Schiffler)

\param src Source surface to rotate.
\param numClockwiseTurns Number of clockwise 90 degree turns to apply to the source.

\returns The new, rotated surface; or NULL for surfaces with incorrect input format.
*/
Pointer<SdlSurface> rotateSurface90Degrees(
    Pointer<SdlSurface> src, int numClockwiseTurns) {
  int row, col, newWidth, newHeight;
  int bpp, bpr;
  Pointer<SdlSurface> dst;
  int normalizedClockwiseTurns;

  /* Has to be a valid surface pointer and be a Nbit surface where n is divisible by 8 */
  if (src == nullptr || src.ref.format == nullptr) {
    print('NULL source surface or source surface format');
    return nullptr;
  }

  if ((src.ref.format.ref.bitsPerPixel % 8) != 0) {
    print('Invalid source surface bit depth');
    return nullptr;
  }

  /* normalize numClockwiseTurns */
  normalizedClockwiseTurns = (numClockwiseTurns % 4);
  if (normalizedClockwiseTurns < 0) {
    normalizedClockwiseTurns += 4;
  }

  /* If turns are even, our new width/height will be the same as the source surface */
  if (normalizedClockwiseTurns % 2 != 0) {
    newWidth = src.ref.h;
    newHeight = src.ref.w;
  } else {
    newWidth = src.ref.w;
    newHeight = src.ref.h;
  }

  dst = sdlCreateRgbSurface(
      src.ref.flags,
      newWidth,
      newHeight,
      src.ref.format.ref.bitsPerPixel,
      src.ref.format.ref.rmask,
      src.ref.format.ref.gmask,
      src.ref.format.ref.bmask,
      src.ref.format.ref.amask);
  if (dst == nullptr) {
    print('Could not create destination surface');
    return nullptr;
  }

  //if (SDL_MUSTLOCK(src)) {
  sdlLockSurface(src);
  //}
  //if (SDL_MUSTLOCK(dst)) {
  sdlLockSurface(dst);
  //}

  /* Calculate byte-per-pixel */
  bpp = src.ref.format.ref.bitsPerPixel ~/ 8;

  Pointer<Pointer<Uint8>> srcBuf = calloc<Pointer<Uint8>>();
  Pointer<Pointer<Uint8>> dstBuf = calloc<Pointer<Uint8>>();

  print(normalizedClockwiseTurns);
  switch (normalizedClockwiseTurns) {
    case 0: /* Make a copy of the surface */
      {
        /* Unfortunately SDL_BlitSurface cannot be used to make a copy of the surface
			since it does not preserve alpha. */

        if (src.ref.pitch == dst.ref.pitch) {
          print('(1)kotti');
          /* If the pitch is the same for both surfaces, the memory can be copied all at once. */
          sdlMemcpy(
              dst.ref.pixels, src.ref.pixels, (src.ref.h * src.ref.pitch));
        } else {
          print('(2)kotti');
          /* If the pitch differs, copy each row separately */
          srcBuf.value = src.ref.pixels.cast<Uint8>();
          dstBuf.value = dst.ref.pixels.cast<Uint8>();
          bpr = src.ref.w * bpp;
          for (row = 0; row < src.ref.h; row++) {
            sdlMemcpy(dstBuf.value, srcBuf.value, bpr);
            srcBuf.value = srcBuf.value.elementAt(src.ref.pitch);
            dstBuf.value = dstBuf.value.elementAt(dst.ref.pitch);
          }
        }
      }
      break;

    /* rotate clockwise */
    case 1: /* rotated 90 degrees clockwise */
      {
        for (row = 0; row < src.ref.h; ++row) {
          srcBuf.value = src.ref.pixels.cast<Uint8>();
          srcBuf.value = srcBuf.value.elementAt(row * src.ref.pitch);
          dstBuf.value = dst.ref.pixels.cast<Uint8>();
          dstBuf.value = dstBuf.value.elementAt((dst.ref.w - row - 1) * bpp);
          for (col = 0; col < src.ref.w; ++col) {
            sdlMemcpy(dstBuf.value, srcBuf.value, bpp);
            srcBuf.value = srcBuf.value.elementAt(bpp);
            dstBuf.value = dstBuf.value.elementAt(dst.ref.pitch);
          }
        }
      }
      break;

    case 2: /* rotated 180 degrees clockwise */
      {
        for (row = 0; row < src.ref.h; ++row) {
          srcBuf.value = src.ref.pixels.cast<Uint8>();
          srcBuf.value = srcBuf.value.elementAt(row * src.ref.pitch);
          dstBuf.value = dst.ref.pixels.cast<Uint8>();
          dstBuf.value = dstBuf.value.elementAt(
              (dst.ref.h - row - 1) * dst.ref.pitch + (dst.ref.w - 1) * bpp);
          for (col = 0; col < src.ref.w; ++col) {
            sdlMemcpy(dstBuf.value, srcBuf.value, bpp);
            srcBuf.value = srcBuf.value.elementAt(bpp);
            dstBuf.value = dstBuf.value.elementAt(-bpp);
          }
        }
      }
      break;

    case 3: /* rotated 270 degrees clockwise */
      {
        for (row = 0; row < src.ref.h; ++row) {
          srcBuf.value = src.ref.pixels.cast<Uint8>();
          srcBuf.value = srcBuf.value.elementAt(row * src.ref.pitch);
          dstBuf.value = dst.ref.pixels.cast<Uint8>();
          dstBuf.value = dstBuf.value
              .elementAt((row * bpp) + ((dst.ref.h - 1) * dst.ref.pitch));
          for (col = 0; col < src.ref.w; ++col) {
            sdlMemcpy(dstBuf.value, srcBuf.value, bpp);
            srcBuf.value = srcBuf.value.elementAt(bpp);
            dstBuf.value = dstBuf.value.elementAt(-dst.ref.pitch);
          }
        }
      }
      break;
  }
  /* end switch */

  //if (SDL_MUSTLOCK(src)) {
  sdlUnlockSurface(src);
  //}
  //if (SDL_MUSTLOCK(dst)) {
  sdlUnlockSurface(dst);
  //}
  calloc.free(srcBuf);
  calloc.free(dstBuf);
  return dst;
}
