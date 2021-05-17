// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'struct_sdl2.dart';

final _SDL2 = DynamicLibrary.open('SDL2.dll');

// extern DECLSPEC int SDLCALL SDL_Init(Uint32 flags)
int SDL_Init(int flags) {
  final _SDL_Init = _SDL2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_Init');
  return _SDL_Init(flags);
}
// extern DECLSPEC int SDLCALL SDL_InitSubSystem(Uint32 flags)
int SDL_InitSubSystem(int flags) {
  final _SDL_InitSubSystem = _SDL2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_InitSubSystem');
  return _SDL_InitSubSystem(flags);
}
// extern DECLSPEC void SDLCALL SDL_QuitSubSystem(Uint32 flags)
void SDL_QuitSubSystem(int flags) {
  final _SDL_QuitSubSystem = _SDL2.lookupFunction<
      Void Function(Uint32 flags),
      void Function(int flags)>('SDL_QuitSubSystem');
  return _SDL_QuitSubSystem(flags);
}
// extern DECLSPEC Uint32 SDLCALL SDL_WasInit(Uint32 flags)
int SDL_WasInit(int flags) {
  final _SDL_WasInit = _SDL2.lookupFunction<
      Uint32 Function(Uint32 flags),
      int Function(int flags)>('SDL_WasInit');
  return _SDL_WasInit(flags);
}
// extern DECLSPEC void SDLCALL SDL_Quit(void)
void SDL_Quit() {
  final _SDL_Quit = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_Quit');
  return _SDL_Quit();
}
// extern DECLSPEC SDL_assert_state SDLCALL SDL_ReportAssertion(SDL_assert_data *, const char *, const char *, int)
int SDL_ReportAssertion(Pointer<SDL_assert_data> arg0, String arg1, String arg2, int arg3) {
  final _SDL_ReportAssertion = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_assert_data> arg0, Pointer<Utf8> arg1, Pointer<Utf8> arg2, Int32 arg3),
      int Function(Pointer<SDL_assert_data> arg0, Pointer<Utf8> arg1, Pointer<Utf8> arg2, int arg3)>('SDL_ReportAssertion');
  final _arg1Pointer = arg1.toNativeUtf8();
  final _arg2Pointer = arg2.toNativeUtf8();
  final _result = _SDL_ReportAssertion(arg0, _arg1Pointer, _arg2Pointer, arg3);
  calloc.free(_arg1Pointer);
  calloc.free(_arg2Pointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_SetAssertionHandler( SDL_AssertionHandler handler, void *userdata)
void SDL_SetAssertionHandler(Pointer<Void> handler, Pointer<Void> userdata) {
  final _SDL_SetAssertionHandler = _SDL2.lookupFunction<
      Void Function(Pointer<Void> handler, Pointer<Void> userdata),
      void Function(Pointer<Void> handler, Pointer<Void> userdata)>('SDL_SetAssertionHandler');
  return _SDL_SetAssertionHandler(handler, userdata);
}
// extern DECLSPEC const SDL_assert_data * SDLCALL SDL_GetAssertionReport(void)
Pointer<SDL_assert_data> SDL_GetAssertionReport() {
  final _SDL_GetAssertionReport = _SDL2.lookupFunction<
      Pointer<SDL_assert_data> Function(),
      Pointer<SDL_assert_data> Function()>('SDL_GetAssertionReport');
  return _SDL_GetAssertionReport();
}
// extern DECLSPEC void SDLCALL SDL_ResetAssertionReport(void)
void SDL_ResetAssertionReport() {
  final _SDL_ResetAssertionReport = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ResetAssertionReport');
  return _SDL_ResetAssertionReport();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicTryLock(SDL_SpinLock *lock)
int SDL_AtomicTryLock(Pointer<Int32> lock) {
  final _SDL_AtomicTryLock = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int32> lock),
      int Function(Pointer<Int32> lock)>('SDL_AtomicTryLock');
  return _SDL_AtomicTryLock(lock);
}
// extern DECLSPEC void SDLCALL SDL_AtomicLock(SDL_SpinLock *lock)
void SDL_AtomicLock(Pointer<Int32> lock) {
  final _SDL_AtomicLock = _SDL2.lookupFunction<
      Void Function(Pointer<Int32> lock),
      void Function(Pointer<Int32> lock)>('SDL_AtomicLock');
  return _SDL_AtomicLock(lock);
}
// extern DECLSPEC void SDLCALL SDL_AtomicUnlock(SDL_SpinLock *lock)
void SDL_AtomicUnlock(Pointer<Int32> lock) {
  final _SDL_AtomicUnlock = _SDL2.lookupFunction<
      Void Function(Pointer<Int32> lock),
      void Function(Pointer<Int32> lock)>('SDL_AtomicUnlock');
  return _SDL_AtomicUnlock(lock);
}
// extern DECLSPEC void SDLCALL SDL_MemoryBarrierRelease()
void SDL_MemoryBarrierRelease() {
  final _SDL_MemoryBarrierRelease = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_MemoryBarrierRelease');
  return _SDL_MemoryBarrierRelease();
}
// extern DECLSPEC void SDLCALL SDL_MemoryBarrierAcquire()
void SDL_MemoryBarrierAcquire() {
  final _SDL_MemoryBarrierAcquire = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_MemoryBarrierAcquire');
  return _SDL_MemoryBarrierAcquire();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCAS(SDL_atomic_t *a, int oldval, int newval)
int SDL_AtomicCAS(Pointer<SDL_atomic_t> a, int oldval, int newval) {
  final _SDL_AtomicCAS = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_atomic_t> a, Int32 oldval, Int32 newval),
      int Function(Pointer<SDL_atomic_t> a, int oldval, int newval)>('SDL_AtomicCAS');
  return _SDL_AtomicCAS(a, oldval, newval);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_AtomicCASPtr(void* *a, void *oldval, void *newval)
int SDL_AtomicCASPtr(Pointer<Pointer<Void>> a, Pointer<Void> oldval, Pointer<Void> newval) {
  final _SDL_AtomicCASPtr = _SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Void>> a, Pointer<Void> oldval, Pointer<Void> newval),
      int Function(Pointer<Pointer<Void>> a, Pointer<Void> oldval, Pointer<Void> newval)>('SDL_AtomicCASPtr');
  return _SDL_AtomicCASPtr(a, oldval, newval);
}
// extern DECLSPEC int SDLCALL SDL_GetNumAudioDrivers(void)
int SDL_GetNumAudioDrivers() {
  final _SDL_GetNumAudioDrivers = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumAudioDrivers');
  return _SDL_GetNumAudioDrivers();
}
// extern DECLSPEC const char *SDLCALL SDL_GetAudioDriver(int index)
String SDL_GetAudioDriver(int index) {
  final _SDL_GetAudioDriver = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 index),
      Pointer<Utf8> Function(int index)>('SDL_GetAudioDriver');
  return _SDL_GetAudioDriver(index).toDartString();
}
// extern DECLSPEC int SDLCALL SDL_AudioInit(const char *driver_name)
int SDL_AudioInit(String driver_name) {
  final _SDL_AudioInit = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> driver_name),
      int Function(Pointer<Utf8> driver_name)>('SDL_AudioInit');
  final _driver_namePointer = driver_name.toNativeUtf8();
  final _result = _SDL_AudioInit(_driver_namePointer);
  calloc.free(_driver_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_AudioQuit(void)
void SDL_AudioQuit() {
  final _SDL_AudioQuit = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_AudioQuit');
  return _SDL_AudioQuit();
}
// extern DECLSPEC const char *SDLCALL SDL_GetCurrentAudioDriver(void)
String SDL_GetCurrentAudioDriver() {
  final _SDL_GetCurrentAudioDriver = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_GetCurrentAudioDriver');
  return _SDL_GetCurrentAudioDriver().toDartString();
}
// extern DECLSPEC int SDLCALL SDL_OpenAudio(SDL_AudioSpec * desired, SDL_AudioSpec * obtained)
int SDL_OpenAudio(Pointer<SDL_AudioSpec> desired, Pointer<SDL_AudioSpec> obtained) {
  final _SDL_OpenAudio = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_AudioSpec> desired, Pointer<SDL_AudioSpec> obtained),
      int Function(Pointer<SDL_AudioSpec> desired, Pointer<SDL_AudioSpec> obtained)>('SDL_OpenAudio');
  return _SDL_OpenAudio(desired, obtained);
}
// extern DECLSPEC int SDLCALL SDL_GetNumAudioDevices(int iscapture)
int SDL_GetNumAudioDevices(int iscapture) {
  final _SDL_GetNumAudioDevices = _SDL2.lookupFunction<
      Int32 Function(Int32 iscapture),
      int Function(int iscapture)>('SDL_GetNumAudioDevices');
  return _SDL_GetNumAudioDevices(iscapture);
}
// extern DECLSPEC const char *SDLCALL SDL_GetAudioDeviceName(int index, int iscapture)
String SDL_GetAudioDeviceName(int index, int iscapture) {
  final _SDL_GetAudioDeviceName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 index, Int32 iscapture),
      Pointer<Utf8> Function(int index, int iscapture)>('SDL_GetAudioDeviceName');
  return _SDL_GetAudioDeviceName(index, iscapture).toDartString();
}
// extern DECLSPEC SDL_AudioDeviceID SDLCALL SDL_OpenAudioDevice(const char *device, int iscapture, const SDL_AudioSpec * desired, SDL_AudioSpec * obtained, int allowed_changes)
int SDL_OpenAudioDevice(String device, int iscapture, Pointer<SDL_AudioSpec> desired, Pointer<SDL_AudioSpec> obtained, int allowed_changes) {
  final _SDL_OpenAudioDevice = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8> device, Int32 iscapture, Pointer<SDL_AudioSpec> desired, Pointer<SDL_AudioSpec> obtained, Int32 allowed_changes),
      int Function(Pointer<Utf8> device, int iscapture, Pointer<SDL_AudioSpec> desired, Pointer<SDL_AudioSpec> obtained, int allowed_changes)>('SDL_OpenAudioDevice');
  final _devicePointer = device.toNativeUtf8();
  final _result = _SDL_OpenAudioDevice(_devicePointer, iscapture, desired, obtained, allowed_changes);
  calloc.free(_devicePointer);
  return _result;
}
// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioStatus(void)
int SDL_GetAudioStatus() {
  final _SDL_GetAudioStatus = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetAudioStatus');
  return _SDL_GetAudioStatus();
}
// extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioDeviceStatus(SDL_AudioDeviceID dev)
int SDL_GetAudioDeviceStatus(int dev) {
  final _SDL_GetAudioDeviceStatus = _SDL2.lookupFunction<
      Int32 Function(Uint32 dev),
      int Function(int dev)>('SDL_GetAudioDeviceStatus');
  return _SDL_GetAudioDeviceStatus(dev);
}
// extern DECLSPEC void SDLCALL SDL_PauseAudio(int pause_on)
void SDL_PauseAudio(int pause_on) {
  final _SDL_PauseAudio = _SDL2.lookupFunction<
      Void Function(Int32 pause_on),
      void Function(int pause_on)>('SDL_PauseAudio');
  return _SDL_PauseAudio(pause_on);
}
// extern DECLSPEC void SDLCALL SDL_PauseAudioDevice(SDL_AudioDeviceID dev, int pause_on)
void SDL_PauseAudioDevice(int dev, int pause_on) {
  final _SDL_PauseAudioDevice = _SDL2.lookupFunction<
      Void Function(Uint32 dev, Int32 pause_on),
      void Function(int dev, int pause_on)>('SDL_PauseAudioDevice');
  return _SDL_PauseAudioDevice(dev, pause_on);
}
// extern DECLSPEC SDL_AudioSpec *SDLCALL SDL_LoadWAV_RW(SDL_RWops * src, int freesrc, SDL_AudioSpec * spec, Uint8 ** audio_buf, Uint32 * audio_len)
Pointer<SDL_AudioSpec> SDL_LoadWAV_RW(Pointer<SDL_RWops> src, int freesrc, Pointer<SDL_AudioSpec> spec, Pointer<Pointer<Uint8>> audio_buf, Pointer<Uint32> audio_len) {
  final _SDL_LoadWAV_RW = _SDL2.lookupFunction<
      Pointer<SDL_AudioSpec> Function(Pointer<SDL_RWops> src, Int32 freesrc, Pointer<SDL_AudioSpec> spec, Pointer<Pointer<Uint8>> audio_buf, Pointer<Uint32> audio_len),
      Pointer<SDL_AudioSpec> Function(Pointer<SDL_RWops> src, int freesrc, Pointer<SDL_AudioSpec> spec, Pointer<Pointer<Uint8>> audio_buf, Pointer<Uint32> audio_len)>('SDL_LoadWAV_RW');
  return _SDL_LoadWAV_RW(src, freesrc, spec, audio_buf, audio_len);
}
// extern DECLSPEC void SDLCALL SDL_FreeWAV(Uint8 * audio_buf)
void SDL_FreeWAV(Pointer<Uint8> audio_buf) {
  final _SDL_FreeWAV = _SDL2.lookupFunction<
      Void Function(Pointer<Uint8> audio_buf),
      void Function(Pointer<Uint8> audio_buf)>('SDL_FreeWAV');
  return _SDL_FreeWAV(audio_buf);
}
// extern DECLSPEC int SDLCALL SDL_BuildAudioCVT(SDL_AudioCVT * cvt, SDL_AudioFormat src_format, Uint8 src_channels, int src_rate, SDL_AudioFormat dst_format, Uint8 dst_channels, int dst_rate)
int SDL_BuildAudioCVT(Pointer<SDL_AudioCVT> cvt, int src_format, int src_channels, int src_rate, int dst_format, int dst_channels, int dst_rate) {
  final _SDL_BuildAudioCVT = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_AudioCVT> cvt, Uint16 src_format, Uint8 src_channels, Int32 src_rate, Uint16 dst_format, Uint8 dst_channels, Int32 dst_rate),
      int Function(Pointer<SDL_AudioCVT> cvt, int src_format, int src_channels, int src_rate, int dst_format, int dst_channels, int dst_rate)>('SDL_BuildAudioCVT');
  return _SDL_BuildAudioCVT(cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate);
}
// extern DECLSPEC int SDLCALL SDL_ConvertAudio(SDL_AudioCVT * cvt)
int SDL_ConvertAudio(Pointer<SDL_AudioCVT> cvt) {
  final _SDL_ConvertAudio = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_AudioCVT> cvt),
      int Function(Pointer<SDL_AudioCVT> cvt)>('SDL_ConvertAudio');
  return _SDL_ConvertAudio(cvt);
}
// extern DECLSPEC void SDLCALL SDL_MixAudio(Uint8 * dst, const Uint8 * src, Uint32 len, int volume)
void SDL_MixAudio(Pointer<Uint8> dst, Pointer<Uint8> src, int len, int volume) {
  final _SDL_MixAudio = _SDL2.lookupFunction<
      Void Function(Pointer<Uint8> dst, Pointer<Uint8> src, Uint32 len, Int32 volume),
      void Function(Pointer<Uint8> dst, Pointer<Uint8> src, int len, int volume)>('SDL_MixAudio');
  return _SDL_MixAudio(dst, src, len, volume);
}
// extern DECLSPEC void SDLCALL SDL_MixAudioFormat(Uint8 * dst, const Uint8 * src, SDL_AudioFormat format, Uint32 len, int volume)
void SDL_MixAudioFormat(Pointer<Uint8> dst, Pointer<Uint8> src, int format, int len, int volume) {
  final _SDL_MixAudioFormat = _SDL2.lookupFunction<
      Void Function(Pointer<Uint8> dst, Pointer<Uint8> src, Uint16 format, Uint32 len, Int32 volume),
      void Function(Pointer<Uint8> dst, Pointer<Uint8> src, int format, int len, int volume)>('SDL_MixAudioFormat');
  return _SDL_MixAudioFormat(dst, src, format, len, volume);
}
// extern DECLSPEC void SDLCALL SDL_LockAudio(void)
void SDL_LockAudio() {
  final _SDL_LockAudio = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LockAudio');
  return _SDL_LockAudio();
}
// extern DECLSPEC void SDLCALL SDL_LockAudioDevice(SDL_AudioDeviceID dev)
void SDL_LockAudioDevice(int dev) {
  final _SDL_LockAudioDevice = _SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_LockAudioDevice');
  return _SDL_LockAudioDevice(dev);
}
// extern DECLSPEC void SDLCALL SDL_UnlockAudio(void)
void SDL_UnlockAudio() {
  final _SDL_UnlockAudio = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnlockAudio');
  return _SDL_UnlockAudio();
}
// extern DECLSPEC void SDLCALL SDL_UnlockAudioDevice(SDL_AudioDeviceID dev)
void SDL_UnlockAudioDevice(int dev) {
  final _SDL_UnlockAudioDevice = _SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_UnlockAudioDevice');
  return _SDL_UnlockAudioDevice(dev);
}
// extern DECLSPEC void SDLCALL SDL_CloseAudio(void)
void SDL_CloseAudio() {
  final _SDL_CloseAudio = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_CloseAudio');
  return _SDL_CloseAudio();
}
// extern DECLSPEC void SDLCALL SDL_CloseAudioDevice(SDL_AudioDeviceID dev)
void SDL_CloseAudioDevice(int dev) {
  final _SDL_CloseAudioDevice = _SDL2.lookupFunction<
      Void Function(Uint32 dev),
      void Function(int dev)>('SDL_CloseAudioDevice');
  return _SDL_CloseAudioDevice(dev);
}
// extern DECLSPEC int SDLCALL SDL_SetClipboardText(const char *text)
int SDL_SetClipboardText(String text) {
  final _SDL_SetClipboardText = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> text),
      int Function(Pointer<Utf8> text)>('SDL_SetClipboardText');
  final _textPointer = text.toNativeUtf8();
  final _result = _SDL_SetClipboardText(_textPointer);
  calloc.free(_textPointer);
  return _result;
}
// extern DECLSPEC char * SDLCALL SDL_GetClipboardText(void)
Pointer<Int8> SDL_GetClipboardText() {
  final _SDL_GetClipboardText = _SDL2.lookupFunction<
      Pointer<Int8> Function(),
      Pointer<Int8> Function()>('SDL_GetClipboardText');
  return _SDL_GetClipboardText();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasClipboardText(void)
int SDL_HasClipboardText() {
  final _SDL_HasClipboardText = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasClipboardText');
  return _SDL_HasClipboardText();
}
// extern DECLSPEC int SDLCALL SDL_GetCPUCount(void)
int SDL_GetCPUCount() {
  final _SDL_GetCPUCount = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetCPUCount');
  return _SDL_GetCPUCount();
}
// extern DECLSPEC int SDLCALL SDL_GetCPUCacheLineSize(void)
int SDL_GetCPUCacheLineSize() {
  final _SDL_GetCPUCacheLineSize = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetCPUCacheLineSize');
  return _SDL_GetCPUCacheLineSize();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasRDTSC(void)
int SDL_HasRDTSC() {
  final _SDL_HasRDTSC = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasRDTSC');
  return _SDL_HasRDTSC();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasAltiVec(void)
int SDL_HasAltiVec() {
  final _SDL_HasAltiVec = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasAltiVec');
  return _SDL_HasAltiVec();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasMMX(void)
int SDL_HasMMX() {
  final _SDL_HasMMX = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasMMX');
  return _SDL_HasMMX();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_Has3DNow(void)
int SDL_Has3DNow() {
  final _SDL_Has3DNow = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_Has3DNow');
  return _SDL_Has3DNow();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE(void)
int SDL_HasSSE() {
  final _SDL_HasSSE = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE');
  return _SDL_HasSSE();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE2(void)
int SDL_HasSSE2() {
  final _SDL_HasSSE2 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE2');
  return _SDL_HasSSE2();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE3(void)
int SDL_HasSSE3() {
  final _SDL_HasSSE3 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE3');
  return _SDL_HasSSE3();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE41(void)
int SDL_HasSSE41() {
  final _SDL_HasSSE41 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE41');
  return _SDL_HasSSE41();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasSSE42(void)
int SDL_HasSSE42() {
  final _SDL_HasSSE42 = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasSSE42');
  return _SDL_HasSSE42();
}
// extern DECLSPEC int SDLCALL SDL_SetError(const char *fmt, ...)
int SDL_SetError(String fmt, Pointer<Void> arg1) {
  final _SDL_SetError = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> fmt, Pointer<Void> arg1),
      int Function(Pointer<Utf8> fmt, Pointer<Void> arg1)>('SDL_SetError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_SetError(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC const char *SDLCALL SDL_GetError(void)
String SDL_GetError() {
  final _SDL_GetError = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_GetError');
  return _SDL_GetError().toDartString();
}
// extern DECLSPEC void SDLCALL SDL_ClearError(void)
void SDL_ClearError() {
  final _SDL_ClearError = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearError');
  return _SDL_ClearError();
}
// extern DECLSPEC int SDLCALL SDL_Error(SDL_errorcode code)
int SDL_Error(int code) {
  final _SDL_Error = _SDL2.lookupFunction<
      Int32 Function(Int32 code),
      int Function(int code)>('SDL_Error');
  return _SDL_Error(code);
}
// extern DECLSPEC void SDLCALL SDL_PumpEvents(void)
void SDL_PumpEvents() {
  final _SDL_PumpEvents = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_PumpEvents');
  return _SDL_PumpEvents();
}
// extern DECLSPEC int SDLCALL SDL_PeepEvents(SDL_Event * events, int numevents, SDL_eventaction action, Uint32 minType, Uint32 maxType)
int SDL_PeepEvents(Pointer<SDL_Event> events, int numevents, int action, int minType, int maxType) {
  final _SDL_PeepEvents = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event> events, Int32 numevents, Int32 action, Uint32 minType, Uint32 maxType),
      int Function(Pointer<SDL_Event> events, int numevents, int action, int minType, int maxType)>('SDL_PeepEvents');
  return _SDL_PeepEvents(events, numevents, action, minType, maxType);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasEvent(Uint32 type)
int SDL_HasEvent(int type) {
  final _SDL_HasEvent = _SDL2.lookupFunction<
      Int32 Function(Uint32 type),
      int Function(int type)>('SDL_HasEvent');
  return _SDL_HasEvent(type);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasEvents(Uint32 minType, Uint32 maxType)
int SDL_HasEvents(int minType, int maxType) {
  final _SDL_HasEvents = _SDL2.lookupFunction<
      Int32 Function(Uint32 minType, Uint32 maxType),
      int Function(int minType, int maxType)>('SDL_HasEvents');
  return _SDL_HasEvents(minType, maxType);
}
// extern DECLSPEC void SDLCALL SDL_FlushEvent(Uint32 type)
void SDL_FlushEvent(int type) {
  final _SDL_FlushEvent = _SDL2.lookupFunction<
      Void Function(Uint32 type),
      void Function(int type)>('SDL_FlushEvent');
  return _SDL_FlushEvent(type);
}
// extern DECLSPEC void SDLCALL SDL_FlushEvents(Uint32 minType, Uint32 maxType)
void SDL_FlushEvents(int minType, int maxType) {
  final _SDL_FlushEvents = _SDL2.lookupFunction<
      Void Function(Uint32 minType, Uint32 maxType),
      void Function(int minType, int maxType)>('SDL_FlushEvents');
  return _SDL_FlushEvents(minType, maxType);
}
// extern DECLSPEC int SDLCALL SDL_PollEvent(SDL_Event * event)
int SDL_PollEvent(Pointer<SDL_Event> event) {
  final _SDL_PollEvent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event> event),
      int Function(Pointer<SDL_Event> event)>('SDL_PollEvent');
  return _SDL_PollEvent(event);
}
// extern DECLSPEC int SDLCALL SDL_WaitEvent(SDL_Event * event)
int SDL_WaitEvent(Pointer<SDL_Event> event) {
  final _SDL_WaitEvent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event> event),
      int Function(Pointer<SDL_Event> event)>('SDL_WaitEvent');
  return _SDL_WaitEvent(event);
}
// extern DECLSPEC int SDLCALL SDL_WaitEventTimeout(SDL_Event * event, int timeout)
int SDL_WaitEventTimeout(Pointer<SDL_Event> event, int timeout) {
  final _SDL_WaitEventTimeout = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event> event, Int32 timeout),
      int Function(Pointer<SDL_Event> event, int timeout)>('SDL_WaitEventTimeout');
  return _SDL_WaitEventTimeout(event, timeout);
}
// extern DECLSPEC int SDLCALL SDL_PushEvent(SDL_Event * event)
int SDL_PushEvent(Pointer<SDL_Event> event) {
  final _SDL_PushEvent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event> event),
      int Function(Pointer<SDL_Event> event)>('SDL_PushEvent');
  return _SDL_PushEvent(event);
}
// extern DECLSPEC void SDLCALL SDL_SetEventFilter(SDL_EventFilter filter, void *userdata)
void SDL_SetEventFilter(Pointer<Void> filter, Pointer<Void> userdata) {
  final _SDL_SetEventFilter = _SDL2.lookupFunction<
      Void Function(Pointer<Void> filter, Pointer<Void> userdata),
      void Function(Pointer<Void> filter, Pointer<Void> userdata)>('SDL_SetEventFilter');
  return _SDL_SetEventFilter(filter, userdata);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_GetEventFilter(SDL_EventFilter * filter, void **userdata)
int SDL_GetEventFilter(Pointer<Pointer<Void>> filter, Pointer<Pointer<Void>> userdata) {
  final _SDL_GetEventFilter = _SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Void>> filter, Pointer<Pointer<Void>> userdata),
      int Function(Pointer<Pointer<Void>> filter, Pointer<Pointer<Void>> userdata)>('SDL_GetEventFilter');
  return _SDL_GetEventFilter(filter, userdata);
}
// extern DECLSPEC void SDLCALL SDL_AddEventWatch(SDL_EventFilter filter, void *userdata)
void SDL_AddEventWatch(Pointer<Void> filter, Pointer<Void> userdata) {
  final _SDL_AddEventWatch = _SDL2.lookupFunction<
      Void Function(Pointer<Void> filter, Pointer<Void> userdata),
      void Function(Pointer<Void> filter, Pointer<Void> userdata)>('SDL_AddEventWatch');
  return _SDL_AddEventWatch(filter, userdata);
}
// extern DECLSPEC void SDLCALL SDL_DelEventWatch(SDL_EventFilter filter, void *userdata)
void SDL_DelEventWatch(Pointer<Void> filter, Pointer<Void> userdata) {
  final _SDL_DelEventWatch = _SDL2.lookupFunction<
      Void Function(Pointer<Void> filter, Pointer<Void> userdata),
      void Function(Pointer<Void> filter, Pointer<Void> userdata)>('SDL_DelEventWatch');
  return _SDL_DelEventWatch(filter, userdata);
}
// extern DECLSPEC void SDLCALL SDL_FilterEvents(SDL_EventFilter filter, void *userdata)
void SDL_FilterEvents(Pointer<Void> filter, Pointer<Void> userdata) {
  final _SDL_FilterEvents = _SDL2.lookupFunction<
      Void Function(Pointer<Void> filter, Pointer<Void> userdata),
      void Function(Pointer<Void> filter, Pointer<Void> userdata)>('SDL_FilterEvents');
  return _SDL_FilterEvents(filter, userdata);
}
// extern DECLSPEC Uint8 SDLCALL SDL_EventState(Uint32 type, int state)
int SDL_EventState(int type, int state) {
  final _SDL_EventState = _SDL2.lookupFunction<
      Uint8 Function(Uint32 type, Int32 state),
      int Function(int type, int state)>('SDL_EventState');
  return _SDL_EventState(type, state);
}
// extern DECLSPEC Uint32 SDLCALL SDL_RegisterEvents(int numevents)
int SDL_RegisterEvents(int numevents) {
  final _SDL_RegisterEvents = _SDL2.lookupFunction<
      Uint32 Function(Int32 numevents),
      int Function(int numevents)>('SDL_RegisterEvents');
  return _SDL_RegisterEvents(numevents);
}
// extern DECLSPEC int SDLCALL SDL_GameControllerAddMapping( const char* mappingString )
int SDL_GameControllerAddMapping(String mappingString) {
  final _SDL_GameControllerAddMapping = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> mappingString),
      int Function(Pointer<Utf8> mappingString)>('SDL_GameControllerAddMapping');
  final _mappingStringPointer = mappingString.toNativeUtf8();
  final _result = _SDL_GameControllerAddMapping(_mappingStringPointer);
  calloc.free(_mappingStringPointer);
  return _result;
}
// extern DECLSPEC char * SDLCALL SDL_GameControllerMappingForGUID( SDL_JoystickGUID guid )
Pointer<Int8> SDL_GameControllerMappingForGUID(Pointer<Void> guid) {
  final _SDL_GameControllerMappingForGUID = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Void> guid),
      Pointer<Int8> Function(Pointer<Void> guid)>('SDL_GameControllerMappingForGUID');
  return _SDL_GameControllerMappingForGUID(guid);
}
// extern DECLSPEC char * SDLCALL SDL_GameControllerMapping( SDL_GameController * gamecontroller )
Pointer<Int8> SDL_GameControllerMapping(Pointer<SDL_GameController> gamecontroller) {
  final _SDL_GameControllerMapping = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<SDL_GameController> gamecontroller),
      Pointer<Int8> Function(Pointer<SDL_GameController> gamecontroller)>('SDL_GameControllerMapping');
  return _SDL_GameControllerMapping(gamecontroller);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IsGameController(int joystick_index)
int SDL_IsGameController(int joystick_index) {
  final _SDL_IsGameController = _SDL2.lookupFunction<
      Int32 Function(Int32 joystick_index),
      int Function(int joystick_index)>('SDL_IsGameController');
  return _SDL_IsGameController(joystick_index);
}
// extern DECLSPEC const char *SDLCALL SDL_GameControllerNameForIndex(int joystick_index)
String SDL_GameControllerNameForIndex(int joystick_index) {
  final _SDL_GameControllerNameForIndex = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 joystick_index),
      Pointer<Utf8> Function(int joystick_index)>('SDL_GameControllerNameForIndex');
  return _SDL_GameControllerNameForIndex(joystick_index).toDartString();
}
// extern DECLSPEC SDL_GameController *SDLCALL SDL_GameControllerOpen(int joystick_index)
Pointer<SDL_GameController> SDL_GameControllerOpen(int joystick_index) {
  final _SDL_GameControllerOpen = _SDL2.lookupFunction<
      Pointer<SDL_GameController> Function(Int32 joystick_index),
      Pointer<SDL_GameController> Function(int joystick_index)>('SDL_GameControllerOpen');
  return _SDL_GameControllerOpen(joystick_index);
}
// extern DECLSPEC const char *SDLCALL SDL_GameControllerName(SDL_GameController *gamecontroller)
String SDL_GameControllerName(Pointer<SDL_GameController> gamecontroller) {
  final _SDL_GameControllerName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SDL_GameController> gamecontroller),
      Pointer<Utf8> Function(Pointer<SDL_GameController> gamecontroller)>('SDL_GameControllerName');
  return _SDL_GameControllerName(gamecontroller).toDartString();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_GameControllerGetAttached(SDL_GameController *gamecontroller)
int SDL_GameControllerGetAttached(Pointer<SDL_GameController> gamecontroller) {
  final _SDL_GameControllerGetAttached = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_GameController> gamecontroller),
      int Function(Pointer<SDL_GameController> gamecontroller)>('SDL_GameControllerGetAttached');
  return _SDL_GameControllerGetAttached(gamecontroller);
}
// extern DECLSPEC SDL_Joystick *SDLCALL SDL_GameControllerGetJoystick(SDL_GameController *gamecontroller)
Pointer<SDL_Joystick> SDL_GameControllerGetJoystick(Pointer<SDL_GameController> gamecontroller) {
  final _SDL_GameControllerGetJoystick = _SDL2.lookupFunction<
      Pointer<SDL_Joystick> Function(Pointer<SDL_GameController> gamecontroller),
      Pointer<SDL_Joystick> Function(Pointer<SDL_GameController> gamecontroller)>('SDL_GameControllerGetJoystick');
  return _SDL_GameControllerGetJoystick(gamecontroller);
}
// extern DECLSPEC int SDLCALL SDL_GameControllerEventState(int state)
int SDL_GameControllerEventState(int state) {
  final _SDL_GameControllerEventState = _SDL2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_GameControllerEventState');
  return _SDL_GameControllerEventState(state);
}
// extern DECLSPEC void SDLCALL SDL_GameControllerUpdate(void)
void SDL_GameControllerUpdate() {
  final _SDL_GameControllerUpdate = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GameControllerUpdate');
  return _SDL_GameControllerUpdate();
}
// extern DECLSPEC SDL_GameControllerAxis SDLCALL SDL_GameControllerGetAxisFromString(const char *pchString)
int SDL_GameControllerGetAxisFromString(String pchString) {
  final _SDL_GameControllerGetAxisFromString = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> pchString),
      int Function(Pointer<Utf8> pchString)>('SDL_GameControllerGetAxisFromString');
  final _pchStringPointer = pchString.toNativeUtf8();
  final _result = _SDL_GameControllerGetAxisFromString(_pchStringPointer);
  calloc.free(_pchStringPointer);
  return _result;
}
// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForAxis(SDL_GameControllerAxis axis)
String SDL_GameControllerGetStringForAxis(int axis) {
  final _SDL_GameControllerGetStringForAxis = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 axis),
      Pointer<Utf8> Function(int axis)>('SDL_GameControllerGetStringForAxis');
  return _SDL_GameControllerGetStringForAxis(axis).toDartString();
}
// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
Pointer<Void> SDL_GameControllerGetBindForAxis(Pointer<SDL_GameController> gamecontroller, int axis) {
  final _SDL_GameControllerGetBindForAxis = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<SDL_GameController> gamecontroller, Int32 axis),
      Pointer<Void> Function(Pointer<SDL_GameController> gamecontroller, int axis)>('SDL_GameControllerGetBindForAxis');
  return _SDL_GameControllerGetBindForAxis(gamecontroller, axis);
}
// extern DECLSPEC Sint16 SDLCALL SDL_GameControllerGetAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis)
int SDL_GameControllerGetAxis(Pointer<SDL_GameController> gamecontroller, int axis) {
  final _SDL_GameControllerGetAxis = _SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_GameController> gamecontroller, Int32 axis),
      int Function(Pointer<SDL_GameController> gamecontroller, int axis)>('SDL_GameControllerGetAxis');
  return _SDL_GameControllerGetAxis(gamecontroller, axis);
}
// extern DECLSPEC SDL_GameControllerButton SDLCALL SDL_GameControllerGetButtonFromString(const char *pchString)
int SDL_GameControllerGetButtonFromString(String pchString) {
  final _SDL_GameControllerGetButtonFromString = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> pchString),
      int Function(Pointer<Utf8> pchString)>('SDL_GameControllerGetButtonFromString');
  final _pchStringPointer = pchString.toNativeUtf8();
  final _result = _SDL_GameControllerGetButtonFromString(_pchStringPointer);
  calloc.free(_pchStringPointer);
  return _result;
}
// extern DECLSPEC const char* SDLCALL SDL_GameControllerGetStringForButton(SDL_GameControllerButton button)
String SDL_GameControllerGetStringForButton(int button) {
  final _SDL_GameControllerGetStringForButton = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 button),
      Pointer<Utf8> Function(int button)>('SDL_GameControllerGetStringForButton');
  return _SDL_GameControllerGetStringForButton(button).toDartString();
}
// extern DECLSPEC SDL_GameControllerButtonBind SDLCALL SDL_GameControllerGetBindForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
Pointer<Void> SDL_GameControllerGetBindForButton(Pointer<SDL_GameController> gamecontroller, int button) {
  final _SDL_GameControllerGetBindForButton = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<SDL_GameController> gamecontroller, Int32 button),
      Pointer<Void> Function(Pointer<SDL_GameController> gamecontroller, int button)>('SDL_GameControllerGetBindForButton');
  return _SDL_GameControllerGetBindForButton(gamecontroller, button);
}
// extern DECLSPEC Uint8 SDLCALL SDL_GameControllerGetButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button)
int SDL_GameControllerGetButton(Pointer<SDL_GameController> gamecontroller, int button) {
  final _SDL_GameControllerGetButton = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_GameController> gamecontroller, Int32 button),
      int Function(Pointer<SDL_GameController> gamecontroller, int button)>('SDL_GameControllerGetButton');
  return _SDL_GameControllerGetButton(gamecontroller, button);
}
// extern DECLSPEC void SDLCALL SDL_GameControllerClose(SDL_GameController *gamecontroller)
void SDL_GameControllerClose(Pointer<SDL_GameController> gamecontroller) {
  final _SDL_GameControllerClose = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_GameController> gamecontroller),
      void Function(Pointer<SDL_GameController> gamecontroller)>('SDL_GameControllerClose');
  return _SDL_GameControllerClose(gamecontroller);
}
// extern DECLSPEC int SDLCALL SDL_RecordGesture(SDL_TouchID touchId)
int SDL_RecordGesture(int touchId) {
  final _SDL_RecordGesture = _SDL2.lookupFunction<
      Int32 Function(Int64 touchId),
      int Function(int touchId)>('SDL_RecordGesture');
  return _SDL_RecordGesture(touchId);
}
// extern DECLSPEC int SDLCALL SDL_SaveAllDollarTemplates(SDL_RWops *src)
int SDL_SaveAllDollarTemplates(Pointer<SDL_RWops> src) {
  final _SDL_SaveAllDollarTemplates = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_SaveAllDollarTemplates');
  return _SDL_SaveAllDollarTemplates(src);
}
// extern DECLSPEC int SDLCALL SDL_SaveDollarTemplate(SDL_GestureID gestureId,SDL_RWops *src)
int SDL_SaveDollarTemplate(int gestureId, Pointer<SDL_RWops> src) {
  final _SDL_SaveDollarTemplate = _SDL2.lookupFunction<
      Int32 Function(Int64 gestureId, Pointer<SDL_RWops> src),
      int Function(int gestureId, Pointer<SDL_RWops> src)>('SDL_SaveDollarTemplate');
  return _SDL_SaveDollarTemplate(gestureId, src);
}
// extern DECLSPEC int SDLCALL SDL_LoadDollarTemplates(SDL_TouchID touchId, SDL_RWops *src)
int SDL_LoadDollarTemplates(int touchId, Pointer<SDL_RWops> src) {
  final _SDL_LoadDollarTemplates = _SDL2.lookupFunction<
      Int32 Function(Int64 touchId, Pointer<SDL_RWops> src),
      int Function(int touchId, Pointer<SDL_RWops> src)>('SDL_LoadDollarTemplates');
  return _SDL_LoadDollarTemplates(touchId, src);
}
// extern DECLSPEC int SDLCALL SDL_NumHaptics(void)
int SDL_NumHaptics() {
  final _SDL_NumHaptics = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumHaptics');
  return _SDL_NumHaptics();
}
// extern DECLSPEC const char *SDLCALL SDL_HapticName(int device_index)
String SDL_HapticName(int device_index) {
  final _SDL_HapticName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 device_index),
      Pointer<Utf8> Function(int device_index)>('SDL_HapticName');
  return _SDL_HapticName(device_index).toDartString();
}
// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpen(int device_index)
Pointer<SDL_Haptic> SDL_HapticOpen(int device_index) {
  final _SDL_HapticOpen = _SDL2.lookupFunction<
      Pointer<SDL_Haptic> Function(Int32 device_index),
      Pointer<SDL_Haptic> Function(int device_index)>('SDL_HapticOpen');
  return _SDL_HapticOpen(device_index);
}
// extern DECLSPEC int SDLCALL SDL_HapticOpened(int device_index)
int SDL_HapticOpened(int device_index) {
  final _SDL_HapticOpened = _SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_HapticOpened');
  return _SDL_HapticOpened(device_index);
}
// extern DECLSPEC int SDLCALL SDL_HapticIndex(SDL_Haptic * haptic)
int SDL_HapticIndex(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticIndex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticIndex');
  return _SDL_HapticIndex(haptic);
}
// extern DECLSPEC int SDLCALL SDL_MouseIsHaptic(void)
int SDL_MouseIsHaptic() {
  final _SDL_MouseIsHaptic = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_MouseIsHaptic');
  return _SDL_MouseIsHaptic();
}
// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpenFromMouse(void)
Pointer<SDL_Haptic> SDL_HapticOpenFromMouse() {
  final _SDL_HapticOpenFromMouse = _SDL2.lookupFunction<
      Pointer<SDL_Haptic> Function(),
      Pointer<SDL_Haptic> Function()>('SDL_HapticOpenFromMouse');
  return _SDL_HapticOpenFromMouse();
}
// extern DECLSPEC int SDLCALL SDL_JoystickIsHaptic(SDL_Joystick * joystick)
int SDL_JoystickIsHaptic(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickIsHaptic = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickIsHaptic');
  return _SDL_JoystickIsHaptic(joystick);
}
// extern DECLSPEC SDL_Haptic *SDLCALL SDL_HapticOpenFromJoystick(SDL_Joystick * joystick)
Pointer<SDL_Haptic> SDL_HapticOpenFromJoystick(Pointer<SDL_Joystick> joystick) {
  final _SDL_HapticOpenFromJoystick = _SDL2.lookupFunction<
      Pointer<SDL_Haptic> Function(Pointer<SDL_Joystick> joystick),
      Pointer<SDL_Haptic> Function(Pointer<SDL_Joystick> joystick)>('SDL_HapticOpenFromJoystick');
  return _SDL_HapticOpenFromJoystick(joystick);
}
// extern DECLSPEC void SDLCALL SDL_HapticClose(SDL_Haptic * haptic)
void SDL_HapticClose(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticClose = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Haptic> haptic),
      void Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticClose');
  return _SDL_HapticClose(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticNumEffects(SDL_Haptic * haptic)
int SDL_HapticNumEffects(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticNumEffects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticNumEffects');
  return _SDL_HapticNumEffects(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticNumEffectsPlaying(SDL_Haptic * haptic)
int SDL_HapticNumEffectsPlaying(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticNumEffectsPlaying = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticNumEffectsPlaying');
  return _SDL_HapticNumEffectsPlaying(haptic);
}
// extern DECLSPEC unsigned int SDLCALL SDL_HapticQuery(SDL_Haptic * haptic)
int SDL_HapticQuery(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticQuery = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticQuery');
  return _SDL_HapticQuery(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticNumAxes(SDL_Haptic * haptic)
int SDL_HapticNumAxes(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticNumAxes = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticNumAxes');
  return _SDL_HapticNumAxes(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticEffectSupported(SDL_Haptic * haptic, SDL_HapticEffect * effect)
int SDL_HapticEffectSupported(Pointer<SDL_Haptic> haptic, Pointer<SDL_HapticEffect> effect) {
  final _SDL_HapticEffectSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Pointer<SDL_HapticEffect> effect),
      int Function(Pointer<SDL_Haptic> haptic, Pointer<SDL_HapticEffect> effect)>('SDL_HapticEffectSupported');
  return _SDL_HapticEffectSupported(haptic, effect);
}
// extern DECLSPEC int SDLCALL SDL_HapticNewEffect(SDL_Haptic * haptic, SDL_HapticEffect * effect)
int SDL_HapticNewEffect(Pointer<SDL_Haptic> haptic, Pointer<SDL_HapticEffect> effect) {
  final _SDL_HapticNewEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Pointer<SDL_HapticEffect> effect),
      int Function(Pointer<SDL_Haptic> haptic, Pointer<SDL_HapticEffect> effect)>('SDL_HapticNewEffect');
  return _SDL_HapticNewEffect(haptic, effect);
}
// extern DECLSPEC int SDLCALL SDL_HapticUpdateEffect(SDL_Haptic * haptic, int effect, SDL_HapticEffect * data)
int SDL_HapticUpdateEffect(Pointer<SDL_Haptic> haptic, int effect, Pointer<SDL_HapticEffect> data) {
  final _SDL_HapticUpdateEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Int32 effect, Pointer<SDL_HapticEffect> data),
      int Function(Pointer<SDL_Haptic> haptic, int effect, Pointer<SDL_HapticEffect> data)>('SDL_HapticUpdateEffect');
  return _SDL_HapticUpdateEffect(haptic, effect, data);
}
// extern DECLSPEC int SDLCALL SDL_HapticRunEffect(SDL_Haptic * haptic, int effect, Uint32 iterations)
int SDL_HapticRunEffect(Pointer<SDL_Haptic> haptic, int effect, int iterations) {
  final _SDL_HapticRunEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Int32 effect, Uint32 iterations),
      int Function(Pointer<SDL_Haptic> haptic, int effect, int iterations)>('SDL_HapticRunEffect');
  return _SDL_HapticRunEffect(haptic, effect, iterations);
}
// extern DECLSPEC int SDLCALL SDL_HapticStopEffect(SDL_Haptic * haptic, int effect)
int SDL_HapticStopEffect(Pointer<SDL_Haptic> haptic, int effect) {
  final _SDL_HapticStopEffect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Int32 effect),
      int Function(Pointer<SDL_Haptic> haptic, int effect)>('SDL_HapticStopEffect');
  return _SDL_HapticStopEffect(haptic, effect);
}
// extern DECLSPEC void SDLCALL SDL_HapticDestroyEffect(SDL_Haptic * haptic, int effect)
void SDL_HapticDestroyEffect(Pointer<SDL_Haptic> haptic, int effect) {
  final _SDL_HapticDestroyEffect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Haptic> haptic, Int32 effect),
      void Function(Pointer<SDL_Haptic> haptic, int effect)>('SDL_HapticDestroyEffect');
  return _SDL_HapticDestroyEffect(haptic, effect);
}
// extern DECLSPEC int SDLCALL SDL_HapticGetEffectStatus(SDL_Haptic * haptic, int effect)
int SDL_HapticGetEffectStatus(Pointer<SDL_Haptic> haptic, int effect) {
  final _SDL_HapticGetEffectStatus = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Int32 effect),
      int Function(Pointer<SDL_Haptic> haptic, int effect)>('SDL_HapticGetEffectStatus');
  return _SDL_HapticGetEffectStatus(haptic, effect);
}
// extern DECLSPEC int SDLCALL SDL_HapticSetGain(SDL_Haptic * haptic, int gain)
int SDL_HapticSetGain(Pointer<SDL_Haptic> haptic, int gain) {
  final _SDL_HapticSetGain = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Int32 gain),
      int Function(Pointer<SDL_Haptic> haptic, int gain)>('SDL_HapticSetGain');
  return _SDL_HapticSetGain(haptic, gain);
}
// extern DECLSPEC int SDLCALL SDL_HapticSetAutocenter(SDL_Haptic * haptic, int autocenter)
int SDL_HapticSetAutocenter(Pointer<SDL_Haptic> haptic, int autocenter) {
  final _SDL_HapticSetAutocenter = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Int32 autocenter),
      int Function(Pointer<SDL_Haptic> haptic, int autocenter)>('SDL_HapticSetAutocenter');
  return _SDL_HapticSetAutocenter(haptic, autocenter);
}
// extern DECLSPEC int SDLCALL SDL_HapticPause(SDL_Haptic * haptic)
int SDL_HapticPause(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticPause = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticPause');
  return _SDL_HapticPause(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticUnpause(SDL_Haptic * haptic)
int SDL_HapticUnpause(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticUnpause = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticUnpause');
  return _SDL_HapticUnpause(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticStopAll(SDL_Haptic * haptic)
int SDL_HapticStopAll(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticStopAll = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticStopAll');
  return _SDL_HapticStopAll(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticRumbleSupported(SDL_Haptic * haptic)
int SDL_HapticRumbleSupported(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticRumbleSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticRumbleSupported');
  return _SDL_HapticRumbleSupported(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticRumbleInit(SDL_Haptic * haptic)
int SDL_HapticRumbleInit(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticRumbleInit = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticRumbleInit');
  return _SDL_HapticRumbleInit(haptic);
}
// extern DECLSPEC int SDLCALL SDL_HapticRumblePlay(SDL_Haptic * haptic, float strength, Uint32 length )
int SDL_HapticRumblePlay(Pointer<SDL_Haptic> haptic, double strength, int length) {
  final _SDL_HapticRumblePlay = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic, Float strength, Uint32 length),
      int Function(Pointer<SDL_Haptic> haptic, double strength, int length)>('SDL_HapticRumblePlay');
  return _SDL_HapticRumblePlay(haptic, strength, length);
}
// extern DECLSPEC int SDLCALL SDL_HapticRumbleStop(SDL_Haptic * haptic)
int SDL_HapticRumbleStop(Pointer<SDL_Haptic> haptic) {
  final _SDL_HapticRumbleStop = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Haptic> haptic),
      int Function(Pointer<SDL_Haptic> haptic)>('SDL_HapticRumbleStop');
  return _SDL_HapticRumbleStop(haptic);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority)
int SDL_SetHintWithPriority(String name, String value, int priority) {
  final _SDL_SetHintWithPriority = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> name, Pointer<Utf8> value, Int32 priority),
      int Function(Pointer<Utf8> name, Pointer<Utf8> value, int priority)>('SDL_SetHintWithPriority');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_SetHintWithPriority(_namePointer, _valuePointer, priority);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}
// extern DECLSPEC SDL_bool SDLCALL SDL_SetHint(const char *name, const char *value)
int SDL_SetHint(String name, String value) {
  final _SDL_SetHint = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> name, Pointer<Utf8> value),
      int Function(Pointer<Utf8> name, Pointer<Utf8> value)>('SDL_SetHint');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_SetHint(_namePointer, _valuePointer);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}
// extern DECLSPEC const char * SDLCALL SDL_GetHint(const char *name)
String SDL_GetHint(String name) {
  final _SDL_GetHint = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Pointer<Utf8> name),
      Pointer<Utf8> Function(Pointer<Utf8> name)>('SDL_GetHint');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetHint(_namePointer).toDartString();
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata)
void SDL_AddHintCallback(String name, Pointer<Void> callback, Pointer<Void> userdata) {
  final _SDL_AddHintCallback = _SDL2.lookupFunction<
      Void Function(Pointer<Utf8> name, Pointer<Void> callback, Pointer<Void> userdata),
      void Function(Pointer<Utf8> name, Pointer<Void> callback, Pointer<Void> userdata)>('SDL_AddHintCallback');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_AddHintCallback(_namePointer, callback, userdata);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_DelHintCallback(const char *name, SDL_HintCallback callback, void *userdata)
void SDL_DelHintCallback(String name, Pointer<Void> callback, Pointer<Void> userdata) {
  final _SDL_DelHintCallback = _SDL2.lookupFunction<
      Void Function(Pointer<Utf8> name, Pointer<Void> callback, Pointer<Void> userdata),
      void Function(Pointer<Utf8> name, Pointer<Void> callback, Pointer<Void> userdata)>('SDL_DelHintCallback');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_DelHintCallback(_namePointer, callback, userdata);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_ClearHints(void)
void SDL_ClearHints() {
  final _SDL_ClearHints = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ClearHints');
  return _SDL_ClearHints();
}
// extern DECLSPEC int SDLCALL SDL_NumJoysticks(void)
int SDL_NumJoysticks() {
  final _SDL_NumJoysticks = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumJoysticks');
  return _SDL_NumJoysticks();
}
// extern DECLSPEC const char *SDLCALL SDL_JoystickNameForIndex(int device_index)
String SDL_JoystickNameForIndex(int device_index) {
  final _SDL_JoystickNameForIndex = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 device_index),
      Pointer<Utf8> Function(int device_index)>('SDL_JoystickNameForIndex');
  return _SDL_JoystickNameForIndex(device_index).toDartString();
}
// extern DECLSPEC SDL_Joystick *SDLCALL SDL_JoystickOpen(int device_index)
Pointer<SDL_Joystick> SDL_JoystickOpen(int device_index) {
  final _SDL_JoystickOpen = _SDL2.lookupFunction<
      Pointer<SDL_Joystick> Function(Int32 device_index),
      Pointer<SDL_Joystick> Function(int device_index)>('SDL_JoystickOpen');
  return _SDL_JoystickOpen(device_index);
}
// extern DECLSPEC const char *SDLCALL SDL_JoystickName(SDL_Joystick * joystick)
String SDL_JoystickName(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SDL_Joystick> joystick),
      Pointer<Utf8> Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickName');
  return _SDL_JoystickName(joystick).toDartString();
}
// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetDeviceGUID(int device_index)
Pointer<Void> SDL_JoystickGetDeviceGUID(int device_index) {
  final _SDL_JoystickGetDeviceGUID = _SDL2.lookupFunction<
      Pointer<Void> Function(Int32 device_index),
      Pointer<Void> Function(int device_index)>('SDL_JoystickGetDeviceGUID');
  return _SDL_JoystickGetDeviceGUID(device_index);
}
// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUID(SDL_Joystick * joystick)
Pointer<Void> SDL_JoystickGetGUID(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickGetGUID = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<SDL_Joystick> joystick),
      Pointer<Void> Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickGetGUID');
  return _SDL_JoystickGetGUID(joystick);
}
// extern DECLSPEC void SDL_JoystickGetGUIDString(SDL_JoystickGUID guid, char *pszGUID, int cbGUID)
void SDL_JoystickGetGUIDString(Pointer<Void> guid, Pointer<Int8> pszGUID, int cbGUID) {
  final _SDL_JoystickGetGUIDString = _SDL2.lookupFunction<
      Void Function(Pointer<Void> guid, Pointer<Int8> pszGUID, Int32 cbGUID),
      void Function(Pointer<Void> guid, Pointer<Int8> pszGUID, int cbGUID)>('SDL_JoystickGetGUIDString');
  return _SDL_JoystickGetGUIDString(guid, pszGUID, cbGUID);
}
// extern DECLSPEC SDL_JoystickGUID SDLCALL SDL_JoystickGetGUIDFromString(const char *pchGUID)
Pointer<Void> SDL_JoystickGetGUIDFromString(String pchGUID) {
  final _SDL_JoystickGetGUIDFromString = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Utf8> pchGUID),
      Pointer<Void> Function(Pointer<Utf8> pchGUID)>('SDL_JoystickGetGUIDFromString');
  final _pchGUIDPointer = pchGUID.toNativeUtf8();
  final _result = _SDL_JoystickGetGUIDFromString(_pchGUIDPointer);
  calloc.free(_pchGUIDPointer);
  return _result;
}
// extern DECLSPEC SDL_bool SDLCALL SDL_JoystickGetAttached(SDL_Joystick * joystick)
int SDL_JoystickGetAttached(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickGetAttached = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickGetAttached');
  return _SDL_JoystickGetAttached(joystick);
}
// extern DECLSPEC SDL_JoystickID SDLCALL SDL_JoystickInstanceID(SDL_Joystick * joystick)
int SDL_JoystickInstanceID(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickInstanceID = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickInstanceID');
  return _SDL_JoystickInstanceID(joystick);
}
// extern DECLSPEC int SDLCALL SDL_JoystickNumAxes(SDL_Joystick * joystick)
int SDL_JoystickNumAxes(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickNumAxes = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickNumAxes');
  return _SDL_JoystickNumAxes(joystick);
}
// extern DECLSPEC int SDLCALL SDL_JoystickNumBalls(SDL_Joystick * joystick)
int SDL_JoystickNumBalls(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickNumBalls = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickNumBalls');
  return _SDL_JoystickNumBalls(joystick);
}
// extern DECLSPEC int SDLCALL SDL_JoystickNumHats(SDL_Joystick * joystick)
int SDL_JoystickNumHats(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickNumHats = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickNumHats');
  return _SDL_JoystickNumHats(joystick);
}
// extern DECLSPEC int SDLCALL SDL_JoystickNumButtons(SDL_Joystick * joystick)
int SDL_JoystickNumButtons(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickNumButtons = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick),
      int Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickNumButtons');
  return _SDL_JoystickNumButtons(joystick);
}
// extern DECLSPEC void SDLCALL SDL_JoystickUpdate(void)
void SDL_JoystickUpdate() {
  final _SDL_JoystickUpdate = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_JoystickUpdate');
  return _SDL_JoystickUpdate();
}
// extern DECLSPEC int SDLCALL SDL_JoystickEventState(int state)
int SDL_JoystickEventState(int state) {
  final _SDL_JoystickEventState = _SDL2.lookupFunction<
      Int32 Function(Int32 state),
      int Function(int state)>('SDL_JoystickEventState');
  return _SDL_JoystickEventState(state);
}
// extern DECLSPEC Sint16 SDLCALL SDL_JoystickGetAxis(SDL_Joystick * joystick, int axis)
int SDL_JoystickGetAxis(Pointer<SDL_Joystick> joystick, int axis) {
  final _SDL_JoystickGetAxis = _SDL2.lookupFunction<
      Int16 Function(Pointer<SDL_Joystick> joystick, Int32 axis),
      int Function(Pointer<SDL_Joystick> joystick, int axis)>('SDL_JoystickGetAxis');
  return _SDL_JoystickGetAxis(joystick, axis);
}
// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetHat(SDL_Joystick * joystick, int hat)
int SDL_JoystickGetHat(Pointer<SDL_Joystick> joystick, int hat) {
  final _SDL_JoystickGetHat = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick> joystick, Int32 hat),
      int Function(Pointer<SDL_Joystick> joystick, int hat)>('SDL_JoystickGetHat');
  return _SDL_JoystickGetHat(joystick, hat);
}
// extern DECLSPEC int SDLCALL SDL_JoystickGetBall(SDL_Joystick * joystick, int ball, int *dx, int *dy)
int SDL_JoystickGetBall(Pointer<SDL_Joystick> joystick, int ball, Pointer<Int32> dx, Pointer<Int32> dy) {
  final _SDL_JoystickGetBall = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Joystick> joystick, Int32 ball, Pointer<Int32> dx, Pointer<Int32> dy),
      int Function(Pointer<SDL_Joystick> joystick, int ball, Pointer<Int32> dx, Pointer<Int32> dy)>('SDL_JoystickGetBall');
  return _SDL_JoystickGetBall(joystick, ball, dx, dy);
}
// extern DECLSPEC Uint8 SDLCALL SDL_JoystickGetButton(SDL_Joystick * joystick, int button)
int SDL_JoystickGetButton(Pointer<SDL_Joystick> joystick, int button) {
  final _SDL_JoystickGetButton = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_Joystick> joystick, Int32 button),
      int Function(Pointer<SDL_Joystick> joystick, int button)>('SDL_JoystickGetButton');
  return _SDL_JoystickGetButton(joystick, button);
}
// extern DECLSPEC void SDLCALL SDL_JoystickClose(SDL_Joystick * joystick)
void SDL_JoystickClose(Pointer<SDL_Joystick> joystick) {
  final _SDL_JoystickClose = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Joystick> joystick),
      void Function(Pointer<SDL_Joystick> joystick)>('SDL_JoystickClose');
  return _SDL_JoystickClose(joystick);
}
// extern DECLSPEC SDL_Window * SDLCALL SDL_GetKeyboardFocus(void)
Pointer<SDL_Window> SDL_GetKeyboardFocus() {
  final _SDL_GetKeyboardFocus = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(),
      Pointer<SDL_Window> Function()>('SDL_GetKeyboardFocus');
  return _SDL_GetKeyboardFocus();
}
// extern DECLSPEC const Uint8 *SDLCALL SDL_GetKeyboardState(int *numkeys)
Pointer<Uint8> SDL_GetKeyboardState(Pointer<Int32> numkeys) {
  final _SDL_GetKeyboardState = _SDL2.lookupFunction<
      Pointer<Uint8> Function(Pointer<Int32> numkeys),
      Pointer<Uint8> Function(Pointer<Int32> numkeys)>('SDL_GetKeyboardState');
  return _SDL_GetKeyboardState(numkeys);
}
// extern DECLSPEC SDL_Keymod SDLCALL SDL_GetModState(void)
int SDL_GetModState() {
  final _SDL_GetModState = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetModState');
  return _SDL_GetModState();
}
// extern DECLSPEC void SDLCALL SDL_SetModState(SDL_Keymod modstate)
void SDL_SetModState(int modstate) {
  final _SDL_SetModState = _SDL2.lookupFunction<
      Void Function(Int32 modstate),
      void Function(int modstate)>('SDL_SetModState');
  return _SDL_SetModState(modstate);
}
// extern DECLSPEC SDL_Keycode SDLCALL SDL_GetKeyFromScancode(SDL_Scancode scancode)
int SDL_GetKeyFromScancode(int scancode) {
  final _SDL_GetKeyFromScancode = _SDL2.lookupFunction<
      Int32 Function(Int32 scancode),
      int Function(int scancode)>('SDL_GetKeyFromScancode');
  return _SDL_GetKeyFromScancode(scancode);
}
// extern DECLSPEC SDL_Scancode SDLCALL SDL_GetScancodeFromKey(SDL_Keycode key)
int SDL_GetScancodeFromKey(int key) {
  final _SDL_GetScancodeFromKey = _SDL2.lookupFunction<
      Int32 Function(Int32 key),
      int Function(int key)>('SDL_GetScancodeFromKey');
  return _SDL_GetScancodeFromKey(key);
}
// extern DECLSPEC const char *SDLCALL SDL_GetScancodeName(SDL_Scancode scancode)
String SDL_GetScancodeName(int scancode) {
  final _SDL_GetScancodeName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 scancode),
      Pointer<Utf8> Function(int scancode)>('SDL_GetScancodeName');
  return _SDL_GetScancodeName(scancode).toDartString();
}
// extern DECLSPEC SDL_Scancode SDLCALL SDL_GetScancodeFromName(const char *name)
int SDL_GetScancodeFromName(String name) {
  final _SDL_GetScancodeFromName = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> name),
      int Function(Pointer<Utf8> name)>('SDL_GetScancodeFromName');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetScancodeFromName(_namePointer);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC const char *SDLCALL SDL_GetKeyName(SDL_Keycode key)
