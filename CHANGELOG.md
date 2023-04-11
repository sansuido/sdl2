## 1.5.0
- [update] Support SDL version 2.26.5 (stable).
- [changed] Changed the gfx library that depended on the dll to the dart source.

## 1.4.4
- [add] Added default colors to SdlColorEx (black, white, and etc).
- [fix] Fixed that Point of getSize of SdlTexturePointerEx was ambiguous type.
- [fix] Renamed getMouseState in extension to getMousePosition.

## 1.4.3
- [changed] Changed ambiguous types of Point and Rectangle to <double>.

## 1.4.2
- [update] Support SDL version 2.26.4 (stable).
- [changed] Rewrite Rectagle extension (add 'expansion' and more...).

## 1.4.1
- [update] Support SDL version 2.26.3 (stable).
- [update] Support SDL2_image version 2.6.3.
- [update] Support SDL2_mixer version 2.6.3.
- [update] Support SDL2_ttf version 2.20.2.
- [changed] Change behavior when argument is null (setViewport & setClipRect).

## 1.4.0
- [update] Support SDL version 2.26.0 (stable).
- [add] Support SDL2_gfx version 1.0.4.
- [add] Added functions using extension.
- [add] Added examples.
- [changed] Changed Pointer_Void to Pointer_NativeType.
- [changed] Changed String to String?. If you want to pass nullptr, use null for the argument.
- [fix] Fixed callback function was Pointer_Void.

## 1.3.2
- [update]  Rewrite a pointer to be non-nullable.
- [fix]  Fixed union position bug.

## 1.3.1
- [fix] Fix version.

## 1.3.0
- [update] Functions and structs follow lint rules.

## 1.2.0
- [update] Support SDL version 2.24.0 (stable).
- [update] Support SDL2_image version 2.6.2.
- [update] Support SDL2_mixer version 2.6.2.
- [update] Support SDL2_net version 2.2.0.
- [update] Support SDL2_ttf version 2.20.1.

## 1.1.1
- [update] Support SDL version 2.0.22 (stable).

## 1.1.0
- [update] Support multi platform.
- [update] Support SDL version 2.0.20 (stable).

## 1.0.12
- [fix] Fix version.

## 1.0.11
- [fix] SDLK_ const value change to int.

## 1.0.10

- [update] Updated assuming GLEW.

## 1.0.9

- [fix] File name change for uniformity.

## 1.0.8

- [add] Added gl functions.
- [fix] File name change for uniformity.

## 1.0.7

- [fix] Fixed Struct extension.
- [add] Added CONST that was ignored.

## 1.0.6

- [add] Added comment to function.

## 1.0.5

- [update] Rewrote the source to support null safety.

## 1.0.4

- [update] Support Linux.

## 1.0.3

- [fix] Fixed a bug where SDL_Color was Void *.

## 1.0.2

- [fix] Abolished addressOf.
- [fix] Fixed to use single quotation instead of double quotation.

## 1.0.1

- [fix] Fixed a bug where SDL_bool was not created by auto-generation.


## 1.0.0

- [add] Initial.
