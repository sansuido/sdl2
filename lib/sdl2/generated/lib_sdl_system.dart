// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Set a callback for every Windows message, run before TranslateMessage().
/// 
/// \param callback The SDL_WindowsMessageHook function to call.
/// \param userdata a pointer to pass to every iteration of `callback`
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowsMessageHook(SDL_WindowsMessageHook callback, void *userdata)
/// ```
void SDL_SetWindowsMessageHook(Pointer<Void>? callback, Pointer<Void>? userdata) {
  final _SDL_SetWindowsMessageHook = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? callback, Pointer<Void>? userdata),
      void Function(Pointer<Void>? callback, Pointer<Void>? userdata)>('SDL_SetWindowsMessageHook');
  return _SDL_SetWindowsMessageHook(callback, userdata);
}

/// 
/// Get the D3D9 adapter index that matches the specified display index.
/// 
/// The returned adapter index can be passed to `IDirect3D9::CreateDevice` and
/// controls on which monitor a full screen application will appear.
/// 
/// \param displayIndex the display index for which to get the D3D9 adapter
/// index
/// \returns the D3D9 adapter index on success or a negative error code on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.1.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Direct3D9GetAdapterIndex( int displayIndex )
/// ```
int SDL_Direct3D9GetAdapterIndex(int displayIndex) {
  final _SDL_Direct3D9GetAdapterIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex),
      int Function(int displayIndex)>('SDL_Direct3D9GetAdapterIndex');
  return _SDL_Direct3D9GetAdapterIndex(displayIndex);
}

/// 
/// Get the D3D9 device associated with a renderer.
/// 
/// Once you are done using the device, you should release it to avoid a
/// resource leak.
/// 
/// \param renderer the renderer from which to get the associated D3D device
/// \returns the D3D9 device associated with given renderer or NULL if it is
/// not a D3D9 renderer; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.1.
/// 
/// ```c
/// extern DECLSPEC IDirect3DDevice9* SDLCALL SDL_RenderGetD3D9Device(SDL_Renderer * renderer)
/// ```
Pointer<IDirect3DDevice9>? SDL_RenderGetD3D9Device(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderGetD3D9Device = DLL_SDL2.lookupFunction<
      Pointer<IDirect3DDevice9>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<IDirect3DDevice9>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderGetD3D9Device');
  return _SDL_RenderGetD3D9Device(renderer);
}

/// 
/// Get the D3D11 device associated with a renderer.
/// 
/// Once you are done using the device, you should release it to avoid a
/// resource leak.
/// 
/// \param renderer the renderer from which to get the associated D3D11 device
/// \returns the D3D11 device associated with given renderer or NULL if it is
/// not a D3D11 renderer; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC ID3D11Device* SDLCALL SDL_RenderGetD3D11Device(SDL_Renderer * renderer)
/// ```
Pointer<ID3D11Device>? SDL_RenderGetD3D11Device(Pointer<SDL_Renderer>? renderer) {
  final _SDL_RenderGetD3D11Device = DLL_SDL2.lookupFunction<
      Pointer<ID3D11Device>? Function(Pointer<SDL_Renderer>? renderer),
      Pointer<ID3D11Device>? Function(Pointer<SDL_Renderer>? renderer)>('SDL_RenderGetD3D11Device');
  return _SDL_RenderGetD3D11Device(renderer);
}

