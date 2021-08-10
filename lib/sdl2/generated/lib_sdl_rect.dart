// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// \brief Determine whether two rectangles intersect.
/// 
/// \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasIntersection(const SDL_Rect * A, const SDL_Rect * B)
/// ```
int SDL_HasIntersection(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B) {
  final _SDL_HasIntersection = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B),
      int Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B)>('SDL_HasIntersection');
  return _SDL_HasIntersection(A, B);
}

/// 
/// \brief Calculate the intersection of two rectangles.
/// 
/// \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result)
/// ```
int SDL_IntersectRect(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result) {
  final _SDL_IntersectRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result),
      int Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result)>('SDL_IntersectRect');
  return _SDL_IntersectRect(A, B, result);
}

/// 
/// \brief Calculate the union of two rectangles.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnionRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result)
/// ```
void SDL_UnionRect(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result) {
  final _SDL_UnionRect = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result),
      void Function(Pointer<SDL_Rect>? A, Pointer<SDL_Rect>? B, Pointer<SDL_Rect>? result)>('SDL_UnionRect');
  return _SDL_UnionRect(A, B, result);
}

/// 
/// \brief Calculate a minimal rectangle enclosing a set of points
/// 
/// \return SDL_TRUE if any points were within the clipping rect
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_EnclosePoints(const SDL_Point * points, int count, const SDL_Rect * clip, SDL_Rect * result)
/// ```
int SDL_EnclosePoints(Pointer<SDL_Point>? points, int count, Pointer<SDL_Rect>? clip, Pointer<SDL_Rect>? result) {
  final _SDL_EnclosePoints = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Point>? points, Int32 count, Pointer<SDL_Rect>? clip, Pointer<SDL_Rect>? result),
      int Function(Pointer<SDL_Point>? points, int count, Pointer<SDL_Rect>? clip, Pointer<SDL_Rect>? result)>('SDL_EnclosePoints');
  return _SDL_EnclosePoints(points, count, clip, result);
}

/// 
/// \brief Calculate the intersection of a rectangle and line segment.
/// 
/// \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectRectAndLine(const SDL_Rect * rect, int *X1, int *Y1, int *X2, int *Y2)
/// ```
int SDL_IntersectRectAndLine(Pointer<SDL_Rect>? rect, Pointer<Int32>? X1, Pointer<Int32>? Y1, Pointer<Int32>? X2, Pointer<Int32>? Y2) {
  final _SDL_IntersectRectAndLine = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Rect>? rect, Pointer<Int32>? X1, Pointer<Int32>? Y1, Pointer<Int32>? X2, Pointer<Int32>? Y2),
      int Function(Pointer<SDL_Rect>? rect, Pointer<Int32>? X1, Pointer<Int32>? Y1, Pointer<Int32>? X2, Pointer<Int32>? Y2)>('SDL_IntersectRectAndLine');
  return _SDL_IntersectRectAndLine(rect, X1, Y1, X2, Y2);
}

