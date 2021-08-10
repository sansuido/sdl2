// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Create a modal message box.
/// 
/// \param messageboxdata The SDL_MessageBoxData structure with title, text, etc.
/// \param buttonid The pointer to which user id of hit button should be copied.
/// 
/// \return -1 on error, otherwise 0 and buttonid contains user id of button
/// hit or -1 if dialog was closed.
/// 
/// \note This function should be called on the thread that created the parent
/// window, or on the main thread if the messagebox has no parent.  It will
/// block execution of that thread until the user clicks a button or
/// closes the messagebox.
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
/// \brief Create a simple modal message box
/// 
/// \param flags    ::SDL_MessageBoxFlags
/// \param title    UTF-8 title text
/// \param message  UTF-8 message text
/// \param window   The parent window, or NULL for no parent
/// 
/// \return 0 on success, -1 on error
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

