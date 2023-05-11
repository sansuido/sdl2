/*

SDL2_framerate.c: framerate manager

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
import '../generated/lib_sdl_timer.dart';
import 'const.dart';

class FpsManager {
  int _framecount = 0;
  double _rateticks = 0;
  double _baseticks = 0;
  double _lastticks = 0;
  int _rate = 0;
  double _measticks = 0;
  int _measrate = 0;
  int _meascount = 0;

  FpsManager() {
    init();
  }

  double _getTicks() {
    var ticks = sdlGetTicks().toDouble();
    if (ticks == 0) {
      return 1;
    } else {
      return ticks;
    }
  }

  void init() {
    _framecount = 0;
    _rate = FPS_DEFAULT;
    _rateticks = 1000.0 / FPS_DEFAULT;
    _baseticks = _getTicks();
    _lastticks = _baseticks;
    _measticks = _getTicks();
    _measrate = 0;
    _meascount = 0;
  }

  bool setFramerate(int rate) {
    if ((rate >= FPS_LOWER_LIMIT) && (rate <= FPS_UPPER_LIMIT)) {
      _framecount = 0;
      _rate = rate;
      _rateticks = 1000.0 / rate.toDouble();
      _measticks = _getTicks();
      _measrate = 0;
      _meascount = 0;
      return true;
    } else {
      return false;
    }
  }

  int getFramerate() {
    return _rate;
  }

  int getMeasFramerate() {
    return _measrate;
  }

  int getFramecount() {
    return _framecount;
  }

  int delay() {
    double currentTicks;
    double targetTicks;
    double theDelay;
    double timePassed = 0;

    if (_baseticks == 0) {
      init();
    }
    _framecount++;
    currentTicks = _getTicks();
    timePassed = currentTicks - _lastticks;
    _lastticks = currentTicks.toDouble();
    targetTicks = _baseticks + _framecount.toDouble() * _rateticks;
    if (currentTicks <= targetTicks) {
      theDelay = targetTicks - currentTicks;
      sdlDelay(theDelay.toInt());
    } else {
      _framecount = 0;
      _baseticks = _getTicks();
    }
    if ((sdlGetTicks() - _measticks) > 1000) {
      _measrate = _meascount;
      _meascount = 0;
      _measticks = _getTicks();
    } else {
      _meascount++;
    }
    return timePassed.toInt();
  }
}
