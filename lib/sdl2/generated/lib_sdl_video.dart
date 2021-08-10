// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Get the number of video drivers compiled into SDL
/// 
/// \sa SDL_GetVideoDriver()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumVideoDrivers(void)
/// ```
int SDL_GetNumVideoDrivers() {
  final _SDL_GetNumVideoDrivers = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumVideoDrivers');
  return _SDL_GetNumVideoDrivers();
}

/// 
/// \brief Get the name of a built in video driver.
/// 
/// \note The video drivers are presented in the order in which they are
/// normally checked during initialization.
/// 
/// \sa SDL_GetNumVideoDrivers()
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetVideoDriver(int index)
/// ```
String SDL_GetVideoDriver(int index) {
  final _SDL_GetVideoDriver = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 index),
      Pointer<Utf8>? Function(int index)>('SDL_GetVideoDriver');
  return _SDL_GetVideoDriver(index)!.toDartString();
}

/// 
/// \brief Initialize the video subsystem, optionally specifying a video driver.
/// 
/// \param driver_name Initialize a specific driver by name, or NULL for the
/// default video driver.
/// 
/// \return 0 on success, -1 on error
/// 
/// This function initializes the video subsystem; setting up a connection
/// to the window manager, etc, and determines the available display modes
/// and pixel formats, but does not initialize a window or graphics mode.
/// 
/// \sa SDL_VideoQuit()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_VideoInit(const char *driver_name)
/// ```
int SDL_VideoInit(String driver_name) {
  final _SDL_VideoInit = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? driver_name),
      int Function(Pointer<Utf8>? driver_name)>('SDL_VideoInit');
  final _driver_namePointer = driver_name.toNativeUtf8();
  final _result = _SDL_VideoInit(_driver_namePointer);
  calloc.free(_driver_namePointer);
  return _result;
}

/// 
/// \brief Shuts down the video subsystem.
/// 
/// This function closes all windows, and restores the original video mode.
/// 
/// \sa SDL_VideoInit()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_VideoQuit(void)
/// ```
void SDL_VideoQuit() {
  final _SDL_VideoQuit = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_VideoQuit');
  return _SDL_VideoQuit();
}

/// 
/// \brief Returns the name of the currently initialized video driver.
/// 
/// \return The name of the current video driver or NULL if no driver
/// has been initialized
/// 
/// \sa SDL_GetNumVideoDrivers()
/// \sa SDL_GetVideoDriver()
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetCurrentVideoDriver(void)
/// ```
String SDL_GetCurrentVideoDriver() {
  final _SDL_GetCurrentVideoDriver = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(),
      Pointer<Utf8>? Function()>('SDL_GetCurrentVideoDriver');
  return _SDL_GetCurrentVideoDriver()!.toDartString();
}

/// 
/// \brief Returns the number of available video displays.
/// 
/// \sa SDL_GetDisplayBounds()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumVideoDisplays(void)
/// ```
int SDL_GetNumVideoDisplays() {
  final _SDL_GetNumVideoDisplays = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumVideoDisplays');
  return _SDL_GetNumVideoDisplays();
}

/// 
/// \brief Get the name of a display in UTF-8 encoding
/// 
/// \return The name of a display, or NULL for an invalid display index.
/// 
/// \sa SDL_GetNumVideoDisplays()
/// 
/// ```c
/// extern DECLSPEC const char * SDLCALL SDL_GetDisplayName(int displayIndex)
/// ```
String SDL_GetDisplayName(int displayIndex) {
  final _SDL_GetDisplayName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 displayIndex),
      Pointer<Utf8>? Function(int displayIndex)>('SDL_GetDisplayName');
  return _SDL_GetDisplayName(displayIndex)!.toDartString();
}

/// 
/// \brief Get the desktop area represented by a display, with the primary
/// display located at 0,0
/// 
/// \return 0 on success, or -1 if the index is out of range.
/// 
/// \sa SDL_GetNumVideoDisplays()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDisplayBounds(int displayIndex, SDL_Rect * rect)
/// ```
int SDL_GetDisplayBounds(int displayIndex, Pointer<SDL_Rect>? rect) {
  final _SDL_GetDisplayBounds = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_Rect>? rect),
      int Function(int displayIndex, Pointer<SDL_Rect>? rect)>('SDL_GetDisplayBounds');
  return _SDL_GetDisplayBounds(displayIndex, rect);
}

/// 
/// \brief Returns the number of available display modes.
/// 
/// \sa SDL_GetDisplayMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumDisplayModes(int displayIndex)
/// ```
int SDL_GetNumDisplayModes(int displayIndex) {
  final _SDL_GetNumDisplayModes = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex),
      int Function(int displayIndex)>('SDL_GetNumDisplayModes');
  return _SDL_GetNumDisplayModes(displayIndex);
}