String SDL_GetKeyName(int key) {
  final _SDL_GetKeyName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 key),
      Pointer<Utf8> Function(int key)>('SDL_GetKeyName');
  return _SDL_GetKeyName(key).toDartString();
}
// extern DECLSPEC SDL_Keycode SDLCALL SDL_GetKeyFromName(const char *name)
int SDL_GetKeyFromName(String name) {
  final _SDL_GetKeyFromName = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> name),
      int Function(Pointer<Utf8> name)>('SDL_GetKeyFromName');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetKeyFromName(_namePointer);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_StartTextInput(void)
void SDL_StartTextInput() {
  final _SDL_StartTextInput = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_StartTextInput');
  return _SDL_StartTextInput();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IsTextInputActive(void)
int SDL_IsTextInputActive() {
  final _SDL_IsTextInputActive = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsTextInputActive');
  return _SDL_IsTextInputActive();
}
// extern DECLSPEC void SDLCALL SDL_StopTextInput(void)
void SDL_StopTextInput() {
  final _SDL_StopTextInput = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_StopTextInput');
  return _SDL_StopTextInput();
}
// extern DECLSPEC void SDLCALL SDL_SetTextInputRect(SDL_Rect *rect)
void SDL_SetTextInputRect(Pointer<SDL_Rect> rect) {
  final _SDL_SetTextInputRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Rect> rect),
      void Function(Pointer<SDL_Rect> rect)>('SDL_SetTextInputRect');
  return _SDL_SetTextInputRect(rect);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasScreenKeyboardSupport(void)
int SDL_HasScreenKeyboardSupport() {
  final _SDL_HasScreenKeyboardSupport = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_HasScreenKeyboardSupport');
  return _SDL_HasScreenKeyboardSupport();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IsScreenKeyboardShown(SDL_Window *window)
int SDL_IsScreenKeyboardShown(Pointer<SDL_Window> window) {
  final _SDL_IsScreenKeyboardShown = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_IsScreenKeyboardShown');
  return _SDL_IsScreenKeyboardShown(window);
}
// extern DECLSPEC void *SDLCALL SDL_LoadObject(const char *sofile)
Pointer<Void> SDL_LoadObject(String sofile) {
  final _SDL_LoadObject = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Utf8> sofile),
      Pointer<Void> Function(Pointer<Utf8> sofile)>('SDL_LoadObject');
  final _sofilePointer = sofile.toNativeUtf8();
  final _result = _SDL_LoadObject(_sofilePointer);
  calloc.free(_sofilePointer);
  return _result;
}
// extern DECLSPEC void *SDLCALL SDL_LoadFunction(void *handle, const char *name)
Pointer<Void> SDL_LoadFunction(Pointer<Void> handle, String name) {
  final _SDL_LoadFunction = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Void> handle, Pointer<Utf8> name),
      Pointer<Void> Function(Pointer<Void> handle, Pointer<Utf8> name)>('SDL_LoadFunction');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_LoadFunction(handle, _namePointer);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_UnloadObject(void *handle)
void SDL_UnloadObject(Pointer<Void> handle) {
  final _SDL_UnloadObject = _SDL2.lookupFunction<
      Void Function(Pointer<Void> handle),
      void Function(Pointer<Void> handle)>('SDL_UnloadObject');
  return _SDL_UnloadObject(handle);
}
// extern DECLSPEC void SDLCALL SDL_LogSetAllPriority(SDL_LogPriority priority)
void SDL_LogSetAllPriority(int priority) {
  final _SDL_LogSetAllPriority = _SDL2.lookupFunction<
      Void Function(Int32 priority),
      void Function(int priority)>('SDL_LogSetAllPriority');
  return _SDL_LogSetAllPriority(priority);
}
// extern DECLSPEC void SDLCALL SDL_LogSetPriority(int category, SDL_LogPriority priority)
void SDL_LogSetPriority(int category, int priority) {
  final _SDL_LogSetPriority = _SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority),
      void Function(int category, int priority)>('SDL_LogSetPriority');
  return _SDL_LogSetPriority(category, priority);
}
// extern DECLSPEC SDL_LogPriority SDLCALL SDL_LogGetPriority(int category)
int SDL_LogGetPriority(int category) {
  final _SDL_LogGetPriority = _SDL2.lookupFunction<
      Int32 Function(Int32 category),
      int Function(int category)>('SDL_LogGetPriority');
  return _SDL_LogGetPriority(category);
}
// extern DECLSPEC void SDLCALL SDL_LogResetPriorities(void)
void SDL_LogResetPriorities() {
  final _SDL_LogResetPriorities = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LogResetPriorities');
  return _SDL_LogResetPriorities();
}
// extern DECLSPEC void SDLCALL SDL_Log(const char *fmt, ...)
void SDL_Log(String fmt, Pointer<Void> arg1) {
  final _SDL_Log = _SDL2.lookupFunction<
      Void Function(Pointer<Utf8> fmt, Pointer<Void> arg1),
      void Function(Pointer<Utf8> fmt, Pointer<Void> arg1)>('SDL_Log');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_Log(_fmtPointer, arg1);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogVerbose(int category, const char *fmt, ...)
void SDL_LogVerbose(int category, String fmt, Pointer<Void> arg2) {
  final _SDL_LogVerbose = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8> fmt, Pointer<Void> arg2),
      void Function(int category, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_LogVerbose');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogVerbose(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogDebug(int category, const char *fmt, ...)
void SDL_LogDebug(int category, String fmt, Pointer<Void> arg2) {
  final _SDL_LogDebug = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8> fmt, Pointer<Void> arg2),
      void Function(int category, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_LogDebug');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogDebug(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogInfo(int category, const char *fmt, ...)
void SDL_LogInfo(int category, String fmt, Pointer<Void> arg2) {
  final _SDL_LogInfo = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8> fmt, Pointer<Void> arg2),
      void Function(int category, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_LogInfo');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogInfo(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogWarn(int category, const char *fmt, ...)
void SDL_LogWarn(int category, String fmt, Pointer<Void> arg2) {
  final _SDL_LogWarn = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8> fmt, Pointer<Void> arg2),
      void Function(int category, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_LogWarn');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogWarn(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogError(int category, const char *fmt, ...)
void SDL_LogError(int category, String fmt, Pointer<Void> arg2) {
  final _SDL_LogError = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8> fmt, Pointer<Void> arg2),
      void Function(int category, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_LogError');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogError(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogCritical(int category, const char *fmt, ...)
void SDL_LogCritical(int category, String fmt, Pointer<Void> arg2) {
  final _SDL_LogCritical = _SDL2.lookupFunction<
      Void Function(Int32 category, Pointer<Utf8> fmt, Pointer<Void> arg2),
      void Function(int category, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_LogCritical');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogCritical(category, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogMessage(int category, SDL_LogPriority priority, const char *fmt, ...)
void SDL_LogMessage(int category, int priority, String fmt, Pointer<Void> arg3) {
  final _SDL_LogMessage = _SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8> fmt, Pointer<Void> arg3),
      void Function(int category, int priority, Pointer<Utf8> fmt, Pointer<Void> arg3)>('SDL_LogMessage');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogMessage(category, priority, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogMessageV(int category, SDL_LogPriority priority, const char *fmt, va_list ap)
void SDL_LogMessageV(int category, int priority, String fmt, Pointer<Void> ap) {
  final _SDL_LogMessageV = _SDL2.lookupFunction<
      Void Function(Int32 category, Int32 priority, Pointer<Utf8> fmt, Pointer<Void> ap),
      void Function(int category, int priority, Pointer<Utf8> fmt, Pointer<Void> ap)>('SDL_LogMessageV');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_LogMessageV(category, priority, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_LogGetOutputFunction(SDL_LogOutputFunction *callback, void **userdata)
void SDL_LogGetOutputFunction(Pointer<Pointer<Void>> callback, Pointer<Pointer<Void>> userdata) {
  final _SDL_LogGetOutputFunction = _SDL2.lookupFunction<
      Void Function(Pointer<Pointer<Void>> callback, Pointer<Pointer<Void>> userdata),
      void Function(Pointer<Pointer<Void>> callback, Pointer<Pointer<Void>> userdata)>('SDL_LogGetOutputFunction');
  return _SDL_LogGetOutputFunction(callback, userdata);
}
// extern DECLSPEC void SDLCALL SDL_LogSetOutputFunction(SDL_LogOutputFunction callback, void *userdata)
void SDL_LogSetOutputFunction(Pointer<Void> callback, Pointer<Void> userdata) {
  final _SDL_LogSetOutputFunction = _SDL2.lookupFunction<
      Void Function(Pointer<Void> callback, Pointer<Void> userdata),
      void Function(Pointer<Void> callback, Pointer<Void> userdata)>('SDL_LogSetOutputFunction');
  return _SDL_LogSetOutputFunction(callback, userdata);
}
// extern DECLSPEC void SDL_SetMainReady(void)
void SDL_SetMainReady() {
  final _SDL_SetMainReady = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_SetMainReady');
  return _SDL_SetMainReady();
}
// extern DECLSPEC int SDLCALL SDL_RegisterApp(char *name, Uint32 style, void *hInst)
int SDL_RegisterApp(Pointer<Int8> name, int style, Pointer<Void> hInst) {
  final _SDL_RegisterApp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int8> name, Uint32 style, Pointer<Void> hInst),
      int Function(Pointer<Int8> name, int style, Pointer<Void> hInst)>('SDL_RegisterApp');
  return _SDL_RegisterApp(name, style, hInst);
}
// extern DECLSPEC void SDLCALL SDL_UnregisterApp(void)
void SDL_UnregisterApp() {
  final _SDL_UnregisterApp = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnregisterApp');
  return _SDL_UnregisterApp();
}
// extern DECLSPEC int SDLCALL SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid)
int SDL_ShowMessageBox(Pointer<SDL_MessageBoxData> messageboxdata, Pointer<Int32> buttonid) {
  final _SDL_ShowMessageBox = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_MessageBoxData> messageboxdata, Pointer<Int32> buttonid),
      int Function(Pointer<SDL_MessageBoxData> messageboxdata, Pointer<Int32> buttonid)>('SDL_ShowMessageBox');
  return _SDL_ShowMessageBox(messageboxdata, buttonid);
}
// extern DECLSPEC int SDLCALL SDL_ShowSimpleMessageBox(Uint32 flags, const char *title, const char *message, SDL_Window *window)
int SDL_ShowSimpleMessageBox(int flags, String title, String message, Pointer<SDL_Window> window) {
  final _SDL_ShowSimpleMessageBox = _SDL2.lookupFunction<
      Int32 Function(Uint32 flags, Pointer<Utf8> title, Pointer<Utf8> message, Pointer<SDL_Window> window),
      int Function(int flags, Pointer<Utf8> title, Pointer<Utf8> message, Pointer<SDL_Window> window)>('SDL_ShowSimpleMessageBox');
  final _titlePointer = title.toNativeUtf8();
  final _messagePointer = message.toNativeUtf8();
  final _result = _SDL_ShowSimpleMessageBox(flags, _titlePointer, _messagePointer, window);
  calloc.free(_titlePointer);
  calloc.free(_messagePointer);
  return _result;
}
// extern DECLSPEC SDL_Window * SDLCALL SDL_GetMouseFocus(void)
Pointer<SDL_Window> SDL_GetMouseFocus() {
  final _SDL_GetMouseFocus = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(),
      Pointer<SDL_Window> Function()>('SDL_GetMouseFocus');
  return _SDL_GetMouseFocus();
}
// extern DECLSPEC Uint32 SDLCALL SDL_GetMouseState(int *x, int *y)
int SDL_GetMouseState(Pointer<Int32> x, Pointer<Int32> y) {
  final _SDL_GetMouseState = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32> x, Pointer<Int32> y),
      int Function(Pointer<Int32> x, Pointer<Int32> y)>('SDL_GetMouseState');
  return _SDL_GetMouseState(x, y);
}
// extern DECLSPEC Uint32 SDLCALL SDL_GetRelativeMouseState(int *x, int *y)
int SDL_GetRelativeMouseState(Pointer<Int32> x, Pointer<Int32> y) {
  final _SDL_GetRelativeMouseState = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int32> x, Pointer<Int32> y),
      int Function(Pointer<Int32> x, Pointer<Int32> y)>('SDL_GetRelativeMouseState');
  return _SDL_GetRelativeMouseState(x, y);
}
// extern DECLSPEC void SDLCALL SDL_WarpMouseInWindow(SDL_Window * window, int x, int y)
void SDL_WarpMouseInWindow(Pointer<SDL_Window> window, int x, int y) {
  final _SDL_WarpMouseInWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 x, Int32 y),
      void Function(Pointer<SDL_Window> window, int x, int y)>('SDL_WarpMouseInWindow');
  return _SDL_WarpMouseInWindow(window, x, y);
}
// extern DECLSPEC int SDLCALL SDL_SetRelativeMouseMode(SDL_bool enabled)
int SDL_SetRelativeMouseMode(int enabled) {
  final _SDL_SetRelativeMouseMode = _SDL2.lookupFunction<
      Int32 Function(Int32 enabled),
      int Function(int enabled)>('SDL_SetRelativeMouseMode');
  return _SDL_SetRelativeMouseMode(enabled);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_GetRelativeMouseMode(void)
int SDL_GetRelativeMouseMode() {
  final _SDL_GetRelativeMouseMode = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetRelativeMouseMode');
  return _SDL_GetRelativeMouseMode();
}
// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateCursor(const Uint8 * data, const Uint8 * mask, int w, int h, int hot_x, int hot_y)
Pointer<SDL_Cursor> SDL_CreateCursor(Pointer<Uint8> data, Pointer<Uint8> mask, int w, int h, int hot_x, int hot_y) {
  final _SDL_CreateCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor> Function(Pointer<Uint8> data, Pointer<Uint8> mask, Int32 w, Int32 h, Int32 hot_x, Int32 hot_y),
      Pointer<SDL_Cursor> Function(Pointer<Uint8> data, Pointer<Uint8> mask, int w, int h, int hot_x, int hot_y)>('SDL_CreateCursor');
  return _SDL_CreateCursor(data, mask, w, h, hot_x, hot_y);
}
// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y)
Pointer<SDL_Cursor> SDL_CreateColorCursor(Pointer<SDL_Surface> surface, int hot_x, int hot_y) {
  final _SDL_CreateColorCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor> Function(Pointer<SDL_Surface> surface, Int32 hot_x, Int32 hot_y),
      Pointer<SDL_Cursor> Function(Pointer<SDL_Surface> surface, int hot_x, int hot_y)>('SDL_CreateColorCursor');
  return _SDL_CreateColorCursor(surface, hot_x, hot_y);
}
// extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateSystemCursor(SDL_SystemCursor id)
Pointer<SDL_Cursor> SDL_CreateSystemCursor(int id) {
  final _SDL_CreateSystemCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor> Function(Int32 id),
      Pointer<SDL_Cursor> Function(int id)>('SDL_CreateSystemCursor');
  return _SDL_CreateSystemCursor(id);
}
// extern DECLSPEC void SDLCALL SDL_SetCursor(SDL_Cursor * cursor)
void SDL_SetCursor(Pointer<SDL_Cursor> cursor) {
  final _SDL_SetCursor = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Cursor> cursor),
      void Function(Pointer<SDL_Cursor> cursor)>('SDL_SetCursor');
  return _SDL_SetCursor(cursor);
}
// extern DECLSPEC SDL_Cursor *SDLCALL SDL_GetCursor(void)
Pointer<SDL_Cursor> SDL_GetCursor() {
  final _SDL_GetCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor> Function(),
      Pointer<SDL_Cursor> Function()>('SDL_GetCursor');
  return _SDL_GetCursor();
}
// extern DECLSPEC SDL_Cursor *SDLCALL SDL_GetDefaultCursor(void)
Pointer<SDL_Cursor> SDL_GetDefaultCursor() {
  final _SDL_GetDefaultCursor = _SDL2.lookupFunction<
      Pointer<SDL_Cursor> Function(),
      Pointer<SDL_Cursor> Function()>('SDL_GetDefaultCursor');
  return _SDL_GetDefaultCursor();
}
// extern DECLSPEC void SDLCALL SDL_FreeCursor(SDL_Cursor * cursor)
void SDL_FreeCursor(Pointer<SDL_Cursor> cursor) {
  final _SDL_FreeCursor = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Cursor> cursor),
      void Function(Pointer<SDL_Cursor> cursor)>('SDL_FreeCursor');
  return _SDL_FreeCursor(cursor);
}
// extern DECLSPEC int SDLCALL SDL_ShowCursor(int toggle)
int SDL_ShowCursor(int toggle) {
  final _SDL_ShowCursor = _SDL2.lookupFunction<
      Int32 Function(Int32 toggle),
      int Function(int toggle)>('SDL_ShowCursor');
  return _SDL_ShowCursor(toggle);
}
// extern DECLSPEC SDL_mutex *SDLCALL SDL_CreateMutex(void)
Pointer<SDL_mutex> SDL_CreateMutex() {
  final _SDL_CreateMutex = _SDL2.lookupFunction<
      Pointer<SDL_mutex> Function(),
      Pointer<SDL_mutex> Function()>('SDL_CreateMutex');
  return _SDL_CreateMutex();
}
// extern DECLSPEC int SDLCALL SDL_LockMutex(SDL_mutex * mutex)
int SDL_LockMutex(Pointer<SDL_mutex> mutex) {
  final _SDL_LockMutex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex> mutex),
      int Function(Pointer<SDL_mutex> mutex)>('SDL_LockMutex');
  return _SDL_LockMutex(mutex);
}
// extern DECLSPEC int SDLCALL SDL_TryLockMutex(SDL_mutex * mutex)
int SDL_TryLockMutex(Pointer<SDL_mutex> mutex) {
  final _SDL_TryLockMutex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex> mutex),
      int Function(Pointer<SDL_mutex> mutex)>('SDL_TryLockMutex');
  return _SDL_TryLockMutex(mutex);
}
// extern DECLSPEC int SDLCALL SDL_UnlockMutex(SDL_mutex * mutex)
int SDL_UnlockMutex(Pointer<SDL_mutex> mutex) {
  final _SDL_UnlockMutex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_mutex> mutex),
      int Function(Pointer<SDL_mutex> mutex)>('SDL_UnlockMutex');
  return _SDL_UnlockMutex(mutex);
}
// extern DECLSPEC void SDLCALL SDL_DestroyMutex(SDL_mutex * mutex)
void SDL_DestroyMutex(Pointer<SDL_mutex> mutex) {
  final _SDL_DestroyMutex = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_mutex> mutex),
      void Function(Pointer<SDL_mutex> mutex)>('SDL_DestroyMutex');
  return _SDL_DestroyMutex(mutex);
}
// extern DECLSPEC SDL_sem *SDLCALL SDL_CreateSemaphore(Uint32 initial_value)
Pointer<SDL_sem> SDL_CreateSemaphore(int initial_value) {
  final _SDL_CreateSemaphore = _SDL2.lookupFunction<
      Pointer<SDL_sem> Function(Uint32 initial_value),
      Pointer<SDL_sem> Function(int initial_value)>('SDL_CreateSemaphore');
  return _SDL_CreateSemaphore(initial_value);
}
// extern DECLSPEC void SDLCALL SDL_DestroySemaphore(SDL_sem * sem)
void SDL_DestroySemaphore(Pointer<SDL_sem> sem) {
  final _SDL_DestroySemaphore = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_sem> sem),
      void Function(Pointer<SDL_sem> sem)>('SDL_DestroySemaphore');
  return _SDL_DestroySemaphore(sem);
}
// extern DECLSPEC int SDLCALL SDL_SemWait(SDL_sem * sem)
int SDL_SemWait(Pointer<SDL_sem> sem) {
  final _SDL_SemWait = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem> sem),
      int Function(Pointer<SDL_sem> sem)>('SDL_SemWait');
  return _SDL_SemWait(sem);
}
// extern DECLSPEC int SDLCALL SDL_SemTryWait(SDL_sem * sem)
int SDL_SemTryWait(Pointer<SDL_sem> sem) {
  final _SDL_SemTryWait = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem> sem),
      int Function(Pointer<SDL_sem> sem)>('SDL_SemTryWait');
  return _SDL_SemTryWait(sem);
}
// extern DECLSPEC int SDLCALL SDL_SemWaitTimeout(SDL_sem * sem, Uint32 ms)
int SDL_SemWaitTimeout(Pointer<SDL_sem> sem, int ms) {
  final _SDL_SemWaitTimeout = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem> sem, Uint32 ms),
      int Function(Pointer<SDL_sem> sem, int ms)>('SDL_SemWaitTimeout');
  return _SDL_SemWaitTimeout(sem, ms);
}
// extern DECLSPEC int SDLCALL SDL_SemPost(SDL_sem * sem)
int SDL_SemPost(Pointer<SDL_sem> sem) {
  final _SDL_SemPost = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_sem> sem),
      int Function(Pointer<SDL_sem> sem)>('SDL_SemPost');
  return _SDL_SemPost(sem);
}
// extern DECLSPEC Uint32 SDLCALL SDL_SemValue(SDL_sem * sem)
int SDL_SemValue(Pointer<SDL_sem> sem) {
  final _SDL_SemValue = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_sem> sem),
      int Function(Pointer<SDL_sem> sem)>('SDL_SemValue');
  return _SDL_SemValue(sem);
}
// extern DECLSPEC SDL_cond *SDLCALL SDL_CreateCond(void)
Pointer<SDL_cond> SDL_CreateCond() {
  final _SDL_CreateCond = _SDL2.lookupFunction<
      Pointer<SDL_cond> Function(),
      Pointer<SDL_cond> Function()>('SDL_CreateCond');
  return _SDL_CreateCond();
}
// extern DECLSPEC void SDLCALL SDL_DestroyCond(SDL_cond * cond)
void SDL_DestroyCond(Pointer<SDL_cond> cond) {
  final _SDL_DestroyCond = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_cond> cond),
      void Function(Pointer<SDL_cond> cond)>('SDL_DestroyCond');
  return _SDL_DestroyCond(cond);
}
// extern DECLSPEC int SDLCALL SDL_CondSignal(SDL_cond * cond)
int SDL_CondSignal(Pointer<SDL_cond> cond) {
  final _SDL_CondSignal = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond> cond),
      int Function(Pointer<SDL_cond> cond)>('SDL_CondSignal');
  return _SDL_CondSignal(cond);
}
// extern DECLSPEC int SDLCALL SDL_CondBroadcast(SDL_cond * cond)
int SDL_CondBroadcast(Pointer<SDL_cond> cond) {
  final _SDL_CondBroadcast = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond> cond),
      int Function(Pointer<SDL_cond> cond)>('SDL_CondBroadcast');
  return _SDL_CondBroadcast(cond);
}
// extern DECLSPEC int SDLCALL SDL_CondWait(SDL_cond * cond, SDL_mutex * mutex)
int SDL_CondWait(Pointer<SDL_cond> cond, Pointer<SDL_mutex> mutex) {
  final _SDL_CondWait = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond> cond, Pointer<SDL_mutex> mutex),
      int Function(Pointer<SDL_cond> cond, Pointer<SDL_mutex> mutex)>('SDL_CondWait');
  return _SDL_CondWait(cond, mutex);
}
// extern DECLSPEC int SDLCALL SDL_CondWaitTimeout(SDL_cond * cond, SDL_mutex * mutex, Uint32 ms)
int SDL_CondWaitTimeout(Pointer<SDL_cond> cond, Pointer<SDL_mutex> mutex, int ms) {
  final _SDL_CondWaitTimeout = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_cond> cond, Pointer<SDL_mutex> mutex, Uint32 ms),
      int Function(Pointer<SDL_cond> cond, Pointer<SDL_mutex> mutex, int ms)>('SDL_CondWaitTimeout');
  return _SDL_CondWaitTimeout(cond, mutex, ms);
}
// extern DECLSPEC const char* SDLCALL SDL_GetPixelFormatName(Uint32 format)
String SDL_GetPixelFormatName(int format) {
  final _SDL_GetPixelFormatName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Uint32 format),
      Pointer<Utf8> Function(int format)>('SDL_GetPixelFormatName');
  return _SDL_GetPixelFormatName(format).toDartString();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_PixelFormatEnumToMasks(Uint32 format, int *bpp, Uint32 * Rmask, Uint32 * Gmask, Uint32 * Bmask, Uint32 * Amask)
