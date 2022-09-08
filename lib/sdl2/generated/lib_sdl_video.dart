// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Get the number of video drivers compiled into SDL.
/// 
/// \returns a number >= 1 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetVideoDriver
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
/// Get the name of a built in video driver.
/// 
/// The video drivers are presented in the order in which they are normally
/// checked during initialization.
/// 
/// \param index the index of a video driver
/// \returns the name of the video driver with the given **index**.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetNumVideoDrivers
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
/// Initialize the video subsystem, optionally specifying a video driver.
/// 
/// This function initializes the video subsystem, setting up a connection to
/// the window manager, etc, and determines the available display modes and
/// pixel formats, but does not initialize a window or graphics mode.
/// 
/// If you use this function and you haven't used the SDL_INIT_VIDEO flag with
/// either SDL_Init() or SDL_InitSubSystem(), you should call SDL_VideoQuit()
/// before calling SDL_Quit().
/// 
/// It is safe to call this function multiple times. SDL_VideoInit() will call
/// SDL_VideoQuit() itself if the video subsystem has already been initialized.
/// 
/// You can use SDL_GetNumVideoDrivers() and SDL_GetVideoDriver() to find a
/// specific `driver_name`.
/// 
/// \param driver_name the name of a video driver to initialize, or NULL for
/// the default driver
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetNumVideoDrivers
/// \sa SDL_GetVideoDriver
/// \sa SDL_InitSubSystem
/// \sa SDL_VideoQuit
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
/// Shut down the video subsystem, if initialized with SDL_VideoInit().
/// 
/// This function closes all windows, and restores the original video mode.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_VideoInit
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
/// Get the name of the currently initialized video driver.
/// 
/// \returns the name of the current video driver or NULL if no driver has been
/// initialized.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetNumVideoDrivers
/// \sa SDL_GetVideoDriver
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
/// Get the number of available video displays.
/// 
/// \returns a number >= 1 or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetDisplayBounds
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
/// Get the name of a display in UTF-8 encoding.
/// 
/// \param displayIndex the index of display from which the name should be
/// queried
/// \returns the name of a display or NULL for an invalid display index or
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetNumVideoDisplays
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
/// Get the desktop area represented by a display.
/// 
/// The primary display (`displayIndex` zero) is always located at 0,0.
/// 
/// \param displayIndex the index of the display to query
/// \param rect the SDL_Rect structure filled in with the display bounds
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetNumVideoDisplays
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
/// Get the usable desktop area represented by a display.
/// 
/// The primary display (`displayIndex` zero) is always located at 0,0.
/// 
/// This is the same area as SDL_GetDisplayBounds() reports, but with portions
/// reserved by the system removed. For example, on Apple's macOS, this
/// subtracts the area occupied by the menu bar and dock.
/// 
/// Setting a window to be fullscreen generally bypasses these unusable areas,
/// so these are good guidelines for the maximum space available to a
/// non-fullscreen window.
/// 
/// The parameter `rect` is ignored if it is NULL.
/// 
/// This function also returns -1 if the parameter `displayIndex` is out of
/// range.
/// 
/// \param displayIndex the index of the display to query the usable bounds
/// from
/// \param rect the SDL_Rect structure filled in with the display bounds
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_GetDisplayBounds
/// \sa SDL_GetNumVideoDisplays
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDisplayUsableBounds(int displayIndex, SDL_Rect * rect)
/// ```
int SDL_GetDisplayUsableBounds(int displayIndex, Pointer<SDL_Rect>? rect) {
  final _SDL_GetDisplayUsableBounds = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<SDL_Rect>? rect),
      int Function(int displayIndex, Pointer<SDL_Rect>? rect)>('SDL_GetDisplayUsableBounds');
  return _SDL_GetDisplayUsableBounds(displayIndex, rect);
}

/// 
/// Get the dots/pixels-per-inch for a display.
/// 
/// Diagonal, horizontal and vertical DPI can all be optionally returned if the
/// appropriate parameter is non-NULL.
/// 
/// A failure of this function usually means that either no DPI information is
/// available or the `displayIndex` is out of range.
/// 
/// **WARNING**: This reports the DPI that the hardware reports, and it is not
/// always reliable! It is almost always better to use SDL_GetWindowSize() to
/// find the window size, which might be in logical points instead of pixels,
/// and then SDL_GL_GetDrawableSize(), SDL_Vulkan_GetDrawableSize(),
/// SDL_Metal_GetDrawableSize(), or SDL_GetRendererOutputSize(), and compare
/// the two values to get an actual scaling value between the two. We will be
/// rethinking how high-dpi details should be managed in SDL3 to make things
/// more consistent, reliable, and clear.
/// 
/// \param displayIndex the index of the display from which DPI information
/// should be queried
/// \param ddpi a pointer filled in with the diagonal DPI of the display; may
/// be NULL
/// \param hdpi a pointer filled in with the horizontal DPI of the display; may
/// be NULL
/// \param vdpi a pointer filled in with the vertical DPI of the display; may
/// be NULL
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_GetNumVideoDisplays
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetDisplayDPI(int displayIndex, float * ddpi, float * hdpi, float * vdpi)
/// ```
int SDL_GetDisplayDPI(int displayIndex, Pointer<Float>? ddpi, Pointer<Float>? hdpi, Pointer<Float>? vdpi) {
  final _SDL_GetDisplayDPI = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex, Pointer<Float>? ddpi, Pointer<Float>? hdpi, Pointer<Float>? vdpi),
      int Function(int displayIndex, Pointer<Float>? ddpi, Pointer<Float>? hdpi, Pointer<Float>? vdpi)>('SDL_GetDisplayDPI');
  return _SDL_GetDisplayDPI(displayIndex, ddpi, hdpi, vdpi);
}

/// 
/// Get the orientation of a display.
/// 
/// \param displayIndex the index of the display to query
/// \returns The SDL_DisplayOrientation enum value of the display, or
/// `SDL_ORIENTATION_UNKNOWN` if it isn't available.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// \sa SDL_GetNumVideoDisplays
/// 
/// ```c
/// extern DECLSPEC SDL_DisplayOrientation SDLCALL SDL_GetDisplayOrientation(int displayIndex)
/// ```
int SDL_GetDisplayOrientation(int displayIndex) {
  final _SDL_GetDisplayOrientation = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 displayIndex),
      int Function(int displayIndex)>('SDL_GetDisplayOrientation');
  return _SDL_GetDisplayOrientation(displayIndex);
}

