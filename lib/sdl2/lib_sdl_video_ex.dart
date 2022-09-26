import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'generated/lib_sdl.dart';

// typedef void (*SDLglproc)(void)
typedef SDLglprocDart = void Function();
typedef SDLglproc = Pointer<NativeFunction<Void Function()>>;

SDLglproc sdlGlGetProcAddressEx(String proc) {
  final sdlGlGetProcAddressExLookupFunction = libSdl2.lookupFunction<
      SDLglproc Function(Pointer<Utf8> proc),
      SDLglproc Function(Pointer<Utf8> proc)>('SDL_GL_GetProcAddress');
  final procPointer = proc.toNativeUtf8();
  final result = sdlGlGetProcAddressExLookupFunction(procPointer);
  calloc.free(procPointer);
  return result;
}