int SDL_PixelFormatEnumToMasks(int format, Pointer<Int32> bpp, Pointer<Uint32> Rmask, Pointer<Uint32> Gmask, Pointer<Uint32> Bmask, Pointer<Uint32> Amask) {
  final _SDL_PixelFormatEnumToMasks = _SDL2.lookupFunction<
      Int32 Function(Uint32 format, Pointer<Int32> bpp, Pointer<Uint32> Rmask, Pointer<Uint32> Gmask, Pointer<Uint32> Bmask, Pointer<Uint32> Amask),
      int Function(int format, Pointer<Int32> bpp, Pointer<Uint32> Rmask, Pointer<Uint32> Gmask, Pointer<Uint32> Bmask, Pointer<Uint32> Amask)>('SDL_PixelFormatEnumToMasks');
  return _SDL_PixelFormatEnumToMasks(format, bpp, Rmask, Gmask, Bmask, Amask);
}
// extern DECLSPEC Uint32 SDLCALL SDL_MasksToPixelFormatEnum(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
int SDL_MasksToPixelFormatEnum(int bpp, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_MasksToPixelFormatEnum = _SDL2.lookupFunction<
      Uint32 Function(Int32 bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      int Function(int bpp, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_MasksToPixelFormatEnum');
  return _SDL_MasksToPixelFormatEnum(bpp, Rmask, Gmask, Bmask, Amask);
}
// extern DECLSPEC SDL_PixelFormat * SDLCALL SDL_AllocFormat(Uint32 pixel_format)
Pointer<SDL_PixelFormat> SDL_AllocFormat(int pixel_format) {
  final _SDL_AllocFormat = _SDL2.lookupFunction<
      Pointer<SDL_PixelFormat> Function(Uint32 pixel_format),
      Pointer<SDL_PixelFormat> Function(int pixel_format)>('SDL_AllocFormat');
  return _SDL_AllocFormat(pixel_format);
}
// extern DECLSPEC void SDLCALL SDL_FreeFormat(SDL_PixelFormat *format)
void SDL_FreeFormat(Pointer<SDL_PixelFormat> format) {
  final _SDL_FreeFormat = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_PixelFormat> format),
      void Function(Pointer<SDL_PixelFormat> format)>('SDL_FreeFormat');
  return _SDL_FreeFormat(format);
}
// extern DECLSPEC SDL_Palette *SDLCALL SDL_AllocPalette(int ncolors)
Pointer<SDL_Palette> SDL_AllocPalette(int ncolors) {
  final _SDL_AllocPalette = _SDL2.lookupFunction<
      Pointer<SDL_Palette> Function(Int32 ncolors),
      Pointer<SDL_Palette> Function(int ncolors)>('SDL_AllocPalette');
  return _SDL_AllocPalette(ncolors);
}
// extern DECLSPEC int SDLCALL SDL_SetPixelFormatPalette(SDL_PixelFormat * format, SDL_Palette *palette)
int SDL_SetPixelFormatPalette(Pointer<SDL_PixelFormat> format, Pointer<SDL_Palette> palette) {
  final _SDL_SetPixelFormatPalette = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_PixelFormat> format, Pointer<SDL_Palette> palette),
      int Function(Pointer<SDL_PixelFormat> format, Pointer<SDL_Palette> palette)>('SDL_SetPixelFormatPalette');
  return _SDL_SetPixelFormatPalette(format, palette);
}
// extern DECLSPEC int SDLCALL SDL_SetPaletteColors(SDL_Palette * palette, const SDL_Color * colors, int firstcolor, int ncolors)
int SDL_SetPaletteColors(Pointer<SDL_Palette> palette, Pointer<SDL_Color> colors, int firstcolor, int ncolors) {
  final _SDL_SetPaletteColors = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Palette> palette, Pointer<SDL_Color> colors, Int32 firstcolor, Int32 ncolors),
      int Function(Pointer<SDL_Palette> palette, Pointer<SDL_Color> colors, int firstcolor, int ncolors)>('SDL_SetPaletteColors');
  return _SDL_SetPaletteColors(palette, colors, firstcolor, ncolors);
}
// extern DECLSPEC void SDLCALL SDL_FreePalette(SDL_Palette * palette)
void SDL_FreePalette(Pointer<SDL_Palette> palette) {
  final _SDL_FreePalette = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Palette> palette),
      void Function(Pointer<SDL_Palette> palette)>('SDL_FreePalette');
  return _SDL_FreePalette(palette);
}
// extern DECLSPEC Uint32 SDLCALL SDL_MapRGB(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b)
int SDL_MapRGB(Pointer<SDL_PixelFormat> format, int r, int g, int b) {
  final _SDL_MapRGB = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_PixelFormat> format, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_PixelFormat> format, int r, int g, int b)>('SDL_MapRGB');
  return _SDL_MapRGB(format, r, g, b);
}
// extern DECLSPEC Uint32 SDLCALL SDL_MapRGBA(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
int SDL_MapRGBA(Pointer<SDL_PixelFormat> format, int r, int g, int b, int a) {
  final _SDL_MapRGBA = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_PixelFormat> format, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_PixelFormat> format, int r, int g, int b, int a)>('SDL_MapRGBA');
  return _SDL_MapRGBA(format, r, g, b, a);
}
// extern DECLSPEC void SDLCALL SDL_GetRGB(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b)
void SDL_GetRGB(int pixel, Pointer<SDL_PixelFormat> format, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b) {
  final _SDL_GetRGB = _SDL2.lookupFunction<
      Void Function(Uint32 pixel, Pointer<SDL_PixelFormat> format, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b),
      void Function(int pixel, Pointer<SDL_PixelFormat> format, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b)>('SDL_GetRGB');
  return _SDL_GetRGB(pixel, format, r, g, b);
}
// extern DECLSPEC void SDLCALL SDL_GetRGBA(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
void SDL_GetRGBA(int pixel, Pointer<SDL_PixelFormat> format, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b, Pointer<Uint8> a) {
  final _SDL_GetRGBA = _SDL2.lookupFunction<
      Void Function(Uint32 pixel, Pointer<SDL_PixelFormat> format, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b, Pointer<Uint8> a),
      void Function(int pixel, Pointer<SDL_PixelFormat> format, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b, Pointer<Uint8> a)>('SDL_GetRGBA');
  return _SDL_GetRGBA(pixel, format, r, g, b, a);
}
// extern DECLSPEC void SDLCALL SDL_CalculateGammaRamp(float gamma, Uint16 * ramp)
void SDL_CalculateGammaRamp(double gamma, Pointer<Uint16> ramp) {
  final _SDL_CalculateGammaRamp = _SDL2.lookupFunction<
      Void Function(Float gamma, Pointer<Uint16> ramp),
      void Function(double gamma, Pointer<Uint16> ramp)>('SDL_CalculateGammaRamp');
  return _SDL_CalculateGammaRamp(gamma, ramp);
}
// extern DECLSPEC const char * SDLCALL SDL_GetPlatform (void)
String SDL_GetPlatform() {
  final _SDL_GetPlatform = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_GetPlatform');
  return _SDL_GetPlatform().toDartString();
}
// extern DECLSPEC SDL_PowerState SDLCALL SDL_GetPowerInfo(int *secs, int *pct)
int SDL_GetPowerInfo(Pointer<Int32> secs, Pointer<Int32> pct) {
  final _SDL_GetPowerInfo = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int32> secs, Pointer<Int32> pct),
      int Function(Pointer<Int32> secs, Pointer<Int32> pct)>('SDL_GetPowerInfo');
  return _SDL_GetPowerInfo(secs, pct);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_HasIntersection(const SDL_Rect * A, const SDL_Rect * B)