/// 
/// Get the DXGI Adapter and Output indices for the specified display index.
/// 
/// The DXGI Adapter and Output indices can be passed to `EnumAdapters` and
/// `EnumOutputs` respectively to get the objects required to create a DX10 or
/// DX11 device and swap chain.
/// 
/// Before SDL 2.0.4 this function did not return a value. Since SDL 2.0.4 it
/// returns an SDL_bool.
/// 
/// \param displayIndex the display index for which to get both indices
/// \param adapterIndex a pointer to be filled in with the adapter index
/// \param outputIndex a pointer to be filled in with the output index
/// \returns SDL_TRUE on success or SDL_FALSE on failure; call SDL_GetError()
/// for more information.
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_DXGIGetOutputInfo( int displayIndex, int *adapterIndex, int *outputIndex )
/// ```
int SDL_DXGIGetOutputInfo(int displayIndex, Pointer<Int32>? adapterIndex, Pointer<Int32>? outputIndex) {
  final _SDL_DXGIGetOutputInfo = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<Int32>? adapterIndex, Pointer<Int32>? outputIndex),
      int Function(int displayIndex, Pointer<Int32>? adapterIndex, Pointer<Int32>? outputIndex)>('SDL_DXGIGetOutputInfo');
  return _SDL_DXGIGetOutputInfo(displayIndex, adapterIndex, outputIndex);
}

/// 
/// Sets the UNIX nice value for a thread.
/// 
/// This uses setpriority() if possible, and RealtimeKit if available.
/// 
/// \param threadID the Unix thread ID to change priority of.
/// \param priority The new, Unix-specific, priority value.
/// \returns 0 on success, or -1 on error.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LinuxSetThreadPriority(Sint64 threadID, int priority)
/// ```
int SDL_LinuxSetThreadPriority(int threadID, int priority) {
  final _SDL_LinuxSetThreadPriority = DLL_SDL2.lookupFunction<
      Int32 Function(Int64 threadID, Int32 priority),
      int Function(int threadID, int priority)>('SDL_LinuxSetThreadPriority');
  return _SDL_LinuxSetThreadPriority(threadID, priority);
}

/// 
/// Sets the priority (not nice level) and scheduling policy for a thread.
/// 
/// This uses setpriority() if possible, and RealtimeKit if available.
/// 
/// \param threadID The Unix thread ID to change priority of.
/// \param sdlPriority The new SDL_ThreadPriority value.
/// \param schedPolicy The new scheduling policy (SCHED_FIFO, SCHED_RR,
/// SCHED_OTHER, etc...)
/// \returns 0 on success, or -1 on error.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LinuxSetThreadPriorityAndPolicy(Sint64 threadID, int sdlPriority, int schedPolicy)
/// ```
int SDL_LinuxSetThreadPriorityAndPolicy(int threadID, int sdlPriority, int schedPolicy) {
  final _SDL_LinuxSetThreadPriorityAndPolicy = DLL_SDL2.lookupFunction<
      Int32 Function(Int64 threadID, Int32 sdlPriority, Int32 schedPolicy),
      int Function(int threadID, int sdlPriority, int schedPolicy)>('SDL_LinuxSetThreadPriorityAndPolicy');
  return _SDL_LinuxSetThreadPriorityAndPolicy(threadID, sdlPriority, schedPolicy);
}

/// 
/// Use this function to set the animation callback on Apple iOS.
/// 
/// The function prototype for `callback` is:
/// 
/// ```c
/// void callback(void* callbackParam);
/// ```
/// 
/// Where its parameter, `callbackParam`, is what was passed as `callbackParam`
/// to SDL_iPhoneSetAnimationCallback().
/// 
/// This function is only available on Apple iOS.
/// 
/// For more information see:
/// [README-ios.md](https://hg.libsdl.org/SDL/file/default/docs/README-ios.md)
/// 
/// This functions is also accessible using the macro
/// SDL_iOSSetAnimationCallback() since SDL 2.0.4.
/// 
/// \param window the window for which the animation callback should be set
/// \param interval the number of frames after which **callback** will be
/// called
/// \param callback the function to call for every frame.
/// \param callbackParam a pointer that is passed to `callback`.
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_iPhoneSetEventPump
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_iPhoneSetAnimationCallback(SDL_Window * window, int interval, void (*callback)(void*), void *callbackParam)
/// ```
int SDL_iPhoneSetAnimationCallback(Pointer<SDL_Window>? window, int interval, Pointer<Void>? callback, Pointer<Void>? callbackParam) {
  final _SDL_iPhoneSetAnimationCallback = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Int32 interval, Pointer<Void>? callback, Pointer<Void>? callbackParam),
      int Function(Pointer<SDL_Window>? window, int interval, Pointer<Void>? callback, Pointer<Void>? callbackParam)>('SDL_iPhoneSetAnimationCallback');
  return _SDL_iPhoneSetAnimationCallback(window, interval, callback, callbackParam);
}