/// 
/// Get the number of available display modes.
/// 
/// The `displayIndex` needs to be in the range from 0 to
/// SDL_GetNumVideoDisplays() - 1.
/// 
/// \param displayIndex the index of the display to query
/// \returns a number >= 1 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetDisplayMode
/// \sa SDL_GetNumVideoDisplays
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
/// Get information about a specific display mode.
/// 
/// The display modes are sorted in this priority:
/// 
/// - width -> largest to smallest
/// - height -> largest to smallest
/// - bits per pixel -> more colors to fewer colors
/// - packed pixel layout -> largest to smallest
/// - refresh rate -> highest to lowest
/// 
/// \param displayIndex the index of the display to query
/// \param modeIndex the index of the display mode to query
/// \param mode an SDL_DisplayMode structure filled in with the mode at
/// `modeIndex`
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetNumDisplayModes
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
/// Get information about the desktop's display mode.
/// 
/// There's a difference between this function and SDL_GetCurrentDisplayMode()
/// when SDL runs fullscreen and has changed the resolution. In that case this
/// function will return the previous native display mode, and not the current
/// display mode.
/// 
/// \param displayIndex the index of the display to query
/// \param mode an SDL_DisplayMode structure filled in with the current display
/// mode
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetCurrentDisplayMode
/// \sa SDL_GetDisplayMode
/// \sa SDL_SetWindowDisplayMode
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
/// Get information about the current display mode.
/// 
/// There's a difference between this function and SDL_GetDesktopDisplayMode()
/// when SDL runs fullscreen and has changed the resolution. In that case this
/// function will return the current display mode, and not the previous native
/// display mode.
/// 
/// \param displayIndex the index of the display to query
/// \param mode an SDL_DisplayMode structure filled in with the current display
/// mode
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetDesktopDisplayMode
/// \sa SDL_GetDisplayMode
/// \sa SDL_GetNumVideoDisplays
/// \sa SDL_SetWindowDisplayMode
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
/// Get the closest match to the requested display mode.
/// 
/// The available display modes are scanned and `closest` is filled in with the
/// closest mode matching the requested mode and returned. The mode format and
/// refresh rate default to the desktop mode if they are set to 0. The modes
/// are scanned with size being first priority, format being second priority,
/// and finally checking the refresh rate. If all the available modes are too
/// small, then NULL is returned.
/// 
/// \param displayIndex the index of the display to query
/// \param mode an SDL_DisplayMode structure containing the desired display
/// mode
/// \param closest an SDL_DisplayMode structure filled in with the closest
/// match of the available display modes
/// \returns the passed in value `closest` or NULL if no matching video mode
/// was available; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetDisplayMode
/// \sa SDL_GetNumDisplayModes
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
/// Get the index of the display containing a point
/// 
/// \param point the point to query
/// \returns the index of the display containing the point or a negative error
/// code on failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.24.0.
/// 
/// \sa SDL_GetDisplayBounds
/// \sa SDL_GetNumVideoDisplays
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetPointDisplayIndex(const SDL_Point * point)
/// ```
int SDL_GetPointDisplayIndex(Pointer<SDL_Point>? point) {
  final _SDL_GetPointDisplayIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Point>? point),
      int Function(Pointer<SDL_Point>? point)>('SDL_GetPointDisplayIndex');
  return _SDL_GetPointDisplayIndex(point);
}

/// 
/// Get the index of the display primarily containing a rect
/// 
/// \param rect the rect to query
/// \returns the index of the display entirely containing the rect or closest
/// to the center of the rect on success or a negative error code on
/// failure; call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.24.0.
/// 
/// \sa SDL_GetDisplayBounds
/// \sa SDL_GetNumVideoDisplays
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetRectDisplayIndex(const SDL_Rect * rect)
/// ```
int SDL_GetRectDisplayIndex(Pointer<SDL_Rect>? rect) {
  final _SDL_GetRectDisplayIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Rect>? rect)>('SDL_GetRectDisplayIndex');
  return _SDL_GetRectDisplayIndex(rect);
}

/// 
/// Get the index of the display associated with a window.
/// 
/// \param window the window to query
/// \returns the index of the display containing the center of the window on
/// success or a negative error code on failure; call SDL_GetError()
/// for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetDisplayBounds
/// \sa SDL_GetNumVideoDisplays
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
/// Set the display mode to use when a window is visible at fullscreen.
/// 
/// This only affects the display mode used when the window is fullscreen. To
/// change the window size when the window is not fullscreen, use
/// SDL_SetWindowSize().
/// 
/// \param window the window to affect
/// \param mode the SDL_DisplayMode structure representing the mode to use, or
/// NULL to use the window's dimensions and the desktop's format
/// and refresh rate
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowDisplayMode
/// \sa SDL_SetWindowFullscreen
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
/// Query the display mode to use when a window is visible at fullscreen.
/// 
/// \param window the window to query
/// \param mode an SDL_DisplayMode structure filled in with the fullscreen
/// display mode
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowDisplayMode
/// \sa SDL_SetWindowFullscreen
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
/// Get the raw ICC profile data for the screen the window is currently on.
/// 
/// Data returned should be freed with SDL_free.
/// 
/// \param window the window to query
/// \param size the size of the ICC profile
/// \returns the raw ICC profile data on success or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// ```c
/// extern DECLSPEC void* SDLCALL SDL_GetWindowICCProfile(SDL_Window * window, size_t* size)
/// ```
Pointer<Void>? SDL_GetWindowICCProfile(Pointer<SDL_Window>? window, Pointer<Uint32>? size) {
  final _SDL_GetWindowICCProfile = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Uint32>? size),
      Pointer<Void>? Function(Pointer<SDL_Window>? window, Pointer<Uint32>? size)>('SDL_GetWindowICCProfile');
  return _SDL_GetWindowICCProfile(window, size);
}

