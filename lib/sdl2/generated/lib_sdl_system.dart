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
void sdlSetWindowsMessageHook(
    Pointer<NativeFunction<SdlWindowsMessageHook>> callback,
    Pointer<NativeType> userdata) {
  final sdlSetWindowsMessageHookLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<NativeFunction<SdlWindowsMessageHook>> callback,
          Pointer<NativeType> userdata),
      void Function(Pointer<NativeFunction<SdlWindowsMessageHook>> callback,
          Pointer<NativeType> userdata)>('SDL_SetWindowsMessageHook');
  return sdlSetWindowsMessageHookLookupFunction(callback, userdata);
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
int sdlDirect3D9GetAdapterIndex(int displayIndex) {
  final sdlDirect3D9GetAdapterIndexLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 displayIndex),
      int Function(int displayIndex)>('SDL_Direct3D9GetAdapterIndex');
  return sdlDirect3D9GetAdapterIndexLookupFunction(displayIndex);
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
Pointer<IDirect3DDevice9> sdlRenderGetD3D9Device(
    Pointer<SdlRenderer> renderer) {
  final sdlRenderGetD3D9DeviceLookupFunction = libSdl2.lookupFunction<
      Pointer<IDirect3DDevice9> Function(Pointer<SdlRenderer> renderer),
      Pointer<IDirect3DDevice9> Function(
          Pointer<SdlRenderer> renderer)>('SDL_RenderGetD3D9Device');
  return sdlRenderGetD3D9DeviceLookupFunction(renderer);
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
Pointer<ID3D11Device> sdlRenderGetD3D11Device(Pointer<SdlRenderer> renderer) {
  final sdlRenderGetD3D11DeviceLookupFunction = libSdl2.lookupFunction<
      Pointer<ID3D11Device> Function(Pointer<SdlRenderer> renderer),
      Pointer<ID3D11Device> Function(
          Pointer<SdlRenderer> renderer)>('SDL_RenderGetD3D11Device');
  return sdlRenderGetD3D11DeviceLookupFunction(renderer);
}

///
/// Get the D3D12 device associated with a renderer.
///
/// Once you are done using the device, you should release it to avoid a
/// resource leak.
///
/// \param renderer the renderer from which to get the associated D3D12 device
/// \returns the D3D12 device associated with given renderer or NULL if it is
/// not a D3D12 renderer; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC ID3D12Device* SDLCALL SDL_RenderGetD3D12Device(SDL_Renderer* renderer)
/// ```
Pointer<ID3D12Device> sdlRenderGetD3D12Device(Pointer<SdlRenderer> renderer) {
  final sdlRenderGetD3D12DeviceLookupFunction = libSdl2.lookupFunction<
      Pointer<ID3D12Device> Function(Pointer<SdlRenderer> renderer),
      Pointer<ID3D12Device> Function(
          Pointer<SdlRenderer> renderer)>('SDL_RenderGetD3D12Device');
  return sdlRenderGetD3D12DeviceLookupFunction(renderer);
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
bool sdlDxgiGetOutputInfo(
    int displayIndex, Pointer<Int32> adapterIndex, Pointer<Int32> outputIndex) {
  final sdlDxgiGetOutputInfoLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<Int32> adapterIndex,
          Pointer<Int32> outputIndex),
      int Function(int displayIndex, Pointer<Int32> adapterIndex,
          Pointer<Int32> outputIndex)>('SDL_DXGIGetOutputInfo');
  return sdlDxgiGetOutputInfoLookupFunction(
          displayIndex, adapterIndex, outputIndex) ==
      1;
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
int sdlLinuxSetThreadPriority(int threadId, int priority) {
  final sdlLinuxSetThreadPriorityLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int64 threadId, Int32 priority),
      int Function(int threadId, int priority)>('SDL_LinuxSetThreadPriority');
  return sdlLinuxSetThreadPriorityLookupFunction(threadId, priority);
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
int sdlLinuxSetThreadPriorityAndPolicy(
    int threadId, int sdlPriority, int schedPolicy) {
  final sdlLinuxSetThreadPriorityAndPolicyLookupFunction =
      libSdl2.lookupFunction<
          Int32 Function(Int64 threadId, Int32 sdlPriority, Int32 schedPolicy),
          int Function(int threadId, int sdlPriority,
              int schedPolicy)>('SDL_LinuxSetThreadPriorityAndPolicy');
  return sdlLinuxSetThreadPriorityAndPolicyLookupFunction(
      threadId, sdlPriority, schedPolicy);
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
/// https://github.com/libsdl-org/SDL/blob/main/docs/README-ios.md
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
/// extern DECLSPEC int SDLCALL SDL_iPhoneSetAnimationCallback(SDL_Window * window, int interval, void (SDLCALL *callback)(void*), void *callbackParam)
/// ```
int sdlIPhoneSetAnimationCallback(Pointer<SdlWindow> window, int interval,
    Pointer<NativeType> callback, Pointer<NativeType> callbackParam) {
  final sdlIPhoneSetAnimationCallbackLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow> window, Int32 interval,
          Pointer<NativeType> callback, Pointer<NativeType> callbackParam),
      int Function(
          Pointer<SdlWindow> window,
          int interval,
          Pointer<NativeType> callback,
          Pointer<NativeType> callbackParam)>('SDL_iPhoneSetAnimationCallback');
  return sdlIPhoneSetAnimationCallbackLookupFunction(
      window, interval, callback, callbackParam);
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
void sdlIPhoneSetEventPump(bool enabled) {
  final sdlIPhoneSetEventPumpLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 enabled),
      void Function(int enabled)>('SDL_iPhoneSetEventPump');
  return sdlIPhoneSetEventPumpLookupFunction(enabled ? 1 : 0);
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
Pointer<NativeType> sdlAndroidGetJniEnv() {
  final sdlAndroidGetJniEnvLookupFunction = libSdl2.lookupFunction<
      Pointer<NativeType> Function(),
      Pointer<NativeType> Function()>('SDL_AndroidGetJNIEnv');
  return sdlAndroidGetJniEnvLookupFunction();
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
Pointer<NativeType> sdlAndroidGetActivity() {
  final sdlAndroidGetActivityLookupFunction = libSdl2.lookupFunction<
      Pointer<NativeType> Function(),
      Pointer<NativeType> Function()>('SDL_AndroidGetActivity');
  return sdlAndroidGetActivityLookupFunction();
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
int sdlGetAndroidSdkVersion() {
  final sdlGetAndroidSdkVersionLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_GetAndroidSDKVersion');
  return sdlGetAndroidSdkVersionLookupFunction();
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
bool sdlIsAndroidTv() {
  final sdlIsAndroidTvLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_IsAndroidTV');
  return sdlIsAndroidTvLookupFunction() == 1;
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
bool sdlIsChromebook() {
  final sdlIsChromebookLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_IsChromebook');
  return sdlIsChromebookLookupFunction() == 1;
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
bool sdlIsDeXMode() {
  final sdlIsDeXModeLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_IsDeXMode');
  return sdlIsDeXModeLookupFunction() == 1;
}

///
/// Trigger the Android system back button behavior.
///
/// \since This function is available since SDL 2.0.9.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AndroidBackButton(void)
/// ```
void sdlAndroidBackButton() {
  final sdlAndroidBackButtonLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_AndroidBackButton');
  return sdlAndroidBackButtonLookupFunction();
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
String? sdlAndroidGetInternalStoragePath() {
  final sdlAndroidGetInternalStoragePathLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_AndroidGetInternalStoragePath');
  final result = sdlAndroidGetInternalStoragePathLookupFunction();
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlAndroidGetExternalStorageState() {
  final sdlAndroidGetExternalStorageStateLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_AndroidGetExternalStorageState');
  return sdlAndroidGetExternalStorageStateLookupFunction();
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
String? sdlAndroidGetExternalStoragePath() {
  final sdlAndroidGetExternalStoragePathLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_AndroidGetExternalStoragePath');
  final result = sdlAndroidGetExternalStoragePathLookupFunction();
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
bool sdlAndroidRequestPermission(String? permission) {
  final sdlAndroidRequestPermissionLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> permission),
      int Function(Pointer<Utf8> permission)>('SDL_AndroidRequestPermission');
  final permissionPointer =
      permission != null ? permission.toNativeUtf8() : nullptr;
  final result =
      sdlAndroidRequestPermissionLookupFunction(permissionPointer) == 1;
  calloc.free(permissionPointer);
  return result;
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
int sdlAndroidShowToast(
    String? message, int duration, int gravity, int xoffset, int yoffset) {
  final sdlAndroidShowToastLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> message, Int32 duration, Int32 gravity,
          Int32 xoffset, Int32 yoffset),
      int Function(Pointer<Utf8> message, int duration, int gravity,
          int xoffset, int yoffset)>('SDL_AndroidShowToast');
  final messagePointer = message != null ? message.toNativeUtf8() : nullptr;
  final result = sdlAndroidShowToastLookupFunction(
      messagePointer, duration, gravity, xoffset, yoffset);
  calloc.free(messagePointer);
  return result;
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
int sdlAndroidSendMessage(int command, int param) {
  final sdlAndroidSendMessageLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Uint32 command, Int32 param),
      int Function(int command, int param)>('SDL_AndroidSendMessage');
  return sdlAndroidSendMessageLookupFunction(command, param);
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
Pointer<Int16> sdlWinRtGetFsPathUnicode(int pathType) {
  final sdlWinRtGetFsPathUnicodeLookupFunction = libSdl2.lookupFunction<
      Pointer<Int16> Function(Int32 pathType),
      Pointer<Int16> Function(int pathType)>('SDL_WinRTGetFSPathUNICODE');
  return sdlWinRtGetFsPathUnicodeLookupFunction(pathType);
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
String? sdlWinRtGetFsPathUtf8(int pathType) {
  final sdlWinRtGetFsPathUtf8LookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 pathType),
      Pointer<Utf8> Function(int pathType)>('SDL_WinRTGetFSPathUTF8');
  final result = sdlWinRtGetFsPathUtf8LookupFunction(pathType);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
}

///
/// Detects the device family of WinRT platform at runtime.
///
/// \returns a value from the SDL_WinRT_DeviceFamily enum.
///
/// \since This function is available since SDL 2.0.8.
///
/// ```c
/// extern DECLSPEC SDL_WinRT_DeviceFamily SDLCALL SDL_WinRTGetDeviceFamily()
/// ```
int sdlWinRtGetDeviceFamily() {
  final sdlWinRtGetDeviceFamilyLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>(
          'SDL_WinRTGetDeviceFamily');
  return sdlWinRtGetDeviceFamilyLookupFunction();
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
bool sdlIsTablet() {
  final sdlIsTabletLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_IsTablet');
  return sdlIsTabletLookupFunction() == 1;
}

/// Functions used by iOS application delegates to notify SDL about state changes
/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationWillTerminate(void)
/// ```
void sdlOnApplicationWillTerminate() {
  final sdlOnApplicationWillTerminateLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationWillTerminate');
  return sdlOnApplicationWillTerminateLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidReceiveMemoryWarning(void)
/// ```
void sdlOnApplicationDidReceiveMemoryWarning() {
  final sdlOnApplicationDidReceiveMemoryWarningLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationDidReceiveMemoryWarning');
  return sdlOnApplicationDidReceiveMemoryWarningLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationWillResignActive(void)
/// ```
void sdlOnApplicationWillResignActive() {
  final sdlOnApplicationWillResignActiveLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationWillResignActive');
  return sdlOnApplicationWillResignActiveLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidEnterBackground(void)
/// ```
void sdlOnApplicationDidEnterBackground() {
  final sdlOnApplicationDidEnterBackgroundLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationDidEnterBackground');
  return sdlOnApplicationDidEnterBackgroundLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationWillEnterForeground(void)
/// ```
void sdlOnApplicationWillEnterForeground() {
  final sdlOnApplicationWillEnterForegroundLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationWillEnterForeground');
  return sdlOnApplicationWillEnterForegroundLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidBecomeActive(void)
/// ```
void sdlOnApplicationDidBecomeActive() {
  final sdlOnApplicationDidBecomeActiveLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationDidBecomeActive');
  return sdlOnApplicationDidBecomeActiveLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_OnApplicationDidChangeStatusBarOrientation(void)
/// ```
void sdlOnApplicationDidChangeStatusBarOrientation() {
  final sdlOnApplicationDidChangeStatusBarOrientationLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_OnApplicationDidChangeStatusBarOrientation');
  return sdlOnApplicationDidChangeStatusBarOrientationLookupFunction();
}

///
/// Gets a reference to the global async task queue handle for GDK,
/// initializing if needed.
///
/// Once you are done with the task queue, you should call
/// XTaskQueueCloseHandle to reduce the reference count to avoid a resource
/// leak.
///
/// \param outTaskQueue a pointer to be filled in with task queue handle.
/// \returns 0 if success, -1 if any error occurs.
///
/// \since This function is available since SDL 2.24.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GDKGetTaskQueue(XTaskQueueHandle * outTaskQueue)
/// ```
int sdlGdkGetTaskQueue(Pointer<XTaskQueueHandle> outTaskQueue) {
  final sdlGdkGetTaskQueueLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<XTaskQueueHandle> outTaskQueue),
      int Function(
          Pointer<XTaskQueueHandle> outTaskQueue)>('SDL_GDKGetTaskQueue');
  return sdlGdkGetTaskQueueLookupFunction(outTaskQueue);
}