int SDL_HasIntersection(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B) {
  final _SDL_HasIntersection = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B),
      int Function(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B)>('SDL_HasIntersection');
  return _SDL_HasIntersection(A, B);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result)
int SDL_IntersectRect(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B, Pointer<SDL_Rect> result) {
  final _SDL_IntersectRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B, Pointer<SDL_Rect> result),
      int Function(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B, Pointer<SDL_Rect> result)>('SDL_IntersectRect');
  return _SDL_IntersectRect(A, B, result);
}
// extern DECLSPEC void SDLCALL SDL_UnionRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result)
void SDL_UnionRect(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B, Pointer<SDL_Rect> result) {
  final _SDL_UnionRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B, Pointer<SDL_Rect> result),
      void Function(Pointer<SDL_Rect> A, Pointer<SDL_Rect> B, Pointer<SDL_Rect> result)>('SDL_UnionRect');
  return _SDL_UnionRect(A, B, result);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_EnclosePoints(const SDL_Point * points, int count, const SDL_Rect * clip, SDL_Rect * result)
int SDL_EnclosePoints(Pointer<SDL_Point> points, int count, Pointer<SDL_Rect> clip, Pointer<SDL_Rect> result) {
  final _SDL_EnclosePoints = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Point> points, Int32 count, Pointer<SDL_Rect> clip, Pointer<SDL_Rect> result),
      int Function(Pointer<SDL_Point> points, int count, Pointer<SDL_Rect> clip, Pointer<SDL_Rect> result)>('SDL_EnclosePoints');
  return _SDL_EnclosePoints(points, count, clip, result);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectRectAndLine(const SDL_Rect * rect, int *X1, int *Y1, int *X2, int *Y2)
int SDL_IntersectRectAndLine(Pointer<SDL_Rect> rect, Pointer<Int32> X1, Pointer<Int32> Y1, Pointer<Int32> X2, Pointer<Int32> Y2) {
  final _SDL_IntersectRectAndLine = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect> rect, Pointer<Int32> X1, Pointer<Int32> Y1, Pointer<Int32> X2, Pointer<Int32> Y2),
      int Function(Pointer<SDL_Rect> rect, Pointer<Int32> X1, Pointer<Int32> Y1, Pointer<Int32> X2, Pointer<Int32> Y2)>('SDL_IntersectRectAndLine');
  return _SDL_IntersectRectAndLine(rect, X1, Y1, X2, Y2);
}
// extern DECLSPEC int SDLCALL SDL_GetNumRenderDrivers(void)
int SDL_GetNumRenderDrivers() {
  final _SDL_GetNumRenderDrivers = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumRenderDrivers');
  return _SDL_GetNumRenderDrivers();
}
// extern DECLSPEC int SDLCALL SDL_GetRenderDriverInfo(int index, SDL_RendererInfo * info)
int SDL_GetRenderDriverInfo(int index, Pointer<SDL_RendererInfo> info) {
  final _SDL_GetRenderDriverInfo = _SDL2.lookupFunction<
      Int32 Function(Int32 index, Pointer<SDL_RendererInfo> info),
      int Function(int index, Pointer<SDL_RendererInfo> info)>('SDL_GetRenderDriverInfo');
  return _SDL_GetRenderDriverInfo(index, info);
}
// extern DECLSPEC int SDLCALL SDL_CreateWindowAndRenderer( int width, int height, Uint32 window_flags, SDL_Window **window, SDL_Renderer **renderer)
int SDL_CreateWindowAndRenderer(int width, int height, int window_flags, Pointer<Pointer<SDL_Window>> window, Pointer<Pointer<SDL_Renderer>> renderer) {
  final _SDL_CreateWindowAndRenderer = _SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 window_flags, Pointer<Pointer<SDL_Window>> window, Pointer<Pointer<SDL_Renderer>> renderer),
      int Function(int width, int height, int window_flags, Pointer<Pointer<SDL_Window>> window, Pointer<Pointer<SDL_Renderer>> renderer)>('SDL_CreateWindowAndRenderer');
  return _SDL_CreateWindowAndRenderer(width, height, window_flags, window, renderer);
}
// extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateRenderer(SDL_Window * window, int index, Uint32 flags)
Pointer<SDL_Renderer> SDL_CreateRenderer(Pointer<SDL_Window> window, int index, int flags) {
  final _SDL_CreateRenderer = _SDL2.lookupFunction<
      Pointer<SDL_Renderer> Function(Pointer<SDL_Window> window, Int32 index, Uint32 flags),
      Pointer<SDL_Renderer> Function(Pointer<SDL_Window> window, int index, int flags)>('SDL_CreateRenderer');
  return _SDL_CreateRenderer(window, index, flags);
}
// extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateSoftwareRenderer(SDL_Surface * surface)
Pointer<SDL_Renderer> SDL_CreateSoftwareRenderer(Pointer<SDL_Surface> surface) {
  final _SDL_CreateSoftwareRenderer = _SDL2.lookupFunction<
      Pointer<SDL_Renderer> Function(Pointer<SDL_Surface> surface),
      Pointer<SDL_Renderer> Function(Pointer<SDL_Surface> surface)>('SDL_CreateSoftwareRenderer');
  return _SDL_CreateSoftwareRenderer(surface);
}
// extern DECLSPEC SDL_Renderer * SDLCALL SDL_GetRenderer(SDL_Window * window)
Pointer<SDL_Renderer> SDL_GetRenderer(Pointer<SDL_Window> window) {
  final _SDL_GetRenderer = _SDL2.lookupFunction<
      Pointer<SDL_Renderer> Function(Pointer<SDL_Window> window),
      Pointer<SDL_Renderer> Function(Pointer<SDL_Window> window)>('SDL_GetRenderer');
  return _SDL_GetRenderer(window);
}
// extern DECLSPEC int SDLCALL SDL_GetRendererInfo(SDL_Renderer * renderer, SDL_RendererInfo * info)
int SDL_GetRendererInfo(Pointer<SDL_Renderer> renderer, Pointer<SDL_RendererInfo> info) {
  final _SDL_GetRendererInfo = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_RendererInfo> info),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_RendererInfo> info)>('SDL_GetRendererInfo');
  return _SDL_GetRendererInfo(renderer, info);
}
// extern DECLSPEC int SDLCALL SDL_GetRendererOutputSize(SDL_Renderer * renderer, int *w, int *h)
int SDL_GetRendererOutputSize(Pointer<SDL_Renderer> renderer, Pointer<Int32> w, Pointer<Int32> h) {
  final _SDL_GetRendererOutputSize = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<Int32> w, Pointer<Int32> h)>('SDL_GetRendererOutputSize');
  return _SDL_GetRendererOutputSize(renderer, w, h);
}
// extern DECLSPEC SDL_Texture * SDLCALL SDL_CreateTexture(SDL_Renderer * renderer, Uint32 format, int access, int w, int h)
Pointer<SDL_Texture> SDL_CreateTexture(Pointer<SDL_Renderer> renderer, int format, int access, int w, int h) {
  final _SDL_CreateTexture = _SDL2.lookupFunction<
      Pointer<SDL_Texture> Function(Pointer<SDL_Renderer> renderer, Uint32 format, Int32 access, Int32 w, Int32 h),
      Pointer<SDL_Texture> Function(Pointer<SDL_Renderer> renderer, int format, int access, int w, int h)>('SDL_CreateTexture');
  return _SDL_CreateTexture(renderer, format, access, w, h);
}
// extern DECLSPEC SDL_Texture * SDLCALL SDL_CreateTextureFromSurface(SDL_Renderer * renderer, SDL_Surface * surface)
Pointer<SDL_Texture> SDL_CreateTextureFromSurface(Pointer<SDL_Renderer> renderer, Pointer<SDL_Surface> surface) {
  final _SDL_CreateTextureFromSurface = _SDL2.lookupFunction<
      Pointer<SDL_Texture> Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Surface> surface),
      Pointer<SDL_Texture> Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Surface> surface)>('SDL_CreateTextureFromSurface');
  return _SDL_CreateTextureFromSurface(renderer, surface);
}
// extern DECLSPEC int SDLCALL SDL_QueryTexture(SDL_Texture * texture, Uint32 * format, int *access, int *w, int *h)
int SDL_QueryTexture(Pointer<SDL_Texture> texture, Pointer<Uint32> format, Pointer<Int32> access, Pointer<Int32> w, Pointer<Int32> h) {
  final _SDL_QueryTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<Uint32> format, Pointer<Int32> access, Pointer<Int32> w, Pointer<Int32> h),
      int Function(Pointer<SDL_Texture> texture, Pointer<Uint32> format, Pointer<Int32> access, Pointer<Int32> w, Pointer<Int32> h)>('SDL_QueryTexture');
  return _SDL_QueryTexture(texture, format, access, w, h);
}
// extern DECLSPEC int SDLCALL SDL_SetTextureColorMod(SDL_Texture * texture, Uint8 r, Uint8 g, Uint8 b)
int SDL_SetTextureColorMod(Pointer<SDL_Texture> texture, int r, int g, int b) {
  final _SDL_SetTextureColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_Texture> texture, int r, int g, int b)>('SDL_SetTextureColorMod');
  return _SDL_SetTextureColorMod(texture, r, g, b);
}
// extern DECLSPEC int SDLCALL SDL_GetTextureColorMod(SDL_Texture * texture, Uint8 * r, Uint8 * g, Uint8 * b)
int SDL_GetTextureColorMod(Pointer<SDL_Texture> texture, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b) {
  final _SDL_GetTextureColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b),
      int Function(Pointer<SDL_Texture> texture, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b)>('SDL_GetTextureColorMod');
  return _SDL_GetTextureColorMod(texture, r, g, b);
}
// extern DECLSPEC int SDLCALL SDL_SetTextureAlphaMod(SDL_Texture * texture, Uint8 alpha)
int SDL_SetTextureAlphaMod(Pointer<SDL_Texture> texture, int alpha) {
  final _SDL_SetTextureAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Uint8 alpha),
      int Function(Pointer<SDL_Texture> texture, int alpha)>('SDL_SetTextureAlphaMod');
  return _SDL_SetTextureAlphaMod(texture, alpha);
}
// extern DECLSPEC int SDLCALL SDL_GetTextureAlphaMod(SDL_Texture * texture, Uint8 * alpha)
int SDL_GetTextureAlphaMod(Pointer<SDL_Texture> texture, Pointer<Uint8> alpha) {
  final _SDL_GetTextureAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<Uint8> alpha),
      int Function(Pointer<SDL_Texture> texture, Pointer<Uint8> alpha)>('SDL_GetTextureAlphaMod');
  return _SDL_GetTextureAlphaMod(texture, alpha);
}
// extern DECLSPEC int SDLCALL SDL_SetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode blendMode)
int SDL_SetTextureBlendMode(Pointer<SDL_Texture> texture, int blendMode) {
  final _SDL_SetTextureBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Int32 blendMode),
      int Function(Pointer<SDL_Texture> texture, int blendMode)>('SDL_SetTextureBlendMode');
  return _SDL_SetTextureBlendMode(texture, blendMode);
}
// extern DECLSPEC int SDLCALL SDL_GetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode *blendMode)
int SDL_GetTextureBlendMode(Pointer<SDL_Texture> texture, Pointer<Int32> blendMode) {
  final _SDL_GetTextureBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<Int32> blendMode),
      int Function(Pointer<SDL_Texture> texture, Pointer<Int32> blendMode)>('SDL_GetTextureBlendMode');
  return _SDL_GetTextureBlendMode(texture, blendMode);
}
// extern DECLSPEC int SDLCALL SDL_UpdateTexture(SDL_Texture * texture, const SDL_Rect * rect, const void *pixels, int pitch)
int SDL_UpdateTexture(Pointer<SDL_Texture> texture, Pointer<SDL_Rect> rect, Pointer<Void> pixels, int pitch) {
  final _SDL_UpdateTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<SDL_Rect> rect, Pointer<Void> pixels, Int32 pitch),
      int Function(Pointer<SDL_Texture> texture, Pointer<SDL_Rect> rect, Pointer<Void> pixels, int pitch)>('SDL_UpdateTexture');
  return _SDL_UpdateTexture(texture, rect, pixels, pitch);
}
// extern DECLSPEC int SDLCALL SDL_LockTexture(SDL_Texture * texture, const SDL_Rect * rect, void **pixels, int *pitch)
int SDL_LockTexture(Pointer<SDL_Texture> texture, Pointer<SDL_Rect> rect, Pointer<Pointer<Void>> pixels, Pointer<Int32> pitch) {
  final _SDL_LockTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<SDL_Rect> rect, Pointer<Pointer<Void>> pixels, Pointer<Int32> pitch),
      int Function(Pointer<SDL_Texture> texture, Pointer<SDL_Rect> rect, Pointer<Pointer<Void>> pixels, Pointer<Int32> pitch)>('SDL_LockTexture');
  return _SDL_LockTexture(texture, rect, pixels, pitch);
}
// extern DECLSPEC void SDLCALL SDL_UnlockTexture(SDL_Texture * texture)
void SDL_UnlockTexture(Pointer<SDL_Texture> texture) {
  final _SDL_UnlockTexture = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Texture> texture),
      void Function(Pointer<SDL_Texture> texture)>('SDL_UnlockTexture');
  return _SDL_UnlockTexture(texture);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_RenderTargetSupported(SDL_Renderer *renderer)