/// 
/// Get the pixel format associated with the window.
/// 
/// \param window the window to query
/// \returns the pixel format of the window on success or
/// SDL_PIXELFORMAT_UNKNOWN on failure; call SDL_GetError() for more
/// information.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Create a window with the specified position, dimensions, and flags.
/// 
/// `flags` may be any of the following OR'd together:
/// 
/// - `SDL_WINDOW_FULLSCREEN`: fullscreen window
/// - `SDL_WINDOW_FULLSCREEN_DESKTOP`: fullscreen window at desktop resolution
/// - `SDL_WINDOW_OPENGL`: window usable with an OpenGL context
/// - `SDL_WINDOW_VULKAN`: window usable with a Vulkan instance
/// - `SDL_WINDOW_METAL`: window usable with a Metal instance
/// - `SDL_WINDOW_HIDDEN`: window is not visible
/// - `SDL_WINDOW_BORDERLESS`: no window decoration
/// - `SDL_WINDOW_RESIZABLE`: window can be resized
/// - `SDL_WINDOW_MINIMIZED`: window is minimized
/// - `SDL_WINDOW_MAXIMIZED`: window is maximized
/// - `SDL_WINDOW_INPUT_GRABBED`: window has grabbed input focus
/// - `SDL_WINDOW_ALLOW_HIGHDPI`: window should be created in high-DPI mode if
/// supported (>= SDL 2.0.1)
/// 
/// `SDL_WINDOW_SHOWN` is ignored by SDL_CreateWindow(). The SDL_Window is
/// implicitly shown if SDL_WINDOW_HIDDEN is not set. `SDL_WINDOW_SHOWN` may be
/// queried later using SDL_GetWindowFlags().
/// 
/// On Apple's macOS, you **must** set the NSHighResolutionCapable Info.plist
/// property to YES, otherwise you will not receive a High-DPI OpenGL canvas.
/// 
/// If the window is created with the `SDL_WINDOW_ALLOW_HIGHDPI` flag, its size
/// in pixels may differ from its size in screen coordinates on platforms with
/// high-DPI support (e.g. iOS and macOS). Use SDL_GetWindowSize() to query the
/// client area's size in screen coordinates, and SDL_GL_GetDrawableSize() or
/// SDL_GetRendererOutputSize() to query the drawable size in pixels. Note that
/// when this flag is set, the drawable size can vary after the window is
/// created and should be queried after major window events such as when the
/// window is resized or moved between displays.
/// 
/// If the window is set fullscreen, the width and height parameters `w` and
/// `h` will not be used. However, invalid size parameters (e.g. too large) may
/// still fail. Window size is actually limited to 16384 x 16384 for all
/// platforms at window creation.
/// 
/// If the window is created with any of the SDL_WINDOW_OPENGL or
/// SDL_WINDOW_VULKAN flags, then the corresponding LoadLibrary function
/// (SDL_GL_LoadLibrary or SDL_Vulkan_LoadLibrary) is called and the
/// corresponding UnloadLibrary function is called by SDL_DestroyWindow().
/// 
/// If SDL_WINDOW_VULKAN is specified and there isn't a working Vulkan driver,
/// SDL_CreateWindow() will fail because SDL_Vulkan_LoadLibrary() will fail.
/// 
/// If SDL_WINDOW_METAL is specified on an OS that does not support Metal,
/// SDL_CreateWindow() will fail.
/// 
/// On non-Apple devices, SDL requires you to either not link to the Vulkan
/// loader or link to a dynamic library version. This limitation may be removed
/// in a future version of SDL.
/// 
/// \param title the title of the window, in UTF-8 encoding
/// \param x the x position of the window, `SDL_WINDOWPOS_CENTERED`, or
/// `SDL_WINDOWPOS_UNDEFINED`
/// \param y the y position of the window, `SDL_WINDOWPOS_CENTERED`, or
/// `SDL_WINDOWPOS_UNDEFINED`
/// \param w the width of the window, in screen coordinates
/// \param h the height of the window, in screen coordinates
/// \param flags 0, or one or more SDL_WindowFlags OR'd together
/// \returns the window that was created or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateWindowFrom
/// \sa SDL_DestroyWindow
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
/// Create an SDL window from an existing native window.
/// 
/// In some cases (e.g. OpenGL) and on some platforms (e.g. Microsoft Windows)
/// the hint `SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT` needs to be configured
/// before using SDL_CreateWindowFrom().
/// 
/// \param data a pointer to driver-dependent window creation data, typically
/// your native window cast to a void*
/// \returns the window that was created or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateWindow
/// \sa SDL_DestroyWindow
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
/// Get the numeric ID of a window.
/// 
/// The numeric ID is what SDL_WindowEvent references, and is necessary to map
/// these events to specific SDL_Window objects.
/// 
/// \param window the window to query
/// \returns the ID of the window on success or 0 on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowFromID
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
/// Get a window from a stored ID.
/// 
/// The numeric ID is what SDL_WindowEvent references, and is necessary to map
/// these events to specific SDL_Window objects.
/// 
/// \param id the ID of the window
/// \returns the window associated with `id` or NULL if it doesn't exist; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowID
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
/// Get the window flags.
/// 
/// \param window the window to query
/// \returns a mask of the SDL_WindowFlags associated with `window`
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateWindow
/// \sa SDL_HideWindow
/// \sa SDL_MaximizeWindow
/// \sa SDL_MinimizeWindow
/// \sa SDL_SetWindowFullscreen
/// \sa SDL_SetWindowGrab
/// \sa SDL_ShowWindow
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
/// Set the title of a window.
/// 
/// This string is expected to be in UTF-8 encoding.
/// 
/// \param window the window to change
/// \param title the desired window title in UTF-8 format
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowTitle
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
/// Get the title of a window.
/// 
/// \param window the window to query
/// \returns the title of the window in UTF-8 format or "" if there is no
/// title.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowTitle
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
/// Set the icon for a window.
/// 
/// \param window the window to change
/// \param icon an SDL_Surface structure containing the icon for the window
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Associate an arbitrary named pointer with a window.
/// 
/// `name` is case-sensitive.
/// 
/// \param window the window to associate with the pointer
/// \param name the name of the pointer
/// \param userdata the associated pointer
/// \returns the previous value associated with `name`.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowData
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
/// Retrieve the data pointer associated with a window.
/// 
/// \param window the window to query
/// \param name the name of the pointer
/// \returns the value associated with `name`.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowData
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
/// Set the position of a window.
/// 
/// The window coordinate origin is the upper left of the display.
/// 
/// \param window the window to reposition
/// \param x the x coordinate of the window in screen coordinates, or
/// `SDL_WINDOWPOS_CENTERED` or `SDL_WINDOWPOS_UNDEFINED`
/// \param y the y coordinate of the window in screen coordinates, or
/// `SDL_WINDOWPOS_CENTERED` or `SDL_WINDOWPOS_UNDEFINED`
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowPosition
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
/// Get the position of a window.
/// 
/// If you do not need the value for one of the positions a NULL may be passed
/// in the `x` or `y` parameter.
/// 
/// \param window the window to query
/// \param x a pointer filled in with the x position of the window, in screen
/// coordinates, may be NULL
/// \param y a pointer filled in with the y position of the window, in screen
/// coordinates, may be NULL
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowPosition
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
/// Set the size of a window's client area.
/// 
/// The window size in screen coordinates may differ from the size in pixels,
/// if the window was created with `SDL_WINDOW_ALLOW_HIGHDPI` on a platform
/// with high-dpi support (e.g. iOS or macOS). Use SDL_GL_GetDrawableSize() or
/// SDL_GetRendererOutputSize() to get the real client area size in pixels.
/// 
/// Fullscreen windows automatically match the size of the display mode, and
/// you should use SDL_SetWindowDisplayMode() to change their size.
/// 
/// \param window the window to change
/// \param w the width of the window in pixels, in screen coordinates, must be
/// > 0
/// \param h the height of the window in pixels, in screen coordinates, must be
/// > 0
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowSize
/// \sa SDL_SetWindowDisplayMode
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
/// Get the size of a window's client area.
/// 
/// NULL can safely be passed as the `w` or `h` parameter if the width or
/// height value is not desired.
/// 
/// The window size in screen coordinates may differ from the size in pixels,
/// if the window was created with `SDL_WINDOW_ALLOW_HIGHDPI` on a platform
/// with high-dpi support (e.g. iOS or macOS). Use SDL_GL_GetDrawableSize(),
/// SDL_Vulkan_GetDrawableSize(), or SDL_GetRendererOutputSize() to get the
/// real client area size in pixels.
/// 
/// \param window the window to query the width and height from
/// \param w a pointer filled in with the width of the window, in screen
/// coordinates, may be NULL
/// \param h a pointer filled in with the height of the window, in screen
/// coordinates, may be NULL
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_GetDrawableSize
/// \sa SDL_Vulkan_GetDrawableSize
/// \sa SDL_SetWindowSize
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
/// Get the size of a window's borders (decorations) around the client area.
/// 
/// Note: If this function fails (returns -1), the size values will be
/// initialized to 0, 0, 0, 0 (if a non-NULL pointer is provided), as if the
/// window in question was borderless.
/// 
/// Note: This function may fail on systems where the window has not yet been
/// decorated by the display server (for example, immediately after calling
/// SDL_CreateWindow). It is recommended that you wait at least until the
/// window has been presented and composited, so that the window system has a
/// chance to decorate the window and provide the border dimensions to SDL.
/// 
/// This function also returns -1 if getting the information is not supported.
/// 
/// \param window the window to query the size values of the border
/// (decorations) from
/// \param top pointer to variable for storing the size of the top border; NULL
/// is permitted
/// \param left pointer to variable for storing the size of the left border;
/// NULL is permitted
/// \param bottom pointer to variable for storing the size of the bottom
/// border; NULL is permitted
/// \param right pointer to variable for storing the size of the right border;
/// NULL is permitted
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_GetWindowSize
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowBordersSize(SDL_Window * window, int *top, int *left, int *bottom, int *right)
/// ```
int SDL_GetWindowBordersSize(Pointer<SDL_Window>? window, Pointer<Int32>? top, Pointer<Int32>? left, Pointer<Int32>? bottom, Pointer<Int32>? right) {
  final _SDL_GetWindowBordersSize = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Int32>? top, Pointer<Int32>? left, Pointer<Int32>? bottom, Pointer<Int32>? right),
      int Function(Pointer<SDL_Window>? window, Pointer<Int32>? top, Pointer<Int32>? left, Pointer<Int32>? bottom, Pointer<Int32>? right)>('SDL_GetWindowBordersSize');
  return _SDL_GetWindowBordersSize(window, top, left, bottom, right);
}