/// 
/// \brief Fill in information about a specific display mode.
/// 
/// \note The display modes are sorted in this priority:
/// \li bits per pixel -> more colors to fewer colors
/// \li width -> largest to smallest
/// \li height -> largest to smallest
/// \li refresh rate -> highest to lowest
/// 
/// \sa SDL_GetNumDisplayModes()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDisplayMode(int displayIndex, int modeIndex, SDL_DisplayMode * mode)
/// ```
int SDL_GetDisplayMode(int displayIndex, int modeIndex, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetDisplayMode = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Int32 modeIndex, Pointer<SDL_DisplayMode>? mode),
      int Function(int displayIndex, int modeIndex, Pointer<SDL_DisplayMode>? mode)>('SDL_GetDisplayMode');
  return _SDL_GetDisplayMode(displayIndex, modeIndex, mode);
}

/// 
/// \brief Fill in information about the desktop display mode.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDesktopDisplayMode(int displayIndex, SDL_DisplayMode * mode)
/// ```
int SDL_GetDesktopDisplayMode(int displayIndex, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetDesktopDisplayMode = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_DisplayMode>? mode),
      int Function(int displayIndex, Pointer<SDL_DisplayMode>? mode)>('SDL_GetDesktopDisplayMode');
  return _SDL_GetDesktopDisplayMode(displayIndex, mode);
}

/// 
/// \brief Fill in information about the current display mode.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetCurrentDisplayMode(int displayIndex, SDL_DisplayMode * mode)
/// ```
int SDL_GetCurrentDisplayMode(int displayIndex, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetCurrentDisplayMode = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_DisplayMode>? mode),
      int Function(int displayIndex, Pointer<SDL_DisplayMode>? mode)>('SDL_GetCurrentDisplayMode');
  return _SDL_GetCurrentDisplayMode(displayIndex, mode);
}

/// 
/// \brief Get the closest match to the requested display mode.
/// 
/// \param displayIndex The index of display from which mode should be queried.
/// \param mode The desired display mode
/// \param closest A pointer to a display mode to be filled in with the closest
/// match of the available display modes.
/// 
/// \return The passed in value \c closest, or NULL if no matching video mode
/// was available.
/// 
/// The available display modes are scanned, and \c closest is filled in with the
/// closest mode matching the requested mode and returned.  The mode format and
/// refresh_rate default to the desktop mode if they are 0.  The modes are
/// scanned with size being first priority, format being second priority, and
/// finally checking the refresh_rate.  If all the available modes are too
/// small, then NULL is returned.
/// 
/// \sa SDL_GetNumDisplayModes()
/// \sa SDL_GetDisplayMode()
/// 
/// ```c
/// extern DECLSPEC SDL_DisplayMode * SDLCALL SDL_GetClosestDisplayMode(int displayIndex, const SDL_DisplayMode * mode, SDL_DisplayMode * closest)
/// ```
Pointer<SDL_DisplayMode>? SDL_GetClosestDisplayMode(int displayIndex, Pointer<SDL_DisplayMode>? mode, Pointer<SDL_DisplayMode>? closest) {
  final _SDL_GetClosestDisplayMode = DLL_SDL2.lookupFunction<
      Pointer<SDL_DisplayMode>? Function(Int32 displayIndex, Pointer<SDL_DisplayMode>? mode, Pointer<SDL_DisplayMode>? closest),
      Pointer<SDL_DisplayMode>? Function(int displayIndex, Pointer<SDL_DisplayMode>? mode, Pointer<SDL_DisplayMode>? closest)>('SDL_GetClosestDisplayMode');
  return _SDL_GetClosestDisplayMode(displayIndex, mode, closest);
}

/// 
/// \brief Get the display index associated with a window.
/// 
/// \return the display index of the display containing the center of the
/// window, or -1 on error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowDisplayIndex(SDL_Window * window)
/// ```
int SDL_GetWindowDisplayIndex(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowDisplayIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowDisplayIndex');
  return _SDL_GetWindowDisplayIndex(window);
}

/// 
/// \brief Set the display mode used when a fullscreen window is visible.
/// 
/// By default the window's dimensions and the desktop format and refresh rate
/// are used.
/// 
/// \param window The window for which the display mode should be set.
/// \param mode The mode to use, or NULL for the default mode.
/// 
/// \return 0 on success, or -1 if setting the display mode failed.
/// 
/// \sa SDL_GetWindowDisplayMode()
/// \sa SDL_SetWindowFullscreen()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowDisplayMode(SDL_Window * window, const SDL_DisplayMode * mode)
/// ```
int SDL_SetWindowDisplayMode(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_SetWindowDisplayMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode)>('SDL_SetWindowDisplayMode');
  return _SDL_SetWindowDisplayMode(window, mode);
}

/// 
/// \brief Fill in information about the display mode used when a fullscreen
/// window is visible.
/// 
/// \sa SDL_SetWindowDisplayMode()
/// \sa SDL_SetWindowFullscreen()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowDisplayMode(SDL_Window * window, SDL_DisplayMode * mode)
/// ```
int SDL_GetWindowDisplayMode(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode) {
  final _SDL_GetWindowDisplayMode = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_DisplayMode>? mode)>('SDL_GetWindowDisplayMode');
  return _SDL_GetWindowDisplayMode(window, mode);
}

/// 
/// \brief Get the pixel format associated with the window.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowPixelFormat(SDL_Window * window)
/// ```
int SDL_GetWindowPixelFormat(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowPixelFormat = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowPixelFormat');
  return _SDL_GetWindowPixelFormat(window);
}