int SDL_RenderTargetSupported(Pointer<SDL_Renderer> renderer) {
  final _SDL_RenderTargetSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer),
      int Function(Pointer<SDL_Renderer> renderer)>('SDL_RenderTargetSupported');
  return _SDL_RenderTargetSupported(renderer);
}
// extern DECLSPEC int SDLCALL SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture)
int SDL_SetRenderTarget(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture) {
  final _SDL_SetRenderTarget = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture)>('SDL_SetRenderTarget');
  return _SDL_SetRenderTarget(renderer, texture);
}
// extern DECLSPEC SDL_Texture * SDLCALL SDL_GetRenderTarget(SDL_Renderer *renderer)
Pointer<SDL_Texture> SDL_GetRenderTarget(Pointer<SDL_Renderer> renderer) {
  final _SDL_GetRenderTarget = _SDL2.lookupFunction<
      Pointer<SDL_Texture> Function(Pointer<SDL_Renderer> renderer),
      Pointer<SDL_Texture> Function(Pointer<SDL_Renderer> renderer)>('SDL_GetRenderTarget');
  return _SDL_GetRenderTarget(renderer);
}
// extern DECLSPEC int SDLCALL SDL_RenderSetLogicalSize(SDL_Renderer * renderer, int w, int h)
int SDL_RenderSetLogicalSize(Pointer<SDL_Renderer> renderer, int w, int h) {
  final _SDL_RenderSetLogicalSize = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Int32 w, Int32 h),
      int Function(Pointer<SDL_Renderer> renderer, int w, int h)>('SDL_RenderSetLogicalSize');
  return _SDL_RenderSetLogicalSize(renderer, w, h);
}
// extern DECLSPEC void SDLCALL SDL_RenderGetLogicalSize(SDL_Renderer * renderer, int *w, int *h)
void SDL_RenderGetLogicalSize(Pointer<SDL_Renderer> renderer, Pointer<Int32> w, Pointer<Int32> h) {
  final _SDL_RenderGetLogicalSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer> renderer, Pointer<Int32> w, Pointer<Int32> h),
      void Function(Pointer<SDL_Renderer> renderer, Pointer<Int32> w, Pointer<Int32> h)>('SDL_RenderGetLogicalSize');
  return _SDL_RenderGetLogicalSize(renderer, w, h);
}
// extern DECLSPEC int SDLCALL SDL_RenderSetViewport(SDL_Renderer * renderer, const SDL_Rect * rect)
int SDL_RenderSetViewport(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect) {
  final _SDL_RenderSetViewport = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect)>('SDL_RenderSetViewport');
  return _SDL_RenderSetViewport(renderer, rect);
}
// extern DECLSPEC void SDLCALL SDL_RenderGetViewport(SDL_Renderer * renderer, SDL_Rect * rect)
void SDL_RenderGetViewport(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect) {
  final _SDL_RenderGetViewport = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect),
      void Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect)>('SDL_RenderGetViewport');
  return _SDL_RenderGetViewport(renderer, rect);
}
// extern DECLSPEC int SDLCALL SDL_RenderSetClipRect(SDL_Renderer * renderer, const SDL_Rect * rect)
int SDL_RenderSetClipRect(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect) {
  final _SDL_RenderSetClipRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect)>('SDL_RenderSetClipRect');
  return _SDL_RenderSetClipRect(renderer, rect);
}
// extern DECLSPEC void SDLCALL SDL_RenderGetClipRect(SDL_Renderer * renderer, SDL_Rect * rect)
void SDL_RenderGetClipRect(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect) {
  final _SDL_RenderGetClipRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect),
      void Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect)>('SDL_RenderGetClipRect');
  return _SDL_RenderGetClipRect(renderer, rect);
}
// extern DECLSPEC int SDLCALL SDL_RenderSetScale(SDL_Renderer * renderer, float scaleX, float scaleY)
int SDL_RenderSetScale(Pointer<SDL_Renderer> renderer, double scaleX, double scaleY) {
  final _SDL_RenderSetScale = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Float scaleX, Float scaleY),
      int Function(Pointer<SDL_Renderer> renderer, double scaleX, double scaleY)>('SDL_RenderSetScale');
  return _SDL_RenderSetScale(renderer, scaleX, scaleY);
}
// extern DECLSPEC void SDLCALL SDL_RenderGetScale(SDL_Renderer * renderer, float *scaleX, float *scaleY)
void SDL_RenderGetScale(Pointer<SDL_Renderer> renderer, Pointer<Float> scaleX, Pointer<Float> scaleY) {
  final _SDL_RenderGetScale = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer> renderer, Pointer<Float> scaleX, Pointer<Float> scaleY),
      void Function(Pointer<SDL_Renderer> renderer, Pointer<Float> scaleX, Pointer<Float> scaleY)>('SDL_RenderGetScale');
  return _SDL_RenderGetScale(renderer, scaleX, scaleY);
}
// extern DECLSPEC int SDL_SetRenderDrawColor(SDL_Renderer * renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
int SDL_SetRenderDrawColor(Pointer<SDL_Renderer> renderer, int r, int g, int b, int a) {
  final _SDL_SetRenderDrawColor = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a),
      int Function(Pointer<SDL_Renderer> renderer, int r, int g, int b, int a)>('SDL_SetRenderDrawColor');
  return _SDL_SetRenderDrawColor(renderer, r, g, b, a);
}
// extern DECLSPEC int SDL_GetRenderDrawColor(SDL_Renderer * renderer, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a)
int SDL_GetRenderDrawColor(Pointer<SDL_Renderer> renderer, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b, Pointer<Uint8> a) {
  final _SDL_GetRenderDrawColor = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b, Pointer<Uint8> a),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b, Pointer<Uint8> a)>('SDL_GetRenderDrawColor');
  return _SDL_GetRenderDrawColor(renderer, r, g, b, a);
}
// extern DECLSPEC int SDLCALL SDL_SetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode blendMode)
int SDL_SetRenderDrawBlendMode(Pointer<SDL_Renderer> renderer, int blendMode) {
  final _SDL_SetRenderDrawBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Int32 blendMode),
      int Function(Pointer<SDL_Renderer> renderer, int blendMode)>('SDL_SetRenderDrawBlendMode');
  return _SDL_SetRenderDrawBlendMode(renderer, blendMode);
}
// extern DECLSPEC int SDLCALL SDL_GetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode *blendMode)
int SDL_GetRenderDrawBlendMode(Pointer<SDL_Renderer> renderer, Pointer<Int32> blendMode) {
  final _SDL_GetRenderDrawBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<Int32> blendMode),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<Int32> blendMode)>('SDL_GetRenderDrawBlendMode');
  return _SDL_GetRenderDrawBlendMode(renderer, blendMode);
}
// extern DECLSPEC int SDLCALL SDL_RenderClear(SDL_Renderer * renderer)
int SDL_RenderClear(Pointer<SDL_Renderer> renderer) {
  final _SDL_RenderClear = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer),
      int Function(Pointer<SDL_Renderer> renderer)>('SDL_RenderClear');
  return _SDL_RenderClear(renderer);
}
// extern DECLSPEC int SDLCALL SDL_RenderDrawPoint(SDL_Renderer * renderer, int x, int y)
int SDL_RenderDrawPoint(Pointer<SDL_Renderer> renderer, int x, int y) {
  final _SDL_RenderDrawPoint = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Int32 x, Int32 y),
      int Function(Pointer<SDL_Renderer> renderer, int x, int y)>('SDL_RenderDrawPoint');
  return _SDL_RenderDrawPoint(renderer, x, y);
}
// extern DECLSPEC int SDLCALL SDL_RenderDrawPoints(SDL_Renderer * renderer, const SDL_Point * points, int count)
int SDL_RenderDrawPoints(Pointer<SDL_Renderer> renderer, Pointer<SDL_Point> points, int count) {
  final _SDL_RenderDrawPoints = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Point> points, Int32 count),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Point> points, int count)>('SDL_RenderDrawPoints');
  return _SDL_RenderDrawPoints(renderer, points, count);
}
// extern DECLSPEC int SDLCALL SDL_RenderDrawLine(SDL_Renderer * renderer, int x1, int y1, int x2, int y2)
int SDL_RenderDrawLine(Pointer<SDL_Renderer> renderer, int x1, int y1, int x2, int y2) {
  final _SDL_RenderDrawLine = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Int32 x1, Int32 y1, Int32 x2, Int32 y2),
      int Function(Pointer<SDL_Renderer> renderer, int x1, int y1, int x2, int y2)>('SDL_RenderDrawLine');
  return _SDL_RenderDrawLine(renderer, x1, y1, x2, y2);
}
// extern DECLSPEC int SDLCALL SDL_RenderDrawLines(SDL_Renderer * renderer, const SDL_Point * points, int count)
int SDL_RenderDrawLines(Pointer<SDL_Renderer> renderer, Pointer<SDL_Point> points, int count) {
  final _SDL_RenderDrawLines = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Point> points, Int32 count),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Point> points, int count)>('SDL_RenderDrawLines');
  return _SDL_RenderDrawLines(renderer, points, count);
}
// extern DECLSPEC int SDLCALL SDL_RenderDrawRect(SDL_Renderer * renderer, const SDL_Rect * rect)
int SDL_RenderDrawRect(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect) {
  final _SDL_RenderDrawRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect)>('SDL_RenderDrawRect');
  return _SDL_RenderDrawRect(renderer, rect);
}
// extern DECLSPEC int SDLCALL SDL_RenderDrawRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count)
int SDL_RenderDrawRects(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rects, int count) {
  final _SDL_RenderDrawRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rects, Int32 count),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rects, int count)>('SDL_RenderDrawRects');
  return _SDL_RenderDrawRects(renderer, rects, count);
}
// extern DECLSPEC int SDLCALL SDL_RenderFillRect(SDL_Renderer * renderer, const SDL_Rect * rect)
int SDL_RenderFillRect(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect) {
  final _SDL_RenderFillRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect)>('SDL_RenderFillRect');
  return _SDL_RenderFillRect(renderer, rect);
}
// extern DECLSPEC int SDLCALL SDL_RenderFillRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count)
int SDL_RenderFillRects(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rects, int count) {
  final _SDL_RenderFillRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rects, Int32 count),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rects, int count)>('SDL_RenderFillRects');
  return _SDL_RenderFillRects(renderer, rects, count);
}
// extern DECLSPEC int SDLCALL SDL_RenderCopy(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect)
int SDL_RenderCopy(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture, Pointer<SDL_Rect> srcrect, Pointer<SDL_Rect> dstrect) {
  final _SDL_RenderCopy = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture, Pointer<SDL_Rect> srcrect, Pointer<SDL_Rect> dstrect),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture, Pointer<SDL_Rect> srcrect, Pointer<SDL_Rect> dstrect)>('SDL_RenderCopy');
  return _SDL_RenderCopy(renderer, texture, srcrect, dstrect);
}
// extern DECLSPEC int SDLCALL SDL_RenderCopyEx(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect, const double angle, const SDL_Point *center, const SDL_RendererFlip flip)
int SDL_RenderCopyEx(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture, Pointer<SDL_Rect> srcrect, Pointer<SDL_Rect> dstrect, double angle, Pointer<SDL_Point> center, int flip) {
  final _SDL_RenderCopyEx = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture, Pointer<SDL_Rect> srcrect, Pointer<SDL_Rect> dstrect, Double angle, Pointer<SDL_Point> center, Int32 flip),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Texture> texture, Pointer<SDL_Rect> srcrect, Pointer<SDL_Rect> dstrect, double angle, Pointer<SDL_Point> center, int flip)>('SDL_RenderCopyEx');
  return _SDL_RenderCopyEx(renderer, texture, srcrect, dstrect, angle, center, flip);
}
// extern DECLSPEC int SDLCALL SDL_RenderReadPixels(SDL_Renderer * renderer, const SDL_Rect * rect, Uint32 format, void *pixels, int pitch)
int SDL_RenderReadPixels(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect, int format, Pointer<Void> pixels, int pitch) {
  final _SDL_RenderReadPixels = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect, Uint32 format, Pointer<Void> pixels, Int32 pitch),
      int Function(Pointer<SDL_Renderer> renderer, Pointer<SDL_Rect> rect, int format, Pointer<Void> pixels, int pitch)>('SDL_RenderReadPixels');
  return _SDL_RenderReadPixels(renderer, rect, format, pixels, pitch);
}
// extern DECLSPEC void SDLCALL SDL_RenderPresent(SDL_Renderer * renderer)
void SDL_RenderPresent(Pointer<SDL_Renderer> renderer) {
  final _SDL_RenderPresent = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer> renderer),
      void Function(Pointer<SDL_Renderer> renderer)>('SDL_RenderPresent');
  return _SDL_RenderPresent(renderer);
}
// extern DECLSPEC void SDLCALL SDL_DestroyTexture(SDL_Texture * texture)
void SDL_DestroyTexture(Pointer<SDL_Texture> texture) {
  final _SDL_DestroyTexture = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Texture> texture),
      void Function(Pointer<SDL_Texture> texture)>('SDL_DestroyTexture');
  return _SDL_DestroyTexture(texture);
}
// extern DECLSPEC void SDLCALL SDL_DestroyRenderer(SDL_Renderer * renderer)
void SDL_DestroyRenderer(Pointer<SDL_Renderer> renderer) {
  final _SDL_DestroyRenderer = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Renderer> renderer),
      void Function(Pointer<SDL_Renderer> renderer)>('SDL_DestroyRenderer');
  return _SDL_DestroyRenderer(renderer);
}
// extern DECLSPEC int SDLCALL SDL_GL_BindTexture(SDL_Texture *texture, float *texw, float *texh)
int SDL_GL_BindTexture(Pointer<SDL_Texture> texture, Pointer<Float> texw, Pointer<Float> texh) {
  final _SDL_GL_BindTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture, Pointer<Float> texw, Pointer<Float> texh),
      int Function(Pointer<SDL_Texture> texture, Pointer<Float> texw, Pointer<Float> texh)>('SDL_GL_BindTexture');
  return _SDL_GL_BindTexture(texture, texw, texh);
}
// extern DECLSPEC int SDLCALL SDL_GL_UnbindTexture(SDL_Texture *texture)
int SDL_GL_UnbindTexture(Pointer<SDL_Texture> texture) {
  final _SDL_GL_UnbindTexture = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Texture> texture),
      int Function(Pointer<SDL_Texture> texture)>('SDL_GL_UnbindTexture');
  return _SDL_GL_UnbindTexture(texture);
}
// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFile(const char *file, const char *mode)
Pointer<SDL_RWops> SDL_RWFromFile(String file, String mode) {
  final _SDL_RWFromFile = _SDL2.lookupFunction<
      Pointer<SDL_RWops> Function(Pointer<Utf8> file, Pointer<Utf8> mode),
      Pointer<SDL_RWops> Function(Pointer<Utf8> file, Pointer<Utf8> mode)>('SDL_RWFromFile');
  final _filePointer = file.toNativeUtf8();
  final _modePointer = mode.toNativeUtf8();
  final _result = _SDL_RWFromFile(_filePointer, _modePointer);
  calloc.free(_filePointer);
  calloc.free(_modePointer);
  return _result;
}
// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFP(FILE * fp, SDL_bool autoclose)
Pointer<SDL_RWops> SDL_RWFromFP(Pointer<IntPtr> fp, int autoclose) {
  final _SDL_RWFromFP = _SDL2.lookupFunction<
      Pointer<SDL_RWops> Function(Pointer<IntPtr> fp, Int32 autoclose),
      Pointer<SDL_RWops> Function(Pointer<IntPtr> fp, int autoclose)>('SDL_RWFromFP');
  return _SDL_RWFromFP(fp, autoclose);
}
// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromMem(void *mem, int size)
Pointer<SDL_RWops> SDL_RWFromMem(Pointer<Void> mem, int size) {
  final _SDL_RWFromMem = _SDL2.lookupFunction<
      Pointer<SDL_RWops> Function(Pointer<Void> mem, Int32 size),
      Pointer<SDL_RWops> Function(Pointer<Void> mem, int size)>('SDL_RWFromMem');
  return _SDL_RWFromMem(mem, size);
}
// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromConstMem(const void *mem, int size)
Pointer<SDL_RWops> SDL_RWFromConstMem(Pointer<Void> mem, int size) {
  final _SDL_RWFromConstMem = _SDL2.lookupFunction<
      Pointer<SDL_RWops> Function(Pointer<Void> mem, Int32 size),
      Pointer<SDL_RWops> Function(Pointer<Void> mem, int size)>('SDL_RWFromConstMem');
  return _SDL_RWFromConstMem(mem, size);
}
// extern DECLSPEC SDL_RWops *SDLCALL SDL_AllocRW(void)
Pointer<SDL_RWops> SDL_AllocRW() {
  final _SDL_AllocRW = _SDL2.lookupFunction<
      Pointer<SDL_RWops> Function(),
      Pointer<SDL_RWops> Function()>('SDL_AllocRW');
  return _SDL_AllocRW();
}
// extern DECLSPEC void SDLCALL SDL_FreeRW(SDL_RWops * area)
void SDL_FreeRW(Pointer<SDL_RWops> area) {
  final _SDL_FreeRW = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_RWops> area),
      void Function(Pointer<SDL_RWops> area)>('SDL_FreeRW');
  return _SDL_FreeRW(area);
}
// extern DECLSPEC Uint8 SDLCALL SDL_ReadU8(SDL_RWops * src)
int SDL_ReadU8(Pointer<SDL_RWops> src) {
  final _SDL_ReadU8 = _SDL2.lookupFunction<
      Uint8 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadU8');
  return _SDL_ReadU8(src);
}
// extern DECLSPEC Uint16 SDLCALL SDL_ReadLE16(SDL_RWops * src)
int SDL_ReadLE16(Pointer<SDL_RWops> src) {
  final _SDL_ReadLE16 = _SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadLE16');
  return _SDL_ReadLE16(src);
}
// extern DECLSPEC Uint16 SDLCALL SDL_ReadBE16(SDL_RWops * src)
int SDL_ReadBE16(Pointer<SDL_RWops> src) {
  final _SDL_ReadBE16 = _SDL2.lookupFunction<
      Uint16 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadBE16');
  return _SDL_ReadBE16(src);
}
// extern DECLSPEC Uint32 SDLCALL SDL_ReadLE32(SDL_RWops * src)
int SDL_ReadLE32(Pointer<SDL_RWops> src) {
  final _SDL_ReadLE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadLE32');
  return _SDL_ReadLE32(src);
}
// extern DECLSPEC Uint32 SDLCALL SDL_ReadBE32(SDL_RWops * src)
int SDL_ReadBE32(Pointer<SDL_RWops> src) {
  final _SDL_ReadBE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadBE32');
  return _SDL_ReadBE32(src);
}
// extern DECLSPEC Uint64 SDLCALL SDL_ReadLE64(SDL_RWops * src)
int SDL_ReadLE64(Pointer<SDL_RWops> src) {
  final _SDL_ReadLE64 = _SDL2.lookupFunction<
      Uint64 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadLE64');
  return _SDL_ReadLE64(src);
}
// extern DECLSPEC Uint64 SDLCALL SDL_ReadBE64(SDL_RWops * src)
int SDL_ReadBE64(Pointer<SDL_RWops> src) {
  final _SDL_ReadBE64 = _SDL2.lookupFunction<
      Uint64 Function(Pointer<SDL_RWops> src),
      int Function(Pointer<SDL_RWops> src)>('SDL_ReadBE64');
  return _SDL_ReadBE64(src);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteU8(SDL_RWops * dst, Uint8 value)
int SDL_WriteU8(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteU8 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint8 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteU8');
  return _SDL_WriteU8(dst, value);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteLE16(SDL_RWops * dst, Uint16 value)
int SDL_WriteLE16(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteLE16 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint16 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteLE16');
  return _SDL_WriteLE16(dst, value);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteBE16(SDL_RWops * dst, Uint16 value)
int SDL_WriteBE16(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteBE16 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint16 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteBE16');
  return _SDL_WriteBE16(dst, value);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteLE32(SDL_RWops * dst, Uint32 value)
int SDL_WriteLE32(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteLE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint32 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteLE32');
  return _SDL_WriteLE32(dst, value);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteBE32(SDL_RWops * dst, Uint32 value)
int SDL_WriteBE32(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteBE32 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint32 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteBE32');
  return _SDL_WriteBE32(dst, value);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteLE64(SDL_RWops * dst, Uint64 value)
int SDL_WriteLE64(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteLE64 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint64 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteLE64');
  return _SDL_WriteLE64(dst, value);
}
// extern DECLSPEC size_t SDLCALL SDL_WriteBE64(SDL_RWops * dst, Uint64 value)
int SDL_WriteBE64(Pointer<SDL_RWops> dst, int value) {
  final _SDL_WriteBE64 = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_RWops> dst, Uint64 value),
      int Function(Pointer<SDL_RWops> dst, int value)>('SDL_WriteBE64');
  return _SDL_WriteBE64(dst, value);
}
// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateShapedWindow(const char *title,unsigned int x,unsigned int y,unsigned int w,unsigned int h,Uint32 flags)
Pointer<SDL_Window> SDL_CreateShapedWindow(String title, int x, int y, int w, int h, int flags) {
  final _SDL_CreateShapedWindow = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(Pointer<Utf8> title, Uint32 x, Uint32 y, Uint32 w, Uint32 h, Uint32 flags),
      Pointer<SDL_Window> Function(Pointer<Utf8> title, int x, int y, int w, int h, int flags)>('SDL_CreateShapedWindow');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_CreateShapedWindow(_titlePointer, x, y, w, h, flags);
  calloc.free(_titlePointer);
  return _result;
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IsShapedWindow(const SDL_Window *window)
int SDL_IsShapedWindow(Pointer<SDL_Window> window) {
  final _SDL_IsShapedWindow = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_IsShapedWindow');
  return _SDL_IsShapedWindow(window);
}
// extern DECLSPEC int SDLCALL SDL_SetWindowShape(SDL_Window *window,SDL_Surface *shape,SDL_WindowShapeMode *shape_mode)
int SDL_SetWindowShape(Pointer<SDL_Window> window, Pointer<SDL_Surface> shape, Pointer<SDL_WindowShapeMode> shape_mode) {
  final _SDL_SetWindowShape = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<SDL_Surface> shape, Pointer<SDL_WindowShapeMode> shape_mode),
      int Function(Pointer<SDL_Window> window, Pointer<SDL_Surface> shape, Pointer<SDL_WindowShapeMode> shape_mode)>('SDL_SetWindowShape');
  return _SDL_SetWindowShape(window, shape, shape_mode);
}
// extern DECLSPEC int SDLCALL SDL_GetShapedWindowMode(SDL_Window *window,SDL_WindowShapeMode *shape_mode)
int SDL_GetShapedWindowMode(Pointer<SDL_Window> window, Pointer<SDL_WindowShapeMode> shape_mode) {
  final _SDL_GetShapedWindowMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<SDL_WindowShapeMode> shape_mode),
      int Function(Pointer<SDL_Window> window, Pointer<SDL_WindowShapeMode> shape_mode)>('SDL_GetShapedWindowMode');
  return _SDL_GetShapedWindowMode(window, shape_mode);
}
// extern DECLSPEC void *SDLCALL SDL_malloc(size_t size)
Pointer<Void> SDL_malloc(int size) {
  final _SDL_malloc = _SDL2.lookupFunction<
      Pointer<Void> Function(Uint32 size),
      Pointer<Void> Function(int size)>('SDL_malloc');
  return _SDL_malloc(size);
}
// extern DECLSPEC void *SDLCALL SDL_calloc(size_t nmemb, size_t size)
Pointer<Void> SDL_calloc(int nmemb, int size) {
  final _SDL_calloc = _SDL2.lookupFunction<
      Pointer<Void> Function(Uint32 nmemb, Uint32 size),
      Pointer<Void> Function(int nmemb, int size)>('SDL_calloc');
  return _SDL_calloc(nmemb, size);
}
// extern DECLSPEC void *SDLCALL SDL_realloc(void *mem, size_t size)
Pointer<Void> SDL_realloc(Pointer<Void> mem, int size) {
  final _SDL_realloc = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Void> mem, Uint32 size),
      Pointer<Void> Function(Pointer<Void> mem, int size)>('SDL_realloc');
  return _SDL_realloc(mem, size);
}
// extern DECLSPEC void SDLCALL SDL_free(void *mem)
void SDL_free(Pointer<Void> mem) {
  final _SDL_free = _SDL2.lookupFunction<
      Void Function(Pointer<Void> mem),
      void Function(Pointer<Void> mem)>('SDL_free');
  return _SDL_free(mem);
}
// extern DECLSPEC char *SDLCALL SDL_getenv(const char *name)
Pointer<Int8> SDL_getenv(String name) {
  final _SDL_getenv = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Utf8> name),
      Pointer<Int8> Function(Pointer<Utf8> name)>('SDL_getenv');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_getenv(_namePointer);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_setenv(const char *name, const char *value, int overwrite)
int SDL_setenv(String name, String value, int overwrite) {
  final _SDL_setenv = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> name, Pointer<Utf8> value, Int32 overwrite),
      int Function(Pointer<Utf8> name, Pointer<Utf8> value, int overwrite)>('SDL_setenv');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_setenv(_namePointer, _valuePointer, overwrite);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_qsort(void *base, size_t nmemb, size_t size, int (*compare) (const void *, const void *))
void SDL_qsort(Pointer<Void> base, int nmemb, int size, Pointer<Void> compare) {
  final _SDL_qsort = _SDL2.lookupFunction<
      Void Function(Pointer<Void> base, Uint32 nmemb, Uint32 size, Pointer<Void> compare),
      void Function(Pointer<Void> base, int nmemb, int size, Pointer<Void> compare)>('SDL_qsort');
  return _SDL_qsort(base, nmemb, size, compare);
}
// extern DECLSPEC int SDLCALL SDL_abs(int x)
int SDL_abs(int x) {
  final _SDL_abs = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_abs');
  return _SDL_abs(x);
}
// extern DECLSPEC int SDLCALL SDL_isdigit(int x)
int SDL_isdigit(int x) {
  final _SDL_isdigit = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isdigit');
  return _SDL_isdigit(x);
}
// extern DECLSPEC int SDLCALL SDL_isspace(int x)
int SDL_isspace(int x) {
  final _SDL_isspace = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isspace');
  return _SDL_isspace(x);
}
// extern DECLSPEC int SDLCALL SDL_toupper(int x)
int SDL_toupper(int x) {
  final _SDL_toupper = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_toupper');
  return _SDL_toupper(x);
}
// extern DECLSPEC int SDLCALL SDL_tolower(int x)
int SDL_tolower(int x) {
  final _SDL_tolower = _SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_tolower');
  return _SDL_tolower(x);
}
// extern DECLSPEC void *SDLCALL SDL_memset(void *dst, int c, size_t len)
Pointer<Void> SDL_memset(Pointer<Void> dst, int c, int len) {
  final _SDL_memset = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Void> dst, Int32 c, Uint32 len),
      Pointer<Void> Function(Pointer<Void> dst, int c, int len)>('SDL_memset');
  return _SDL_memset(dst, c, len);
}
// extern DECLSPEC void *SDLCALL SDL_memcpy(void *dst, const void *src, size_t len)
Pointer<Void> SDL_memcpy(Pointer<Void> dst, Pointer<Void> src, int len) {
  final _SDL_memcpy = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Void> dst, Pointer<Void> src, Uint32 len),
      Pointer<Void> Function(Pointer<Void> dst, Pointer<Void> src, int len)>('SDL_memcpy');
  return _SDL_memcpy(dst, src, len);
}
// extern DECLSPEC void *SDLCALL SDL_memmove(void *dst, const void *src, size_t len)
Pointer<Void> SDL_memmove(Pointer<Void> dst, Pointer<Void> src, int len) {
  final _SDL_memmove = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Void> dst, Pointer<Void> src, Uint32 len),
      Pointer<Void> Function(Pointer<Void> dst, Pointer<Void> src, int len)>('SDL_memmove');
  return _SDL_memmove(dst, src, len);
}
// extern DECLSPEC int SDLCALL SDL_memcmp(const void *s1, const void *s2, size_t len)
int SDL_memcmp(Pointer<Void> s1, Pointer<Void> s2, int len) {
  final _SDL_memcmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Void> s1, Pointer<Void> s2, Uint32 len),
      int Function(Pointer<Void> s1, Pointer<Void> s2, int len)>('SDL_memcmp');
  return _SDL_memcmp(s1, s2, len);
}
// extern DECLSPEC size_t SDLCALL SDL_wcslen(const wchar_t *wstr)
int SDL_wcslen(Pointer<Int16> wstr) {
  final _SDL_wcslen = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16> wstr),
      int Function(Pointer<Int16> wstr)>('SDL_wcslen');
  return _SDL_wcslen(wstr);
}
// extern DECLSPEC size_t SDLCALL SDL_wcslcpy(wchar_t *dst, const wchar_t *src, size_t maxlen)
int SDL_wcslcpy(Pointer<Int16> dst, Pointer<Int16> src, int maxlen) {
  final _SDL_wcslcpy = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16> dst, Pointer<Int16> src, Uint32 maxlen),
      int Function(Pointer<Int16> dst, Pointer<Int16> src, int maxlen)>('SDL_wcslcpy');
  return _SDL_wcslcpy(dst, src, maxlen);
}
// extern DECLSPEC size_t SDLCALL SDL_wcslcat(wchar_t *dst, const wchar_t *src, size_t maxlen)
int SDL_wcslcat(Pointer<Int16> dst, Pointer<Int16> src, int maxlen) {
  final _SDL_wcslcat = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16> dst, Pointer<Int16> src, Uint32 maxlen),
      int Function(Pointer<Int16> dst, Pointer<Int16> src, int maxlen)>('SDL_wcslcat');
  return _SDL_wcslcat(dst, src, maxlen);
}
// extern DECLSPEC size_t SDLCALL SDL_strlen(const char *str)
int SDL_strlen(String str) {
  final _SDL_strlen = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8> str),
      int Function(Pointer<Utf8> str)>('SDL_strlen');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strlen(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC size_t SDLCALL SDL_strlcpy(char *dst, const char *src, size_t maxlen)
int SDL_strlcpy(Pointer<Int8> dst, String src, int maxlen) {
  final _SDL_strlcpy = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8> dst, Pointer<Utf8> src, Uint32 maxlen),
      int Function(Pointer<Int8> dst, Pointer<Utf8> src, int maxlen)>('SDL_strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcpy(dst, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}
// extern DECLSPEC size_t SDLCALL SDL_utf8strlcpy(char *dst, const char *src, size_t dst_bytes)
int SDL_utf8strlcpy(Pointer<Int8> dst, String src, int dst_bytes) {
  final _SDL_utf8strlcpy = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8> dst, Pointer<Utf8> src, Uint32 dst_bytes),
      int Function(Pointer<Int8> dst, Pointer<Utf8> src, int dst_bytes)>('SDL_utf8strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_utf8strlcpy(dst, _srcPointer, dst_bytes);
  calloc.free(_srcPointer);
  return _result;
}
// extern DECLSPEC size_t SDLCALL SDL_strlcat(char *dst, const char *src, size_t maxlen)
int SDL_strlcat(Pointer<Int8> dst, String src, int maxlen) {
  final _SDL_strlcat = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8> dst, Pointer<Utf8> src, Uint32 maxlen),
      int Function(Pointer<Int8> dst, Pointer<Utf8> src, int maxlen)>('SDL_strlcat');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcat(dst, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}
// extern DECLSPEC char *SDLCALL SDL_strdup(const char *str)
Pointer<Int8> SDL_strdup(String str) {
  final _SDL_strdup = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Utf8> str),
      Pointer<Int8> Function(Pointer<Utf8> str)>('SDL_strdup');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strdup(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC char *SDLCALL SDL_strrev(char *str)
Pointer<Int8> SDL_strrev(Pointer<Int8> str) {
  final _SDL_strrev = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Int8> str),
      Pointer<Int8> Function(Pointer<Int8> str)>('SDL_strrev');
  return _SDL_strrev(str);
}
// extern DECLSPEC char *SDLCALL SDL_strupr(char *str)
Pointer<Int8> SDL_strupr(Pointer<Int8> str) {
  final _SDL_strupr = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Int8> str),
      Pointer<Int8> Function(Pointer<Int8> str)>('SDL_strupr');
  return _SDL_strupr(str);
}
// extern DECLSPEC char *SDLCALL SDL_strlwr(char *str)
Pointer<Int8> SDL_strlwr(Pointer<Int8> str) {
  final _SDL_strlwr = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Int8> str),
      Pointer<Int8> Function(Pointer<Int8> str)>('SDL_strlwr');
  return _SDL_strlwr(str);
}
// extern DECLSPEC char *SDLCALL SDL_strchr(const char *str, int c)
Pointer<Int8> SDL_strchr(String str, int c) {
  final _SDL_strchr = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Utf8> str, Int32 c),
      Pointer<Int8> Function(Pointer<Utf8> str, int c)>('SDL_strchr');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strchr(_strPointer, c);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC char *SDLCALL SDL_strrchr(const char *str, int c)