/// 
/// Use this function to enable or disable the SDL event pump on Apple iOS.
/// 
/// This function is only available on Apple iOS.
/// 
/// This functions is also accessible using the macro SDL_iOSSetEventPump()
/// since SDL 2.0.4.
/// 
/// \param enabled SDL_TRUE to enable the event pump, SDL_FALSE to disable it
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_iPhoneSetAnimationCallback
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_iPhoneSetEventPump(SDL_bool enabled)
/// ```
void SDL_iPhoneSetEventPump(int enabled) {
  final _SDL_iPhoneSetEventPump = DLL_SDL2.lookupFunction<
      Void Function(Int32 enabled),
      void Function(int enabled)>('SDL_iPhoneSetEventPump');
  return _SDL_iPhoneSetEventPump(enabled);
}

/// 
/// Get the Android Java Native Interface Environment of the current thread.
/// 
/// This is the JNIEnv one needs to access the Java virtual machine from native
/// code, and is needed for many Android APIs to be usable from C.
/// 
/// The prototype of the function in SDL's code actually declare a void* return
/// type, even if the implementation returns a pointer to a JNIEnv. The
/// rationale being that the SDL headers can avoid including jni.h.
/// 
/// \returns a pointer to Java native interface object (JNIEnv) to which the
/// current thread is attached, or 0 on error.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AndroidGetActivity
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_AndroidGetJNIEnv(void)
/// ```
Pointer<Void>? SDL_AndroidGetJNIEnv() {
  final _SDL_AndroidGetJNIEnv = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_AndroidGetJNIEnv');
  return _SDL_AndroidGetJNIEnv();
}

/// 
/// Retrieve the Java instance of the Android activity class.
/// 
/// The prototype of the function in SDL's code actually declares a void*
/// return type, even if the implementation returns a jobject. The rationale
/// being that the SDL headers can avoid including jni.h.
/// 
/// The jobject returned by the function is a local reference and must be
/// released by the caller. See the PushLocalFrame() and PopLocalFrame() or
/// DeleteLocalRef() functions of the Java native interface:
/// 
/// https://docs.oracle.com/javase/1.5.0/docs/guide/jni/spec/functions.html
/// 
/// \returns the jobject representing the instance of the Activity class of the
/// Android application, or NULL on error.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AndroidGetJNIEnv
/// 
/// ```c
/// extern DECLSPEC void * SDLCALL SDL_AndroidGetActivity(void)
/// ```
Pointer<Void>? SDL_AndroidGetActivity() {
  final _SDL_AndroidGetActivity = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_AndroidGetActivity');
  return _SDL_AndroidGetActivity();
}

/// 
/// Query Android API level of the current device.
/// 
/// - API level 31: Android 12
/// - API level 30: Android 11
/// - API level 29: Android 10
/// - API level 28: Android 9
/// - API level 27: Android 8.1
/// - API level 26: Android 8.0
/// - API level 25: Android 7.1
/// - API level 24: Android 7.0
/// - API level 23: Android 6.0
/// - API level 22: Android 5.1
/// - API level 21: Android 5.0
/// - API level 20: Android 4.4W
/// - API level 19: Android 4.4
/// - API level 18: Android 4.3
/// - API level 17: Android 4.2
/// - API level 16: Android 4.1
/// - API level 15: Android 4.0.3
/// - API level 14: Android 4.0
/// - API level 13: Android 3.2
/// - API level 12: Android 3.1
/// - API level 11: Android 3.0
/// - API level 10: Android 2.3.3
/// 
/// \returns the Android API level.
/// 
/// \since This function is available since SDL 2.0.12.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetAndroidSDKVersion(void)
/// ```
int SDL_GetAndroidSDKVersion() {
  final _SDL_GetAndroidSDKVersion = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetAndroidSDKVersion');
  return _SDL_GetAndroidSDKVersion();
}