/// 
/// Set the minimum size of a window's client area.
/// 
/// \param window the window to change
/// \param min_w the minimum width of the window in pixels
/// \param min_h the minimum height of the window in pixels
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowMinimumSize
/// \sa SDL_SetWindowMaximumSize
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
/// Get the minimum size of a window's client area.
/// 
/// \param window the window to query
/// \param w a pointer filled in with the minimum width of the window, may be
/// NULL
/// \param h a pointer filled in with the minimum height of the window, may be
/// NULL
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowMaximumSize
/// \sa SDL_SetWindowMinimumSize
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
/// Set the maximum size of a window's client area.
/// 
/// \param window the window to change
/// \param max_w the maximum width of the window in pixels
/// \param max_h the maximum height of the window in pixels
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowMaximumSize
/// \sa SDL_SetWindowMinimumSize
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
/// Get the maximum size of a window's client area.
/// 
/// \param window the window to query
/// \param w a pointer filled in with the maximum width of the window, may be
/// NULL
/// \param h a pointer filled in with the maximum height of the window, may be
/// NULL
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowMinimumSize
/// \sa SDL_SetWindowMaximumSize
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
/// Set the border state of a window.
/// 
/// This will add or remove the window's `SDL_WINDOW_BORDERLESS` flag and add
/// or remove the border from the actual window. This is a no-op if the
/// window's border already matches the requested state.
/// 
/// You can't change the border state of a fullscreen window.
/// 
/// \param window the window of which to change the border state
/// \param bordered SDL_FALSE to remove border, SDL_TRUE to add border
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowFlags
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
/// Set the user-resizable state of a window.
/// 
/// This will add or remove the window's `SDL_WINDOW_RESIZABLE` flag and
/// allow/disallow user resizing of the window. This is a no-op if the window's
/// resizable state already matches the requested state.
/// 
/// You can't change the resizable state of a fullscreen window.
/// 
/// \param window the window of which to change the resizable state
/// \param resizable SDL_TRUE to allow resizing, SDL_FALSE to disallow
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_GetWindowFlags
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowResizable(SDL_Window * window, SDL_bool resizable)
/// ```
void SDL_SetWindowResizable(Pointer<SDL_Window>? window, int resizable) {
  final _SDL_SetWindowResizable = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 resizable),
      void Function(Pointer<SDL_Window>? window, int resizable)>('SDL_SetWindowResizable');
  return _SDL_SetWindowResizable(window, resizable);
}

/// 
/// Set the window to always be above the others.
/// 
/// This will add or remove the window's `SDL_WINDOW_ALWAYS_ON_TOP` flag. This
/// will bring the window to the front and keep the window above the rest.
/// 
/// \param window The window of which to change the always on top state
/// \param on_top SDL_TRUE to set the window always on top, SDL_FALSE to
/// disable
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// \sa SDL_GetWindowFlags
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowAlwaysOnTop(SDL_Window * window, SDL_bool on_top)
/// ```
void SDL_SetWindowAlwaysOnTop(Pointer<SDL_Window>? window, int on_top) {
  final _SDL_SetWindowAlwaysOnTop = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 on_top),
      void Function(Pointer<SDL_Window>? window, int on_top)>('SDL_SetWindowAlwaysOnTop');
  return _SDL_SetWindowAlwaysOnTop(window, on_top);
}