Pointer<Int8> SDL_strrchr(String str, int c) {
  final _SDL_strrchr = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Utf8> str, Int32 c),
      Pointer<Int8> Function(Pointer<Utf8> str, int c)>('SDL_strrchr');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strrchr(_strPointer, c);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC char *SDLCALL SDL_strstr(const char *haystack, const char *needle)
Pointer<Int8> SDL_strstr(String haystack, String needle) {
  final _SDL_strstr = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Utf8> haystack, Pointer<Utf8> needle),
      Pointer<Int8> Function(Pointer<Utf8> haystack, Pointer<Utf8> needle)>('SDL_strstr');
  final _haystackPointer = haystack.toNativeUtf8();
  final _needlePointer = needle.toNativeUtf8();
  final _result = _SDL_strstr(_haystackPointer, _needlePointer);
  calloc.free(_haystackPointer);
  calloc.free(_needlePointer);
  return _result;
}
// extern DECLSPEC char *SDLCALL SDL_itoa(int value, char *str, int radix)
Pointer<Int8> SDL_itoa(int value, Pointer<Int8> str, int radix) {
  final _SDL_itoa = _SDL2.lookupFunction<
      Pointer<Int8> Function(Int32 value, Pointer<Int8> str, Int32 radix),
      Pointer<Int8> Function(int value, Pointer<Int8> str, int radix)>('SDL_itoa');
  return _SDL_itoa(value, str, radix);
}
// extern DECLSPEC char *SDLCALL SDL_uitoa(unsigned int value, char *str, int radix)
Pointer<Int8> SDL_uitoa(int value, Pointer<Int8> str, int radix) {
  final _SDL_uitoa = _SDL2.lookupFunction<
      Pointer<Int8> Function(Uint32 value, Pointer<Int8> str, Int32 radix),
      Pointer<Int8> Function(int value, Pointer<Int8> str, int radix)>('SDL_uitoa');
  return _SDL_uitoa(value, str, radix);
}
// extern DECLSPEC char *SDLCALL SDL_ltoa(long value, char *str, int radix)
Pointer<Int8> SDL_ltoa(int value, Pointer<Int8> str, int radix) {
  final _SDL_ltoa = _SDL2.lookupFunction<
      Pointer<Int8> Function(Int32 value, Pointer<Int8> str, Int32 radix),
      Pointer<Int8> Function(int value, Pointer<Int8> str, int radix)>('SDL_ltoa');
  return _SDL_ltoa(value, str, radix);
}
// extern DECLSPEC char *SDLCALL SDL_ultoa(unsigned long value, char *str, int radix)
Pointer<Int8> SDL_ultoa(int value, Pointer<Int8> str, int radix) {
  final _SDL_ultoa = _SDL2.lookupFunction<
      Pointer<Int8> Function(Uint32 value, Pointer<Int8> str, Int32 radix),
      Pointer<Int8> Function(int value, Pointer<Int8> str, int radix)>('SDL_ultoa');
  return _SDL_ultoa(value, str, radix);
}
// extern DECLSPEC char *SDLCALL SDL_lltoa(Sint64 value, char *str, int radix)
Pointer<Int8> SDL_lltoa(int value, Pointer<Int8> str, int radix) {
  final _SDL_lltoa = _SDL2.lookupFunction<
      Pointer<Int8> Function(Int64 value, Pointer<Int8> str, Int32 radix),
      Pointer<Int8> Function(int value, Pointer<Int8> str, int radix)>('SDL_lltoa');
  return _SDL_lltoa(value, str, radix);
}
// extern DECLSPEC char *SDLCALL SDL_ulltoa(Uint64 value, char *str, int radix)
Pointer<Int8> SDL_ulltoa(int value, Pointer<Int8> str, int radix) {
  final _SDL_ulltoa = _SDL2.lookupFunction<
      Pointer<Int8> Function(Uint64 value, Pointer<Int8> str, Int32 radix),
      Pointer<Int8> Function(int value, Pointer<Int8> str, int radix)>('SDL_ulltoa');
  return _SDL_ulltoa(value, str, radix);
}
// extern DECLSPEC int SDLCALL SDL_atoi(const char *str)
int SDL_atoi(String str) {
  final _SDL_atoi = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> str),
      int Function(Pointer<Utf8> str)>('SDL_atoi');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_atoi(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC double SDLCALL SDL_atof(const char *str)
double SDL_atof(String str) {
  final _SDL_atof = _SDL2.lookupFunction<
      Double Function(Pointer<Utf8> str),
      double Function(Pointer<Utf8> str)>('SDL_atof');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_atof(_strPointer);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC long SDLCALL SDL_strtol(const char *str, char **endp, int base)
int SDL_strtol(String str, Pointer<Pointer<Int8>> endp, int base) {
  final _SDL_strtol = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, Int32 base),
      int Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, int base)>('SDL_strtol');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtol(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC unsigned long SDLCALL SDL_strtoul(const char *str, char **endp, int base)
int SDL_strtoul(String str, Pointer<Pointer<Int8>> endp, int base) {
  final _SDL_strtoul = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, Int32 base),
      int Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, int base)>('SDL_strtoul');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoul(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC Sint64 SDLCALL SDL_strtoll(const char *str, char **endp, int base)
int SDL_strtoll(String str, Pointer<Pointer<Int8>> endp, int base) {
  final _SDL_strtoll = _SDL2.lookupFunction<
      Int64 Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, Int32 base),
      int Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, int base)>('SDL_strtoll');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoll(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC Uint64 SDLCALL SDL_strtoull(const char *str, char **endp, int base)
int SDL_strtoull(String str, Pointer<Pointer<Int8>> endp, int base) {
  final _SDL_strtoull = _SDL2.lookupFunction<
      Uint64 Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, Int32 base),
      int Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp, int base)>('SDL_strtoull');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoull(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC double SDLCALL SDL_strtod(const char *str, char **endp)
double SDL_strtod(String str, Pointer<Pointer<Int8>> endp) {
  final _SDL_strtod = _SDL2.lookupFunction<
      Double Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp),
      double Function(Pointer<Utf8> str, Pointer<Pointer<Int8>> endp)>('SDL_strtod');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtod(_strPointer, endp);
  calloc.free(_strPointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_strcmp(const char *str1, const char *str2)
int SDL_strcmp(String str1, String str2) {
  final _SDL_strcmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> str1, Pointer<Utf8> str2),
      int Function(Pointer<Utf8> str1, Pointer<Utf8> str2)>('SDL_strcmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strcmp(_str1Pointer, _str2Pointer);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_strncmp(const char *str1, const char *str2, size_t maxlen)
int SDL_strncmp(String str1, String str2, int maxlen) {
  final _SDL_strncmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> str1, Pointer<Utf8> str2, Uint32 maxlen),
      int Function(Pointer<Utf8> str1, Pointer<Utf8> str2, int maxlen)>('SDL_strncmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strncmp(_str1Pointer, _str2Pointer, maxlen);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_strcasecmp(const char *str1, const char *str2)
int SDL_strcasecmp(String str1, String str2) {
  final _SDL_strcasecmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> str1, Pointer<Utf8> str2),
      int Function(Pointer<Utf8> str1, Pointer<Utf8> str2)>('SDL_strcasecmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strcasecmp(_str1Pointer, _str2Pointer);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_strncasecmp(const char *str1, const char *str2, size_t len)
int SDL_strncasecmp(String str1, String str2, int len) {
  final _SDL_strncasecmp = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> str1, Pointer<Utf8> str2, Uint32 len),
      int Function(Pointer<Utf8> str1, Pointer<Utf8> str2, int len)>('SDL_strncasecmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strncasecmp(_str1Pointer, _str2Pointer, len);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_sscanf(const char *text, const char *fmt, ...)
int SDL_sscanf(String text, String fmt, Pointer<Void> arg2) {
  final _SDL_sscanf = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> text, Pointer<Utf8> fmt, Pointer<Void> arg2),
      int Function(Pointer<Utf8> text, Pointer<Utf8> fmt, Pointer<Void> arg2)>('SDL_sscanf');
  final _textPointer = text.toNativeUtf8();
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_sscanf(_textPointer, _fmtPointer, arg2);
  calloc.free(_textPointer);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_snprintf(char *text, size_t maxlen, const char *fmt, ...)
int SDL_snprintf(Pointer<Int8> text, int maxlen, String fmt, Pointer<Void> arg3) {
  final _SDL_snprintf = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int8> text, Uint32 maxlen, Pointer<Utf8> fmt, Pointer<Void> arg3),
      int Function(Pointer<Int8> text, int maxlen, Pointer<Utf8> fmt, Pointer<Void> arg3)>('SDL_snprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_snprintf(text, maxlen, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_vsnprintf(char *text, size_t maxlen, const char *fmt, va_list ap)
int SDL_vsnprintf(Pointer<Int8> text, int maxlen, String fmt, Pointer<Void> ap) {
  final _SDL_vsnprintf = _SDL2.lookupFunction<
      Int32 Function(Pointer<Int8> text, Uint32 maxlen, Pointer<Utf8> fmt, Pointer<Void> ap),
      int Function(Pointer<Int8> text, int maxlen, Pointer<Utf8> fmt, Pointer<Void> ap)>('SDL_vsnprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_vsnprintf(text, maxlen, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}
// extern DECLSPEC double SDLCALL SDL_atan(double x)
double SDL_atan(double x) {
  final _SDL_atan = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_atan');
  return _SDL_atan(x);
}
// extern DECLSPEC double SDLCALL SDL_atan2(double x, double y)
double SDL_atan2(double x, double y) {
  final _SDL_atan2 = _SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_atan2');
  return _SDL_atan2(x, y);
}
// extern DECLSPEC double SDLCALL SDL_ceil(double x)
double SDL_ceil(double x) {
  final _SDL_ceil = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_ceil');
  return _SDL_ceil(x);
}
// extern DECLSPEC double SDLCALL SDL_copysign(double x, double y)
double SDL_copysign(double x, double y) {
  final _SDL_copysign = _SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_copysign');
  return _SDL_copysign(x, y);
}
// extern DECLSPEC double SDLCALL SDL_cos(double x)
double SDL_cos(double x) {
  final _SDL_cos = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_cos');
  return _SDL_cos(x);
}
// extern DECLSPEC float SDLCALL SDL_cosf(float x)
double SDL_cosf(double x) {
  final _SDL_cosf = _SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_cosf');
  return _SDL_cosf(x);
}
// extern DECLSPEC double SDLCALL SDL_fabs(double x)
double SDL_fabs(double x) {
  final _SDL_fabs = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_fabs');
  return _SDL_fabs(x);
}
// extern DECLSPEC double SDLCALL SDL_floor(double x)
double SDL_floor(double x) {
  final _SDL_floor = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_floor');
  return _SDL_floor(x);
}
// extern DECLSPEC double SDLCALL SDL_log(double x)
double SDL_log(double x) {
  final _SDL_log = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_log');
  return _SDL_log(x);
}
// extern DECLSPEC double SDLCALL SDL_pow(double x, double y)
double SDL_pow(double x, double y) {
  final _SDL_pow = _SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_pow');
  return _SDL_pow(x, y);
}
// extern DECLSPEC double SDLCALL SDL_scalbn(double x, int n)
double SDL_scalbn(double x, int n) {
  final _SDL_scalbn = _SDL2.lookupFunction<
      Double Function(Double x, Int32 n),
      double Function(double x, int n)>('SDL_scalbn');
  return _SDL_scalbn(x, n);
}
// extern DECLSPEC double SDLCALL SDL_sin(double x)
double SDL_sin(double x) {
  final _SDL_sin = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_sin');
  return _SDL_sin(x);
}
// extern DECLSPEC float SDLCALL SDL_sinf(float x)
double SDL_sinf(double x) {
  final _SDL_sinf = _SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_sinf');
  return _SDL_sinf(x);
}
// extern DECLSPEC double SDLCALL SDL_sqrt(double x)
double SDL_sqrt(double x) {
  final _SDL_sqrt = _SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_sqrt');
  return _SDL_sqrt(x);
}
// extern DECLSPEC SDL_iconv_t SDLCALL SDL_iconv_open(const char *tocode, const char *fromcode)
Pointer<Void> SDL_iconv_open(String tocode, String fromcode) {
  final _SDL_iconv_open = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Utf8> tocode, Pointer<Utf8> fromcode),
      Pointer<Void> Function(Pointer<Utf8> tocode, Pointer<Utf8> fromcode)>('SDL_iconv_open');
  final _tocodePointer = tocode.toNativeUtf8();
  final _fromcodePointer = fromcode.toNativeUtf8();
  final _result = _SDL_iconv_open(_tocodePointer, _fromcodePointer);
  calloc.free(_tocodePointer);
  calloc.free(_fromcodePointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_iconv_close(SDL_iconv_t cd)
int SDL_iconv_close(Pointer<Void> cd) {
  final _SDL_iconv_close = _SDL2.lookupFunction<
      Int32 Function(Pointer<Void> cd),
      int Function(Pointer<Void> cd)>('SDL_iconv_close');
  return _SDL_iconv_close(cd);
}
// extern DECLSPEC size_t SDLCALL SDL_iconv(SDL_iconv_t cd, const char **inbuf, size_t * inbytesleft, char **outbuf, size_t * outbytesleft)
int SDL_iconv(Pointer<Void> cd, Pointer<Pointer<Int8>> inbuf, Pointer<Uint32> inbytesleft, Pointer<Pointer<Int8>> outbuf, Pointer<Uint32> outbytesleft) {
  final _SDL_iconv = _SDL2.lookupFunction<
      Uint32 Function(Pointer<Void> cd, Pointer<Pointer<Int8>> inbuf, Pointer<Uint32> inbytesleft, Pointer<Pointer<Int8>> outbuf, Pointer<Uint32> outbytesleft),
      int Function(Pointer<Void> cd, Pointer<Pointer<Int8>> inbuf, Pointer<Uint32> inbytesleft, Pointer<Pointer<Int8>> outbuf, Pointer<Uint32> outbytesleft)>('SDL_iconv');
  return _SDL_iconv(cd, inbuf, inbytesleft, outbuf, outbytesleft);
}
// extern DECLSPEC char *SDLCALL SDL_iconv_string(const char *tocode, const char *fromcode, const char *inbuf, size_t inbytesleft)
Pointer<Int8> SDL_iconv_string(String tocode, String fromcode, String inbuf, int inbytesleft) {
  final _SDL_iconv_string = _SDL2.lookupFunction<
      Pointer<Int8> Function(Pointer<Utf8> tocode, Pointer<Utf8> fromcode, Pointer<Utf8> inbuf, Uint32 inbytesleft),
      Pointer<Int8> Function(Pointer<Utf8> tocode, Pointer<Utf8> fromcode, Pointer<Utf8> inbuf, int inbytesleft)>('SDL_iconv_string');
  final _tocodePointer = tocode.toNativeUtf8();
  final _fromcodePointer = fromcode.toNativeUtf8();
  final _inbufPointer = inbuf.toNativeUtf8();
  final _result = _SDL_iconv_string(_tocodePointer, _fromcodePointer, _inbufPointer, inbytesleft);
  calloc.free(_tocodePointer);
  calloc.free(_fromcodePointer);
  calloc.free(_inbufPointer);
  return _result;
}
// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurface (Uint32 flags, int width, int height, int depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
Pointer<SDL_Surface> SDL_CreateRGBSurface(int flags, int width, int height, int depth, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurface = _SDL2.lookupFunction<
      Pointer<SDL_Surface> Function(Uint32 flags, Int32 width, Int32 height, Int32 depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface> Function(int flags, int width, int height, int depth, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurface');
  return _SDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask);
}
// extern DECLSPEC SDL_Surface *SDLCALL SDL_CreateRGBSurfaceFrom(void *pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
Pointer<SDL_Surface> SDL_CreateRGBSurfaceFrom(Pointer<Void> pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask) {
  final _SDL_CreateRGBSurfaceFrom = _SDL2.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<Void> pixels, Int32 width, Int32 height, Int32 depth, Int32 pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask),
      Pointer<SDL_Surface> Function(Pointer<Void> pixels, int width, int height, int depth, int pitch, int Rmask, int Gmask, int Bmask, int Amask)>('SDL_CreateRGBSurfaceFrom');
  return _SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask);
}
// extern DECLSPEC void SDLCALL SDL_FreeSurface(SDL_Surface * surface)
void SDL_FreeSurface(Pointer<SDL_Surface> surface) {
  final _SDL_FreeSurface = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface> surface),
      void Function(Pointer<SDL_Surface> surface)>('SDL_FreeSurface');
  return _SDL_FreeSurface(surface);
}
// extern DECLSPEC int SDLCALL SDL_SetSurfacePalette(SDL_Surface * surface, SDL_Palette * palette)
int SDL_SetSurfacePalette(Pointer<SDL_Surface> surface, Pointer<SDL_Palette> palette) {
  final _SDL_SetSurfacePalette = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<SDL_Palette> palette),
      int Function(Pointer<SDL_Surface> surface, Pointer<SDL_Palette> palette)>('SDL_SetSurfacePalette');
  return _SDL_SetSurfacePalette(surface, palette);
}
// extern DECLSPEC int SDLCALL SDL_LockSurface(SDL_Surface * surface)
int SDL_LockSurface(Pointer<SDL_Surface> surface) {
  final _SDL_LockSurface = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface),
      int Function(Pointer<SDL_Surface> surface)>('SDL_LockSurface');
  return _SDL_LockSurface(surface);
}
// extern DECLSPEC void SDLCALL SDL_UnlockSurface(SDL_Surface * surface)
void SDL_UnlockSurface(Pointer<SDL_Surface> surface) {
  final _SDL_UnlockSurface = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface> surface),
      void Function(Pointer<SDL_Surface> surface)>('SDL_UnlockSurface');
  return _SDL_UnlockSurface(surface);
}
// extern DECLSPEC SDL_Surface *SDLCALL SDL_LoadBMP_RW(SDL_RWops * src, int freesrc)
Pointer<SDL_Surface> SDL_LoadBMP_RW(Pointer<SDL_RWops> src, int freesrc) {
  final _SDL_LoadBMP_RW = _SDL2.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<SDL_RWops> src, Int32 freesrc),
      Pointer<SDL_Surface> Function(Pointer<SDL_RWops> src, int freesrc)>('SDL_LoadBMP_RW');
  return _SDL_LoadBMP_RW(src, freesrc);
}
// extern DECLSPEC int SDLCALL SDL_SaveBMP_RW (SDL_Surface * surface, SDL_RWops * dst, int freedst)
int SDL_SaveBMP_RW(Pointer<SDL_Surface> surface, Pointer<SDL_RWops> dst, int freedst) {
  final _SDL_SaveBMP_RW = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<SDL_RWops> dst, Int32 freedst),
      int Function(Pointer<SDL_Surface> surface, Pointer<SDL_RWops> dst, int freedst)>('SDL_SaveBMP_RW');
  return _SDL_SaveBMP_RW(surface, dst, freedst);
}
// extern DECLSPEC int SDLCALL SDL_SetSurfaceRLE(SDL_Surface * surface, int flag)
int SDL_SetSurfaceRLE(Pointer<SDL_Surface> surface, int flag) {
  final _SDL_SetSurfaceRLE = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Int32 flag),
      int Function(Pointer<SDL_Surface> surface, int flag)>('SDL_SetSurfaceRLE');
  return _SDL_SetSurfaceRLE(surface, flag);
}
// extern DECLSPEC int SDLCALL SDL_SetColorKey(SDL_Surface * surface, int flag, Uint32 key)
int SDL_SetColorKey(Pointer<SDL_Surface> surface, int flag, int key) {
  final _SDL_SetColorKey = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Int32 flag, Uint32 key),
      int Function(Pointer<SDL_Surface> surface, int flag, int key)>('SDL_SetColorKey');
  return _SDL_SetColorKey(surface, flag, key);
}
// extern DECLSPEC int SDLCALL SDL_GetColorKey(SDL_Surface * surface, Uint32 * key)
int SDL_GetColorKey(Pointer<SDL_Surface> surface, Pointer<Uint32> key) {
  final _SDL_GetColorKey = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<Uint32> key),
      int Function(Pointer<SDL_Surface> surface, Pointer<Uint32> key)>('SDL_GetColorKey');
  return _SDL_GetColorKey(surface, key);
}
// extern DECLSPEC int SDLCALL SDL_SetSurfaceColorMod(SDL_Surface * surface, Uint8 r, Uint8 g, Uint8 b)
int SDL_SetSurfaceColorMod(Pointer<SDL_Surface> surface, int r, int g, int b) {
  final _SDL_SetSurfaceColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Uint8 r, Uint8 g, Uint8 b),
      int Function(Pointer<SDL_Surface> surface, int r, int g, int b)>('SDL_SetSurfaceColorMod');
  return _SDL_SetSurfaceColorMod(surface, r, g, b);
}
// extern DECLSPEC int SDLCALL SDL_GetSurfaceColorMod(SDL_Surface * surface, Uint8 * r, Uint8 * g, Uint8 * b)
int SDL_GetSurfaceColorMod(Pointer<SDL_Surface> surface, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b) {
  final _SDL_GetSurfaceColorMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b),
      int Function(Pointer<SDL_Surface> surface, Pointer<Uint8> r, Pointer<Uint8> g, Pointer<Uint8> b)>('SDL_GetSurfaceColorMod');
  return _SDL_GetSurfaceColorMod(surface, r, g, b);
}
// extern DECLSPEC int SDLCALL SDL_SetSurfaceAlphaMod(SDL_Surface * surface, Uint8 alpha)
int SDL_SetSurfaceAlphaMod(Pointer<SDL_Surface> surface, int alpha) {
  final _SDL_SetSurfaceAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Uint8 alpha),
      int Function(Pointer<SDL_Surface> surface, int alpha)>('SDL_SetSurfaceAlphaMod');
  return _SDL_SetSurfaceAlphaMod(surface, alpha);
}
// extern DECLSPEC int SDLCALL SDL_GetSurfaceAlphaMod(SDL_Surface * surface, Uint8 * alpha)
int SDL_GetSurfaceAlphaMod(Pointer<SDL_Surface> surface, Pointer<Uint8> alpha) {
  final _SDL_GetSurfaceAlphaMod = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<Uint8> alpha),
      int Function(Pointer<SDL_Surface> surface, Pointer<Uint8> alpha)>('SDL_GetSurfaceAlphaMod');
  return _SDL_GetSurfaceAlphaMod(surface, alpha);
}
// extern DECLSPEC int SDLCALL SDL_SetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode blendMode)
int SDL_SetSurfaceBlendMode(Pointer<SDL_Surface> surface, int blendMode) {
  final _SDL_SetSurfaceBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Int32 blendMode),
      int Function(Pointer<SDL_Surface> surface, int blendMode)>('SDL_SetSurfaceBlendMode');
  return _SDL_SetSurfaceBlendMode(surface, blendMode);
}
// extern DECLSPEC int SDLCALL SDL_GetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode *blendMode)
int SDL_GetSurfaceBlendMode(Pointer<SDL_Surface> surface, Pointer<Int32> blendMode) {
  final _SDL_GetSurfaceBlendMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<Int32> blendMode),
      int Function(Pointer<SDL_Surface> surface, Pointer<Int32> blendMode)>('SDL_GetSurfaceBlendMode');
  return _SDL_GetSurfaceBlendMode(surface, blendMode);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_SetClipRect(SDL_Surface * surface, const SDL_Rect * rect)