/// 
/// Query if the application is running on Android TV.
/// 
/// \returns SDL_TRUE if this is Android TV, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsAndroidTV(void)
/// ```
int SDL_IsAndroidTV() {
  final _SDL_IsAndroidTV = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsAndroidTV');
  return _SDL_IsAndroidTV();
}

/// 
/// Query if the application is running on a Chromebook.
/// 
/// \returns SDL_TRUE if this is a Chromebook, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsChromebook(void)
/// ```
int SDL_IsChromebook() {
  final _SDL_IsChromebook = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsChromebook');
  return _SDL_IsChromebook();
}

/// 
/// Query if the application is running on a Samsung DeX docking station.
/// 
/// \returns SDL_TRUE if this is a DeX docking station, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsDeXMode(void)
/// ```
int SDL_IsDeXMode() {
  final _SDL_IsDeXMode = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsDeXMode');
  return _SDL_IsDeXMode();
}

/// 
/// Trigger the Android system back button behavior.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AndroidBackButton(void)
/// ```
void SDL_AndroidBackButton() {
  final _SDL_AndroidBackButton = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_AndroidBackButton');
  return _SDL_AndroidBackButton();
}

/// 
/// Get the path used for internal storage for this application.
/// 
/// This path is unique to your application and cannot be written to by other
/// applications.
/// 
/// Your internal storage path is typically:
/// `/data/data/your.app.package/files`.
/// 
/// \returns the path used for internal storage or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AndroidGetExternalStorageState
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_AndroidGetInternalStoragePath(void)
/// ```
String SDL_AndroidGetInternalStoragePath() {
  final _SDL_AndroidGetInternalStoragePath = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_AndroidGetInternalStoragePath');
  return _SDL_AndroidGetInternalStoragePath()!.toDartString();
}

/// 
/// Get the current state of external storage.
/// 
/// The current state of external storage, a bitmask of these values:
/// `SDL_ANDROID_EXTERNAL_STORAGE_READ`, `SDL_ANDROID_EXTERNAL_STORAGE_WRITE`.
/// 
/// If external storage is currently unavailable, this will return 0.
/// 
/// \returns the current state of external storage on success or 0 on failure;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AndroidGetExternalStoragePath
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AndroidGetExternalStorageState(void)
/// ```
int SDL_AndroidGetExternalStorageState() {
  final _SDL_AndroidGetExternalStorageState = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_AndroidGetExternalStorageState');
  return _SDL_AndroidGetExternalStorageState();
}

/// 
/// Get the path used for external storage for this application.
/// 
/// This path is unique to your application, but is public and can be written
/// to by other applications.
/// 
/// Your external storage path is typically:
/// `/storage/sdcard0/Android/data/your.app.package/files`.
/// 
/// \returns the path used for external storage for this application on success
/// or NULL on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_AndroidGetExternalStorageState
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_AndroidGetExternalStoragePath(void)
/// ```
String SDL_AndroidGetExternalStoragePath() {
  final _SDL_AndroidGetExternalStoragePath = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_AndroidGetExternalStoragePath');
  return _SDL_AndroidGetExternalStoragePath()!.toDartString();
}

