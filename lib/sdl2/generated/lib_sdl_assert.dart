// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// Never call this directly. Use the SDL_assert* macros.
/// ```c
/// extern DECLSPEC SDL_assert_state SDLCALL SDL_ReportAssertion(SDL_assert_data *, const char *, const char *, int)
/// ```
int SDL_ReportAssertion(Pointer<SDL_assert_data>? arg0, String arg1, String arg2, int arg3) {
  final _SDL_ReportAssertion = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_assert_data>? arg0, Pointer<Utf8>? arg1, Pointer<Utf8>? arg2, Int32 arg3),
      int Function(Pointer<SDL_assert_data>? arg0, Pointer<Utf8>? arg1, Pointer<Utf8>? arg2, int arg3)>('SDL_ReportAssertion');
  final _arg1Pointer = arg1.toNativeUtf8();
  final _arg2Pointer = arg2.toNativeUtf8();
  final _result = _SDL_ReportAssertion(arg0, _arg1Pointer, _arg2Pointer, arg3);
  calloc.free(_arg1Pointer);
  calloc.free(_arg2Pointer);
  return _result;
}

/// 
/// \brief Set an application-defined assertion handler.
/// 
/// This allows an app to show its own assertion UI and/or force the
/// response to an assertion failure. If the app doesn't provide this, SDL
/// will try to do the right thing, popping up a system-specific GUI dialog,
/// and probably minimizing any fullscreen windows.
/// 
/// This callback may fire from any thread, but it runs wrapped in a mutex, so
/// it will only fire from one thread at a time.
/// 
/// Setting the callback to NULL restores SDL's original internal handler.
/// 
/// This callback is NOT reset to SDL's internal handler upon SDL_Quit()!
/// 
/// \return SDL_assert_state value of how to handle the assertion failure.
/// 
/// \param handler Callback function, called when an assertion fails.
/// \param userdata A pointer passed to the callback as-is.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetAssertionHandler( SDL_AssertionHandler handler, void *userdata)
/// ```
void SDL_SetAssertionHandler(Pointer<Void>? handler, Pointer<Void>? userdata) {
  final _SDL_SetAssertionHandler = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? handler, Pointer<Void>? userdata),
      void Function(Pointer<Void>? handler, Pointer<Void>? userdata)>('SDL_SetAssertionHandler');
  return _SDL_SetAssertionHandler(handler, userdata);
}

/// 
/// \brief Get a list of all assertion failures.
/// 
/// Get all assertions triggered since last call to SDL_ResetAssertionReport(),
/// or the start of the program.
/// 
/// The proper way to examine this data looks something like this:
/// 
/// <code>
/// const SDL_assert_data *item = SDL_GetAssertionReport();
/// while (item) {
/// printf("'%s', %s (%s:%d), triggered %u times, always ignore: %s.\n",
/// item->condition, item->function, item->filename,
/// item->linenum, item->trigger_count,
/// item->always_ignore ? "yes" : "no");
/// item = item->next;
/// }
/// </code>
/// 
/// \return List of all assertions.
/// \sa SDL_ResetAssertionReport
/// 
/// ```c
/// extern DECLSPEC const SDL_assert_data * SDLCALL SDL_GetAssertionReport(void)
/// ```
Pointer<SDL_assert_data>? SDL_GetAssertionReport() {
  final _SDL_GetAssertionReport = DLL_SDL2.lookupFunction<
      Pointer<SDL_assert_data>? Function(),
      Pointer<SDL_assert_data>? Function()>('SDL_GetAssertionReport');
  return _SDL_GetAssertionReport();
}

/// 
/// \brief Reset the list of all assertion failures.
/// 
/// Reset list of all assertions triggered.
/// 
/// \sa SDL_GetAssertionReport
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ResetAssertionReport(void)
/// ```
void SDL_ResetAssertionReport() {
  final _SDL_ResetAssertionReport = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_ResetAssertionReport');
  return _SDL_ResetAssertionReport();
}

