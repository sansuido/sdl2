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

/// 
/// Determine whether two rectangles intersect with float precision.
/// 
/// If either pointer is NULL the function will return SDL_FALSE.
/// 
/// \param A an SDL_FRect structure representing the first rectangle
/// \param B an SDL_FRect structure representing the second rectangle
/// \returns SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// \sa SDL_IntersectRect
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasIntersectionF(const SDL_FRect * A, const SDL_FRect * B)
/// ```
int SDL_HasIntersectionF(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B) {
  final _SDL_HasIntersectionF = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B),
      int Function(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B)>('SDL_HasIntersectionF');
  return _SDL_HasIntersectionF(A, B);
}

/// 
/// Calculate the intersection of two rectangles with float precision.
/// 
/// If `result` is NULL then this function will return SDL_FALSE.
/// 
/// \param A an SDL_FRect structure representing the first rectangle
/// \param B an SDL_FRect structure representing the second rectangle
/// \param result an SDL_FRect structure filled in with the intersection of
/// rectangles `A` and `B`
/// \returns SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// \sa SDL_HasIntersectionF
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectFRect(const SDL_FRect * A, const SDL_FRect * B, SDL_FRect * result)
/// ```
int SDL_IntersectFRect(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B, Pointer<SDL_FRect>? result) {
  final _SDL_IntersectFRect = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B, Pointer<SDL_FRect>? result),
      int Function(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B, Pointer<SDL_FRect>? result)>('SDL_IntersectFRect');
  return _SDL_IntersectFRect(A, B, result);
}

/// 
/// Calculate the union of two rectangles with float precision.
/// 
/// \param A an SDL_FRect structure representing the first rectangle
/// \param B an SDL_FRect structure representing the second rectangle
/// \param result an SDL_FRect structure filled in with the union of rectangles
/// `A` and `B`
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnionFRect(const SDL_FRect * A, const SDL_FRect * B, SDL_FRect * result)
/// ```
void SDL_UnionFRect(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B, Pointer<SDL_FRect>? result) {
  final _SDL_UnionFRect = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B, Pointer<SDL_FRect>? result),
      void Function(Pointer<SDL_FRect>? A, Pointer<SDL_FRect>? B, Pointer<SDL_FRect>? result)>('SDL_UnionFRect');
  return _SDL_UnionFRect(A, B, result);
}

/// 
/// Calculate a minimal rectangle enclosing a set of points with float
/// precision.
/// 
/// If `clip` is not NULL then only points inside of the clipping rectangle are
/// considered.
/// 
/// \param points an array of SDL_FPoint structures representing points to be
/// enclosed
/// \param count the number of structures in the `points` array
/// \param clip an SDL_FRect used for clipping or NULL to enclose all points
/// \param result an SDL_FRect structure filled in with the minimal enclosing
/// rectangle
/// \returns SDL_TRUE if any points were enclosed or SDL_FALSE if all the
/// points were outside of the clipping rectangle.
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_EncloseFPoints(const SDL_FPoint * points, int count, const SDL_FRect * clip, SDL_FRect * result)
/// ```
int SDL_EncloseFPoints(Pointer<SDL_FPoint>? points, int count, Pointer<SDL_FRect>? clip, Pointer<SDL_FRect>? result) {
  final _SDL_EncloseFPoints = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_FPoint>? points, Int32 count, Pointer<SDL_FRect>? clip, Pointer<SDL_FRect>? result),
      int Function(Pointer<SDL_FPoint>? points, int count, Pointer<SDL_FRect>? clip, Pointer<SDL_FRect>? result)>('SDL_EncloseFPoints');
  return _SDL_EncloseFPoints(points, count, clip, result);
}

/// 
/// Calculate the intersection of a rectangle and line segment with float
/// precision.
/// 
/// This function is used to clip a line segment to a rectangle. A line segment
/// contained entirely within the rectangle or that does not intersect will
/// remain unchanged. A line segment that crosses the rectangle at either or
/// both ends will be clipped to the boundary of the rectangle and the new
/// coordinates saved in `X1`, `Y1`, `X2`, and/or `Y2` as necessary.
/// 
/// \param rect an SDL_FRect structure representing the rectangle to intersect
/// \param X1 a pointer to the starting X-coordinate of the line
/// \param Y1 a pointer to the starting Y-coordinate of the line
/// \param X2 a pointer to the ending X-coordinate of the line
/// \param Y2 a pointer to the ending Y-coordinate of the line
/// \returns SDL_TRUE if there is an intersection, SDL_FALSE otherwise.
/// 
/// \since This function is available since SDL 2.0.22.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_IntersectFRectAndLine(const SDL_FRect * rect, float *X1, float *Y1, float *X2, float *Y2)
/// ```
int SDL_IntersectFRectAndLine(Pointer<SDL_FRect>? rect, Pointer<Float>? X1, Pointer<Float>? Y1, Pointer<Float>? X2, Pointer<Float>? Y2) {
  final _SDL_IntersectFRectAndLine = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_FRect>? rect, Pointer<Float>? X1, Pointer<Float>? Y1, Pointer<Float>? X2, Pointer<Float>? Y2),
      int Function(Pointer<SDL_FRect>? rect, Pointer<Float>? X1, Pointer<Float>? Y1, Pointer<Float>? X2, Pointer<Float>? Y2)>('SDL_IntersectFRectAndLine');
  return _SDL_IntersectFRectAndLine(rect, X1, Y1, X2, Y2);
}