/// 
/// \brief Create a window with the specified position, dimensions, and flags.
/// 
/// \param title The title of the window, in UTF-8 encoding.
/// \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param w     The width of the window.
/// \param h     The height of the window.
/// \param flags The flags for the window, a mask of any of the following:
/// ::SDL_WINDOW_FULLSCREEN, ::SDL_WINDOW_OPENGL,
/// ::SDL_WINDOW_HIDDEN,     ::SDL_WINDOW_BORDERLESS,
/// ::SDL_WINDOW_RESIZABLE,  ::SDL_WINDOW_MAXIMIZED,
/// ::SDL_WINDOW_MINIMIZED,  ::SDL_WINDOW_INPUT_GRABBED.
/// 
/// \return The id of the window created, or zero if window creation failed.
/// 
/// \sa SDL_DestroyWindow()
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindow(const char *title, int x, int y, int w, int h, Uint32 flags)
/// ```
Pointer<SDL_Window>? SDL_CreateWindow(String title, int x, int y, int w, int h, int flags) {
  final _SDL_CreateWindow = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, Int32 x, Int32 y, Int32 w, Int32 h, Uint32 flags),
      Pointer<SDL_Window>? Function(Pointer<Utf8>? title, int x, int y, int w, int h, int flags)>('SDL_CreateWindow');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_CreateWindow(_titlePointer, x, y, w, h, flags);
  calloc.free(_titlePointer);
  return _result;
}

/// 
/// \brief Create an SDL window from an existing native window.
/// 
/// \param data A pointer to driver-dependent window creation data
/// 
/// \return The id of the window created, or zero if window creation failed.
/// 
/// \sa SDL_DestroyWindow()
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindowFrom(const void *data)
/// ```
Pointer<SDL_Window>? SDL_CreateWindowFrom(Pointer<Void>? data) {
  final _SDL_CreateWindowFrom = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Pointer<Void>? data),
      Pointer<SDL_Window>? Function(Pointer<Void>? data)>('SDL_CreateWindowFrom');
  return _SDL_CreateWindowFrom(data);
}

/// 
/// \brief Get the numeric ID of a window, for logging purposes.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowID(SDL_Window * window)
/// ```
int SDL_GetWindowID(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowID = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowID');
  return _SDL_GetWindowID(window);
}

/// 
/// \brief Get a window from a stored ID, or NULL if it doesn't exist.
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetWindowFromID(Uint32 id)
/// ```
Pointer<SDL_Window>? SDL_GetWindowFromID(int id) {
  final _SDL_GetWindowFromID = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(Uint32 id),
      Pointer<SDL_Window>? Function(int id)>('SDL_GetWindowFromID');
  return _SDL_GetWindowFromID(id);
}

/// 
/// \brief Get the window flags.
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_GetWindowFlags(SDL_Window * window)
/// ```
int SDL_GetWindowFlags(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowFlags = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowFlags');
  return _SDL_GetWindowFlags(window);
}

/// 
/// \brief Set the title of a window, in UTF-8 format.
/// 
/// \sa SDL_GetWindowTitle()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowTitle(SDL_Window * window, const char *title)
/// ```
void SDL_SetWindowTitle(Pointer<SDL_Window>? window, String title) {
  final _SDL_SetWindowTitle = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Utf8>? title),
      void Function(Pointer<SDL_Window>? window, Pointer<Utf8>? title)>('SDL_SetWindowTitle');
  final _titlePointer = title.toNativeUtf8();
  final _result = _SDL_SetWindowTitle(window, _titlePointer);
  calloc.free(_titlePointer);
  return _result;
}

/// 
/// \brief Get the title of a window, in UTF-8 format.
/// 
/// \sa SDL_SetWindowTitle()
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_GetWindowTitle(SDL_Window * window)
/// ```
String SDL_GetWindowTitle(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowTitle = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Window>? window),
      Pointer<Utf8>? Function(Pointer<SDL_Window>? window)>('SDL_GetWindowTitle');
  return _SDL_GetWindowTitle(window)!.toDartString();
}

/// 
/// \brief Set the icon for a window.
/// 
/// \param window The window for which the icon should be set.
/// \param icon The icon for the window.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowIcon(SDL_Window * window, SDL_Surface * icon)
/// ```
void SDL_SetWindowIcon(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? icon) {
  final _SDL_SetWindowIcon = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? icon),
      void Function(Pointer<SDL_Window>? window, Pointer<SDL_Surface>? icon)>('SDL_SetWindowIcon');
  return _SDL_SetWindowIcon(window, icon);
}

