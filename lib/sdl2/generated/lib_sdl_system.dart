// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// Platform specific functions for iOS
/// ```c
/// extern DECLSPEC int SDLCALL SDL_iPhoneSetAnimationCallback(SDL_Window * window, int interval, void (*callback)(void*), void *callbackParam)
/// ```
int SDL_iPhoneSetAnimationCallback(Pointer<SDL_Window>? window, int interval, Pointer<Void>? callback, Pointer<Void>? callbackParam) {
  final _SDL_iPhoneSetAnimationCallback = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Int32 interval, Pointer<Void>? callback, Pointer<Void>? callbackParam),
      int Function(Pointer<SDL_Window>? window, int interval, Pointer<Void>? callback, Pointer<Void>? callbackParam)>('SDL_iPhoneSetAnimationCallback');
  return _SDL_iPhoneSetAnimationCallback(window, interval, callback, callbackParam);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_iPhoneSetEventPump(SDL_bool enabled)
/// ```
void SDL_iPhoneSetEventPump(int enabled) {
  final _SDL_iPhoneSetEventPump = DLL_SDL2.lookupFunction<
      Void Function(Int32 enabled),
      void Function(int enabled)>('SDL_iPhoneSetEventPump');
  return _SDL_iPhoneSetEventPump(enabled);
}

/// Get the JNI environment for the current thread
/// This returns JNIEnv*, but the prototype is void* so we don't need jni.h
/// /
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_AndroidGetJNIEnv()
/// ```
Pointer<Void>? SDL_AndroidGetJNIEnv() {
  final _SDL_AndroidGetJNIEnv = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_AndroidGetJNIEnv');
  return _SDL_AndroidGetJNIEnv();
}

/// Get the SDL Activity object for the application
/// This returns jobject, but the prototype is void* so we don't need jni.h
/// The jobject returned by SDL_AndroidGetActivity is a local reference.
/// It is the caller's responsibility to properly release it
/// (using env->Push/PopLocalFrame or manually with env->DeleteLocalRef)
/// /
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_AndroidGetActivity()
/// ```
Pointer<Void>? SDL_AndroidGetActivity() {
  final _SDL_AndroidGetActivity = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_AndroidGetActivity');
  return _SDL_AndroidGetActivity();
}

/// Get the path used for internal storage for this application.
/// This path is unique to your application and cannot be written to
/// by other applications.
/// /
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_AndroidGetInternalStoragePath()
/// ```
String SDL_AndroidGetInternalStoragePath() {
  final _SDL_AndroidGetInternalStoragePath = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_AndroidGetInternalStoragePath');
  return _SDL_AndroidGetInternalStoragePath()!.toDartString();
}

/// Get the current state of external storage, a bitmask of these values:
/// SDL_ANDROID_EXTERNAL_STORAGE_READ
/// SDL_ANDROID_EXTERNAL_STORAGE_WRITE
/// If external storage is currently unavailable, this will return 0.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AndroidGetExternalStorageState()
/// ```
int SDL_AndroidGetExternalStorageState() {
  final _SDL_AndroidGetExternalStorageState = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_AndroidGetExternalStorageState');
  return _SDL_AndroidGetExternalStorageState();
}

/// Get the path used for external storage for this application.
/// This path is unique to your application, but is public and can be
/// written to by other applications.
/// /
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_AndroidGetExternalStoragePath()
/// ```
String SDL_AndroidGetExternalStoragePath() {
  final _SDL_AndroidGetExternalStoragePath = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_AndroidGetExternalStoragePath');
  return _SDL_AndroidGetExternalStoragePath()!.toDartString();
}

