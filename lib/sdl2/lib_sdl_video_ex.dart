import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'generated/lib_sdl.dart';

// typedef void (*SDLglproc)(void)
typedef SDLglprocDart = void Function();
typedef SDLglproc = Pointer<NativeFunction<Void Function()>>;

SDLglproc SDL_GL_GetProcAddressEx(String proc) {
  final _SDL_GL_GetProcAddressEx = DLL_SDL2.lookupFunction<
      SDLglproc Function(Pointer<Utf8>? proc),
      SDLglproc Function(Pointer<Utf8>? proc)>('SDL_GL_GetProcAddress');
  final _procPointer = proc.toNativeUtf8();
  final _result = _SDL_GL_GetProcAddressEx(_procPointer);
  calloc.free(_procPointer);
  return _result;
}