/// 
/// \brief Associate an arbitrary named pointer with a window.
/// 
/// \param window   The window to associate with the pointer.
/// \param name     The name of the pointer.
/// \param userdata The associated pointer.
/// 
/// \return The previous value associated with 'name'
/// 
/// \note The name is case-sensitive.
/// 
/// \sa SDL_GetWindowData()
/// 
/// ```c
/// extern DECLSPEC void* SDLCALL SDL_SetWindowData(SDL_Window * window, const char *name, void *userdata)
/// ```
Pointer<Void>? SDL_SetWindowData(Pointer<SDL_Window>? window, String name, Pointer<Void>? userdata) {
  final _SDL_SetWindowData = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name, Pointer<Void>? userdata),
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name, Pointer<Void>? userdata)>('SDL_SetWindowData');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_SetWindowData(window, _namePointer, userdata);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// \brief Retrieve the data pointer associated with a window.
/// 
/// \param window   The window to query.
/// \param name     The name of the pointer.
/// 
/// \return The value associated with 'name'
/// 
/// \sa SDL_SetWindowData()
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_GetWindowData(SDL_Window * window, const char *name)
/// ```
Pointer<Void>? SDL_GetWindowData(Pointer<SDL_Window>? window, String name) {
  final _SDL_GetWindowData = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name),
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Utf8>? name)>('SDL_GetWindowData');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_GetWindowData(window, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// 
/// \brief Set the position of a window.
/// 
/// \param window   The window to reposition.
/// \param x        The x coordinate of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// \param y        The y coordinate of the window, ::SDL_WINDOWPOS_CENTERED, or
/// ::SDL_WINDOWPOS_UNDEFINED.
/// 
/// \note The window coordinate origin is the upper left of the display.
/// 
/// \sa SDL_GetWindowPosition()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowPosition(SDL_Window * window, int x, int y)
/// ```
void SDL_SetWindowPosition(Pointer<SDL_Window>? window, int x, int y) {
  final _SDL_SetWindowPosition = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 x, Int32 y),
      void Function(Pointer<SDL_Window>? window, int x, int y)>('SDL_SetWindowPosition');
  return _SDL_SetWindowPosition(window, x, y);
}

/// 
/// \brief Get the position of a window.
/// 
/// \param window   The window to query.
/// \param x        Pointer to variable for storing the x position, may be NULL
/// \param y        Pointer to variable for storing the y position, may be NULL
/// 
/// \sa SDL_SetWindowPosition()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowPosition(SDL_Window * window, int *x, int *y)
/// ```
void SDL_GetWindowPosition(Pointer<SDL_Window>? window, Pointer<Int32>? x, Pointer<Int32>? y) {
  final _SDL_GetWindowPosition = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? x, Pointer<Int32>? y),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? x, Pointer<Int32>? y)>('SDL_GetWindowPosition');
  return _SDL_GetWindowPosition(window, x, y);
}

/// 
/// \brief Set the size of a window's client area.
/// 
/// \param window   The window to resize.
/// \param w        The width of the window, must be >0
/// \param h        The height of the window, must be >0
/// 
/// \note You can't change the size of a fullscreen window, it automatically
/// matches the size of the display mode.
/// 
/// \sa SDL_GetWindowSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowSize(SDL_Window * window, int w, int h)
/// ```
void SDL_SetWindowSize(Pointer<SDL_Window>? window, int w, int h) {
  final _SDL_SetWindowSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 w, Int32 h),
      void Function(Pointer<SDL_Window>? window, int w, int h)>('SDL_SetWindowSize');
  return _SDL_SetWindowSize(window, w, h);
}

/// 
/// \brief Get the size of a window's client area.
/// 
/// \param window   The window to query.
/// \param w        Pointer to variable for storing the width, may be NULL
/// \param h        Pointer to variable for storing the height, may be NULL
/// 
/// \sa SDL_SetWindowSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GetWindowSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetWindowSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetWindowSize');
  return _SDL_GetWindowSize(window, w, h);
}

/// 
/// \brief Set the minimum size of a window's client area.
/// 
/// \param window    The window to set a new minimum size.
/// \param min_w     The minimum width of the window, must be >0
/// \param min_h     The minimum height of the window, must be >0
/// 
/// \note You can't change the minimum size of a fullscreen window, it
/// automatically matches the size of the display mode.
/// 
/// \sa SDL_GetWindowMinimumSize()
/// \sa SDL_SetWindowMaximumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowMinimumSize(SDL_Window * window, int min_w, int min_h)
/// ```
void SDL_SetWindowMinimumSize(Pointer<SDL_Window>? window, int min_w, int min_h) {
  final _SDL_SetWindowMinimumSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 min_w, Int32 min_h),
      void Function(Pointer<SDL_Window>? window, int min_w, int min_h)>('SDL_SetWindowMinimumSize');
  return _SDL_SetWindowMinimumSize(window, min_w, min_h);
}

/// 
/// \brief Get the minimum size of a window's client area.
/// 
/// \param window   The window to query.
/// \param w        Pointer to variable for storing the minimum width, may be NULL
/// \param h        Pointer to variable for storing the minimum height, may be NULL
/// 
/// \sa SDL_GetWindowMaximumSize()
/// \sa SDL_SetWindowMinimumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowMinimumSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GetWindowMinimumSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetWindowMinimumSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetWindowMinimumSize');
  return _SDL_GetWindowMinimumSize(window, w, h);
}

/// 
/// \brief Set the maximum size of a window's client area.
/// 
/// \param window    The window to set a new maximum size.
/// \param max_w     The maximum width of the window, must be >0
/// \param max_h     The maximum height of the window, must be >0
/// 
/// \note You can't change the maximum size of a fullscreen window, it
/// automatically matches the size of the display mode.
/// 
/// \sa SDL_GetWindowMaximumSize()
/// \sa SDL_SetWindowMinimumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowMaximumSize(SDL_Window * window, int max_w, int max_h)
/// ```
void SDL_SetWindowMaximumSize(Pointer<SDL_Window>? window, int max_w, int max_h) {
  final _SDL_SetWindowMaximumSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 max_w, Int32 max_h),
      void Function(Pointer<SDL_Window>? window, int max_w, int max_h)>('SDL_SetWindowMaximumSize');
  return _SDL_SetWindowMaximumSize(window, max_w, max_h);
}