/// 
/// Show a window.
/// 
/// \param window the window to show
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HideWindow
/// \sa SDL_RaiseWindow
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
/// Hide a window.
/// 
/// \param window the window to hide
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_ShowWindow
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
/// Raise a window above other windows and set the input focus.
/// 
/// \param window the window to raise
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Make a window as large as possible.
/// 
/// \param window the window to maximize
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_MinimizeWindow
/// \sa SDL_RestoreWindow
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
/// Minimize a window to an iconic representation.
/// 
/// \param window the window to minimize
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_MaximizeWindow
/// \sa SDL_RestoreWindow
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
/// Restore the size and position of a minimized or maximized window.
/// 
/// \param window the window to restore
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_MaximizeWindow
/// \sa SDL_MinimizeWindow
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
/// Set a window's fullscreen state.
/// 
/// `flags` may be `SDL_WINDOW_FULLSCREEN`, for "real" fullscreen with a
/// videomode change; `SDL_WINDOW_FULLSCREEN_DESKTOP` for "fake" fullscreen
/// that takes the size of the desktop; and 0 for windowed mode.
/// 
/// \param window the window to change
/// \param flags `SDL_WINDOW_FULLSCREEN`, `SDL_WINDOW_FULLSCREEN_DESKTOP` or 0
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowDisplayMode
/// \sa SDL_SetWindowDisplayMode
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
/// Get the SDL surface associated with the window.
/// 
/// A new surface will be created with the optimal format for the window, if
/// necessary. This surface will be freed when the window is destroyed. Do not
/// free this surface.
/// 
/// This surface will be invalidated if the window is resized. After resizing a
/// window this function must be called again to return a valid surface.
/// 
/// You may not combine this with 3D or the rendering API on this window.
/// 
/// This function is affected by `SDL_HINT_FRAMEBUFFER_ACCELERATION`.
/// 
/// \param window the window to query
/// \returns the surface associated with the window, or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_UpdateWindowSurface
/// \sa SDL_UpdateWindowSurfaceRects
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
/// Copy the window surface to the screen.
/// 
/// This is the function you use to reflect any changes to the surface on the
/// screen.
/// 
/// This function is equivalent to the SDL 1.2 API SDL_Flip().
/// 
/// \param window the window to update
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowSurface
/// \sa SDL_UpdateWindowSurfaceRects
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
/// Copy areas of the window surface to the screen.
/// 
/// This is the function you use to reflect changes to portions of the surface
/// on the screen.
/// 
/// This function is equivalent to the SDL 1.2 API SDL_UpdateRects().
/// 
/// \param window the window to update
/// \param rects an array of SDL_Rect structures representing areas of the
/// surface to copy
/// \param numrects the number of rectangles
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowSurface
/// \sa SDL_UpdateWindowSurface
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
/// Set a window's input grab mode.
/// 
/// When input is grabbed, the mouse is confined to the window. This function
/// will also grab the keyboard if `SDL_HINT_GRAB_KEYBOARD` is set. To grab the
/// keyboard without also grabbing the mouse, use SDL_SetWindowKeyboardGrab().
/// 
/// If the caller enables a grab while another window is currently grabbed, the
/// other window loses its grab in favor of the caller's window.
/// 
/// \param window the window for which the input grab mode should be set
/// \param grabbed SDL_TRUE to grab input or SDL_FALSE to release input
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetGrabbedWindow
/// \sa SDL_GetWindowGrab
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
/// Set a window's keyboard grab mode.
/// 
/// Keyboard grab enables capture of system keyboard shortcuts like Alt+Tab or
/// the Meta/Super key. Note that not all system keyboard shortcuts can be
/// captured by applications (one example is Ctrl+Alt+Del on Windows).
/// 
/// This is primarily intended for specialized applications such as VNC clients
/// or VM frontends. Normal games should not use keyboard grab.
/// 
/// When keyboard grab is enabled, SDL will continue to handle Alt+Tab when the
/// window is full-screen to ensure the user is not trapped in your
/// application. If you have a custom keyboard shortcut to exit fullscreen
/// mode, you may suppress this behavior with
/// `SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED`.
/// 
/// If the caller enables a grab while another window is currently grabbed, the
/// other window loses its grab in favor of the caller's window.
/// 
/// \param window The window for which the keyboard grab mode should be set.
/// \param grabbed This is SDL_TRUE to grab keyboard, and SDL_FALSE to release.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// \sa SDL_GetWindowKeyboardGrab
/// \sa SDL_SetWindowMouseGrab
/// \sa SDL_SetWindowGrab
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowKeyboardGrab(SDL_Window * window, SDL_bool grabbed)
/// ```
void SDL_SetWindowKeyboardGrab(Pointer<SDL_Window>? window, int grabbed) {
  final _SDL_SetWindowKeyboardGrab = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 grabbed),
      void Function(Pointer<SDL_Window>? window, int grabbed)>('SDL_SetWindowKeyboardGrab');
  return _SDL_SetWindowKeyboardGrab(window, grabbed);
}

/// 
/// Set a window's mouse grab mode.
/// 
/// Mouse grab confines the mouse cursor to the window.
/// 
/// \param window The window for which the mouse grab mode should be set.
/// \param grabbed This is SDL_TRUE to grab mouse, and SDL_FALSE to release.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// \sa SDL_GetWindowMouseGrab
/// \sa SDL_SetWindowKeyboardGrab
/// \sa SDL_SetWindowGrab
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetWindowMouseGrab(SDL_Window * window, SDL_bool grabbed)
/// ```
void SDL_SetWindowMouseGrab(Pointer<SDL_Window>? window, int grabbed) {
  final _SDL_SetWindowMouseGrab = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Int32 grabbed),
      void Function(Pointer<SDL_Window>? window, int grabbed)>('SDL_SetWindowMouseGrab');
  return _SDL_SetWindowMouseGrab(window, grabbed);
}

/// 
/// Get a window's input grab mode.
/// 
/// \param window the window to query
/// \returns SDL_TRUE if input is grabbed, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowGrab
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
/// Get a window's keyboard grab mode.
/// 
/// \param window the window to query
/// \returns SDL_TRUE if keyboard is grabbed, and SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// \sa SDL_SetWindowKeyboardGrab
/// \sa SDL_GetWindowGrab
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowKeyboardGrab(SDL_Window * window)
/// ```
int SDL_GetWindowKeyboardGrab(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowKeyboardGrab = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowKeyboardGrab');
  return _SDL_GetWindowKeyboardGrab(window);
}

/// 
/// Get a window's mouse grab mode.
/// 
/// \param window the window to query
/// \returns SDL_TRUE if mouse is grabbed, and SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// \sa SDL_SetWindowKeyboardGrab
/// \sa SDL_GetWindowGrab
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetWindowMouseGrab(SDL_Window * window)
/// ```
int SDL_GetWindowMouseGrab(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowMouseGrab = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_GetWindowMouseGrab');
  return _SDL_GetWindowMouseGrab(window);
}

/// 
/// Get the window that currently has an input grab enabled.
/// 
/// \returns the window if input is grabbed or NULL otherwise.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// \sa SDL_GetWindowGrab
/// \sa SDL_SetWindowGrab
/// 
/// ```c
/// extern DECLSPEC SDL_Window * SDLCALL SDL_GetGrabbedWindow(void)
/// ```
Pointer<SDL_Window>? SDL_GetGrabbedWindow() {
  final _SDL_GetGrabbedWindow = DLL_SDL2.lookupFunction<
      Pointer<SDL_Window>? Function(),
      Pointer<SDL_Window>? Function()>('SDL_GetGrabbedWindow');
  return _SDL_GetGrabbedWindow();
}

/// 
/// Confines the cursor to the specified area of a window.
/// 
/// Note that this does NOT grab the cursor, it only defines the area a cursor
/// is restricted to when the window has mouse focus.
/// 
/// \param window The window that will be associated with the barrier.
/// \param rect A rectangle area in window-relative coordinates. If NULL the
/// barrier for the specified window will be destroyed.
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_GetWindowMouseRect
/// \sa SDL_SetWindowMouseGrab
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowMouseRect(SDL_Window * window, const SDL_Rect * rect)
/// ```
int SDL_SetWindowMouseRect(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rect) {
  final _SDL_SetWindowMouseRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rect),
      int Function(Pointer<SDL_Window>? window, Pointer<SDL_Rect>? rect)>('SDL_SetWindowMouseRect');
  return _SDL_SetWindowMouseRect(window, rect);
}

