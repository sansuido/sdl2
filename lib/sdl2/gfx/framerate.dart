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
