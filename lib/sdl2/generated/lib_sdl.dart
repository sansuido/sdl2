// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import '../dylib.dart' as dylib;

final libSdl2 = dylib.dylibOpen('SDL2');

///
/// Initialize the SDL library.
///
/// SDL_Init() simply forwards to calling SDL_InitSubSystem(). Therefore, the
/// two may be used interchangeably. Though for readability of your code
/// SDL_InitSubSystem() might be preferred.
///
/// The file I/O (for example: SDL_RWFromFile) and threading (SDL_CreateThread)
/// subsystems are initialized by default. Message boxes
/// (SDL_ShowSimpleMessageBox) also attempt to work without initializing the
/// video subsystem, in hopes of being useful in showing an error dialog when
/// SDL_Init fails. You must specifically initialize other subsystems if you
/// use them in your application.
///
/// Logging (such as SDL_Log) works without initialization, too.
///
/// `flags` may be any of the following OR'd together:
///
/// - `SDL_INIT_TIMER`: timer subsystem
/// - `SDL_INIT_AUDIO`: audio subsystem
/// - `SDL_INIT_VIDEO`: video subsystem; automatically initializes the events
/// subsystem
/// - `SDL_INIT_JOYSTICK`: joystick subsystem; automatically initializes the
/// events subsystem
/// - `SDL_INIT_HAPTIC`: haptic (force feedback) subsystem
/// - `SDL_INIT_GAMECONTROLLER`: controller subsystem; automatically
/// initializes the joystick subsystem
/// - `SDL_INIT_EVENTS`: events subsystem
/// - `SDL_INIT_EVERYTHING`: all of the above subsystems
/// - `SDL_INIT_NOPARACHUTE`: compatibility; this flag is ignored
///
/// Subsystem initialization is ref-counted, you must call SDL_QuitSubSystem()
/// for each SDL_InitSubSystem() to correctly shutdown a subsystem manually (or
/// call SDL_Quit() to force shutdown). If a subsystem is already loaded then
/// this call will increase the ref-count and return.
///
/// \param flags subsystem initialization flags
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_InitSubSystem
/// \sa SDL_Quit
/// \sa SDL_SetMainReady
/// \sa SDL_WasInit
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Init(Uint32 flags)
/// ```
int sdlInit(int flags) {
  final sdlInitLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Uint32 flags), int Function(int flags)>('SDL_Init');
  return sdlInitLookupFunction(flags);
}

///
/// Compatibility function to initialize the SDL library.
///
/// In SDL2, this function and SDL_Init() are interchangeable.
///
/// \param flags any of the flags used by SDL_Init(); see SDL_Init for details.
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_Init
/// \sa SDL_Quit
/// \sa SDL_QuitSubSystem
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_InitSubSystem(Uint32 flags)
/// ```
int sdlInitSubSystem(int flags) {
  final sdlInitSubSystemLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Uint32 flags),
      int Function(int flags)>('SDL_InitSubSystem');
  return sdlInitSubSystemLookupFunction(flags);
}

///
/// Shut down specific SDL subsystems.
///
/// If you start a subsystem using a call to that subsystem's init function
/// (for example SDL_VideoInit()) instead of SDL_Init() or SDL_InitSubSystem(),
/// SDL_QuitSubSystem() and SDL_WasInit() will not work. You will need to use
/// that subsystem's quit function (SDL_VideoQuit()) directly instead. But
/// generally, you should not be using those functions directly anyhow; use
/// SDL_Init() instead.
///
/// You still need to call SDL_Quit() even if you close all open subsystems
/// with SDL_QuitSubSystem().
///
/// \param flags any of the flags used by SDL_Init(); see SDL_Init for details.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_InitSubSystem
/// \sa SDL_Quit
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_QuitSubSystem(Uint32 flags)
/// ```
void sdlQuitSubSystem(int flags) {
  final sdlQuitSubSystemLookupFunction = libSdl2.lookupFunction<
      Void Function(Uint32 flags),
      void Function(int flags)>('SDL_QuitSubSystem');
  return sdlQuitSubSystemLookupFunction(flags);
}

///
/// Get a mask of the specified subsystems which are currently initialized.
///
/// \param flags any of the flags used by SDL_Init(); see SDL_Init for details.
/// \returns a mask of all initialized subsystems if `flags` is 0, otherwise it
/// returns the initialization status of the specified subsystems.
///
/// The return value does not include SDL_INIT_NOPARACHUTE.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_Init
/// \sa SDL_InitSubSystem
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_WasInit(Uint32 flags)
/// ```
int sdlWasInit(int flags) {
  final sdlWasInitLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Uint32 flags), int Function(int flags)>('SDL_WasInit');
  return sdlWasInitLookupFunction(flags);
}

///
/// Clean up all initialized subsystems.
///
/// You should call this function even if you have already shutdown each
/// initialized subsystem with SDL_QuitSubSystem(). It is safe to call this
/// function even in the case of errors in initialization.
///
/// If you start a subsystem using a call to that subsystem's init function
/// (for example SDL_VideoInit()) instead of SDL_Init() or SDL_InitSubSystem(),
/// then you must use that subsystem's quit function (SDL_VideoQuit()) to shut
/// it down before calling SDL_Quit(). But generally, you should not be using
/// those functions directly anyhow; use SDL_Init() instead.
///
/// You can use this function with atexit() to ensure that it is run when your
/// application is shutdown, but it is not wise to do this from a library or
/// other dynamically loaded code.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_Init
/// \sa SDL_QuitSubSystem
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Quit(void)
/// ```
void sdlQuit() {
  final sdlQuitLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>('SDL_Quit');
  return sdlQuitLookupFunction();
}
