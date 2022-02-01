// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Determine whether two rectangles intersect.
/// 
/// If either pointer is NULL the function will return SDL_FALSE.
/// 
/// \param A an SDL_Rect structure representing the first rectangle
/// \param B an SDL_Rect structure representing the second rectangle
/// \returns SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_IntersectRect
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
/// Calculate the intersection of two rectangles.
/// 
/// If `result` is NULL then this function will return SDL_FALSE.
/// 
/// \param A an SDL_Rect structure representing the first rectangle
/// \param B an SDL_Rect structure representing the second rectangle
/// \param result an SDL_Rect structure filled in with the intersection of
/// rectangles `A` and `B`
/// \returns SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// \sa SDL_HasIntersection
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
/// Calculate the union of two rectangles.
/// 
/// \param A an SDL_Rect structure representing the first rectangle
/// \param B an SDL_Rect structure representing the second rectangle
/// \param result an SDL_Rect structure filled in with the union of rectangles
/// `A` and `B`
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Calculate a minimal rectangle enclosing a set of points.
/// 
/// If `clip` is not NULL then only points inside of the clipping rectangle are
/// considered.
/// 
/// \param points an array of SDL_Point structures representing points to be
/// enclosed
/// \param count the number of structures in the `points` array
/// \param clip an SDL_Rect used for clipping or NULL to enclose all points
/// \param result an SDL_Rect structure filled in with the minimal enclosing
/// rectangle
/// \returns SDL_TRUE if any points were enclosed or SDL_FALSE if all the
/// points were outside of the clipping rectangle.
/// 
/// \since This function is available since SDL 2.0.0.
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
/// Calculate the intersection of a rectangle and line segment.
/// 
/// This function is used to clip a line segment to a rectangle. A line segment
/// contained entirely within the rectangle or that does not intersect will
/// remain unchanged. A line segment that crosses the rectangle at either or
/// both ends will be clipped to the boundary of the rectangle and the new
/// coordinates saved in `X1`, `Y1`, `X2`, and/or `Y2` as necessary.
/// 
/// \param rect an SDL_Rect structure representing the rectangle to intersect
/// \param X1 a pointer to the starting X-coordinate of the line
/// \param Y1 a pointer to the starting Y-coordinate of the line
/// \param X2 a pointer to the ending X-coordinate of the line
/// \param Y2 a pointer to the ending Y-coordinate of the line
/// \returns SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.0.
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