/// 
/// \brief Get the maximum size of a window's client area.
/// 
/// \param window   The window to query.
/// \param w        Pointer to variable for storing the maximum width, may be NULL
/// \param h        Pointer to variable for storing the maximum height, may be NULL
/// 
/// \sa SDL_GetWindowMinimumSize()
/// \sa SDL_SetWindowMaximumSize()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetWindowMaximumSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GetWindowMaximumSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GetWindowMaximumSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GetWindowMaximumSize');
  return _SDL_GetWindowMaximumSize(window, w, h);
}

/// 
/// \brief Set the border state of a window.
/// 
/// This will add or remove the window's SDL_WINDOW_BORDERLESS flag and
/// add or remove the border from the actual window. This is a no-op if the
/// window's border already matches the requested state.
/// 
/// \param window The window of which to change the border state.
/// \param bordered SDL_FALSE to remove border, SDL_TRUE to add border.
/// 
/// \note You can't change the border state of a fullscreen window.
/// 
/// \sa SDL_GetWindowFlags()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowBordered(SDL_Window * window, SDL_bool bordered)
/// ```
void SDL_SetWindowBordered(Pointer<SDL_Window>? window, int bordered) {
  final _SDL_SetWindowBordered = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 bordered),
      void Function(Pointer<SDL_Window>? window, int bordered)>('SDL_SetWindowBordered');
  return _SDL_SetWindowBordered(window, bordered);
}

/// 
/// \brief Show a window.
/// 
/// \sa SDL_HideWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_ShowWindow(SDL_Window * window)
/// ```
void SDL_ShowWindow(Pointer<SDL_Window>? window) {
  final _SDL_ShowWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_ShowWindow');
  return _SDL_ShowWindow(window);
}

/// 
/// \brief Hide a window.
/// 
/// \sa SDL_ShowWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_HideWindow(SDL_Window * window)
/// ```
void SDL_HideWindow(Pointer<SDL_Window>? window) {
  final _SDL_HideWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_HideWindow');
  return _SDL_HideWindow(window);
}

/// 
/// \brief Raise a window above other windows and set the input focus.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RaiseWindow(SDL_Window * window)
/// ```
void SDL_RaiseWindow(Pointer<SDL_Window>? window) {
  final _SDL_RaiseWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_RaiseWindow');
  return _SDL_RaiseWindow(window);
}

/// 
/// \brief Make a window as large as possible.
/// 
/// \sa SDL_RestoreWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MaximizeWindow(SDL_Window * window)
/// ```
void SDL_MaximizeWindow(Pointer<SDL_Window>? window) {
  final _SDL_MaximizeWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_MaximizeWindow');
  return _SDL_MaximizeWindow(window);
}

/// 
/// \brief Minimize a window to an iconic representation.
/// 
/// \sa SDL_RestoreWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_MinimizeWindow(SDL_Window * window)
/// ```
void SDL_MinimizeWindow(Pointer<SDL_Window>? window) {
  final _SDL_MinimizeWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_MinimizeWindow');
  return _SDL_MinimizeWindow(window);
}

/// 
/// \brief Restore the size and position of a minimized or maximized window.
/// 
/// \sa SDL_MaximizeWindow()
/// \sa SDL_MinimizeWindow()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_RestoreWindow(SDL_Window * window)
/// ```
void SDL_RestoreWindow(Pointer<SDL_Window>? window) {
  final _SDL_RestoreWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_RestoreWindow');
  return _SDL_RestoreWindow(window);
}

/// 
/// \brief Set a window's fullscreen state.
/// 
/// \return 0 on success, or -1 if setting the display mode failed.
/// 
/// \sa SDL_SetWindowDisplayMode()
/// \sa SDL_GetWindowDisplayMode()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowFullscreen(SDL_Window * window, Uint32 flags)
/// ```
int SDL_SetWindowFullscreen(Pointer<SDL_Window>? window, int flags) {
  final _SDL_SetWindowFullscreen = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Uint32 flags),
      int Function(Pointer<SDL_Window>? window, int flags)>('SDL_SetWindowFullscreen');
  return _SDL_SetWindowFullscreen(window, flags);
}

/// 
/// \brief Get the SDL surface associated with the window.
/// 
/// \return The window's framebuffer surface, or NULL on error.
/// 
/// A new surface will be created with the optimal format for the window,
/// if necessary. This surface will be freed when the window is destroyed.
/// 
/// \note You may not combine this with 3D or the rendering API on this window.
/// 
/// \sa SDL_UpdateWindowSurface()
/// \sa SDL_UpdateWindowSurfaceRects()
/// 
/// ```c
/// extern DECLSPEC SDL_Surface * SDLCALL SDL_GetWindowSurface(SDL_Window * window)
/// ```
Pointer<SDL_Surface>? SDL_GetWindowSurface(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowSurface = DLL_SDL2.lookupFunction<
      Pointer<SDL_Surface>? Function(Pointer<SDL_Window>? window),
      Pointer<SDL_Surface>? Function(Pointer<SDL_Window>? window)>('SDL_GetWindowSurface');
  return _SDL_GetWindowSurface(window);
}

