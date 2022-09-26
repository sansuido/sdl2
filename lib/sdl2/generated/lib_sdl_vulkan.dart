// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Dynamically load the Vulkan loader library.
///
/// This should be called after initializing the video driver, but before
/// creating any Vulkan windows. If no Vulkan loader library is loaded, the
/// default library will be loaded upon creation of the first Vulkan window.
///
/// It is fairly common for Vulkan applications to link with libvulkan instead
/// of explicitly loading it at run time. This will work with SDL provided the
/// application links to a dynamic library and both it and SDL use the same
/// search path.
///
/// If you specify a non-NULL `path`, an application should retrieve all of the
/// Vulkan functions it uses from the dynamic library using
/// SDL_Vulkan_GetVkGetInstanceProcAddr unless you can guarantee `path` points
/// to the same vulkan loader library the application linked to.
///
/// On Apple devices, if `path` is NULL, SDL will attempt to find the
/// `vkGetInstanceProcAddr` address within all the Mach-O images of the current
/// process. This is because it is fairly common for Vulkan applications to
/// link with libvulkan (and historically MoltenVK was provided as a static
/// library). If it is not found, on macOS, SDL will attempt to load
/// `vulkan.framework/vulkan`, `libvulkan.1.dylib`,
/// `MoltenVK.framework/MoltenVK`, and `libMoltenVK.dylib`, in that order. On
/// iOS, SDL will attempt to load `libMoltenVK.dylib`. Applications using a
/// dynamic framework or .dylib must ensure it is included in its application
/// bundle.
///
/// On non-Apple devices, application linking with a static libvulkan is not
/// supported. Either do not link to the Vulkan loader or link to a dynamic
/// library version.
///
/// \param path The platform dependent Vulkan loader library name or NULL
/// \returns 0 on success or -1 if the library couldn't be loaded; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.6.
///
/// \sa SDL_Vulkan_GetVkInstanceProcAddr
/// \sa SDL_Vulkan_UnloadLibrary
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_Vulkan_LoadLibrary(const char *path)
/// ```
int sdlVulkanLoadLibrary(String path) {
  final sdlVulkanLoadLibraryLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<Utf8> path),
      int Function(Pointer<Utf8> path)>('SDL_Vulkan_LoadLibrary');
  final pathPointer = path.toNativeUtf8();
  final result = sdlVulkanLoadLibraryLookupFunction(pathPointer);
  calloc.free(pathPointer);
  return result;
}

///
/// Get the address of the `vkGetInstanceProcAddr` function.
///
/// This should be called after either calling SDL_Vulkan_LoadLibrary() or
/// creating an SDL_Window with the `SDL_WINDOW_VULKAN` flag.
///
/// \returns the function pointer for `vkGetInstanceProcAddr` or NULL on error.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_Vulkan_GetVkGetInstanceProcAddr(void)
/// ```
Pointer<Void> sdlVulkanGetVkGetInstanceProcAddr() {
  final sdlVulkanGetVkGetInstanceProcAddrLookupFunction = libSdl2
      .lookupFunction<Pointer<Void> Function(), Pointer<Void> Function()>(
          'SDL_Vulkan_GetVkGetInstanceProcAddr');
  return sdlVulkanGetVkGetInstanceProcAddrLookupFunction();
}

///
/// Unload the Vulkan library previously loaded by SDL_Vulkan_LoadLibrary()
///
/// \since This function is available since SDL 2.0.6.
///
/// \sa SDL_Vulkan_LoadLibrary
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Vulkan_UnloadLibrary(void)
/// ```
void sdlVulkanUnloadLibrary() {
  final sdlVulkanUnloadLibraryLookupFunction =
      libSdl2.lookupFunction<Void Function(), void Function()>(
          'SDL_Vulkan_UnloadLibrary');
  return sdlVulkanUnloadLibraryLookupFunction();
}