int SDL_SetClipRect(Pointer<SDL_Surface> surface, Pointer<SDL_Rect> rect) {
  final _SDL_SetClipRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> surface, Pointer<SDL_Rect> rect),
      int Function(Pointer<SDL_Surface> surface, Pointer<SDL_Rect> rect)>('SDL_SetClipRect');
  return _SDL_SetClipRect(surface, rect);
}
// extern DECLSPEC void SDLCALL SDL_GetClipRect(SDL_Surface * surface, SDL_Rect * rect)
void SDL_GetClipRect(Pointer<SDL_Surface> surface, Pointer<SDL_Rect> rect) {
  final _SDL_GetClipRect = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Surface> surface, Pointer<SDL_Rect> rect),
      void Function(Pointer<SDL_Surface> surface, Pointer<SDL_Rect> rect)>('SDL_GetClipRect');
  return _SDL_GetClipRect(surface, rect);
}
// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurface (SDL_Surface * src, SDL_PixelFormat * fmt, Uint32 flags)
Pointer<SDL_Surface> SDL_ConvertSurface(Pointer<SDL_Surface> src, Pointer<SDL_PixelFormat> fmt, int flags) {
  final _SDL_ConvertSurface = _SDL2.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<SDL_Surface> src, Pointer<SDL_PixelFormat> fmt, Uint32 flags),
      Pointer<SDL_Surface> Function(Pointer<SDL_Surface> src, Pointer<SDL_PixelFormat> fmt, int flags)>('SDL_ConvertSurface');
  return _SDL_ConvertSurface(src, fmt, flags);
}
// extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurfaceFormat (SDL_Surface * src, Uint32 pixel_format, Uint32 flags)
Pointer<SDL_Surface> SDL_ConvertSurfaceFormat(Pointer<SDL_Surface> src, int pixel_format, int flags) {
  final _SDL_ConvertSurfaceFormat = _SDL2.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<SDL_Surface> src, Uint32 pixel_format, Uint32 flags),
      Pointer<SDL_Surface> Function(Pointer<SDL_Surface> src, int pixel_format, int flags)>('SDL_ConvertSurfaceFormat');
  return _SDL_ConvertSurfaceFormat(src, pixel_format, flags);
}
// extern DECLSPEC int SDLCALL SDL_ConvertPixels(int width, int height, Uint32 src_format, const void * src, int src_pitch, Uint32 dst_format, void * dst, int dst_pitch)
int SDL_ConvertPixels(int width, int height, int src_format, Pointer<Void> src, int src_pitch, int dst_format, Pointer<Void> dst, int dst_pitch) {
  final _SDL_ConvertPixels = _SDL2.lookupFunction<
      Int32 Function(Int32 width, Int32 height, Uint32 src_format, Pointer<Void> src, Int32 src_pitch, Uint32 dst_format, Pointer<Void> dst, Int32 dst_pitch),
      int Function(int width, int height, int src_format, Pointer<Void> src, int src_pitch, int dst_format, Pointer<Void> dst, int dst_pitch)>('SDL_ConvertPixels');
  return _SDL_ConvertPixels(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch);
}
// extern DECLSPEC int SDLCALL SDL_FillRect (SDL_Surface * dst, const SDL_Rect * rect, Uint32 color)
int SDL_FillRect(Pointer<SDL_Surface> dst, Pointer<SDL_Rect> rect, int color) {
  final _SDL_FillRect = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> dst, Pointer<SDL_Rect> rect, Uint32 color),
      int Function(Pointer<SDL_Surface> dst, Pointer<SDL_Rect> rect, int color)>('SDL_FillRect');
  return _SDL_FillRect(dst, rect, color);
}
// extern DECLSPEC int SDLCALL SDL_FillRects (SDL_Surface * dst, const SDL_Rect * rects, int count, Uint32 color)
int SDL_FillRects(Pointer<SDL_Surface> dst, Pointer<SDL_Rect> rects, int count, int color) {
  final _SDL_FillRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> dst, Pointer<SDL_Rect> rects, Int32 count, Uint32 color),
      int Function(Pointer<SDL_Surface> dst, Pointer<SDL_Rect> rects, int count, int color)>('SDL_FillRects');
  return _SDL_FillRects(dst, rects, count, color);
}
// extern DECLSPEC int SDLCALL SDL_UpperBlit (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
int SDL_UpperBlit(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect) {
  final _SDL_UpperBlit = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect),
      int Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect)>('SDL_UpperBlit');
  return _SDL_UpperBlit(src, srcrect, dst, dstrect);
}
// extern DECLSPEC int SDLCALL SDL_LowerBlit (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
int SDL_LowerBlit(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect) {
  final _SDL_LowerBlit = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect),
      int Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect)>('SDL_LowerBlit');
  return _SDL_LowerBlit(src, srcrect, dst, dstrect);
}
// extern DECLSPEC int SDLCALL SDL_SoftStretch(SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, const SDL_Rect * dstrect)
int SDL_SoftStretch(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect) {
  final _SDL_SoftStretch = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect),
      int Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect)>('SDL_SoftStretch');
  return _SDL_SoftStretch(src, srcrect, dst, dstrect);
}
// extern DECLSPEC int SDLCALL SDL_UpperBlitScaled (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
int SDL_UpperBlitScaled(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect) {
  final _SDL_UpperBlitScaled = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect),
      int Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect)>('SDL_UpperBlitScaled');
  return _SDL_UpperBlitScaled(src, srcrect, dst, dstrect);
}
// extern DECLSPEC int SDLCALL SDL_LowerBlitScaled (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect)
int SDL_LowerBlitScaled(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect) {
  final _SDL_LowerBlitScaled = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect),
      int Function(Pointer<SDL_Surface> src, Pointer<SDL_Rect> srcrect, Pointer<SDL_Surface> dst, Pointer<SDL_Rect> dstrect)>('SDL_LowerBlitScaled');
  return _SDL_LowerBlitScaled(src, srcrect, dst, dstrect);
}
// extern DECLSPEC int SDLCALL SDL_iPhoneSetAnimationCallback(SDL_Window * window, int interval, void (*callback)(void*), void *callbackParam)
int SDL_iPhoneSetAnimationCallback(Pointer<SDL_Window> window, int interval, Pointer<Void> callback, Pointer<Void> callbackParam) {
  final _SDL_iPhoneSetAnimationCallback = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Int32 interval, Pointer<Void> callback, Pointer<Void> callbackParam),
      int Function(Pointer<SDL_Window> window, int interval, Pointer<Void> callback, Pointer<Void> callbackParam)>('SDL_iPhoneSetAnimationCallback');
  return _SDL_iPhoneSetAnimationCallback(window, interval, callback, callbackParam);
}
// extern DECLSPEC void SDLCALL SDL_iPhoneSetEventPump(SDL_bool enabled)
void SDL_iPhoneSetEventPump(int enabled) {
  final _SDL_iPhoneSetEventPump = _SDL2.lookupFunction<
      Void Function(Int32 enabled),
      void Function(int enabled)>('SDL_iPhoneSetEventPump');
  return _SDL_iPhoneSetEventPump(enabled);
}
// extern DECLSPEC void * SDLCALL SDL_AndroidGetJNIEnv()
Pointer<Void> SDL_AndroidGetJNIEnv() {
  final _SDL_AndroidGetJNIEnv = _SDL2.lookupFunction<
      Pointer<Void> Function(),
      Pointer<Void> Function()>('SDL_AndroidGetJNIEnv');
  return _SDL_AndroidGetJNIEnv();
}
// extern DECLSPEC void * SDLCALL SDL_AndroidGetActivity()
Pointer<Void> SDL_AndroidGetActivity() {
  final _SDL_AndroidGetActivity = _SDL2.lookupFunction<
      Pointer<Void> Function(),
      Pointer<Void> Function()>('SDL_AndroidGetActivity');
  return _SDL_AndroidGetActivity();
}
// extern DECLSPEC const char * SDLCALL SDL_AndroidGetInternalStoragePath()
String SDL_AndroidGetInternalStoragePath() {
  final _SDL_AndroidGetInternalStoragePath = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_AndroidGetInternalStoragePath');
  return _SDL_AndroidGetInternalStoragePath().toDartString();
}
// extern DECLSPEC int SDLCALL SDL_AndroidGetExternalStorageState()
int SDL_AndroidGetExternalStorageState() {
  final _SDL_AndroidGetExternalStorageState = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_AndroidGetExternalStorageState');
  return _SDL_AndroidGetExternalStorageState();
}
// extern DECLSPEC const char * SDLCALL SDL_AndroidGetExternalStoragePath()
String SDL_AndroidGetExternalStoragePath() {
  final _SDL_AndroidGetExternalStoragePath = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_AndroidGetExternalStoragePath');
  return _SDL_AndroidGetExternalStoragePath().toDartString();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowWMInfo(SDL_Window * window, SDL_SysWMinfo * info)
int SDL_GetWindowWMInfo(Pointer<SDL_Window> window, Pointer<SDL_SysWMinfo> info) {
  final _SDL_GetWindowWMInfo = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<SDL_SysWMinfo> info),
      int Function(Pointer<SDL_Window> window, Pointer<SDL_SysWMinfo> info)>('SDL_GetWindowWMInfo');
  return _SDL_GetWindowWMInfo(window, info);
}
// extern DECLSPEC SDL_Thread *SDLCALL SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data, pfnSDL_CurrentBeginThread pfnBeginThread, pfnSDL_CurrentEndThread pfnEndThread)
Pointer<SDL_Thread> SDL_CreateThread(Pointer<Void> fn, String name, Pointer<Void> data, Pointer<Void> pfnBeginThread, Pointer<Void> pfnEndThread) {
  final _SDL_CreateThread = _SDL2.lookupFunction<
      Pointer<SDL_Thread> Function(Pointer<Void> fn, Pointer<Utf8> name, Pointer<Void> data, Pointer<Void> pfnBeginThread, Pointer<Void> pfnEndThread),
      Pointer<SDL_Thread> Function(Pointer<Void> fn, Pointer<Utf8> name, Pointer<Void> data, Pointer<Void> pfnBeginThread, Pointer<Void> pfnEndThread)>('SDL_CreateThread');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_CreateThread(fn, _namePointer, data, pfnBeginThread, pfnEndThread);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC const char *SDLCALL SDL_GetThreadName(SDL_Thread *thread)
String SDL_GetThreadName(Pointer<SDL_Thread> thread) {
  final _SDL_GetThreadName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SDL_Thread> thread),
      Pointer<Utf8> Function(Pointer<SDL_Thread> thread)>('SDL_GetThreadName');
  return _SDL_GetThreadName(thread).toDartString();
}
// extern DECLSPEC SDL_threadID SDLCALL SDL_ThreadID(void)
int SDL_ThreadID() {
  final _SDL_ThreadID = _SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_ThreadID');
  return _SDL_ThreadID();
}
// extern DECLSPEC SDL_threadID SDLCALL SDL_GetThreadID(SDL_Thread * thread)
int SDL_GetThreadID(Pointer<SDL_Thread> thread) {
  final _SDL_GetThreadID = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Thread> thread),
      int Function(Pointer<SDL_Thread> thread)>('SDL_GetThreadID');
  return _SDL_GetThreadID(thread);
}
// extern DECLSPEC int SDLCALL SDL_SetThreadPriority(SDL_ThreadPriority priority)
int SDL_SetThreadPriority(int priority) {
  final _SDL_SetThreadPriority = _SDL2.lookupFunction<
      Int32 Function(Int32 priority),
      int Function(int priority)>('SDL_SetThreadPriority');
  return _SDL_SetThreadPriority(priority);
}
// extern DECLSPEC void SDLCALL SDL_WaitThread(SDL_Thread * thread, int *status)
void SDL_WaitThread(Pointer<SDL_Thread> thread, Pointer<Int32> status) {
  final _SDL_WaitThread = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Thread> thread, Pointer<Int32> status),
      void Function(Pointer<SDL_Thread> thread, Pointer<Int32> status)>('SDL_WaitThread');
  return _SDL_WaitThread(thread, status);
}
// extern DECLSPEC SDL_TLSID SDLCALL SDL_TLSCreate(void)
int SDL_TLSCreate() {
  final _SDL_TLSCreate = _SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_TLSCreate');
  return _SDL_TLSCreate();
}
// extern DECLSPEC void * SDLCALL SDL_TLSGet(SDL_TLSID id)
Pointer<Void> SDL_TLSGet(int id) {
  final _SDL_TLSGet = _SDL2.lookupFunction<
      Pointer<Void> Function(Uint32 id),
      Pointer<Void> Function(int id)>('SDL_TLSGet');
  return _SDL_TLSGet(id);
}
// extern DECLSPEC int SDLCALL SDL_TLSSet(SDL_TLSID id, const void *value, void (*destructor)(void*))
int SDL_TLSSet(int id, Pointer<Void> value, Pointer<Void> deor) {
  final _SDL_TLSSet = _SDL2.lookupFunction<
      Int32 Function(Uint32 id, Pointer<Void> value, Pointer<Void> deor),
      int Function(int id, Pointer<Void> value, Pointer<Void> deor)>('SDL_TLSSet');
  return _SDL_TLSSet(id, value, deor);
}
// extern DECLSPEC Uint32 SDLCALL SDL_GetTicks(void)
int SDL_GetTicks() {
  final _SDL_GetTicks = _SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('SDL_GetTicks');
  return _SDL_GetTicks();
}
// extern DECLSPEC Uint64 SDLCALL SDL_GetPerformanceCounter(void)
int SDL_GetPerformanceCounter() {
  final _SDL_GetPerformanceCounter = _SDL2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetPerformanceCounter');
  return _SDL_GetPerformanceCounter();
}
// extern DECLSPEC Uint64 SDLCALL SDL_GetPerformanceFrequency(void)
int SDL_GetPerformanceFrequency() {
  final _SDL_GetPerformanceFrequency = _SDL2.lookupFunction<
      Uint64 Function(),
      int Function()>('SDL_GetPerformanceFrequency');
  return _SDL_GetPerformanceFrequency();
}
// extern DECLSPEC void SDLCALL SDL_Delay(Uint32 ms)
void SDL_Delay(int ms) {
  final _SDL_Delay = _SDL2.lookupFunction<
      Void Function(Uint32 ms),
      void Function(int ms)>('SDL_Delay');
  return _SDL_Delay(ms);
}
// extern DECLSPEC SDL_TimerID SDLCALL SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *param)
int SDL_AddTimer(int interval, Pointer<Void> callback, Pointer<Void> param) {
  final _SDL_AddTimer = _SDL2.lookupFunction<
      Int32 Function(Uint32 interval, Pointer<Void> callback, Pointer<Void> param),
      int Function(int interval, Pointer<Void> callback, Pointer<Void> param)>('SDL_AddTimer');
  return _SDL_AddTimer(interval, callback, param);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_RemoveTimer(SDL_TimerID id)
int SDL_RemoveTimer(int id) {
  final _SDL_RemoveTimer = _SDL2.lookupFunction<
      Int32 Function(Int32 id),
      int Function(int id)>('SDL_RemoveTimer');
  return _SDL_RemoveTimer(id);
}
// extern DECLSPEC int SDLCALL SDL_GetNumTouchDevices(void)
int SDL_GetNumTouchDevices() {
  final _SDL_GetNumTouchDevices = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumTouchDevices');
  return _SDL_GetNumTouchDevices();
}
// extern DECLSPEC SDL_TouchID SDLCALL SDL_GetTouchDevice(int index)
int SDL_GetTouchDevice(int index) {
  final _SDL_GetTouchDevice = _SDL2.lookupFunction<
      Int64 Function(Int32 index),
      int Function(int index)>('SDL_GetTouchDevice');
  return _SDL_GetTouchDevice(index);
}
// extern DECLSPEC int SDLCALL SDL_GetNumTouchFingers(SDL_TouchID touchID)
int SDL_GetNumTouchFingers(int touchID) {
  final _SDL_GetNumTouchFingers = _SDL2.lookupFunction<
      Int32 Function(Int64 touchID),
      int Function(int touchID)>('SDL_GetNumTouchFingers');
  return _SDL_GetNumTouchFingers(touchID);
}
// extern DECLSPEC SDL_Finger * SDLCALL SDL_GetTouchFinger(SDL_TouchID touchID, int index)
Pointer<SDL_Finger> SDL_GetTouchFinger(int touchID, int index) {
  final _SDL_GetTouchFinger = _SDL2.lookupFunction<
      Pointer<SDL_Finger> Function(Int64 touchID, Int32 index),
      Pointer<SDL_Finger> Function(int touchID, int index)>('SDL_GetTouchFinger');
  return _SDL_GetTouchFinger(touchID, index);
}
// extern DECLSPEC void SDLCALL SDL_GetVersion(SDL_version * ver)
void SDL_GetVersion(Pointer<SDL_version> ver) {
  final _SDL_GetVersion = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_version> ver),
      void Function(Pointer<SDL_version> ver)>('SDL_GetVersion');
  return _SDL_GetVersion(ver);
}
// extern DECLSPEC const char *SDLCALL SDL_GetRevision(void)
String SDL_GetRevision() {
  final _SDL_GetRevision = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_GetRevision');
  return _SDL_GetRevision().toDartString();
}
// extern DECLSPEC int SDLCALL SDL_GetRevisionNumber(void)
int SDL_GetRevisionNumber() {
  final _SDL_GetRevisionNumber = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetRevisionNumber');
  return _SDL_GetRevisionNumber();
}
// extern DECLSPEC int SDLCALL SDL_GetNumVideoDrivers(void)
int SDL_GetNumVideoDrivers() {
  final _SDL_GetNumVideoDrivers = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumVideoDrivers');
  return _SDL_GetNumVideoDrivers();
}
// extern DECLSPEC const char *SDLCALL SDL_GetVideoDriver(int index)
String SDL_GetVideoDriver(int index) {
  final _SDL_GetVideoDriver = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 index),
      Pointer<Utf8> Function(int index)>('SDL_GetVideoDriver');
  return _SDL_GetVideoDriver(index).toDartString();
}
// extern DECLSPEC int SDLCALL SDL_VideoInit(const char *driver_name)
int SDL_VideoInit(String driver_name) {
  final _SDL_VideoInit = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> driver_name),
      int Function(Pointer<Utf8> driver_name)>('SDL_VideoInit');
  final _driver_namePointer = driver_name.toNativeUtf8();
  final _result = _SDL_VideoInit(_driver_namePointer);
  calloc.free(_driver_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_VideoQuit(void)
void SDL_VideoQuit() {
  final _SDL_VideoQuit = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_VideoQuit');
  return _SDL_VideoQuit();
}
// extern DECLSPEC const char *SDLCALL SDL_GetCurrentVideoDriver(void)
String SDL_GetCurrentVideoDriver() {
  final _SDL_GetCurrentVideoDriver = _SDL2.lookupFunction<
      Pointer<Utf8> Function(),
      Pointer<Utf8> Function()>('SDL_GetCurrentVideoDriver');
  return _SDL_GetCurrentVideoDriver().toDartString();
}
// extern DECLSPEC int SDLCALL SDL_GetNumVideoDisplays(void)
int SDL_GetNumVideoDisplays() {
  final _SDL_GetNumVideoDisplays = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumVideoDisplays');
  return _SDL_GetNumVideoDisplays();
}
// extern DECLSPEC const char * SDLCALL SDL_GetDisplayName(int displayIndex)
String SDL_GetDisplayName(int displayIndex) {
  final _SDL_GetDisplayName = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Int32 displayIndex),
      Pointer<Utf8> Function(int displayIndex)>('SDL_GetDisplayName');
  return _SDL_GetDisplayName(displayIndex).toDartString();
}
// extern DECLSPEC int SDLCALL SDL_GetDisplayBounds(int displayIndex, SDL_Rect * rect)
int SDL_GetDisplayBounds(int displayIndex, Pointer<SDL_Rect> rect) {
  final _SDL_GetDisplayBounds = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_Rect> rect),
      int Function(int displayIndex, Pointer<SDL_Rect> rect)>('SDL_GetDisplayBounds');
  return _SDL_GetDisplayBounds(displayIndex, rect);
}
// extern DECLSPEC int SDLCALL SDL_GetNumDisplayModes(int displayIndex)
int SDL_GetNumDisplayModes(int displayIndex) {
  final _SDL_GetNumDisplayModes = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex),
      int Function(int displayIndex)>('SDL_GetNumDisplayModes');
  return _SDL_GetNumDisplayModes(displayIndex);
}
// extern DECLSPEC int SDLCALL SDL_GetDisplayMode(int displayIndex, int modeIndex, SDL_DisplayMode * mode)
int SDL_GetDisplayMode(int displayIndex, int modeIndex, Pointer<SDL_DisplayMode> mode) {
  final _SDL_GetDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Int32 modeIndex, Pointer<SDL_DisplayMode> mode),
      int Function(int displayIndex, int modeIndex, Pointer<SDL_DisplayMode> mode)>('SDL_GetDisplayMode');
  return _SDL_GetDisplayMode(displayIndex, modeIndex, mode);
}
// extern DECLSPEC int SDLCALL SDL_GetDesktopDisplayMode(int displayIndex, SDL_DisplayMode * mode)
int SDL_GetDesktopDisplayMode(int displayIndex, Pointer<SDL_DisplayMode> mode) {
  final _SDL_GetDesktopDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_DisplayMode> mode),
      int Function(int displayIndex, Pointer<SDL_DisplayMode> mode)>('SDL_GetDesktopDisplayMode');
  return _SDL_GetDesktopDisplayMode(displayIndex, mode);
}
// extern DECLSPEC int SDLCALL SDL_GetCurrentDisplayMode(int displayIndex, SDL_DisplayMode * mode)
int SDL_GetCurrentDisplayMode(int displayIndex, Pointer<SDL_DisplayMode> mode) {
  final _SDL_GetCurrentDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_DisplayMode> mode),
      int Function(int displayIndex, Pointer<SDL_DisplayMode> mode)>('SDL_GetCurrentDisplayMode');
  return _SDL_GetCurrentDisplayMode(displayIndex, mode);
}
// extern DECLSPEC SDL_DisplayMode * SDLCALL SDL_GetClosestDisplayMode(int displayIndex, const SDL_DisplayMode * mode, SDL_DisplayMode * closest)
Pointer<SDL_DisplayMode> SDL_GetClosestDisplayMode(int displayIndex, Pointer<SDL_DisplayMode> mode, Pointer<SDL_DisplayMode> closest) {
  final _SDL_GetClosestDisplayMode = _SDL2.lookupFunction<
      Pointer<SDL_DisplayMode> Function(Int32 displayIndex, Pointer<SDL_DisplayMode> mode, Pointer<SDL_DisplayMode> closest),
      Pointer<SDL_DisplayMode> Function(int displayIndex, Pointer<SDL_DisplayMode> mode, Pointer<SDL_DisplayMode> closest)>('SDL_GetClosestDisplayMode');
  return _SDL_GetClosestDisplayMode(displayIndex, mode, closest);
}
// extern DECLSPEC int SDLCALL SDL_GetWindowDisplayIndex(SDL_Window * window)
int SDL_GetWindowDisplayIndex(Pointer<SDL_Window> window) {
  final _SDL_GetWindowDisplayIndex = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_GetWindowDisplayIndex');
  return _SDL_GetWindowDisplayIndex(window);
}
// extern DECLSPEC int SDLCALL SDL_SetWindowDisplayMode(SDL_Window * window, const SDL_DisplayMode * mode)
int SDL_SetWindowDisplayMode(Pointer<SDL_Window> window, Pointer<SDL_DisplayMode> mode) {
  final _SDL_SetWindowDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<SDL_DisplayMode> mode),
      int Function(Pointer<SDL_Window> window, Pointer<SDL_DisplayMode> mode)>('SDL_SetWindowDisplayMode');
  return _SDL_SetWindowDisplayMode(window, mode);
}
// extern DECLSPEC int SDLCALL SDL_GetWindowDisplayMode(SDL_Window * window, SDL_DisplayMode * mode)
int SDL_GetWindowDisplayMode(Pointer<SDL_Window> window, Pointer<SDL_DisplayMode> mode) {
  final _SDL_GetWindowDisplayMode = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<SDL_DisplayMode> mode),
      int Function(Pointer<SDL_Window> window, Pointer<SDL_DisplayMode> mode)>('SDL_GetWindowDisplayMode');
  return _SDL_GetWindowDisplayMode(window, mode);
}
// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowPixelFormat(SDL_Window * window)
int SDL_GetWindowPixelFormat(Pointer<SDL_Window> window) {
  final _SDL_GetWindowPixelFormat = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_GetWindowPixelFormat');
  return _SDL_GetWindowPixelFormat(window);
}
// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindow(const char *title, int x, int y, int w, int h, Uint32 flags)
Pointer<SDL_Window> SDL_CreateWindow(String title, int x, int y, int w, int h, int flags) {
  final _SDL_CreateWindow = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(Pointer<Utf8> title, Int32 x, Int32 y, Int32 w, Int32 h, Uint32 flags),
      Pointer<SDL_Window> Function(Pointer<Utf8> title, int x, int y, int w, int h, int flags)>('SDL_CreateWindow');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_CreateWindow(_titlePointer, x, y, w, h, flags);
  calloc.free(_titlePointer);
  return _result;
}
// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindowFrom(const void *data)
Pointer<SDL_Window> SDL_CreateWindowFrom(Pointer<Void> data) {
  final _SDL_CreateWindowFrom = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(Pointer<Void> data),
      Pointer<SDL_Window> Function(Pointer<Void> data)>('SDL_CreateWindowFrom');
  return _SDL_CreateWindowFrom(data);
}
// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowID(SDL_Window * window)
int SDL_GetWindowID(Pointer<SDL_Window> window) {
  final _SDL_GetWindowID = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_GetWindowID');
  return _SDL_GetWindowID(window);
}
// extern DECLSPEC SDL_Window * SDLCALL SDL_GetWindowFromID(Uint32 id)
Pointer<SDL_Window> SDL_GetWindowFromID(int id) {
  final _SDL_GetWindowFromID = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(Uint32 id),
      Pointer<SDL_Window> Function(int id)>('SDL_GetWindowFromID');
  return _SDL_GetWindowFromID(id);
}
// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowFlags(SDL_Window * window)
int SDL_GetWindowFlags(Pointer<SDL_Window> window) {
  final _SDL_GetWindowFlags = _SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_GetWindowFlags');
  return _SDL_GetWindowFlags(window);
}
// extern DECLSPEC void SDLCALL SDL_SetWindowTitle(SDL_Window * window, const char *title)
void SDL_SetWindowTitle(Pointer<SDL_Window> window, String title) {
  final _SDL_SetWindowTitle = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Pointer<Utf8> title),
      void Function(Pointer<SDL_Window> window, Pointer<Utf8> title)>('SDL_SetWindowTitle');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_SetWindowTitle(window, _titlePointer);
  calloc.free(_titlePointer);
  return _result;
}
// extern DECLSPEC const char *SDLCALL SDL_GetWindowTitle(SDL_Window * window)
String SDL_GetWindowTitle(Pointer<SDL_Window> window) {
  final _SDL_GetWindowTitle = _SDL2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SDL_Window> window),
      Pointer<Utf8> Function(Pointer<SDL_Window> window)>('SDL_GetWindowTitle');
  return _SDL_GetWindowTitle(window).toDartString();
}
// extern DECLSPEC void SDLCALL SDL_SetWindowIcon(SDL_Window * window, SDL_Surface * icon)
void SDL_SetWindowIcon(Pointer<SDL_Window> window, Pointer<SDL_Surface> icon) {
  final _SDL_SetWindowIcon = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Pointer<SDL_Surface> icon),
      void Function(Pointer<SDL_Window> window, Pointer<SDL_Surface> icon)>('SDL_SetWindowIcon');
  return _SDL_SetWindowIcon(window, icon);
}
// extern DECLSPEC void* SDLCALL SDL_SetWindowData(SDL_Window * window, const char *name, void *userdata)
Pointer<Void> SDL_SetWindowData(Pointer<SDL_Window> window, String name, Pointer<Void> userdata) {
  final _SDL_SetWindowData = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<SDL_Window> window, Pointer<Utf8> name, Pointer<Void> userdata),
      Pointer<Void> Function(Pointer<SDL_Window> window, Pointer<Utf8> name, Pointer<Void> userdata)>('SDL_SetWindowData');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_SetWindowData(window, _namePointer, userdata);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void *SDLCALL SDL_GetWindowData(SDL_Window * window, const char *name)