/// 
/// \brief Copy the window surface to the screen.
/// 
/// \return 0 on success, or -1 on error.
/// 
/// \sa SDL_GetWindowSurface()
/// \sa SDL_UpdateWindowSurfaceRects()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateWindowSurface(SDL_Window * window)
/// ```
int SDL_UpdateWindowSurface(Pointer<SDL_Window>? window) {
  final _SDL_UpdateWindowSurface = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_UpdateWindowSurface');
  return _SDL_UpdateWindowSurface(window);
}

/// 
/// \brief Copy a number of rectangles on the window surface to the screen.
/// 
/// \return 0 on success, or -1 on error.
/// 
/// \sa SDL_GetWindowSurface()
/// \sa SDL_UpdateWindowSurfaceRect()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_UpdateWindowSurfaceRects(SDL_Window * window, const SDL_Rect * rects, int numrects)
/// ```
int SDL_UpdateWindowSurfaceRects(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rects, int numrects) {
  final _SDL_UpdateWindowSurfaceRects = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rects, Int32 numrects),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rects, int numrects)>('SDL_UpdateWindowSurfaceRects');
  return _SDL_UpdateWindowSurfaceRects(window, rects, numrects);
}

/// 
/// \brief Set a window's input grab mode.
/// 
/// \param window The window for which the input grab mode should be set.
/// \param grabbed This is SDL_TRUE to grab input, and SDL_FALSE to release input.
/// 
/// \sa SDL_GetWindowGrab()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowGrab(SDL_Window * window, SDL_bool grabbed)
/// ```
void SDL_SetWindowGrab(Pointer<SDL_Window>? window, int grabbed) {
  final _SDL_SetWindowGrab = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 grabbed),
      void Function(Pointer<SDL_Window>? window, int grabbed)>('SDL_SetWindowGrab');
  return _SDL_SetWindowGrab(window, grabbed);
}

/// 
/// \brief Get a window's input grab mode.
/// 
/// \return This returns SDL_TRUE if input is grabbed, and SDL_FALSE otherwise.
/// 
/// \sa SDL_SetWindowGrab()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowGrab(SDL_Window * window)
/// ```
int SDL_GetWindowGrab(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowGrab = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowGrab');
  return _SDL_GetWindowGrab(window);
}

/// 
/// \brief Set the brightness (gamma correction) for a window.
/// 
/// \return 0 on success, or -1 if setting the brightness isn't supported.
/// 
/// \sa SDL_GetWindowBrightness()
/// \sa SDL_SetWindowGammaRamp()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowBrightness(SDL_Window * window, float brightness)
/// ```
int SDL_SetWindowBrightness(Pointer<SDL_Window>? window, double brightness) {
  final _SDL_SetWindowBrightness = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Float brightness),
      int Function(Pointer<SDL_Window>? window, double brightness)>('SDL_SetWindowBrightness');
  return _SDL_SetWindowBrightness(window, brightness);
}

/// 
/// \brief Get the brightness (gamma correction) for a window.
/// 
/// \return The last brightness value passed to SDL_SetWindowBrightness()
/// 
/// \sa SDL_SetWindowBrightness()
/// 
/// ```c
/// extern DECLSPEC float SDLCALL SDL_GetWindowBrightness(SDL_Window * window)
/// ```
double SDL_GetWindowBrightness(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowBrightness = DLL_SDL2.lookupFunction<
      Float Function(Pointer<SDL_Window>? window),
      double Function(Pointer<SDL_Window>? window)>('SDL_GetWindowBrightness');
  return _SDL_GetWindowBrightness(window);
}

/// 
/// \brief Set the gamma ramp for a window.
/// 
/// \param window The window for which the gamma ramp should be set.
/// \param red The translation table for the red channel, or NULL.
/// \param green The translation table for the green channel, or NULL.
/// \param blue The translation table for the blue channel, or NULL.
/// 
/// \return 0 on success, or -1 if gamma ramps are unsupported.
/// 
/// Set the gamma translation table for the red, green, and blue channels
/// of the video hardware.  Each table is an array of 256 16-bit quantities,
/// representing a mapping between the input and output for that channel.
/// The input is the index into the array, and the output is the 16-bit
/// gamma value at that index, scaled to the output color precision.
/// 
/// \sa SDL_GetWindowGammaRamp()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowGammaRamp(SDL_Window * window, const Uint16 * red, const Uint16 * green, const Uint16 * blue)
/// ```
int SDL_SetWindowGammaRamp(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue) {
  final _SDL_SetWindowGammaRamp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue),
      int Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue)>('SDL_SetWindowGammaRamp');
  return _SDL_SetWindowGammaRamp(window, red, green, blue);
}