/// 
/// Request permissions at runtime.
/// 
/// This blocks the calling thread until the permission is granted or denied.
/// 
/// \param permission The permission to request.
/// \returns SDL_TRUE if the permission was granted, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_AndroidRequestPermission(const char *permission)
/// ```
int SDL_AndroidRequestPermission(String permission) {
  final _SDL_AndroidRequestPermission = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? permission),
      int Function(Pointer<Utf8>? permission)>('SDL_AndroidRequestPermission');
  final _permissionPointer = permission.toNativeUtf8();
  final _result = _SDL_AndroidRequestPermission(_permissionPointer);
  calloc.free(_permissionPointer);
  return _result;
}

/// 
/// Shows an Android toast notification.
/// 
/// Toasts are a sort of lightweight notification that are unique to Android.
/// 
/// https://developer.android.com/guide/topics/ui/notifiers/toasts
/// 
/// Shows toast in UI thread.
/// 
/// For the `gravity` parameter, choose a value from here, or -1 if you don't
/// have a preference:
/// 
/// https://developer.android.com/reference/android/view/Gravity
/// 
/// \param message text message to be shown
/// \param duration 0=short, 1=long
/// \param gravity where the notification should appear on the screen.
/// \param xoffset set this parameter only when gravity >=0
/// \param yoffset set this parameter only when gravity >=0
/// \returns 0 if success, -1 if any error occurs.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AndroidShowToast(const char* message, int duration, int gravity, int xoffset, int yoffset)
/// ```
int SDL_AndroidShowToast(String message, int duration, int gravity, int xoffset, int yoffset) {
  final _SDL_AndroidShowToast = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? message, Int32 duration, Int32 gravity, Int32 xoffset, Int32 yoffset),
      int Function(Pointer<Utf8>? message, int duration, int gravity, int xoffset, int yoffset)>('SDL_AndroidShowToast');
  final _messagePointer = message.toNativeUtf8();
  final _result = _SDL_AndroidShowToast(_messagePointer, duration, gravity, xoffset, yoffset);
  calloc.free(_messagePointer);
  return _result;
}

/// 
/// Send a user command to SDLActivity.
/// 
/// Override "boolean onUnhandledMessage(Message msg)" to handle the message.
/// 
/// \param command user command that must be greater or equal to 0x8000
/// \param param user parameter
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_AndroidSendMessage(Uint32 command, int param)
/// ```
int SDL_AndroidSendMessage(int command, int param) {
  final _SDL_AndroidSendMessage = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 command, Int32 param),
      int Function(int command, int param)>('SDL_AndroidSendMessage');
  return _SDL_AndroidSendMessage(command, param);
}

/// 
/// Retrieve a WinRT defined path on the local file system.
/// 
/// Not all paths are available on all versions of Windows. This is especially
/// true on Windows Phone. Check the documentation for the given SDL_WinRT_Path
/// for more information on which path types are supported where.
/// 
/// Documentation on most app-specific path types on WinRT can be found on
/// MSDN, at the URL:
/// 
/// https://msdn.microsoft.com/en-us/library/windows/apps/hh464917.aspx
/// 
/// \param pathType the type of path to retrieve, one of SDL_WinRT_Path
/// \returns a UCS-2 string (16-bit, wide-char) containing the path, or NULL if
/// the path is not available for any reason; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.3.
/// 
/// \sa SDL_WinRTGetFSPathUTF8
/// 
/// ```c
/// extern DECLSPEC const wchar_t * SDLCALL SDL_WinRTGetFSPathUNICODE(SDL_WinRT_Path pathType)
/// ```
Pointer<Int16>? SDL_WinRTGetFSPathUNICODE(int pathType) {
  final _SDL_WinRTGetFSPathUNICODE = DLL_SDL2.lookupFunction<
      Pointer<Int16>? Function(Int32 pathType),
      Pointer<Int16>? Function(int pathType)>('SDL_WinRTGetFSPathUNICODE');
  return _SDL_WinRTGetFSPathUNICODE(pathType);
}

