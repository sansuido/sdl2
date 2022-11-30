import 'dart:ffi';
import '../../generated/const_sdl.dart';
import '../../generated/struct_sdl.dart';
import '../../generated/lib_sdl_events.dart';

extension SdlEventEx on SdlEvent {
  // lib_sdl_events.dart

  static void pumps() {
    // 31
    sdlPumpEvents();
  }

  static bool have(int type) {
    // 106
    return sdlHasEvent(type) == SDL_TRUE;
  }

  static bool has(int minType, int maxType) {
    // 131
    return sdlHasEvents(minType, maxType) == SDL_TRUE;
  }

  static void flash(int type) {
    // 161
    sdlFlushEvent(type);
  }

  static void flashs(int minType, int maxType) {
    // 193
    sdlFlushEvents(minType, maxType);
  }
}

extension SdlEventPointerEx on Pointer<SdlEvent> {
  // lib_sdl_event.dart

  // sdlPumpEvents

  int peeps(int numevents, int action, int minType, int maxType) {
    // 78
    return sdlPeepEvents(this, numevents, action, minType, maxType);
  }

  int poll() {
    // 248
    return sdlPollEvent(this);
  }

  int wait() {
    // 278
    return sdlWaitEvent(this);
  }

  int waitTimeout(int timeout) {
    // 312
    return sdlWaitEventTimeout(this, timeout);
  }

  int push() {
    // 355
    return sdlPushEvent(this);
  }

  // sdlSetEventFilter
  // sdlGetEventFilter
  // sdlAddEventWatch
  // sdlDelEventWatch
  // sdlFilterEvents
  // sdlEventState
  // sdlRegisterEvents
}
