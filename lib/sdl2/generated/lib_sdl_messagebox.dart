// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Create a modal message box.
/// 
/// If your needs aren't complex, it might be easier to use
/// SDL_ShowSimpleMessageBox.
/// 
/// This function should be called on the thread that created the parent
/// window, or on the main thread if the messagebox has no parent. It will
/// block execution of that thread until the user clicks a button or closes the
/// messagebox.
/// 
/// This function may be called at any time, even before SDL_Init(). This makes
/// it useful for reporting errors like a failure to create a renderer or
/// OpenGL context.
/// 
/// On X11, SDL rolls its own dialog box with X11 primitives instead of a
/// formal toolkit like GTK+ or Qt.
/// 
/// Note that if SDL_Init() would fail because there isn't any available video
/// target, this function is likely to fail for the same reasons. If this is a
/// concern, check the return value from this function and fall back to writing
/// to stderr if you can.
/// 
/// \param messageboxdata the SDL_MessageBoxData structure with title, text and
/// other options
/// \param buttonid the pointer to which user id of hit button should be copied
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_ShowSimpleMessageBox
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid)
/// ```
int SDL_ShowMessageBox(Pointer<SDL_MessageBoxData>? messageboxdata, Pointer<Int32>? buttonid) {
  final _SDL_ShowMessageBox = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_MessageBoxData>? messageboxdata, Pointer<Int32>? buttonid),
      int Function(Pointer<SDL_MessageBoxData>? messageboxdata, Pointer<Int32>? buttonid)>('SDL_ShowMessageBox');
  return _SDL_ShowMessageBox(messageboxdata, buttonid);
}

/// 
/// Display a simple modal message box.
/// 
/// If your needs aren't complex, this function is preferred over
/// SDL_ShowMessageBox.
/// 
/// `flags` may be any of the following:
/// 
/// - `SDL_MESSAGEBOX_ERROR`: error dialog
/// - `SDL_MESSAGEBOX_WARNING`: warning dialog
/// - `SDL_MESSAGEBOX_INFORMATION`: informational dialog
/// 
/// This function should be called on the thread that created the parent
/// window, or on the main thread if the messagebox has no parent. It will
/// block execution of that thread until the user clicks a button or closes the
/// messagebox.
/// 
/// This function may be called at any time, even before SDL_Init(). This makes
/// it useful for reporting errors like a failure to create a renderer or
/// OpenGL context.
/// 
/// On X11, SDL rolls its own dialog box with X11 primitives instead of a
/// formal toolkit like GTK+ or Qt.
/// 
/// Note that if SDL_Init() would fail because there isn't any available video
/// target, this function is likely to fail for the same reasons. If this is a
/// concern, check the return value from this function and fall back to writing
/// to stderr if you can.
/// 
/// \param flags an SDL_MessageBoxFlags value
/// \param title UTF-8 title text
/// \param message UTF-8 message text
/// \param window the parent window, or NULL for no parent
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_ShowMessageBox
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_ShowSimpleMessageBox(Uint32 flags, const char *title, const char *message, SDL_Window *window)
/// ```
int SDL_ShowSimpleMessageBox(int flags, String title, String message, Pointer<SDL_Window>? window) {
  final _SDL_ShowSimpleMessageBox = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 flags, Pointer<Utf8>? title, Pointer<Utf8>? message, Pointer<SDL_Window>? window),
      int Function(int flags, Pointer<Utf8>? title, Pointer<Utf8>? message, Pointer<SDL_Window>? window)>('SDL_ShowSimpleMessageBox');
  final _titlePointer = title.toNativeUtf8();
  final _messagePointer = message.toNativeUtf8();
  final _result = _SDL_ShowSimpleMessageBox(flags, _titlePointer, _messagePointer, window);
  calloc.free(_titlePointer);
  calloc.free(_messagePointer);
  return _result;
}