/// 
/// Get the mouse confinement rectangle of a window.
/// 
/// \param window The window to query
/// \returns A pointer to the mouse confinement rectangle of a window, or NULL
/// if there isn't one.
/// 
/// \since This function is available since SDL 2.0.18.
/// 
/// \sa SDL_SetWindowMouseRect
/// 
/// ```c
/// extern DECLSPEC const SDL_Rect * SDLCALL SDL_GetWindowMouseRect(SDL_Window * window)
/// ```
Pointer<SDL_Rect>? SDL_GetWindowMouseRect(Pointer<SDL_Window>? window) {
  final _SDL_GetWindowMouseRect = DLL_SDL2.lookupFunction<
      Pointer<SDL_Rect>? Function(Pointer<SDL_Window>? window),
      Pointer<SDL_Rect>? Function(Pointer<SDL_Window>? window)>('SDL_GetWindowMouseRect');
  return _SDL_GetWindowMouseRect(window);
}

/// 
/// Set the brightness (gamma multiplier) for a given window's display.
/// 
/// Despite the name and signature, this method sets the brightness of the
/// entire display, not an individual window. A window is considered to be
/// owned by the display that contains the window's center pixel. (The index of
/// this display can be retrieved using SDL_GetWindowDisplayIndex().) The
/// brightness set will not follow the window if it is moved to another
/// display.
/// 
/// Many platforms will refuse to set the display brightness in modern times.
/// You are better off using a shader to adjust gamma during rendering, or
/// something similar.
/// 
/// \param window the window used to select the display whose brightness will
/// be changed
/// \param brightness the brightness (gamma multiplier) value to set where 0.0
/// is completely dark and 1.0 is normal brightness
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowBrightness
/// \sa SDL_SetWindowGammaRamp
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
/// Get the brightness (gamma multiplier) for a given window's display.
/// 
/// Despite the name and signature, this method retrieves the brightness of the
/// entire display, not an individual window. A window is considered to be
/// owned by the display that contains the window's center pixel. (The index of
/// this display can be retrieved using SDL_GetWindowDisplayIndex().)
/// 
/// \param window the window used to select the display whose brightness will
/// be queried
/// \returns the brightness for the display where 0.0 is completely dark and
/// 1.0 is normal brightness.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowBrightness
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
/// Set the opacity for a window.
/// 
/// The parameter `opacity` will be clamped internally between 0.0f
/// (transparent) and 1.0f (opaque).
/// 
/// This function also returns -1 if setting the opacity isn't supported.
/// 
/// \param window the window which will be made transparent or opaque
/// \param opacity the opacity value (0.0f - transparent, 1.0f - opaque)
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_GetWindowOpacity
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowOpacity(SDL_Window * window, float opacity)
/// ```
int SDL_SetWindowOpacity(Pointer<SDL_Window>? window, double opacity) {
  final _SDL_SetWindowOpacity = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Float opacity),
      int Function(Pointer<SDL_Window>? window, double opacity)>('SDL_SetWindowOpacity');
  return _SDL_SetWindowOpacity(window, opacity);
}

/// 
/// Get the opacity of a window.
/// 
/// If transparency isn't supported on this platform, opacity will be reported
/// as 1.0f without error.
/// 
/// The parameter `opacity` is ignored if it is NULL.
/// 
/// This function also returns -1 if an invalid window was provided.
/// 
/// \param window the window to get the current opacity value from
/// \param out_opacity the float filled in (0.0f - transparent, 1.0f - opaque)
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_SetWindowOpacity
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetWindowOpacity(SDL_Window * window, float * out_opacity)
/// ```
int SDL_GetWindowOpacity(Pointer<SDL_Window>? window, Pointer<Float>? out_opacity) {
  final _SDL_GetWindowOpacity = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Float>? out_opacity),
      int Function(Pointer<SDL_Window>? window, Pointer<Float>? out_opacity)>('SDL_GetWindowOpacity');
  return _SDL_GetWindowOpacity(window, out_opacity);
}

/// 
/// Set the window as a modal for another window.
/// 
/// \param modal_window the window that should be set modal
/// \param parent_window the parent window for the modal window
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowModalFor(SDL_Window * modal_window, SDL_Window * parent_window)
/// ```
int SDL_SetWindowModalFor(Pointer<SDL_Window>? modal_window, Pointer<SDL_Window>? parent_window) {
  final _SDL_SetWindowModalFor = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? modal_window, Pointer<SDL_Window>? parent_window),
      int Function(Pointer<SDL_Window>? modal_window, Pointer<SDL_Window>? parent_window)>('SDL_SetWindowModalFor');
  return _SDL_SetWindowModalFor(modal_window, parent_window);
}

/// 
/// Explicitly set input focus to the window.
/// 
/// You almost certainly want SDL_RaiseWindow() instead of this function. Use
/// this with caution, as you might give focus to a window that is completely
/// obscured by other windows.
/// 
/// \param window the window that should get the input focus
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.5.
/// 
/// \sa SDL_RaiseWindow
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowInputFocus(SDL_Window * window)
/// ```
int SDL_SetWindowInputFocus(Pointer<SDL_Window>? window) {
  final _SDL_SetWindowInputFocus = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window),
      int Function(Pointer<SDL_Window>? window)>('SDL_SetWindowInputFocus');
  return _SDL_SetWindowInputFocus(window);
}