/// 
/// Retrieve a WinRT defined path on the local file system.
/// 
/// Not all paths are available on all versions of Windows. This is especially
/// true on Windows Phone. Check the documentation for the given SDL_WinRT_Path
/// for more information on which path types are supported where.
/// 
/// Documentation on most app-specific path types on WinRT can be found on
/// MSDN, at the URL:
/// 
/// https://msdn.microsoft.com/en-us/library/windows/apps/hh464917.aspx
/// 
/// \param pathType the type of path to retrieve, one of SDL_WinRT_Path
/// \returns a UTF-8 string (8-bit, multi-byte) containing the path, or NULL if
/// the path is not available for any reason; call SDL_GetError() for
/// more information.
/// 
/// \since This function is available since SDL 2.0.3.
/// 
/// \sa SDL_WinRTGetFSPathUNICODE
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_WinRTGetFSPathUTF8(SDL_WinRT_Path pathType)
/// ```
String SDL_WinRTGetFSPathUTF8(int pathType) {
  final _SDL_WinRTGetFSPathUTF8 = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 pathType),
      Pointer<Utf8>? Function(int pathType)>('SDL_WinRTGetFSPathUTF8');
  return _SDL_WinRTGetFSPathUTF8(pathType)!.toDartString();
}

/// 
/// Detects the device family of WinRT plattform at runtime.
/// 
/// \returns a value from the SDL_WinRT_DeviceFamily enum.
/// 
/// \since This function is available since SDL 2.0.8.
/// 
/// ```c
/// extern DECLSPEC SDL_WinRT_DeviceFamily SDLCALL SDL_WinRTGetDeviceFamily()
/// ```
int SDL_WinRTGetDeviceFamily() {
  final _SDL_WinRTGetDeviceFamily = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_WinRTGetDeviceFamily');
  return _SDL_WinRTGetDeviceFamily();
}

/// 
/// Query if the current device is a tablet.
/// 
/// If SDL can't determine this, it will return SDL_FALSE.
/// 
/// \returns SDL_TRUE if the device is a tablet, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsTablet(void)
/// ```
int SDL_IsTablet() {
  final _SDL_IsTablet = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsTablet');
  return _SDL_IsTablet();
}

/// Functions used by iOS application delegates to notify SDL about state changes
/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationWillTerminate(void)
/// ```
void SDL_OnApplicationWillTerminate() {
  final _SDL_OnApplicationWillTerminate = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationWillTerminate');
  return _SDL_OnApplicationWillTerminate();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidReceiveMemoryWarning(void)
/// ```
void SDL_OnApplicationDidReceiveMemoryWarning() {
  final _SDL_OnApplicationDidReceiveMemoryWarning = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationDidReceiveMemoryWarning');
  return _SDL_OnApplicationDidReceiveMemoryWarning();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationWillResignActive(void)
/// ```
void SDL_OnApplicationWillResignActive() {
  final _SDL_OnApplicationWillResignActive = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationWillResignActive');
  return _SDL_OnApplicationWillResignActive();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidEnterBackground(void)
/// ```
void SDL_OnApplicationDidEnterBackground() {
  final _SDL_OnApplicationDidEnterBackground = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationDidEnterBackground');
  return _SDL_OnApplicationDidEnterBackground();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationWillEnterForeground(void)
/// ```
void SDL_OnApplicationWillEnterForeground() {
  final _SDL_OnApplicationWillEnterForeground = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationWillEnterForeground');
  return _SDL_OnApplicationWillEnterForeground();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidBecomeActive(void)
/// ```
void SDL_OnApplicationDidBecomeActive() {
  final _SDL_OnApplicationDidBecomeActive = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationDidBecomeActive');
  return _SDL_OnApplicationDidBecomeActive();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidChangeStatusBarOrientation(void)
/// ```
void SDL_OnApplicationDidChangeStatusBarOrientation() {
  final _SDL_OnApplicationDidChangeStatusBarOrientation = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_OnApplicationDidChangeStatusBarOrientation');
  return _SDL_OnApplicationDidChangeStatusBarOrientation();
}