/// 
/// \brief Get the gamma ramp for a window.
/// 
/// \param window The window from which the gamma ramp should be queried.
/// \param red   A pointer to a 256 element array of 16-bit quantities to hold
/// the translation table for the red channel, or NULL.
/// \param green A pointer to a 256 element array of 16-bit quantities to hold
/// the translation table for the green channel, or NULL.
/// \param blue  A pointer to a 256 element array of 16-bit quantities to hold
/// the translation table for the blue channel, or NULL.
/// 
/// \return 0 on success, or -1 if gamma ramps are unsupported.
/// 
/// \sa SDL_SetWindowGammaRamp()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowGammaRamp(SDL_Window * window, Uint16 * red, Uint16 * green, Uint16 * blue)
/// ```
int SDL_GetWindowGammaRamp(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue) {
  final _SDL_GetWindowGammaRamp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue),
      int Function(Pointer<SDL_Window>? window, Pointer<Uint16>? red, Pointer<Uint16>? green, Pointer<Uint16>? blue)>('SDL_GetWindowGammaRamp');
  return _SDL_GetWindowGammaRamp(window, red, green, blue);
}

/// 
/// \brief Destroy a window.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DestroyWindow(SDL_Window * window)
/// ```
void SDL_DestroyWindow(Pointer<SDL_Window>? window) {
  final _SDL_DestroyWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_DestroyWindow');
  return _SDL_DestroyWindow(window);
}

/// 
/// \brief Returns whether the screensaver is currently enabled (default on).
/// 
/// \sa SDL_EnableScreenSaver()
/// \sa SDL_DisableScreenSaver()
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IsScreenSaverEnabled(void)
/// ```
int SDL_IsScreenSaverEnabled() {
  final _SDL_IsScreenSaverEnabled = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_IsScreenSaverEnabled');
  return _SDL_IsScreenSaverEnabled();
}

/// 
/// \brief Allow the screen to be blanked by a screensaver
/// 
/// \sa SDL_IsScreenSaverEnabled()
/// \sa SDL_DisableScreenSaver()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_EnableScreenSaver(void)
/// ```
void SDL_EnableScreenSaver() {
  final _SDL_EnableScreenSaver = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_EnableScreenSaver');
  return _SDL_EnableScreenSaver();
}

/// 
/// \brief Prevent the screen from being blanked by a screensaver
/// 
/// \sa SDL_IsScreenSaverEnabled()
/// \sa SDL_EnableScreenSaver()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DisableScreenSaver(void)
/// ```
void SDL_DisableScreenSaver() {
  final _SDL_DisableScreenSaver = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_DisableScreenSaver');
  return _SDL_DisableScreenSaver();
}

/// 
/// \brief Dynamically load an OpenGL library.
/// 
/// \param path The platform dependent OpenGL library name, or NULL to open the
/// default OpenGL library.
/// 
/// \return 0 on success, or -1 if the library couldn't be loaded.
/// 
/// This should be done after initializing the video driver, but before
/// creating any OpenGL windows.  If no OpenGL library is loaded, the default
/// library will be loaded upon creation of the first OpenGL window.
/// 
/// \note If you do this, you need to retrieve all of the GL functions used in
/// your program from the dynamic library using SDL_GL_GetProcAddress().
/// 
/// \sa SDL_GL_GetProcAddress()
/// \sa SDL_GL_UnloadLibrary()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_LoadLibrary(const char *path)
/// ```
int SDL_GL_LoadLibrary(String path) {
  final _SDL_GL_LoadLibrary = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? path),
      int Function(Pointer<Utf8>? path)>('SDL_GL_LoadLibrary');
  final _pathPointer = path.toNativeUtf8();
  final _result = _SDL_GL_LoadLibrary(_pathPointer);
  calloc.free(_pathPointer);
  return _result;
}

/// 
/// \brief Get the address of an OpenGL function.
/// 
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_GL_GetProcAddress(const char *proc)
/// ```
Pointer<Void>? SDL_GL_GetProcAddress(String proc) {
  final _SDL_GL_GetProcAddress = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? proc),
      Pointer<Void>? Function(Pointer<Utf8>? proc)>('SDL_GL_GetProcAddress');
  final _procPointer = proc.toNativeUtf8();
  final _result = _SDL_GL_GetProcAddress(_procPointer);
  calloc.free(_procPointer);
  return _result;
}

/// 
/// \brief Unload the OpenGL library previously loaded by SDL_GL_LoadLibrary().
/// 
/// \sa SDL_GL_LoadLibrary()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_UnloadLibrary(void)
/// ```
void SDL_GL_UnloadLibrary() {
  final _SDL_GL_UnloadLibrary = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GL_UnloadLibrary');
  return _SDL_GL_UnloadLibrary();
}

/// 
/// \brief Return true if an OpenGL extension is supported for the current
/// context.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GL_ExtensionSupported(const char *extension)
/// ```
int SDL_GL_ExtensionSupported(String extension) {
  final _SDL_GL_ExtensionSupported = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? extension),
      int Function(Pointer<Utf8>? extension)>('SDL_GL_ExtensionSupported');
  final _extensionPointer = extension.toNativeUtf8();
  final _result = _SDL_GL_ExtensionSupported(_extensionPointer);
  calloc.free(_extensionPointer);
  return _result;
}