/// 
/// Set the gamma ramp for the display that owns a given window.
/// 
/// Set the gamma translation table for the red, green, and blue channels of
/// the video hardware. Each table is an array of 256 16-bit quantities,
/// representing a mapping between the input and output for that channel. The
/// input is the index into the array, and the output is the 16-bit gamma value
/// at that index, scaled to the output color precision.
/// 
/// Despite the name and signature, this method sets the gamma ramp of the
/// entire display, not an individual window. A window is considered to be
/// owned by the display that contains the window's center pixel. (The index of
/// this display can be retrieved using SDL_GetWindowDisplayIndex().) The gamma
/// ramp set will not follow the window if it is moved to another display.
/// 
/// \param window the window used to select the display whose gamma ramp will
/// be changed
/// \param red a 256 element array of 16-bit quantities representing the
/// translation table for the red channel, or NULL
/// \param green a 256 element array of 16-bit quantities representing the
/// translation table for the green channel, or NULL
/// \param blue a 256 element array of 16-bit quantities representing the
/// translation table for the blue channel, or NULL
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GetWindowGammaRamp
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
/// Get the gamma ramp for a given window's display.
/// 
/// Despite the name and signature, this method retrieves the gamma ramp of the
/// entire display, not an individual window. A window is considered to be
/// owned by the display that contains the window's center pixel. (The index of
/// this display can be retrieved using SDL_GetWindowDisplayIndex().)
/// 
/// \param window the window used to select the display whose gamma ramp will
/// be queried
/// \param red a 256 element array of 16-bit quantities filled in with the
/// translation table for the red channel, or NULL
/// \param green a 256 element array of 16-bit quantities filled in with the
/// translation table for the green channel, or NULL
/// \param blue a 256 element array of 16-bit quantities filled in with the
/// translation table for the blue channel, or NULL
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_SetWindowGammaRamp
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
/// Provide a callback that decides if a window region has special properties.
/// 
/// Normally windows are dragged and resized by decorations provided by the
/// system window manager (a title bar, borders, etc), but for some apps, it
/// makes sense to drag them from somewhere else inside the window itself; for
/// example, one might have a borderless window that wants to be draggable from
/// any part, or simulate its own title bar, etc.
/// 
/// This function lets the app provide a callback that designates pieces of a
/// given window as special. This callback is run during event processing if we
/// need to tell the OS to treat a region of the window specially; the use of
/// this callback is known as "hit testing."
/// 
/// Mouse input may not be delivered to your application if it is within a
/// special area; the OS will often apply that input to moving the window or
/// resizing the window and not deliver it to the application.
/// 
/// Specifying NULL for a callback disables hit-testing. Hit-testing is
/// disabled by default.
/// 
/// Platforms that don't support this functionality will return -1
/// unconditionally, even if you're attempting to disable hit-testing.
/// 
/// Your callback may fire at any time, and its firing does not indicate any
/// specific behavior (for example, on Windows, this certainly might fire when
/// the OS is deciding whether to drag your window, but it fires for lots of
/// other reasons, too, some unrelated to anything you probably care about _and
/// when the mouse isn't actually at the location it is testing_). Since this
/// can fire at any time, you should try to keep your callback efficient,
/// devoid of allocations, etc.
/// 
/// \param window the window to set hit-testing on
/// \param callback the function to call when doing a hit-test
/// \param callback_data an app-defined void pointer passed to **callback**
/// \returns 0 on success or -1 on error (including unsupported); call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.4.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetWindowHitTest(SDL_Window * window, SDL_HitTest callback, void *callback_data)
/// ```
int SDL_SetWindowHitTest(Pointer<SDL_Window>? window, Pointer<Void>? callback, Pointer<Void>? callback_data) {
  final _SDL_SetWindowHitTest = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Pointer<Void>? callback, Pointer<Void>? callback_data),
      int Function(Pointer<SDL_Window>? window, Pointer<Void>? callback, Pointer<Void>? callback_data)>('SDL_SetWindowHitTest');
  return _SDL_SetWindowHitTest(window, callback, callback_data);
}

/// 
/// Request a window to demand attention from the user.
/// 
/// \param window the window to be flashed
/// \param operation the flash operation
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.16.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_FlashWindow(SDL_Window * window, SDL_FlashOperation operation)
/// ```
int SDL_FlashWindow(Pointer<SDL_Window>? window, int operation) {
  final _SDL_FlashWindow = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Window>? window, Int32 operation),
      int Function(Pointer<SDL_Window>? window, int operation)>('SDL_FlashWindow');
  return _SDL_FlashWindow(window, operation);
}

/// 
/// Destroy a window.
/// 
/// If `window` is NULL, this function will return immediately after setting
/// the SDL error message to "Invalid window". See SDL_GetError().
/// 
/// \param window the window to destroy
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_CreateWindow
/// \sa SDL_CreateWindowFrom
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
/// Check whether the screensaver is currently enabled.
/// 
/// The screensaver is disabled by default since SDL 2.0.2. Before SDL 2.0.2
/// the screensaver was enabled by default.
/// 
/// The default can also be changed using `SDL_HINT_VIDEO_ALLOW_SCREENSAVER`.
/// 
/// \returns SDL_TRUE if the screensaver is enabled, SDL_FALSE if it is
/// disabled.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_DisableScreenSaver
/// \sa SDL_EnableScreenSaver
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
/// Allow the screen to be blanked by a screen saver.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_DisableScreenSaver
/// \sa SDL_IsScreenSaverEnabled
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
/// Prevent the screen from being blanked by a screen saver.
/// 
/// If you disable the screensaver, it is automatically re-enabled when SDL
/// quits.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_EnableScreenSaver
/// \sa SDL_IsScreenSaverEnabled
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
/// Dynamically load an OpenGL library.
/// 
/// This should be done after initializing the video driver, but before
/// creating any OpenGL windows. If no OpenGL library is loaded, the default
/// library will be loaded upon creation of the first OpenGL window.
/// 
/// If you do this, you need to retrieve all of the GL functions used in your
/// program from the dynamic library using SDL_GL_GetProcAddress().
/// 
/// \param path the platform dependent OpenGL library name, or NULL to open the
/// default OpenGL library
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_GetProcAddress
/// \sa SDL_GL_UnloadLibrary
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
/// Get an OpenGL function by name.
/// 
/// If the GL library is loaded at runtime with SDL_GL_LoadLibrary(), then all
/// GL functions must be retrieved this way. Usually this is used to retrieve
/// function pointers to OpenGL extensions.
/// 
/// There are some quirks to looking up OpenGL functions that require some
/// extra care from the application. If you code carefully, you can handle
/// these quirks without any platform-specific code, though:
/// 
/// - On Windows, function pointers are specific to the current GL context;
/// this means you need to have created a GL context and made it current
/// before calling SDL_GL_GetProcAddress(). If you recreate your context or
/// create a second context, you should assume that any existing function
/// pointers aren't valid to use with it. This is (currently) a
/// Windows-specific limitation, and in practice lots of drivers don't suffer
/// this limitation, but it is still the way the wgl API is documented to
/// work and you should expect crashes if you don't respect it. Store a copy
/// of the function pointers that comes and goes with context lifespan.
/// - On X11, function pointers returned by this function are valid for any
/// context, and can even be looked up before a context is created at all.
/// This means that, for at least some common OpenGL implementations, if you
/// look up a function that doesn't exist, you'll get a non-NULL result that
/// is _NOT_ safe to call. You must always make sure the function is actually
/// available for a given GL context before calling it, by checking for the
/// existence of the appropriate extension with SDL_GL_ExtensionSupported(),
/// or verifying that the version of OpenGL you're using offers the function
/// as core functionality.
/// - Some OpenGL drivers, on all platforms, *will* return NULL if a function
/// isn't supported, but you can't count on this behavior. Check for
/// extensions you use, and if you get a NULL anyway, act as if that
/// extension wasn't available. This is probably a bug in the driver, but you
/// can code defensively for this scenario anyhow.
/// - Just because you're on Linux/Unix, don't assume you'll be using X11.
/// Next-gen display servers are waiting to replace it, and may or may not
/// make the same promises about function pointers.
/// - OpenGL function pointers must be declared `APIENTRY` as in the example
/// code. This will ensure the proper calling convention is followed on
/// platforms where this matters (Win32) thereby avoiding stack corruption.
/// 
/// \param proc the name of an OpenGL function
/// \returns a pointer to the named OpenGL function. The returned pointer
/// should be cast to the appropriate function signature.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_ExtensionSupported
/// \sa SDL_GL_LoadLibrary
/// \sa SDL_GL_UnloadLibrary
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
/// Unload the OpenGL library previously loaded by SDL_GL_LoadLibrary().
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_LoadLibrary
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
/// Check if an OpenGL extension is supported for the current context.
/// 
/// This function operates on the current GL context; you must have created a
/// context and it must be current before calling this function. Do not assume
/// that all contexts you create will have the same set of extensions
/// available, or that recreating an existing context will offer the same
/// extensions again.
/// 
/// While it's probably not a massive overhead, this function is not an O(1)
/// operation. Check the extensions you care about after creating the GL
/// context and save that information somewhere instead of calling the function
/// every time you need to know.
/// 
/// \param extension the name of the extension to check
/// \returns SDL_TRUE if the extension is supported, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Reset all previously set OpenGL context attributes to their default values.
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// \sa SDL_GL_GetAttribute
/// \sa SDL_GL_SetAttribute
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_ResetAttributes(void)
/// ```
void SDL_GL_ResetAttributes() {
  final _SDL_GL_ResetAttributes = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_GL_ResetAttributes');
  return _SDL_GL_ResetAttributes();
}