///
/// Get the names of the Vulkan instance extensions needed to create a surface
/// with SDL_Vulkan_CreateSurface.
///
/// If `pNames` is NULL, then the number of required Vulkan instance extensions
/// is returned in `pCount`. Otherwise, `pCount` must point to a variable set
/// to the number of elements in the `pNames` array, and on return the variable
/// is overwritten with the number of names actually written to `pNames`. If
/// `pCount` is less than the number of required extensions, at most `pCount`
/// structures will be written. If `pCount` is smaller than the number of
/// required extensions, SDL_FALSE will be returned instead of SDL_TRUE, to
/// indicate that not all the required extensions were returned.
///
/// The `window` parameter is currently needed to be valid as of SDL 2.0.8,
/// however, this parameter will likely be removed in future releases
///
/// \param window A window for which the required Vulkan instance extensions
/// should be retrieved (will be deprecated in a future release)
/// \param pCount A pointer to an unsigned int corresponding to the number of
/// extensions to be returned
/// \param pNames NULL or a pointer to an array to be filled with required
/// Vulkan instance extensions
/// \returns SDL_TRUE on success, SDL_FALSE on error.
///
/// \since This function is available since SDL 2.0.6.
///
/// \sa SDL_Vulkan_CreateSurface
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_Vulkan_GetInstanceExtensions(SDL_Window *window, unsigned int *pCount, const char **pNames)
/// ```
int sdlVulkanGetInstanceExtensions(Pointer<SdlWindow> window,
    Pointer<Uint32> pCount, Pointer<Pointer<Int8>> pNames) {
  final sdlVulkanGetInstanceExtensionsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow> window, Pointer<Uint32> pCount,
          Pointer<Pointer<Int8>> pNames),
      int Function(Pointer<SdlWindow> window, Pointer<Uint32> pCount,
          Pointer<Pointer<Int8>> pNames)>('SDL_Vulkan_GetInstanceExtensions');
  return sdlVulkanGetInstanceExtensionsLookupFunction(window, pCount, pNames);
}

///
/// Create a Vulkan rendering surface for a window.
///
/// The `window` must have been created with the `SDL_WINDOW_VULKAN` flag and
/// `instance` must have been created with extensions returned by
/// SDL_Vulkan_GetInstanceExtensions() enabled.
///
/// \param window The window to which to attach the Vulkan surface
/// \param instance The Vulkan instance handle
/// \param surface A pointer to a VkSurfaceKHR handle to output the newly
/// created surface
/// \returns SDL_TRUE on success, SDL_FALSE on error.
///
/// \since This function is available since SDL 2.0.6.
///
/// \sa SDL_Vulkan_GetInstanceExtensions
/// \sa SDL_Vulkan_GetDrawableSize
///
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_Vulkan_CreateSurface(SDL_Window *window, VkInstance instance, VkSurfaceKHR* surface)
/// ```
int sdlVulkanCreateSurface(
    Pointer<SdlWindow> window, Pointer<Void> instance, Pointer<Void> surface) {
  final sdlVulkanCreateSurfaceLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlWindow> window, Pointer<Void> instance,
          Pointer<Void> surface),
      int Function(Pointer<SdlWindow> window, Pointer<Void> instance,
          Pointer<Void> surface)>('SDL_Vulkan_CreateSurface');
  return sdlVulkanCreateSurfaceLookupFunction(window, instance, surface);
}

///
/// Get the size of the window's underlying drawable dimensions in pixels.
///
/// This may differ from SDL_GetWindowSize() if we're rendering to a high-DPI
/// drawable, i.e. the window was created with `SDL_WINDOW_ALLOW_HIGHDPI` on a
/// platform with high-DPI support (Apple calls this "Retina"), and not
/// disabled by the `SDL_HINT_VIDEO_HIGHDPI_DISABLED` hint.
///
/// \param window an SDL_Window for which the size is to be queried
/// \param w Pointer to the variable to write the width to or NULL
/// \param h Pointer to the variable to write the height to or NULL
///
/// \since This function is available since SDL 2.0.6.
///
/// \sa SDL_GetWindowSize
/// \sa SDL_CreateWindow
/// \sa SDL_Vulkan_CreateSurface
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_Vulkan_GetDrawableSize(SDL_Window * window, int *w, int *h)
/// ```
void sdlVulkanGetDrawableSize(
    Pointer<SdlWindow> window, Pointer<Int32> w, Pointer<Int32> h) {
  final sdlVulkanGetDrawableSizeLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<SdlWindow> window, Pointer<Int32> w, Pointer<Int32> h),
      void Function(Pointer<SdlWindow> window, Pointer<Int32> w,
          Pointer<Int32> h)>('SDL_Vulkan_GetDrawableSize');
  return sdlVulkanGetDrawableSizeLookupFunction(window, w, h);
}
