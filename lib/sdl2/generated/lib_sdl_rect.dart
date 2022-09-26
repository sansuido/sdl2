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
int sdlHasIntersection(Pointer<SdlRect> a, Pointer<SdlRect> b) {
  final sdlHasIntersectionLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlRect> a, Pointer<SdlRect> b),
      int Function(
          Pointer<SdlRect> a, Pointer<SdlRect> b)>('SDL_HasIntersection');
  return sdlHasIntersectionLookupFunction(a, b);
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
int sdlIntersectRect(
    Pointer<SdlRect> a, Pointer<SdlRect> b, Pointer<SdlRect> result) {
  final sdlIntersectRectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlRect> a, Pointer<SdlRect> b, Pointer<SdlRect> result),
      int Function(Pointer<SdlRect> a, Pointer<SdlRect> b,
          Pointer<SdlRect> result)>('SDL_IntersectRect');
  return sdlIntersectRectLookupFunction(a, b, result);
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
void sdlUnionRect(
    Pointer<SdlRect> a, Pointer<SdlRect> b, Pointer<SdlRect> result) {
  final sdlUnionRectLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<SdlRect> a, Pointer<SdlRect> b, Pointer<SdlRect> result),
      void Function(Pointer<SdlRect> a, Pointer<SdlRect> b,
          Pointer<SdlRect> result)>('SDL_UnionRect');
  return sdlUnionRectLookupFunction(a, b, result);
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
int sdlEnclosePoints(Pointer<SdlPoint> points, int count, Pointer<SdlRect> clip,
    Pointer<SdlRect> result) {
  final sdlEnclosePointsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlPoint> points, Int32 count,
          Pointer<SdlRect> clip, Pointer<SdlRect> result),
      int Function(Pointer<SdlPoint> points, int count, Pointer<SdlRect> clip,
          Pointer<SdlRect> result)>('SDL_EnclosePoints');
  return sdlEnclosePointsLookupFunction(points, count, clip, result);
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
int sdlIntersectRectAndLine(Pointer<SdlRect> rect, Pointer<Int32> x1,
    Pointer<Int32> y1, Pointer<Int32> x2, Pointer<Int32> y2) {
  final sdlIntersectRectAndLineLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlRect> rect, Pointer<Int32> x1,
          Pointer<Int32> y1, Pointer<Int32> x2, Pointer<Int32> y2),
      int Function(Pointer<SdlRect> rect, Pointer<Int32> x1, Pointer<Int32> y1,
          Pointer<Int32> x2, Pointer<Int32> y2)>('SDL_IntersectRectAndLine');
  return sdlIntersectRectAndLineLookupFunction(rect, x1, y1, x2, y2);
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
int sdlHasIntersectionF(Pointer<SdlFRect> a, Pointer<SdlFRect> b) {
  final sdlHasIntersectionFLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlFRect> a, Pointer<SdlFRect> b),
      int Function(
          Pointer<SdlFRect> a, Pointer<SdlFRect> b)>('SDL_HasIntersectionF');
  return sdlHasIntersectionFLookupFunction(a, b);
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
int sdlIntersectFRect(
    Pointer<SdlFRect> a, Pointer<SdlFRect> b, Pointer<SdlFRect> result) {
  final sdlIntersectFRectLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlFRect> a, Pointer<SdlFRect> b, Pointer<SdlFRect> result),
      int Function(Pointer<SdlFRect> a, Pointer<SdlFRect> b,
          Pointer<SdlFRect> result)>('SDL_IntersectFRect');
  return sdlIntersectFRectLookupFunction(a, b, result);
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
void sdlUnionFRect(
    Pointer<SdlFRect> a, Pointer<SdlFRect> b, Pointer<SdlFRect> result) {
  final sdlUnionFRectLookupFunction = libSdl2.lookupFunction<
      Void Function(
          Pointer<SdlFRect> a, Pointer<SdlFRect> b, Pointer<SdlFRect> result),
      void Function(Pointer<SdlFRect> a, Pointer<SdlFRect> b,
          Pointer<SdlFRect> result)>('SDL_UnionFRect');
  return sdlUnionFRectLookupFunction(a, b, result);
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
int sdlEncloseFPoints(Pointer<SdlFPoint> points, int count,
    Pointer<SdlFRect> clip, Pointer<SdlFRect> result) {
  final sdlEncloseFPointsLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlFPoint> points, Int32 count,
          Pointer<SdlFRect> clip, Pointer<SdlFRect> result),
      int Function(Pointer<SdlFPoint> points, int count, Pointer<SdlFRect> clip,
          Pointer<SdlFRect> result)>('SDL_EncloseFPoints');
  return sdlEncloseFPointsLookupFunction(points, count, clip, result);
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
int sdlIntersectFRectAndLine(Pointer<SdlFRect> rect, Pointer<Float> x1,
    Pointer<Float> y1, Pointer<Float> x2, Pointer<Float> y2) {
  final sdlIntersectFRectAndLineLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlFRect> rect, Pointer<Float> x1,
          Pointer<Float> y1, Pointer<Float> x2, Pointer<Float> y2),
      int Function(Pointer<SdlFRect> rect, Pointer<Float> x1, Pointer<Float> y1,
          Pointer<Float> x2, Pointer<Float> y2)>('SDL_IntersectFRectAndLine');
  return sdlIntersectFRectAndLineLookupFunction(rect, x1, y1, x2, y2);
}