/// 
/// Set an OpenGL window attribute before window creation.
/// 
/// This function sets the OpenGL attribute `attr` to `value`. The requested
/// attributes should be set before creating an OpenGL window. You should use
/// SDL_GL_GetAttribute() to check the values after creating the OpenGL
/// context, since the values obtained can differ from the requested ones.
/// 
/// \param attr an SDL_GLattr enum value specifying the OpenGL attribute to set
/// \param value the desired value for the attribute
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_GetAttribute
/// \sa SDL_GL_ResetAttributes
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
/// Get the actual value for an attribute from the current context.
/// 
/// \param attr an SDL_GLattr enum value specifying the OpenGL attribute to get
/// \param value a pointer filled in with the current value of `attr`
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_ResetAttributes
/// \sa SDL_GL_SetAttribute
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
/// Create an OpenGL context for an OpenGL window, and make it current.
/// 
/// Windows users new to OpenGL should note that, for historical reasons, GL
/// functions added after OpenGL version 1.1 are not available by default.
/// Those functions must be loaded at run-time, either with an OpenGL
/// extension-handling library or with SDL_GL_GetProcAddress() and its related
/// functions.
/// 
/// SDL_GLContext is an alias for `void *`. It's opaque to the application.
/// 
/// \param window the window to associate with the context
/// \returns the OpenGL context associated with `window` or NULL on error; call
/// SDL_GetError() for more details.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_DeleteContext
/// \sa SDL_GL_MakeCurrent
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
/// Set up an OpenGL context for rendering into an OpenGL window.
/// 
/// The context must have been created with a compatible window.
/// 
/// \param window the window to associate with the context
/// \param context the OpenGL context to associate with the window
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_CreateContext
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
/// Get the currently active OpenGL window.
/// 
/// \returns the currently active OpenGL window on success or NULL on failure;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Get the currently active OpenGL context.
/// 
/// \returns the currently active OpenGL context or NULL on failure; call
/// SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_MakeCurrent
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
/// Get the size of a window's underlying drawable in pixels.
/// 
/// This returns info useful for calling glViewport().
/// 
/// This may differ from SDL_GetWindowSize() if we're rendering to a high-DPI
/// drawable, i.e. the window was created with `SDL_WINDOW_ALLOW_HIGHDPI` on a
/// platform with high-DPI support (Apple calls this "Retina"), and not
/// disabled by the `SDL_HINT_VIDEO_HIGHDPI_DISABLED` hint.
/// 
/// \param window the window from which the drawable size should be queried
/// \param w a pointer to variable for storing the width in pixels, may be NULL
/// \param h a pointer to variable for storing the height in pixels, may be
/// NULL
/// 
/// \since This function is available since SDL 2.0.1.
/// 
/// \sa SDL_CreateWindow
/// \sa SDL_GetWindowSize
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GL_GetDrawableSize(SDL_Window * window, int *w, int *h)
/// ```
void SDL_GL_GetDrawableSize(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h) {
  final _SDL_GL_GetDrawableSize = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h),
      void Function(Pointer<SDL_Window>? window, Pointer<Int32>? w, Pointer<Int32>? h)>('SDL_GL_GetDrawableSize');
  return _SDL_GL_GetDrawableSize(window, w, h);
}

/// 
/// Set the swap interval for the current OpenGL context.
/// 
/// Some systems allow specifying -1 for the interval, to enable adaptive
/// vsync. Adaptive vsync works the same as vsync, but if you've already missed
/// the vertical retrace for a given frame, it swaps buffers immediately, which
/// might be less jarring for the user during occasional framerate drops. If an
/// application requests adaptive vsync and the system does not support it,
/// this function will fail and return -1. In such a case, you should probably
/// retry the call with 1 for the interval.
/// 
/// Adaptive vsync is implemented for some glX drivers with
/// GLX_EXT_swap_control_tear, and for some Windows drivers with
/// WGL_EXT_swap_control_tear.
/// 
/// Read more on the Khronos wiki:
/// https://www.khronos.org/opengl/wiki/Swap_Interval#Adaptive_Vsync
/// 
/// \param interval 0 for immediate updates, 1 for updates synchronized with
/// the vertical retrace, -1 for adaptive vsync
/// \returns 0 on success or -1 if setting the swap interval is not supported;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_GetSwapInterval
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
/// Get the swap interval for the current OpenGL context.
/// 
/// If the system can't determine the swap interval, or there isn't a valid
/// current context, this function will return 0 as a safe default.
/// 
/// \returns 0 if there is no vertical retrace synchronization, 1 if the buffer
/// swap is synchronized with the vertical retrace, and -1 if late
/// swaps happen immediately instead of waiting for the next retrace;
/// call SDL_GetError() for more information.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_SetSwapInterval
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
/// Update a window with OpenGL rendering.
/// 
/// This is used with double-buffered OpenGL contexts, which are the default.
/// 
/// On macOS, make sure you bind 0 to the draw framebuffer before swapping the
/// window, otherwise nothing will happen. If you aren't using
/// glBindFramebuffer(), this is the default and you won't have to do anything
/// extra.
/// 
/// \param window the window to change
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Delete an OpenGL context.
/// 
/// \param context the OpenGL context to be deleted
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_GL_CreateContext
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