Pointer<Void> SDL_GetWindowData(Pointer<SDL_Window> window, String name) {
  final _SDL_GetWindowData = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<SDL_Window> window, Pointer<Utf8> name),
      Pointer<Void> Function(Pointer<SDL_Window> window, Pointer<Utf8> name)>('SDL_GetWindowData');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetWindowData(window, _namePointer);
  calloc.free(_namePointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_SetWindowPosition(SDL_Window * window, int x, int y)
void SDL_SetWindowPosition(Pointer<SDL_Window> window, int x, int y) {
  final _SDL_SetWindowPosition = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 x, Int32 y),
      void Function(Pointer<SDL_Window> window, int x, int y)>('SDL_SetWindowPosition');
  return _SDL_SetWindowPosition(window, x, y);
}
// extern DECLSPEC void SDLCALL SDL_GetWindowPosition(SDL_Window * window, int *x, int *y)
void SDL_GetWindowPosition(Pointer<SDL_Window> window, Pointer<Int32> x, Pointer<Int32> y) {
  final _SDL_GetWindowPosition = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Pointer<Int32> x, Pointer<Int32> y),
      void Function(Pointer<SDL_Window> window, Pointer<Int32> x, Pointer<Int32> y)>('SDL_GetWindowPosition');
  return _SDL_GetWindowPosition(window, x, y);
}
// extern DECLSPEC void SDLCALL SDL_SetWindowSize(SDL_Window * window, int w, int h)
void SDL_SetWindowSize(Pointer<SDL_Window> window, int w, int h) {
  final _SDL_SetWindowSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 w, Int32 h),
      void Function(Pointer<SDL_Window> window, int w, int h)>('SDL_SetWindowSize');
  return _SDL_SetWindowSize(window, w, h);
}
// extern DECLSPEC void SDLCALL SDL_GetWindowSize(SDL_Window * window, int *w, int *h)
void SDL_GetWindowSize(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h) {
  final _SDL_GetWindowSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h),
      void Function(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h)>('SDL_GetWindowSize');
  return _SDL_GetWindowSize(window, w, h);
}
// extern DECLSPEC void SDLCALL SDL_SetWindowMinimumSize(SDL_Window * window, int min_w, int min_h)
void SDL_SetWindowMinimumSize(Pointer<SDL_Window> window, int min_w, int min_h) {
  final _SDL_SetWindowMinimumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 min_w, Int32 min_h),
      void Function(Pointer<SDL_Window> window, int min_w, int min_h)>('SDL_SetWindowMinimumSize');
  return _SDL_SetWindowMinimumSize(window, min_w, min_h);
}
// extern DECLSPEC void SDLCALL SDL_GetWindowMinimumSize(SDL_Window * window, int *w, int *h)
void SDL_GetWindowMinimumSize(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h) {
  final _SDL_GetWindowMinimumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h),
      void Function(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h)>('SDL_GetWindowMinimumSize');
  return _SDL_GetWindowMinimumSize(window, w, h);
}
// extern DECLSPEC void SDLCALL SDL_SetWindowMaximumSize(SDL_Window * window, int max_w, int max_h)
void SDL_SetWindowMaximumSize(Pointer<SDL_Window> window, int max_w, int max_h) {
  final _SDL_SetWindowMaximumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 max_w, Int32 max_h),
      void Function(Pointer<SDL_Window> window, int max_w, int max_h)>('SDL_SetWindowMaximumSize');
  return _SDL_SetWindowMaximumSize(window, max_w, max_h);
}
// extern DECLSPEC void SDLCALL SDL_GetWindowMaximumSize(SDL_Window * window, int *w, int *h)
void SDL_GetWindowMaximumSize(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h) {
  final _SDL_GetWindowMaximumSize = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h),
      void Function(Pointer<SDL_Window> window, Pointer<Int32> w, Pointer<Int32> h)>('SDL_GetWindowMaximumSize');
  return _SDL_GetWindowMaximumSize(window, w, h);
}
// extern DECLSPEC void SDLCALL SDL_SetWindowBordered(SDL_Window * window, SDL_bool bordered)
void SDL_SetWindowBordered(Pointer<SDL_Window> window, int bordered) {
  final _SDL_SetWindowBordered = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 bordered),
      void Function(Pointer<SDL_Window> window, int bordered)>('SDL_SetWindowBordered');
  return _SDL_SetWindowBordered(window, bordered);
}
// extern DECLSPEC void SDLCALL SDL_ShowWindow(SDL_Window * window)
void SDL_ShowWindow(Pointer<SDL_Window> window) {
  final _SDL_ShowWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_ShowWindow');
  return _SDL_ShowWindow(window);
}
// extern DECLSPEC void SDLCALL SDL_HideWindow(SDL_Window * window)
void SDL_HideWindow(Pointer<SDL_Window> window) {
  final _SDL_HideWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_HideWindow');
  return _SDL_HideWindow(window);
}
// extern DECLSPEC void SDLCALL SDL_RaiseWindow(SDL_Window * window)
void SDL_RaiseWindow(Pointer<SDL_Window> window) {
  final _SDL_RaiseWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_RaiseWindow');
  return _SDL_RaiseWindow(window);
}
// extern DECLSPEC void SDLCALL SDL_MaximizeWindow(SDL_Window * window)
void SDL_MaximizeWindow(Pointer<SDL_Window> window) {
  final _SDL_MaximizeWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_MaximizeWindow');
  return _SDL_MaximizeWindow(window);
}
// extern DECLSPEC void SDLCALL SDL_MinimizeWindow(SDL_Window * window)
void SDL_MinimizeWindow(Pointer<SDL_Window> window) {
  final _SDL_MinimizeWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_MinimizeWindow');
  return _SDL_MinimizeWindow(window);
}
// extern DECLSPEC void SDLCALL SDL_RestoreWindow(SDL_Window * window)
void SDL_RestoreWindow(Pointer<SDL_Window> window) {
  final _SDL_RestoreWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_RestoreWindow');
  return _SDL_RestoreWindow(window);
}
// extern DECLSPEC int SDLCALL SDL_SetWindowFullscreen(SDL_Window * window, Uint32 flags)
int SDL_SetWindowFullscreen(Pointer<SDL_Window> window, int flags) {
  final _SDL_SetWindowFullscreen = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Uint32 flags),
      int Function(Pointer<SDL_Window> window, int flags)>('SDL_SetWindowFullscreen');
  return _SDL_SetWindowFullscreen(window, flags);
}
// extern DECLSPEC SDL_Surface * SDLCALL SDL_GetWindowSurface(SDL_Window * window)
Pointer<SDL_Surface> SDL_GetWindowSurface(Pointer<SDL_Window> window) {
  final _SDL_GetWindowSurface = _SDL2.lookupFunction<
      Pointer<SDL_Surface> Function(Pointer<SDL_Window> window),
      Pointer<SDL_Surface> Function(Pointer<SDL_Window> window)>('SDL_GetWindowSurface');
  return _SDL_GetWindowSurface(window);
}
// extern DECLSPEC int SDLCALL SDL_UpdateWindowSurface(SDL_Window * window)
int SDL_UpdateWindowSurface(Pointer<SDL_Window> window) {
  final _SDL_UpdateWindowSurface = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_UpdateWindowSurface');
  return _SDL_UpdateWindowSurface(window);
}
// extern DECLSPEC int SDLCALL SDL_UpdateWindowSurfaceRects(SDL_Window * window, const SDL_Rect * rects, int numrects)
int SDL_UpdateWindowSurfaceRects(Pointer<SDL_Window> window, Pointer<SDL_Rect> rects, int numrects) {
  final _SDL_UpdateWindowSurfaceRects = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<SDL_Rect> rects, Int32 numrects),
      int Function(Pointer<SDL_Window> window, Pointer<SDL_Rect> rects, int numrects)>('SDL_UpdateWindowSurfaceRects');
  return _SDL_UpdateWindowSurfaceRects(window, rects, numrects);
}
// extern DECLSPEC void SDLCALL SDL_SetWindowGrab(SDL_Window * window, SDL_bool grabbed)
void SDL_SetWindowGrab(Pointer<SDL_Window> window, int grabbed) {
  final _SDL_SetWindowGrab = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window, Int32 grabbed),
      void Function(Pointer<SDL_Window> window, int grabbed)>('SDL_SetWindowGrab');
  return _SDL_SetWindowGrab(window, grabbed);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowGrab(SDL_Window * window)
int SDL_GetWindowGrab(Pointer<SDL_Window> window) {
  final _SDL_GetWindowGrab = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window),
      int Function(Pointer<SDL_Window> window)>('SDL_GetWindowGrab');
  return _SDL_GetWindowGrab(window);
}
// extern DECLSPEC int SDLCALL SDL_SetWindowBrightness(SDL_Window * window, float brightness)
int SDL_SetWindowBrightness(Pointer<SDL_Window> window, double brightness) {
  final _SDL_SetWindowBrightness = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Float brightness),
      int Function(Pointer<SDL_Window> window, double brightness)>('SDL_SetWindowBrightness');
  return _SDL_SetWindowBrightness(window, brightness);
}
// extern DECLSPEC float SDLCALL SDL_GetWindowBrightness(SDL_Window * window)
double SDL_GetWindowBrightness(Pointer<SDL_Window> window) {
  final _SDL_GetWindowBrightness = _SDL2.lookupFunction<
      Float Function(Pointer<SDL_Window> window),
      double Function(Pointer<SDL_Window> window)>('SDL_GetWindowBrightness');
  return _SDL_GetWindowBrightness(window);
}
// extern DECLSPEC int SDLCALL SDL_SetWindowGammaRamp(SDL_Window * window, const Uint16 * red, const Uint16 * green, const Uint16 * blue)
int SDL_SetWindowGammaRamp(Pointer<SDL_Window> window, Pointer<Uint16> red, Pointer<Uint16> green, Pointer<Uint16> blue) {
  final _SDL_SetWindowGammaRamp = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<Uint16> red, Pointer<Uint16> green, Pointer<Uint16> blue),
      int Function(Pointer<SDL_Window> window, Pointer<Uint16> red, Pointer<Uint16> green, Pointer<Uint16> blue)>('SDL_SetWindowGammaRamp');
  return _SDL_SetWindowGammaRamp(window, red, green, blue);
}
// extern DECLSPEC int SDLCALL SDL_GetWindowGammaRamp(SDL_Window * window, Uint16 * red, Uint16 * green, Uint16 * blue)
int SDL_GetWindowGammaRamp(Pointer<SDL_Window> window, Pointer<Uint16> red, Pointer<Uint16> green, Pointer<Uint16> blue) {
  final _SDL_GetWindowGammaRamp = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<Uint16> red, Pointer<Uint16> green, Pointer<Uint16> blue),
      int Function(Pointer<SDL_Window> window, Pointer<Uint16> red, Pointer<Uint16> green, Pointer<Uint16> blue)>('SDL_GetWindowGammaRamp');
  return _SDL_GetWindowGammaRamp(window, red, green, blue);
}
// extern DECLSPEC void SDLCALL SDL_DestroyWindow(SDL_Window * window)
void SDL_DestroyWindow(Pointer<SDL_Window> window) {
  final _SDL_DestroyWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_DestroyWindow');
  return _SDL_DestroyWindow(window);
}
// extern DECLSPEC SDL_bool SDLCALL SDL_IsScreenSaverEnabled(void)
int SDL_IsScreenSaverEnabled() {
  final _SDL_IsScreenSaverEnabled = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsScreenSaverEnabled');
  return _SDL_IsScreenSaverEnabled();
}
// extern DECLSPEC void SDLCALL SDL_EnableScreenSaver(void)
void SDL_EnableScreenSaver() {
  final _SDL_EnableScreenSaver = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_EnableScreenSaver');
  return _SDL_EnableScreenSaver();
}
// extern DECLSPEC void SDLCALL SDL_DisableScreenSaver(void)
void SDL_DisableScreenSaver() {
  final _SDL_DisableScreenSaver = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_DisableScreenSaver');
  return _SDL_DisableScreenSaver();
}
// extern DECLSPEC int SDLCALL SDL_GL_LoadLibrary(const char *path)
int SDL_GL_LoadLibrary(String path) {
  final _SDL_GL_LoadLibrary = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> path),
      int Function(Pointer<Utf8> path)>('SDL_GL_LoadLibrary');
  final _pathPointer = path.toNativeUtf8();
  final _result = _SDL_GL_LoadLibrary(_pathPointer);
  calloc.free(_pathPointer);
  return _result;
}
// extern DECLSPEC void *SDLCALL SDL_GL_GetProcAddress(const char *proc)
Pointer<Void> SDL_GL_GetProcAddress(String proc) {
  final _SDL_GL_GetProcAddress = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<Utf8> proc),
      Pointer<Void> Function(Pointer<Utf8> proc)>('SDL_GL_GetProcAddress');
  final _procPointer = proc.toNativeUtf8();
  final _result = _SDL_GL_GetProcAddress(_procPointer);
  calloc.free(_procPointer);
  return _result;
}
// extern DECLSPEC void SDLCALL SDL_GL_UnloadLibrary(void)
void SDL_GL_UnloadLibrary() {
  final _SDL_GL_UnloadLibrary = _SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GL_UnloadLibrary');
  return _SDL_GL_UnloadLibrary();
}
// extern DECLSPEC SDL_bool SDLCALL SDL_GL_ExtensionSupported(const char *extension)
int SDL_GL_ExtensionSupported(String extension) {
  final _SDL_GL_ExtensionSupported = _SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8> extension),
      int Function(Pointer<Utf8> extension)>('SDL_GL_ExtensionSupported');
  final _extensionPointer = extension.toNativeUtf8();
  final _result = _SDL_GL_ExtensionSupported(_extensionPointer);
  calloc.free(_extensionPointer);
  return _result;
}
// extern DECLSPEC int SDLCALL SDL_GL_SetAttribute(SDL_GLattr attr, int value)
int SDL_GL_SetAttribute(int attr, int value) {
  final _SDL_GL_SetAttribute = _SDL2.lookupFunction<
      Int32 Function(Int32 attr, Int32 value),
      int Function(int attr, int value)>('SDL_GL_SetAttribute');
  return _SDL_GL_SetAttribute(attr, value);
}
// extern DECLSPEC int SDLCALL SDL_GL_GetAttribute(SDL_GLattr attr, int *value)
int SDL_GL_GetAttribute(int attr, Pointer<Int32> value) {
  final _SDL_GL_GetAttribute = _SDL2.lookupFunction<
      Int32 Function(Int32 attr, Pointer<Int32> value),
      int Function(int attr, Pointer<Int32> value)>('SDL_GL_GetAttribute');
  return _SDL_GL_GetAttribute(attr, value);
}
// extern DECLSPEC SDL_GLContext SDLCALL SDL_GL_CreateContext(SDL_Window * window)
Pointer<Void> SDL_GL_CreateContext(Pointer<SDL_Window> window) {
  final _SDL_GL_CreateContext = _SDL2.lookupFunction<
      Pointer<Void> Function(Pointer<SDL_Window> window),
      Pointer<Void> Function(Pointer<SDL_Window> window)>('SDL_GL_CreateContext');
  return _SDL_GL_CreateContext(window);
}
// extern DECLSPEC int SDLCALL SDL_GL_MakeCurrent(SDL_Window * window, SDL_GLContext context)
int SDL_GL_MakeCurrent(Pointer<SDL_Window> window, Pointer<Void> context) {
  final _SDL_GL_MakeCurrent = _SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window> window, Pointer<Void> context),
      int Function(Pointer<SDL_Window> window, Pointer<Void> context)>('SDL_GL_MakeCurrent');
  return _SDL_GL_MakeCurrent(window, context);
}
// extern DECLSPEC SDL_Window* SDLCALL SDL_GL_GetCurrentWindow(void)
Pointer<SDL_Window> SDL_GL_GetCurrentWindow() {
  final _SDL_GL_GetCurrentWindow = _SDL2.lookupFunction<
      Pointer<SDL_Window> Function(),
      Pointer<SDL_Window> Function()>('SDL_GL_GetCurrentWindow');
  return _SDL_GL_GetCurrentWindow();
}
// extern DECLSPEC SDL_GLContext SDLCALL SDL_GL_GetCurrentContext(void)
Pointer<Void> SDL_GL_GetCurrentContext() {
  final _SDL_GL_GetCurrentContext = _SDL2.lookupFunction<
      Pointer<Void> Function(),
      Pointer<Void> Function()>('SDL_GL_GetCurrentContext');
  return _SDL_GL_GetCurrentContext();
}
// extern DECLSPEC int SDLCALL SDL_GL_SetSwapInterval(int interval)
int SDL_GL_SetSwapInterval(int interval) {
  final _SDL_GL_SetSwapInterval = _SDL2.lookupFunction<
      Int32 Function(Int32 interval),
      int Function(int interval)>('SDL_GL_SetSwapInterval');
  return _SDL_GL_SetSwapInterval(interval);
}
// extern DECLSPEC int SDLCALL SDL_GL_GetSwapInterval(void)
int SDL_GL_GetSwapInterval() {
  final _SDL_GL_GetSwapInterval = _SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GL_GetSwapInterval');
  return _SDL_GL_GetSwapInterval();
}
// extern DECLSPEC void SDLCALL SDL_GL_SwapWindow(SDL_Window * window)
void SDL_GL_SwapWindow(Pointer<SDL_Window> window) {
  final _SDL_GL_SwapWindow = _SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window> window),
      void Function(Pointer<SDL_Window> window)>('SDL_GL_SwapWindow');
  return _SDL_GL_SwapWindow(window);
}
// extern DECLSPEC void SDLCALL SDL_GL_DeleteContext(SDL_GLContext context)
void SDL_GL_DeleteContext(Pointer<Void> context) {
  final _SDL_GL_DeleteContext = _SDL2.lookupFunction<
      Void Function(Pointer<Void> context),
      void Function(Pointer<Void> context)>('SDL_GL_DeleteContext');
  return _SDL_GL_DeleteContext(context);
}