/// 
/// \brief Set an OpenGL window attribute before window creation.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_SetAttribute(SDL_GLattr attr, int value)
/// ```
int SDL_GL_SetAttribute(int attr, int value) {
  final _SDL_GL_SetAttribute = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 attr, Int32 value),
      int Function(int attr, int value)>('SDL_GL_SetAttribute');
  return _SDL_GL_SetAttribute(attr, value);
}

/// 
/// \brief Get the actual value for an attribute from the current context.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_GetAttribute(SDL_GLattr attr, int *value)
/// ```
int SDL_GL_GetAttribute(int attr, Pointer<Int32>? value) {
  final _SDL_GL_GetAttribute = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 attr, Pointer<Int32>? value),
      int Function(int attr, Pointer<Int32>? value)>('SDL_GL_GetAttribute');
  return _SDL_GL_GetAttribute(attr, value);
}

/// 
/// \brief Create an OpenGL context for use with an OpenGL window, and make it
/// current.
/// 
/// \sa SDL_GL_DeleteContext()
/// 
/// ```c
/// extern DECLSPEC SDL_GLContext SDLCALL SDL_GL_CreateContext(SDL_Window * window)
/// ```
Pointer<Void>? SDL_GL_CreateContext(Pointer<SDL_Window>? window) {
  final _SDL_GL_CreateContext = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window),
      Pointer<Void>? Function(Pointer<SDL_Window>? window)>('SDL_GL_CreateContext');
  return _SDL_GL_CreateContext(window);
}

/// 
/// \brief Set up an OpenGL context for rendering into an OpenGL window.
/// 
/// \note The context must have been created with a compatible window.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_MakeCurrent(SDL_Window * window, SDL_GLContext context)
/// ```
int SDL_GL_MakeCurrent(Pointer<SDL_Window>? window, Pointer<Void>? context) {
  final _SDL_GL_MakeCurrent = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Void>? context),
      int Function(Pointer<SDL_Window>? window, Pointer<Void>? context)>('SDL_GL_MakeCurrent');
  return _SDL_GL_MakeCurrent(window, context);
}

/// 
/// \brief Get the currently active OpenGL window.
/// 
/// ```c
/// extern DECLSPEC SDL_Window* SDLCALL SDL_GL_GetCurrentWindow(void)
/// ```
Pointer<SDL_Window>? SDL_GL_GetCurrentWindow() {
  final _SDL_GL_GetCurrentWindow = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GL_GetCurrentWindow');
  return _SDL_GL_GetCurrentWindow();
}

/// 
/// \brief Get the currently active OpenGL context.
/// 
/// ```c
/// extern DECLSPEC SDL_GLContext SDLCALL SDL_GL_GetCurrentContext(void)
/// ```
Pointer<Void>? SDL_GL_GetCurrentContext() {
  final _SDL_GL_GetCurrentContext = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('SDL_GL_GetCurrentContext');
  return _SDL_GL_GetCurrentContext();
}

/// 
/// \brief Set the swap interval for the current OpenGL context.
/// 
/// \param interval 0 for immediate updates, 1 for updates synchronized with the
/// vertical retrace. If the system supports it, you may
/// specify -1 to allow late swaps to happen immediately
/// instead of waiting for the next retrace.
/// 
/// \return 0 on success, or -1 if setting the swap interval is not supported.
/// 
/// \sa SDL_GL_GetSwapInterval()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_SetSwapInterval(int interval)
/// ```
int SDL_GL_SetSwapInterval(int interval) {
  final _SDL_GL_SetSwapInterval = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 interval),
      int Function(int interval)>('SDL_GL_SetSwapInterval');
  return _SDL_GL_SetSwapInterval(interval);
}

/// 
/// \brief Get the swap interval for the current OpenGL context.
/// 
/// \return 0 if there is no vertical retrace synchronization, 1 if the buffer
/// swap is synchronized with the vertical retrace, and -1 if late
/// swaps happen immediately instead of waiting for the next retrace.
/// If the system can't determine the swap interval, or there isn't a
/// valid current context, this will return 0 as a safe default.
/// 
/// \sa SDL_GL_SetSwapInterval()
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GL_GetSwapInterval(void)
/// ```
int SDL_GL_GetSwapInterval() {
  final _SDL_GL_GetSwapInterval = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GL_GetSwapInterval');
  return _SDL_GL_GetSwapInterval();
}

/// 
/// \brief Swap the OpenGL buffers for a window, if double-buffering is
/// supported.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_SwapWindow(SDL_Window * window)
/// ```
void SDL_GL_SwapWindow(Pointer<SDL_Window>? window) {
  final _SDL_GL_SwapWindow = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window),
      void Function(Pointer<SDL_Window>? window)>('SDL_GL_SwapWindow');
  return _SDL_GL_SwapWindow(window);
}

/// 
/// \brief Delete an OpenGL context.
/// 
/// \sa SDL_GL_CreateContext()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_DeleteContext(SDL_GLContext context)
/// ```
void SDL_GL_DeleteContext(Pointer<Void>? context) {
  final _SDL_GL_DeleteContext = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? context),
      void Function(Pointer<Void>? context)>('SDL_GL_DeleteContext');
  return _SDL_GL_DeleteContext(context);
}

