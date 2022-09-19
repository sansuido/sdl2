// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Begin recording a gesture on a specified touch device or all touch devices.
/// 
/// If the parameter `touchId` is -1 (i.e., all devices), this function will
/// always return 1, regardless of whether there actually are any devices.
/// 
/// \param touchId the touch device id, or -1 for all touch devices
/// \returns 1 on success or 0 if the specified device could not be found.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetTouchDevice
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RecordGesture(SDL_TouchID touchId)
/// ```
int sdlRecordGesture(int touchId) {
  final sdlRecordGestureLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int64 touchId),
      int Function(int touchId)>('SDL_RecordGesture');
  return sdlRecordGestureLookupFunction(touchId);
}

/// 
/// Save all currently loaded Dollar Gesture templates.
/// 
/// \param dst a SDL_RWops to save to
/// \returns the number of saved templates on success or 0 on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LoadDollarTemplates
/// \sa SDL_SaveDollarTemplate
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveAllDollarTemplates(SDL_RWops *dst)
/// ```
int sdlSaveAllDollarTemplates(Pointer<SdlRWops>? dst) {
  final sdlSaveAllDollarTemplatesLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlRWops>? dst),
      int Function(Pointer<SdlRWops>? dst)>('SDL_SaveAllDollarTemplates');
  return sdlSaveAllDollarTemplatesLookupFunction(dst);
}

/// 
/// Save a currently loaded Dollar Gesture template.
/// 
/// \param gestureId a gesture id
/// \param dst a SDL_RWops to save to
/// \returns 1 on success or 0 on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_LoadDollarTemplates
/// \sa SDL_SaveAllDollarTemplates
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SaveDollarTemplate(SDL_GestureID gestureId,SDL_RWops *dst)
/// ```
int sdlSaveDollarTemplate(int gestureId, Pointer<SdlRWops>? dst) {
  final sdlSaveDollarTemplateLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int64 gestureId, Pointer<SdlRWops>? dst),
      int Function(int gestureId, Pointer<SdlRWops>? dst)>('SDL_SaveDollarTemplate');
  return sdlSaveDollarTemplateLookupFunction(gestureId, dst);
}

/// 
/// Load Dollar Gesture templates from a file.
/// 
/// \param touchId a touch id
/// \param src a SDL_RWops to load from
/// \returns the number of loaded templates on success or a negative error code
/// (or 0) on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SaveAllDollarTemplates
/// \sa SDL_SaveDollarTemplate
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_LoadDollarTemplates(SDL_TouchID touchId, SDL_RWops *src)
/// ```
int sdlLoadDollarTemplates(int touchId, Pointer<SdlRWops>? src) {
  final sdlLoadDollarTemplatesLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int64 touchId, Pointer<SdlRWops>? src),
      int Function(int touchId, Pointer<SdlRWops>? src)>('SDL_LoadDollarTemplates');
  return sdlLoadDollarTemplatesLookupFunction(touchId, src);
}

