// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// ```c
/// GLAPI void APIENTRY glBlendColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
/// ```
void glBlendColor(double red, double green, double blue, double alpha) {
  final _glBlendColor = DLL_SDL2.lookupFunction<
      Void Function(Float red, Float green, Float blue, Float alpha),
      void Function(double red, double green, double blue, double alpha)>('glBlendColor');
  return _glBlendColor(red, green, blue, alpha);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquation (GLenum mode)
/// ```
void glBlendEquation(int mode) {
  final _glBlendEquation = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glBlendEquation');
  return _glBlendEquation(mode);
}

/// ```c
/// GLAPI void APIENTRY glDrawRangeElements (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices)
/// ```
void glDrawRangeElements(int mode, int start, int end, int count, int type, Pointer<Void>? indices) {
  final _glDrawRangeElements = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 start, Uint32 end, Uint32 count, Uint32 type, Pointer<Void>? indices),
      void Function(int mode, int start, int end, int count, int type, Pointer<Void>? indices)>('glDrawRangeElements');
  return _glDrawRangeElements(mode, start, end, count, type, indices);
}

/// ```c
/// GLAPI void APIENTRY glTexImage3D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexImage3D(int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels) {
  final _glTexImage3D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels)>('glTexImage3D');
  return _glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexSubImage3D(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels) {
  final _glTexSubImage3D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels)>('glTexSubImage3D');
  return _glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glCopyTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyTexSubImage3D(int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height) {
  final _glCopyTexSubImage3D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)>('glCopyTexSubImage3D');
  return _glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glColorTable (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table)
/// ```
void glColorTable(int target, int internalformat, int width, int format, int type, Pointer<Void>? table) {
  final _glColorTable = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? table),
      void Function(int target, int internalformat, int width, int format, int type, Pointer<Void>? table)>('glColorTable');
  return _glColorTable(target, internalformat, width, format, type, table);
}

/// ```c
/// GLAPI void APIENTRY glColorTableParameterfv (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glColorTableParameterfv(int target, int pname, Pointer<Float>? params) {
  final _glColorTableParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glColorTableParameterfv');
  return _glColorTableParameterfv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glColorTableParameteriv (GLenum target, GLenum pname, const GLint *params)
/// ```
void glColorTableParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glColorTableParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glColorTableParameteriv');
  return _glColorTableParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCopyColorTable (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
/// ```
void glCopyColorTable(int target, int internalformat, int x, int y, int width) {
  final _glCopyColorTable = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int internalformat, int x, int y, int width)>('glCopyColorTable');
  return _glCopyColorTable(target, internalformat, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTable (GLenum target, GLenum format, GLenum type, GLvoid *table)
/// ```
void glGetColorTable(int target, int format, int type, Pointer<Void>? table) {
  final _glGetColorTable = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? table),
      void Function(int target, int format, int type, Pointer<Void>? table)>('glGetColorTable');
  return _glGetColorTable(target, format, type, table);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableParameterfv (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetColorTableParameterfv(int target, int pname, Pointer<Float>? params) {
  final _glGetColorTableParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetColorTableParameterfv');
  return _glGetColorTableParameterfv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableParameteriv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetColorTableParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glGetColorTableParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetColorTableParameteriv');
  return _glGetColorTableParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glColorSubTable (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data)
/// ```
void glColorSubTable(int target, int start, int count, int format, int type, Pointer<Void>? data) {
  final _glColorSubTable = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 start, Uint32 count, Uint32 format, Uint32 type, Pointer<Void>? data),
      void Function(int target, int start, int count, int format, int type, Pointer<Void>? data)>('glColorSubTable');
  return _glColorSubTable(target, start, count, format, type, data);
}

/// ```c
/// GLAPI void APIENTRY glCopyColorSubTable (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)
/// ```
void glCopyColorSubTable(int target, int start, int x, int y, int width) {
  final _glCopyColorSubTable = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 start, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int start, int x, int y, int width)>('glCopyColorSubTable');
  return _glCopyColorSubTable(target, start, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionFilter1D (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image)
/// ```
void glConvolutionFilter1D(int target, int internalformat, int width, int format, int type, Pointer<Void>? image) {
  final _glConvolutionFilter1D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? image),
      void Function(int target, int internalformat, int width, int format, int type, Pointer<Void>? image)>('glConvolutionFilter1D');
  return _glConvolutionFilter1D(target, internalformat, width, format, type, image);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image)
/// ```
void glConvolutionFilter2D(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? image) {
  final _glConvolutionFilter2D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? image),
      void Function(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? image)>('glConvolutionFilter2D');
  return _glConvolutionFilter2D(target, internalformat, width, height, format, type, image);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameterf (GLenum target, GLenum pname, GLfloat params)
/// ```
void glConvolutionParameterf(int target, int pname, double params) {
  final _glConvolutionParameterf = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Float params),
      void Function(int target, int pname, double params)>('glConvolutionParameterf');
  return _glConvolutionParameterf(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameterfv (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glConvolutionParameterfv(int target, int pname, Pointer<Float>? params) {
  final _glConvolutionParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glConvolutionParameterfv');
  return _glConvolutionParameterfv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameteri (GLenum target, GLenum pname, GLint params)
/// ```
void glConvolutionParameteri(int target, int pname, int params) {
  final _glConvolutionParameteri = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Int32 params),
      void Function(int target, int pname, int params)>('glConvolutionParameteri');
  return _glConvolutionParameteri(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameteriv (GLenum target, GLenum pname, const GLint *params)
/// ```
void glConvolutionParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glConvolutionParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glConvolutionParameteriv');
  return _glConvolutionParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCopyConvolutionFilter1D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
/// ```
void glCopyConvolutionFilter1D(int target, int internalformat, int x, int y, int width) {
  final _glCopyConvolutionFilter1D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int internalformat, int x, int y, int width)>('glCopyConvolutionFilter1D');
  return _glCopyConvolutionFilter1D(target, internalformat, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glCopyConvolutionFilter2D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyConvolutionFilter2D(int target, int internalformat, int x, int y, int width, int height) {
  final _glCopyConvolutionFilter2D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int target, int internalformat, int x, int y, int width, int height)>('glCopyConvolutionFilter2D');
  return _glCopyConvolutionFilter2D(target, internalformat, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetConvolutionFilter (GLenum target, GLenum format, GLenum type, GLvoid *image)
/// ```
void glGetConvolutionFilter(int target, int format, int type, Pointer<Void>? image) {
  final _glGetConvolutionFilter = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? image),
      void Function(int target, int format, int type, Pointer<Void>? image)>('glGetConvolutionFilter');
  return _glGetConvolutionFilter(target, format, type, image);
}

/// ```c
/// GLAPI void APIENTRY glGetConvolutionParameterfv (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetConvolutionParameterfv(int target, int pname, Pointer<Float>? params) {
  final _glGetConvolutionParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetConvolutionParameterfv');
  return _glGetConvolutionParameterfv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetConvolutionParameteriv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetConvolutionParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glGetConvolutionParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetConvolutionParameteriv');
  return _glGetConvolutionParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetSeparableFilter (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span)
/// ```
void glGetSeparableFilter(int target, int format, int type, Pointer<Void>? row, Pointer<Void>? column, Pointer<Void>? span) {
  final _glGetSeparableFilter = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? row, Pointer<Void>? column, Pointer<Void>? span),
      void Function(int target, int format, int type, Pointer<Void>? row, Pointer<Void>? column, Pointer<Void>? span)>('glGetSeparableFilter');
  return _glGetSeparableFilter(target, format, type, row, column, span);
}

/// ```c
/// GLAPI void APIENTRY glSeparableFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column)
/// ```
void glSeparableFilter2D(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? row, Pointer<Void>? column) {
  final _glSeparableFilter2D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? row, Pointer<Void>? column),
      void Function(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? row, Pointer<Void>? column)>('glSeparableFilter2D');
  return _glSeparableFilter2D(target, internalformat, width, height, format, type, row, column);
}

/// ```c
/// GLAPI void APIENTRY glGetHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)
/// ```
void glGetHistogram(int target, int reset, int format, int type, Pointer<Void>? values) {
  final _glGetHistogram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 reset, Uint32 format, Uint32 type, Pointer<Void>? values),
      void Function(int target, int reset, int format, int type, Pointer<Void>? values)>('glGetHistogram');
  return _glGetHistogram(target, reset, format, type, values);
}

/// ```c
/// GLAPI void APIENTRY glGetHistogramParameterfv (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetHistogramParameterfv(int target, int pname, Pointer<Float>? params) {
  final _glGetHistogramParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetHistogramParameterfv');
  return _glGetHistogramParameterfv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetHistogramParameteriv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetHistogramParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glGetHistogramParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetHistogramParameteriv');
  return _glGetHistogramParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMinmax (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)
/// ```
void glGetMinmax(int target, int reset, int format, int type, Pointer<Void>? values) {
  final _glGetMinmax = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 reset, Uint32 format, Uint32 type, Pointer<Void>? values),
      void Function(int target, int reset, int format, int type, Pointer<Void>? values)>('glGetMinmax');
  return _glGetMinmax(target, reset, format, type, values);
}

/// ```c
/// GLAPI void APIENTRY glGetMinmaxParameterfv (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetMinmaxParameterfv(int target, int pname, Pointer<Float>? params) {
  final _glGetMinmaxParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetMinmaxParameterfv');
  return _glGetMinmaxParameterfv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMinmaxParameteriv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetMinmaxParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glGetMinmaxParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetMinmaxParameteriv');
  return _glGetMinmaxParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glHistogram (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)
/// ```
void glHistogram(int target, int width, int internalformat, int sink) {
  final _glHistogram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 width, Uint32 internalformat, Int32 sink),
      void Function(int target, int width, int internalformat, int sink)>('glHistogram');
  return _glHistogram(target, width, internalformat, sink);
}

/// ```c
/// GLAPI void APIENTRY glMinmax (GLenum target, GLenum internalformat, GLboolean sink)
/// ```
void glMinmax(int target, int internalformat, int sink) {
  final _glMinmax = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 sink),
      void Function(int target, int internalformat, int sink)>('glMinmax');
  return _glMinmax(target, internalformat, sink);
}

/// ```c
/// GLAPI void APIENTRY glResetHistogram (GLenum target)
/// ```
void glResetHistogram(int target) {
  final _glResetHistogram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glResetHistogram');
  return _glResetHistogram(target);
}

/// ```c
/// GLAPI void APIENTRY glResetMinmax (GLenum target)
/// ```
void glResetMinmax(int target) {
  final _glResetMinmax = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glResetMinmax');
  return _glResetMinmax(target);
}

/// ```c
/// GLAPI void APIENTRY glActiveTexture (GLenum texture)
/// ```
void glActiveTexture(int texture) {
  final _glActiveTexture = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture),
      void Function(int texture)>('glActiveTexture');
  return _glActiveTexture(texture);
}

/// ```c
/// GLAPI void APIENTRY glSampleCoverage (GLclampf value, GLboolean invert)
/// ```
void glSampleCoverage(double value, int invert) {
  final _glSampleCoverage = DLL_SDL2.lookupFunction<
      Void Function(Float value, Int32 invert),
      void Function(double value, int invert)>('glSampleCoverage');
  return _glSampleCoverage(value, invert);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexImage3D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexImage3D(int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexImage3D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? data)>('glCompressedTexImage3D');
  return _glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexImage2D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Int32 border, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? data)>('glCompressedTexImage2D');
  return _glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexImage1D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexImage1D(int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexImage1D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Int32 border, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? data)>('glCompressedTexImage1D');
  return _glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexSubImage3D(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexSubImage3D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? data)>('glCompressedTexSubImage3D');
  return _glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexSubImage2D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? data)>('glCompressedTexSubImage2D');
  return _glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexSubImage1D(int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexSubImage1D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? data)>('glCompressedTexSubImage1D');
  return _glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glGetCompressedTexImage (GLenum target, GLint level, GLvoid *img)
/// ```
void glGetCompressedTexImage(int target, int level, Pointer<Void>? img) {
  final _glGetCompressedTexImage = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Pointer<Void>? img),
      void Function(int target, int level, Pointer<Void>? img)>('glGetCompressedTexImage');
  return _glGetCompressedTexImage(target, level, img);
}

/// ```c
/// GLAPI void APIENTRY glClientActiveTexture (GLenum texture)
/// ```
void glClientActiveTexture(int texture) {
  final _glClientActiveTexture = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture),
      void Function(int texture)>('glClientActiveTexture');
  return _glClientActiveTexture(texture);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1d (GLenum target, GLdouble s)
/// ```
void glMultiTexCoord1d(int target, double s) {
  final _glMultiTexCoord1d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s),
      void Function(int target, double s)>('glMultiTexCoord1d');
  return _glMultiTexCoord1d(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1dv (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord1dv(int target, Pointer<Double>? v) {
  final _glMultiTexCoord1dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord1dv');
  return _glMultiTexCoord1dv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1f (GLenum target, GLfloat s)
/// ```
void glMultiTexCoord1f(int target, double s) {
  final _glMultiTexCoord1f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s),
      void Function(int target, double s)>('glMultiTexCoord1f');
  return _glMultiTexCoord1f(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1fv (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord1fv(int target, Pointer<Float>? v) {
  final _glMultiTexCoord1fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord1fv');
  return _glMultiTexCoord1fv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1i (GLenum target, GLint s)
/// ```
void glMultiTexCoord1i(int target, int s) {
  final _glMultiTexCoord1i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s),
      void Function(int target, int s)>('glMultiTexCoord1i');
  return _glMultiTexCoord1i(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1iv (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord1iv(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord1iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord1iv');
  return _glMultiTexCoord1iv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1s (GLenum target, GLshort s)
/// ```
void glMultiTexCoord1s(int target, int s) {
  final _glMultiTexCoord1s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s),
      void Function(int target, int s)>('glMultiTexCoord1s');
  return _glMultiTexCoord1s(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1sv (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord1sv(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord1sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord1sv');
  return _glMultiTexCoord1sv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2d (GLenum target, GLdouble s, GLdouble t)
/// ```
void glMultiTexCoord2d(int target, double s, double t) {
  final _glMultiTexCoord2d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s, Double t),
      void Function(int target, double s, double t)>('glMultiTexCoord2d');
  return _glMultiTexCoord2d(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2dv (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord2dv(int target, Pointer<Double>? v) {
  final _glMultiTexCoord2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord2dv');
  return _glMultiTexCoord2dv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2f (GLenum target, GLfloat s, GLfloat t)
/// ```
void glMultiTexCoord2f(int target, double s, double t) {
  final _glMultiTexCoord2f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s, Float t),
      void Function(int target, double s, double t)>('glMultiTexCoord2f');
  return _glMultiTexCoord2f(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2fv (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord2fv(int target, Pointer<Float>? v) {
  final _glMultiTexCoord2fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord2fv');
  return _glMultiTexCoord2fv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2i (GLenum target, GLint s, GLint t)
/// ```
void glMultiTexCoord2i(int target, int s, int t) {
  final _glMultiTexCoord2i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s, Int32 t),
      void Function(int target, int s, int t)>('glMultiTexCoord2i');
  return _glMultiTexCoord2i(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2iv (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord2iv(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord2iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord2iv');
  return _glMultiTexCoord2iv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2s (GLenum target, GLshort s, GLshort t)
/// ```
void glMultiTexCoord2s(int target, int s, int t) {
  final _glMultiTexCoord2s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s, Int16 t),
      void Function(int target, int s, int t)>('glMultiTexCoord2s');
  return _glMultiTexCoord2s(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2sv (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord2sv(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord2sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord2sv');
  return _glMultiTexCoord2sv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3d (GLenum target, GLdouble s, GLdouble t, GLdouble r)
/// ```
void glMultiTexCoord3d(int target, double s, double t, double r) {
  final _glMultiTexCoord3d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s, Double t, Double r),
      void Function(int target, double s, double t, double r)>('glMultiTexCoord3d');
  return _glMultiTexCoord3d(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3dv (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord3dv(int target, Pointer<Double>? v) {
  final _glMultiTexCoord3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord3dv');
  return _glMultiTexCoord3dv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3f (GLenum target, GLfloat s, GLfloat t, GLfloat r)
/// ```
void glMultiTexCoord3f(int target, double s, double t, double r) {
  final _glMultiTexCoord3f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s, Float t, Float r),
      void Function(int target, double s, double t, double r)>('glMultiTexCoord3f');
  return _glMultiTexCoord3f(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3fv (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord3fv(int target, Pointer<Float>? v) {
  final _glMultiTexCoord3fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord3fv');
  return _glMultiTexCoord3fv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3i (GLenum target, GLint s, GLint t, GLint r)
/// ```
void glMultiTexCoord3i(int target, int s, int t, int r) {
  final _glMultiTexCoord3i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s, Int32 t, Int32 r),
      void Function(int target, int s, int t, int r)>('glMultiTexCoord3i');
  return _glMultiTexCoord3i(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3iv (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord3iv(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord3iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord3iv');
  return _glMultiTexCoord3iv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3s (GLenum target, GLshort s, GLshort t, GLshort r)
/// ```
void glMultiTexCoord3s(int target, int s, int t, int r) {
  final _glMultiTexCoord3s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s, Int16 t, Int16 r),
      void Function(int target, int s, int t, int r)>('glMultiTexCoord3s');
  return _glMultiTexCoord3s(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3sv (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord3sv(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord3sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord3sv');
  return _glMultiTexCoord3sv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4d (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
/// ```
void glMultiTexCoord4d(int target, double s, double t, double r, double q) {
  final _glMultiTexCoord4d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s, Double t, Double r, Double q),
      void Function(int target, double s, double t, double r, double q)>('glMultiTexCoord4d');
  return _glMultiTexCoord4d(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4dv (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord4dv(int target, Pointer<Double>? v) {
  final _glMultiTexCoord4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord4dv');
  return _glMultiTexCoord4dv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4f (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
/// ```
void glMultiTexCoord4f(int target, double s, double t, double r, double q) {
  final _glMultiTexCoord4f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s, Float t, Float r, Float q),
      void Function(int target, double s, double t, double r, double q)>('glMultiTexCoord4f');
  return _glMultiTexCoord4f(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4fv (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord4fv(int target, Pointer<Float>? v) {
  final _glMultiTexCoord4fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord4fv');
  return _glMultiTexCoord4fv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4i (GLenum target, GLint s, GLint t, GLint r, GLint q)
/// ```
void glMultiTexCoord4i(int target, int s, int t, int r, int q) {
  final _glMultiTexCoord4i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s, Int32 t, Int32 r, Int32 q),
      void Function(int target, int s, int t, int r, int q)>('glMultiTexCoord4i');
  return _glMultiTexCoord4i(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4iv (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord4iv(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord4iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord4iv');
  return _glMultiTexCoord4iv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4s (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
/// ```
void glMultiTexCoord4s(int target, int s, int t, int r, int q) {
  final _glMultiTexCoord4s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s, Int16 t, Int16 r, Int16 q),
      void Function(int target, int s, int t, int r, int q)>('glMultiTexCoord4s');
  return _glMultiTexCoord4s(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4sv (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord4sv(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord4sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord4sv');
  return _glMultiTexCoord4sv(target, v);
}

/// ```c
/// GLAPI void APIENTRY glLoadTransposeMatrixf (const GLfloat *m)
/// ```
void glLoadTransposeMatrixf(Pointer<Float>? m) {
  final _glLoadTransposeMatrixf = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? m),
      void Function(Pointer<Float>? m)>('glLoadTransposeMatrixf');
  return _glLoadTransposeMatrixf(m);
}

/// ```c
/// GLAPI void APIENTRY glLoadTransposeMatrixd (const GLdouble *m)
/// ```
void glLoadTransposeMatrixd(Pointer<Double>? m) {
  final _glLoadTransposeMatrixd = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? m),
      void Function(Pointer<Double>? m)>('glLoadTransposeMatrixd');
  return _glLoadTransposeMatrixd(m);
}

/// ```c
/// GLAPI void APIENTRY glMultTransposeMatrixf (const GLfloat *m)
/// ```
void glMultTransposeMatrixf(Pointer<Float>? m) {
  final _glMultTransposeMatrixf = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? m),
      void Function(Pointer<Float>? m)>('glMultTransposeMatrixf');
  return _glMultTransposeMatrixf(m);
}

/// ```c
/// GLAPI void APIENTRY glMultTransposeMatrixd (const GLdouble *m)
/// ```
void glMultTransposeMatrixd(Pointer<Double>? m) {
  final _glMultTransposeMatrixd = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? m),
      void Function(Pointer<Double>? m)>('glMultTransposeMatrixd');
  return _glMultTransposeMatrixd(m);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncSeparate (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)
/// ```
void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
  final _glBlendFuncSeparate = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sfactorRGB, Uint32 dfactorRGB, Uint32 sfactorAlpha, Uint32 dfactorAlpha),
      void Function(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha)>('glBlendFuncSeparate');
  return _glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawArrays (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount)
/// ```
void glMultiDrawArrays(int mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount) {
  final _glMultiDrawArrays = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Int32>? first, Pointer<Uint32>? count, Uint32 primcount),
      void Function(int mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount)>('glMultiDrawArrays');
  return _glMultiDrawArrays(mode, first, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawElements (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount)
/// ```
void glMultiDrawElements(int mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount) {
  final _glMultiDrawElements = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Uint32>? count, Uint32 type, Pointer<Pointer<Void>>? indices, Uint32 primcount),
      void Function(int mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount)>('glMultiDrawElements');
  return _glMultiDrawElements(mode, count, type, indices, primcount);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterf (GLenum pname, GLfloat param)
/// ```
void glPointParameterf(int pname, double param) {
  final _glPointParameterf = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glPointParameterf');
  return _glPointParameterf(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfv (GLenum pname, const GLfloat *params)
/// ```
void glPointParameterfv(int pname, Pointer<Float>? params) {
  final _glPointParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glPointParameterfv');
  return _glPointParameterfv(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPointParameteri (GLenum pname, GLint param)
/// ```
void glPointParameteri(int pname, int param) {
  final _glPointParameteri = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glPointParameteri');
  return _glPointParameteri(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPointParameteriv (GLenum pname, const GLint *params)
/// ```
void glPointParameteriv(int pname, Pointer<Int32>? params) {
  final _glPointParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glPointParameteriv');
  return _glPointParameteriv(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordf (GLfloat coord)
/// ```
void glFogCoordf(double coord) {
  final _glFogCoordf = DLL_SDL2.lookupFunction<
      Void Function(Float coord),
      void Function(double coord)>('glFogCoordf');
  return _glFogCoordf(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordfv (const GLfloat *coord)
/// ```
void glFogCoordfv(Pointer<Float>? coord) {
  final _glFogCoordfv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? coord),
      void Function(Pointer<Float>? coord)>('glFogCoordfv');
  return _glFogCoordfv(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordd (GLdouble coord)
/// ```
void glFogCoordd(double coord) {
  final _glFogCoordd = DLL_SDL2.lookupFunction<
      Void Function(Double coord),
      void Function(double coord)>('glFogCoordd');
  return _glFogCoordd(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoorddv (const GLdouble *coord)
/// ```
void glFogCoorddv(Pointer<Double>? coord) {
  final _glFogCoorddv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? coord),
      void Function(Pointer<Double>? coord)>('glFogCoorddv');
  return _glFogCoorddv(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordPointer (GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glFogCoordPointer(int type, int stride, Pointer<Void>? pointer) {
  final _glFogCoordPointer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int type, int stride, Pointer<Void>? pointer)>('glFogCoordPointer');
  return _glFogCoordPointer(type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3b (GLbyte red, GLbyte green, GLbyte blue)
/// ```
void glSecondaryColor3b(int red, int green, int blue) {
  final _glSecondaryColor3b = DLL_SDL2.lookupFunction<
      Void Function(Int8 red, Int8 green, Int8 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3b');
  return _glSecondaryColor3b(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3bv (const GLbyte *v)
/// ```
void glSecondaryColor3bv(String v) {
  final _glSecondaryColor3bv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? v),
      void Function(Pointer<Utf8>? v)>('glSecondaryColor3bv');
  final _vPointer = v.toNativeUtf8();
  final _result = _glSecondaryColor3bv(_vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3d (GLdouble red, GLdouble green, GLdouble blue)
/// ```
void glSecondaryColor3d(double red, double green, double blue) {
  final _glSecondaryColor3d = DLL_SDL2.lookupFunction<
      Void Function(Double red, Double green, Double blue),
      void Function(double red, double green, double blue)>('glSecondaryColor3d');
  return _glSecondaryColor3d(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3dv (const GLdouble *v)
/// ```
void glSecondaryColor3dv(Pointer<Double>? v) {
  final _glSecondaryColor3dv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glSecondaryColor3dv');
  return _glSecondaryColor3dv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3f (GLfloat red, GLfloat green, GLfloat blue)
/// ```
void glSecondaryColor3f(double red, double green, double blue) {
  final _glSecondaryColor3f = DLL_SDL2.lookupFunction<
      Void Function(Float red, Float green, Float blue),
      void Function(double red, double green, double blue)>('glSecondaryColor3f');
  return _glSecondaryColor3f(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3fv (const GLfloat *v)
/// ```
void glSecondaryColor3fv(Pointer<Float>? v) {
  final _glSecondaryColor3fv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glSecondaryColor3fv');
  return _glSecondaryColor3fv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3i (GLint red, GLint green, GLint blue)
/// ```
void glSecondaryColor3i(int red, int green, int blue) {
  final _glSecondaryColor3i = DLL_SDL2.lookupFunction<
      Void Function(Int32 red, Int32 green, Int32 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3i');
  return _glSecondaryColor3i(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3iv (const GLint *v)
/// ```
void glSecondaryColor3iv(Pointer<Int32>? v) {
  final _glSecondaryColor3iv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glSecondaryColor3iv');
  return _glSecondaryColor3iv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3s (GLshort red, GLshort green, GLshort blue)
/// ```
void glSecondaryColor3s(int red, int green, int blue) {
  final _glSecondaryColor3s = DLL_SDL2.lookupFunction<
      Void Function(Int16 red, Int16 green, Int16 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3s');
  return _glSecondaryColor3s(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3sv (const GLshort *v)
/// ```
void glSecondaryColor3sv(Pointer<Int16>? v) {
  final _glSecondaryColor3sv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glSecondaryColor3sv');
  return _glSecondaryColor3sv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3ub (GLubyte red, GLubyte green, GLubyte blue)
/// ```
void glSecondaryColor3ub(int red, int green, int blue) {
  final _glSecondaryColor3ub = DLL_SDL2.lookupFunction<
      Void Function(Uint8 red, Uint8 green, Uint8 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3ub');
  return _glSecondaryColor3ub(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3ubv (const GLubyte *v)
/// ```
void glSecondaryColor3ubv(Pointer<Uint8>? v) {
  final _glSecondaryColor3ubv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? v),
      void Function(Pointer<Uint8>? v)>('glSecondaryColor3ubv');
  return _glSecondaryColor3ubv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3ui (GLuint red, GLuint green, GLuint blue)
/// ```
void glSecondaryColor3ui(int red, int green, int blue) {
  final _glSecondaryColor3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 red, Uint32 green, Uint32 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3ui');
  return _glSecondaryColor3ui(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3uiv (const GLuint *v)
/// ```
void glSecondaryColor3uiv(Pointer<Uint32>? v) {
  final _glSecondaryColor3uiv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? v),
      void Function(Pointer<Uint32>? v)>('glSecondaryColor3uiv');
  return _glSecondaryColor3uiv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3us (GLushort red, GLushort green, GLushort blue)
/// ```
void glSecondaryColor3us(int red, int green, int blue) {
  final _glSecondaryColor3us = DLL_SDL2.lookupFunction<
      Void Function(Uint16 red, Uint16 green, Uint16 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3us');
  return _glSecondaryColor3us(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3usv (const GLushort *v)
/// ```
void glSecondaryColor3usv(Pointer<Uint16>? v) {
  final _glSecondaryColor3usv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glSecondaryColor3usv');
  return _glSecondaryColor3usv(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColorPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glSecondaryColorPointer(int size, int type, int stride, Pointer<Void>? pointer) {
  final _glSecondaryColorPointer = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, Pointer<Void>? pointer)>('glSecondaryColorPointer');
  return _glSecondaryColorPointer(size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2d (GLdouble x, GLdouble y)
/// ```
void glWindowPos2d(double x, double y) {
  final _glWindowPos2d = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y),
      void Function(double x, double y)>('glWindowPos2d');
  return _glWindowPos2d(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2dv (const GLdouble *v)
/// ```
void glWindowPos2dv(Pointer<Double>? v) {
  final _glWindowPos2dv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos2dv');
  return _glWindowPos2dv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2f (GLfloat x, GLfloat y)
/// ```
void glWindowPos2f(double x, double y) {
  final _glWindowPos2f = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y),
      void Function(double x, double y)>('glWindowPos2f');
  return _glWindowPos2f(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2fv (const GLfloat *v)
/// ```
void glWindowPos2fv(Pointer<Float>? v) {
  final _glWindowPos2fv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos2fv');
  return _glWindowPos2fv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2i (GLint x, GLint y)
/// ```
void glWindowPos2i(int x, int y) {
  final _glWindowPos2i = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y),
      void Function(int x, int y)>('glWindowPos2i');
  return _glWindowPos2i(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2iv (const GLint *v)
/// ```
void glWindowPos2iv(Pointer<Int32>? v) {
  final _glWindowPos2iv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos2iv');
  return _glWindowPos2iv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2s (GLshort x, GLshort y)
/// ```
void glWindowPos2s(int x, int y) {
  final _glWindowPos2s = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y),
      void Function(int x, int y)>('glWindowPos2s');
  return _glWindowPos2s(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2sv (const GLshort *v)
/// ```
void glWindowPos2sv(Pointer<Int16>? v) {
  final _glWindowPos2sv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos2sv');
  return _glWindowPos2sv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3d (GLdouble x, GLdouble y, GLdouble z)
/// ```
void glWindowPos3d(double x, double y, double z) {
  final _glWindowPos3d = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y, Double z),
      void Function(double x, double y, double z)>('glWindowPos3d');
  return _glWindowPos3d(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3dv (const GLdouble *v)
/// ```
void glWindowPos3dv(Pointer<Double>? v) {
  final _glWindowPos3dv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos3dv');
  return _glWindowPos3dv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3f (GLfloat x, GLfloat y, GLfloat z)
/// ```
void glWindowPos3f(double x, double y, double z) {
  final _glWindowPos3f = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y, Float z),
      void Function(double x, double y, double z)>('glWindowPos3f');
  return _glWindowPos3f(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3fv (const GLfloat *v)
/// ```
void glWindowPos3fv(Pointer<Float>? v) {
  final _glWindowPos3fv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos3fv');
  return _glWindowPos3fv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3i (GLint x, GLint y, GLint z)
/// ```
void glWindowPos3i(int x, int y, int z) {
  final _glWindowPos3i = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y, Int32 z),
      void Function(int x, int y, int z)>('glWindowPos3i');
  return _glWindowPos3i(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3iv (const GLint *v)
/// ```
void glWindowPos3iv(Pointer<Int32>? v) {
  final _glWindowPos3iv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos3iv');
  return _glWindowPos3iv(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3s (GLshort x, GLshort y, GLshort z)
/// ```
void glWindowPos3s(int x, int y, int z) {
  final _glWindowPos3s = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y, Int16 z),
      void Function(int x, int y, int z)>('glWindowPos3s');
  return _glWindowPos3s(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3sv (const GLshort *v)
/// ```
void glWindowPos3sv(Pointer<Int16>? v) {
  final _glWindowPos3sv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos3sv');
  return _glWindowPos3sv(v);
}

/// ```c
/// GLAPI void APIENTRY glGenQueries (GLsizei n, GLuint *ids)
/// ```
void glGenQueries(int n, Pointer<Uint32>? ids) {
  final _glGenQueries = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glGenQueries');
  return _glGenQueries(n, ids);
}

/// ```c
/// GLAPI void APIENTRY glDeleteQueries (GLsizei n, const GLuint *ids)
/// ```
void glDeleteQueries(int n, Pointer<Uint32>? ids) {
  final _glDeleteQueries = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glDeleteQueries');
  return _glDeleteQueries(n, ids);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsQuery (GLuint id)
/// ```
int glIsQuery(int id) {
  final _glIsQuery = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id),
      int Function(int id)>('glIsQuery');
  return _glIsQuery(id);
}

/// ```c
/// GLAPI void APIENTRY glBeginQuery (GLenum target, GLuint id)
/// ```
void glBeginQuery(int target, int id) {
  final _glBeginQuery = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id),
      void Function(int target, int id)>('glBeginQuery');
  return _glBeginQuery(target, id);
}

/// ```c
/// GLAPI void APIENTRY glEndQuery (GLenum target)
/// ```
void glEndQuery(int target) {
  final _glEndQuery = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glEndQuery');
  return _glEndQuery(target);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryiv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetQueryiv(int target, int pname, Pointer<Int32>? params) {
  final _glGetQueryiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetQueryiv');
  return _glGetQueryiv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjectiv (GLuint id, GLenum pname, GLint *params)
/// ```
void glGetQueryObjectiv(int id, int pname, Pointer<Int32>? params) {
  final _glGetQueryObjectiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int32>? params),
      void Function(int id, int pname, Pointer<Int32>? params)>('glGetQueryObjectiv');
  return _glGetQueryObjectiv(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjectuiv (GLuint id, GLenum pname, GLuint *params)
/// ```
void glGetQueryObjectuiv(int id, int pname, Pointer<Uint32>? params) {
  final _glGetQueryObjectuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Uint32>? params),
      void Function(int id, int pname, Pointer<Uint32>? params)>('glGetQueryObjectuiv');
  return _glGetQueryObjectuiv(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glBindBuffer (GLenum target, GLuint buffer)
/// ```
void glBindBuffer(int target, int buffer) {
  final _glBindBuffer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 buffer),
      void Function(int target, int buffer)>('glBindBuffer');
  return _glBindBuffer(target, buffer);
}

/// ```c
/// GLAPI void APIENTRY glDeleteBuffers (GLsizei n, const GLuint *buffers)
/// ```
void glDeleteBuffers(int n, Pointer<Uint32>? buffers) {
  final _glDeleteBuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? buffers),
      void Function(int n, Pointer<Uint32>? buffers)>('glDeleteBuffers');
  return _glDeleteBuffers(n, buffers);
}

/// ```c
/// GLAPI void APIENTRY glGenBuffers (GLsizei n, GLuint *buffers)
/// ```
void glGenBuffers(int n, Pointer<Uint32>? buffers) {
  final _glGenBuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? buffers),
      void Function(int n, Pointer<Uint32>? buffers)>('glGenBuffers');
  return _glGenBuffers(n, buffers);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsBuffer (GLuint buffer)
/// ```
int glIsBuffer(int buffer) {
  final _glIsBuffer = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 buffer),
      int Function(int buffer)>('glIsBuffer');
  return _glIsBuffer(buffer);
}

/// ```c
/// GLAPI void APIENTRY glBufferData (GLenum target, GLsizeiptr size, const GLvoid *data, GLenum usage)
/// ```
void glBufferData(int target, Pointer<Void>? size, Pointer<Void>? data, int usage) {
  final _glBufferData = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Void>? size, Pointer<Void>? data, Uint32 usage),
      void Function(int target, Pointer<Void>? size, Pointer<Void>? data, int usage)>('glBufferData');
  return _glBufferData(target, size, data, usage);
}

/// ```c
/// GLAPI void APIENTRY glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid *data)
/// ```
void glBufferSubData(int target, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data) {
  final _glBufferSubData = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data),
      void Function(int target, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data)>('glBufferSubData');
  return _glBufferSubData(target, offset, size, data);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid *data)
/// ```
void glGetBufferSubData(int target, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data) {
  final _glGetBufferSubData = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data),
      void Function(int target, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data)>('glGetBufferSubData');
  return _glGetBufferSubData(target, offset, size, data);
}

/// ```c
/// GLAPI GLvoid* APIENTRY glMapBuffer (GLenum target, GLenum access)
/// ```
Pointer<Void>? glMapBuffer(int target, int access) {
  final _glMapBuffer = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 target, Uint32 access),
      Pointer<Void>? Function(int target, int access)>('glMapBuffer');
  return _glMapBuffer(target, access);
}

/// ```c
/// GLAPI GLboolean APIENTRY glUnmapBuffer (GLenum target)
/// ```
int glUnmapBuffer(int target) {
  final _glUnmapBuffer = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 target),
      int Function(int target)>('glUnmapBuffer');
  return _glUnmapBuffer(target);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferParameteriv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetBufferParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glGetBufferParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetBufferParameteriv');
  return _glGetBufferParameteriv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferPointerv (GLenum target, GLenum pname, GLvoid* *params)
/// ```
void glGetBufferPointerv(int target, int pname, Pointer<Pointer<Void>>? params) {
  final _glGetBufferPointerv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Pointer<Void>>? params),
      void Function(int target, int pname, Pointer<Pointer<Void>>? params)>('glGetBufferPointerv');
  return _glGetBufferPointerv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationSeparate (GLenum modeRGB, GLenum modeAlpha)
/// ```
void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
  final _glBlendEquationSeparate = DLL_SDL2.lookupFunction<
      Void Function(Uint32 modeRGB, Uint32 modeAlpha),
      void Function(int modeRGB, int modeAlpha)>('glBlendEquationSeparate');
  return _glBlendEquationSeparate(modeRGB, modeAlpha);
}

/// ```c
/// GLAPI void APIENTRY glDrawBuffers (GLsizei n, const GLenum *bufs)
/// ```
void glDrawBuffers(int n, Pointer<Uint32>? bufs) {
  final _glDrawBuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? bufs),
      void Function(int n, Pointer<Uint32>? bufs)>('glDrawBuffers');
  return _glDrawBuffers(n, bufs);
}

/// ```c
/// GLAPI void APIENTRY glStencilOpSeparate (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)
/// ```
void glStencilOpSeparate(int face, int sfail, int dpfail, int dppass) {
  final _glStencilOpSeparate = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 sfail, Uint32 dpfail, Uint32 dppass),
      void Function(int face, int sfail, int dpfail, int dppass)>('glStencilOpSeparate');
  return _glStencilOpSeparate(face, sfail, dpfail, dppass);
}

/// ```c
/// GLAPI void APIENTRY glStencilFuncSeparate (GLenum face, GLenum func, GLint ref, GLuint mask)
/// ```
void glStencilFuncSeparate(int face, int func, int ref, int mask) {
  final _glStencilFuncSeparate = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 func, Int32 ref, Uint32 mask),
      void Function(int face, int func, int ref, int mask)>('glStencilFuncSeparate');
  return _glStencilFuncSeparate(face, func, ref, mask);
}

/// ```c
/// GLAPI void APIENTRY glStencilMaskSeparate (GLenum face, GLuint mask)
/// ```
void glStencilMaskSeparate(int face, int mask) {
  final _glStencilMaskSeparate = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 mask),
      void Function(int face, int mask)>('glStencilMaskSeparate');
  return _glStencilMaskSeparate(face, mask);
}

/// ```c
/// GLAPI void APIENTRY glAttachShader (GLuint program, GLuint shader)
/// ```
void glAttachShader(int program, int shader) {
  final _glAttachShader = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 shader),
      void Function(int program, int shader)>('glAttachShader');
  return _glAttachShader(program, shader);
}

/// ```c
/// GLAPI void APIENTRY glBindAttribLocation (GLuint program, GLuint index, const GLchar *name)
/// ```
void glBindAttribLocation(int program, int index, String name) {
  final _glBindAttribLocation = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Pointer<Utf8>? name),
      void Function(int program, int index, Pointer<Utf8>? name)>('glBindAttribLocation');
  final _namePointer = name.toNativeUtf8();
  final _result = _glBindAttribLocation(program, index, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glCompileShader (GLuint shader)
/// ```
void glCompileShader(int shader) {
  final _glCompileShader = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader),
      void Function(int shader)>('glCompileShader');
  return _glCompileShader(shader);
}

/// ```c
/// GLAPI GLuint APIENTRY glCreateProgram (void)
/// ```
int glCreateProgram() {
  final _glCreateProgram = DLL_SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('glCreateProgram');
  return _glCreateProgram();
}

/// ```c
/// GLAPI GLuint APIENTRY glCreateShader (GLenum type)
/// ```
int glCreateShader(int type) {
  final _glCreateShader = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 type),
      int Function(int type)>('glCreateShader');
  return _glCreateShader(type);
}

/// ```c
/// GLAPI void APIENTRY glDeleteProgram (GLuint program)
/// ```
void glDeleteProgram(int program) {
  final _glDeleteProgram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program),
      void Function(int program)>('glDeleteProgram');
  return _glDeleteProgram(program);
}

/// ```c
/// GLAPI void APIENTRY glDeleteShader (GLuint shader)
/// ```
void glDeleteShader(int shader) {
  final _glDeleteShader = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader),
      void Function(int shader)>('glDeleteShader');
  return _glDeleteShader(shader);
}

/// ```c
/// GLAPI void APIENTRY glDetachShader (GLuint program, GLuint shader)
/// ```
void glDetachShader(int program, int shader) {
  final _glDetachShader = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 shader),
      void Function(int program, int shader)>('glDetachShader');
  return _glDetachShader(program, shader);
}

/// ```c
/// GLAPI void APIENTRY glDisableVertexAttribArray (GLuint index)
/// ```
void glDisableVertexAttribArray(int index) {
  final _glDisableVertexAttribArray = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index),
      void Function(int index)>('glDisableVertexAttribArray');
  return _glDisableVertexAttribArray(index);
}

/// ```c
/// GLAPI void APIENTRY glEnableVertexAttribArray (GLuint index)
/// ```
void glEnableVertexAttribArray(int index) {
  final _glEnableVertexAttribArray = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index),
      void Function(int index)>('glEnableVertexAttribArray');
  return _glEnableVertexAttribArray(index);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveAttrib (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name)
/// ```
void glGetActiveAttrib(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetActiveAttrib = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetActiveAttrib');
  return _glGetActiveAttrib(program, index, bufSize, length, size, type, name);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveUniform (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name)
/// ```
void glGetActiveUniform(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetActiveUniform = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetActiveUniform');
  return _glGetActiveUniform(program, index, bufSize, length, size, type, name);
}

/// ```c
/// GLAPI void APIENTRY glGetAttachedShaders (GLuint program, GLsizei maxCount, GLsizei *count, GLuint *obj)
/// ```
void glGetAttachedShaders(int program, int maxCount, Pointer<Uint32>? count, Pointer<Uint32>? obj) {
  final _glGetAttachedShaders = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 maxCount, Pointer<Uint32>? count, Pointer<Uint32>? obj),
      void Function(int program, int maxCount, Pointer<Uint32>? count, Pointer<Uint32>? obj)>('glGetAttachedShaders');
  return _glGetAttachedShaders(program, maxCount, count, obj);
}

/// ```c
/// GLAPI GLint APIENTRY glGetAttribLocation (GLuint program, const GLchar *name)
/// ```
int glGetAttribLocation(int program, String name) {
  final _glGetAttribLocation = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Pointer<Utf8>? name),
      int Function(int program, Pointer<Utf8>? name)>('glGetAttribLocation');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetAttribLocation(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetProgramiv (GLuint program, GLenum pname, GLint *params)
/// ```
void glGetProgramiv(int program, int pname, Pointer<Int32>? params) {
  final _glGetProgramiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 pname, Pointer<Int32>? params),
      void Function(int program, int pname, Pointer<Int32>? params)>('glGetProgramiv');
  return _glGetProgramiv(program, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramInfoLog (GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog)
/// ```
void glGetProgramInfoLog(int program, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog) {
  final _glGetProgramInfoLog = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog),
      void Function(int program, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog)>('glGetProgramInfoLog');
  return _glGetProgramInfoLog(program, bufSize, length, infoLog);
}

/// ```c
/// GLAPI void APIENTRY glGetShaderiv (GLuint shader, GLenum pname, GLint *params)
/// ```
void glGetShaderiv(int shader, int pname, Pointer<Int32>? params) {
  final _glGetShaderiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader, Uint32 pname, Pointer<Int32>? params),
      void Function(int shader, int pname, Pointer<Int32>? params)>('glGetShaderiv');
  return _glGetShaderiv(shader, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetShaderInfoLog (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog)
/// ```
void glGetShaderInfoLog(int shader, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog) {
  final _glGetShaderInfoLog = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog),
      void Function(int shader, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog)>('glGetShaderInfoLog');
  return _glGetShaderInfoLog(shader, bufSize, length, infoLog);
}

/// ```c
/// GLAPI void APIENTRY glGetShaderSource (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source)
/// ```
void glGetShaderSource(int shader, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? source) {
  final _glGetShaderSource = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? source),
      void Function(int shader, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? source)>('glGetShaderSource');
  return _glGetShaderSource(shader, bufSize, length, source);
}

/// ```c
/// GLAPI GLint APIENTRY glGetUniformLocation (GLuint program, const GLchar *name)
/// ```
int glGetUniformLocation(int program, String name) {
  final _glGetUniformLocation = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Pointer<Utf8>? name),
      int Function(int program, Pointer<Utf8>? name)>('glGetUniformLocation');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetUniformLocation(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetUniformfv (GLuint program, GLint location, GLfloat *params)
/// ```
void glGetUniformfv(int program, int location, Pointer<Float>? params) {
  final _glGetUniformfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Float>? params),
      void Function(int program, int location, Pointer<Float>? params)>('glGetUniformfv');
  return _glGetUniformfv(program, location, params);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformiv (GLuint program, GLint location, GLint *params)
/// ```
void glGetUniformiv(int program, int location, Pointer<Int32>? params) {
  final _glGetUniformiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Int32>? params),
      void Function(int program, int location, Pointer<Int32>? params)>('glGetUniformiv');
  return _glGetUniformiv(program, location, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribdv (GLuint index, GLenum pname, GLdouble *params)
/// ```
void glGetVertexAttribdv(int index, int pname, Pointer<Double>? params) {
  final _glGetVertexAttribdv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Double>? params),
      void Function(int index, int pname, Pointer<Double>? params)>('glGetVertexAttribdv');
  return _glGetVertexAttribdv(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribfv (GLuint index, GLenum pname, GLfloat *params)
/// ```
void glGetVertexAttribfv(int index, int pname, Pointer<Float>? params) {
  final _glGetVertexAttribfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Float>? params),
      void Function(int index, int pname, Pointer<Float>? params)>('glGetVertexAttribfv');
  return _glGetVertexAttribfv(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribiv (GLuint index, GLenum pname, GLint *params)
/// ```
void glGetVertexAttribiv(int index, int pname, Pointer<Int32>? params) {
  final _glGetVertexAttribiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int index, int pname, Pointer<Int32>? params)>('glGetVertexAttribiv');
  return _glGetVertexAttribiv(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribPointerv (GLuint index, GLenum pname, GLvoid* *pointer)
/// ```
void glGetVertexAttribPointerv(int index, int pname, Pointer<Pointer<Void>>? pointer) {
  final _glGetVertexAttribPointerv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Pointer<Void>>? pointer),
      void Function(int index, int pname, Pointer<Pointer<Void>>? pointer)>('glGetVertexAttribPointerv');
  return _glGetVertexAttribPointerv(index, pname, pointer);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsProgram (GLuint program)
/// ```
int glIsProgram(int program) {
  final _glIsProgram = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program),
      int Function(int program)>('glIsProgram');
  return _glIsProgram(program);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsShader (GLuint shader)
/// ```
int glIsShader(int shader) {
  final _glIsShader = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 shader),
      int Function(int shader)>('glIsShader');
  return _glIsShader(shader);
}

/// ```c
/// GLAPI void APIENTRY glLinkProgram (GLuint program)
/// ```
void glLinkProgram(int program) {
  final _glLinkProgram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program),
      void Function(int program)>('glLinkProgram');
  return _glLinkProgram(program);
}

/// ```c
/// GLAPI void APIENTRY glShaderSource (GLuint shader, GLsizei count, const GLchar* *string, const GLint *length)
/// ```
void glShaderSource(int shader, int count, Pointer<Pointer<Int8>>? string, Pointer<Int32>? length) {
  final _glShaderSource = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader, Uint32 count, Pointer<Pointer<Int8>>? string, Pointer<Int32>? length),
      void Function(int shader, int count, Pointer<Pointer<Int8>>? string, Pointer<Int32>? length)>('glShaderSource');
  return _glShaderSource(shader, count, string, length);
}

/// ```c
/// GLAPI void APIENTRY glUseProgram (GLuint program)
/// ```
void glUseProgram(int program) {
  final _glUseProgram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program),
      void Function(int program)>('glUseProgram');
  return _glUseProgram(program);
}

/// ```c
/// GLAPI void APIENTRY glUniform1f (GLint location, GLfloat v0)
/// ```
void glUniform1f(int location, double v0) {
  final _glUniform1f = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0),
      void Function(int location, double v0)>('glUniform1f');
  return _glUniform1f(location, v0);
}

/// ```c
/// GLAPI void APIENTRY glUniform2f (GLint location, GLfloat v0, GLfloat v1)
/// ```
void glUniform2f(int location, double v0, double v1) {
  final _glUniform2f = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0, Float v1),
      void Function(int location, double v0, double v1)>('glUniform2f');
  return _glUniform2f(location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glUniform3f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
/// ```
void glUniform3f(int location, double v0, double v1, double v2) {
  final _glUniform3f = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0, Float v1, Float v2),
      void Function(int location, double v0, double v1, double v2)>('glUniform3f');
  return _glUniform3f(location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glUniform4f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
/// ```
void glUniform4f(int location, double v0, double v1, double v2, double v3) {
  final _glUniform4f = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0, Float v1, Float v2, Float v3),
      void Function(int location, double v0, double v1, double v2, double v3)>('glUniform4f');
  return _glUniform4f(location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glUniform1i (GLint location, GLint v0)
/// ```
void glUniform1i(int location, int v0) {
  final _glUniform1i = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0),
      void Function(int location, int v0)>('glUniform1i');
  return _glUniform1i(location, v0);
}

/// ```c
/// GLAPI void APIENTRY glUniform2i (GLint location, GLint v0, GLint v1)
/// ```
void glUniform2i(int location, int v0, int v1) {
  final _glUniform2i = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0, Int32 v1),
      void Function(int location, int v0, int v1)>('glUniform2i');
  return _glUniform2i(location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glUniform3i (GLint location, GLint v0, GLint v1, GLint v2)
/// ```
void glUniform3i(int location, int v0, int v1, int v2) {
  final _glUniform3i = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0, Int32 v1, Int32 v2),
      void Function(int location, int v0, int v1, int v2)>('glUniform3i');
  return _glUniform3i(location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glUniform4i (GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
/// ```
void glUniform4i(int location, int v0, int v1, int v2, int v3) {
  final _glUniform4i = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3),
      void Function(int location, int v0, int v1, int v2, int v3)>('glUniform4i');
  return _glUniform4i(location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glUniform1fv (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform1fv(int location, int count, Pointer<Float>? value) {
  final _glUniform1fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform1fv');
  return _glUniform1fv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2fv (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform2fv(int location, int count, Pointer<Float>? value) {
  final _glUniform2fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform2fv');
  return _glUniform2fv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3fv (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform3fv(int location, int count, Pointer<Float>? value) {
  final _glUniform3fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform3fv');
  return _glUniform3fv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4fv (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform4fv(int location, int count, Pointer<Float>? value) {
  final _glUniform4fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform4fv');
  return _glUniform4fv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform1iv (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform1iv(int location, int count, Pointer<Int32>? value) {
  final _glUniform1iv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform1iv');
  return _glUniform1iv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2iv (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform2iv(int location, int count, Pointer<Int32>? value) {
  final _glUniform2iv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform2iv');
  return _glUniform2iv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3iv (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform3iv(int location, int count, Pointer<Int32>? value) {
  final _glUniform3iv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform3iv');
  return _glUniform3iv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4iv (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform4iv(int location, int count, Pointer<Int32>? value) {
  final _glUniform4iv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform4iv');
  return _glUniform4iv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix2fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix2fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix2fv');
  return _glUniformMatrix2fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix3fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix3fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix3fv');
  return _glUniformMatrix3fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix4fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix4fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix4fv');
  return _glUniformMatrix4fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glValidateProgram (GLuint program)
/// ```
void glValidateProgram(int program) {
  final _glValidateProgram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program),
      void Function(int program)>('glValidateProgram');
  return _glValidateProgram(program);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1d (GLuint index, GLdouble x)
/// ```
void glVertexAttrib1d(int index, double x) {
  final _glVertexAttrib1d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x),
      void Function(int index, double x)>('glVertexAttrib1d');
  return _glVertexAttrib1d(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib1dv(int index, Pointer<Double>? v) {
  final _glVertexAttrib1dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib1dv');
  return _glVertexAttrib1dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1f (GLuint index, GLfloat x)
/// ```
void glVertexAttrib1f(int index, double x) {
  final _glVertexAttrib1f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x),
      void Function(int index, double x)>('glVertexAttrib1f');
  return _glVertexAttrib1f(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1fv (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib1fv(int index, Pointer<Float>? v) {
  final _glVertexAttrib1fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib1fv');
  return _glVertexAttrib1fv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1s (GLuint index, GLshort x)
/// ```
void glVertexAttrib1s(int index, int x) {
  final _glVertexAttrib1s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x),
      void Function(int index, int x)>('glVertexAttrib1s');
  return _glVertexAttrib1s(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1sv (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib1sv(int index, Pointer<Int16>? v) {
  final _glVertexAttrib1sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib1sv');
  return _glVertexAttrib1sv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2d (GLuint index, GLdouble x, GLdouble y)
/// ```
void glVertexAttrib2d(int index, double x, double y) {
  final _glVertexAttrib2d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y),
      void Function(int index, double x, double y)>('glVertexAttrib2d');
  return _glVertexAttrib2d(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib2dv(int index, Pointer<Double>? v) {
  final _glVertexAttrib2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib2dv');
  return _glVertexAttrib2dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y)
/// ```
void glVertexAttrib2f(int index, double x, double y) {
  final _glVertexAttrib2f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y),
      void Function(int index, double x, double y)>('glVertexAttrib2f');
  return _glVertexAttrib2f(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2fv (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib2fv(int index, Pointer<Float>? v) {
  final _glVertexAttrib2fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib2fv');
  return _glVertexAttrib2fv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2s (GLuint index, GLshort x, GLshort y)
/// ```
void glVertexAttrib2s(int index, int x, int y) {
  final _glVertexAttrib2s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y),
      void Function(int index, int x, int y)>('glVertexAttrib2s');
  return _glVertexAttrib2s(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2sv (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib2sv(int index, Pointer<Int16>? v) {
  final _glVertexAttrib2sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib2sv');
  return _glVertexAttrib2sv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3d (GLuint index, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glVertexAttrib3d(int index, double x, double y, double z) {
  final _glVertexAttrib3d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z),
      void Function(int index, double x, double y, double z)>('glVertexAttrib3d');
  return _glVertexAttrib3d(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib3dv(int index, Pointer<Double>? v) {
  final _glVertexAttrib3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib3dv');
  return _glVertexAttrib3dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glVertexAttrib3f(int index, double x, double y, double z) {
  final _glVertexAttrib3f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float z),
      void Function(int index, double x, double y, double z)>('glVertexAttrib3f');
  return _glVertexAttrib3f(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3fv (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib3fv(int index, Pointer<Float>? v) {
  final _glVertexAttrib3fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib3fv');
  return _glVertexAttrib3fv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3s (GLuint index, GLshort x, GLshort y, GLshort z)
/// ```
void glVertexAttrib3s(int index, int x, int y, int z) {
  final _glVertexAttrib3s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y, Int16 z),
      void Function(int index, int x, int y, int z)>('glVertexAttrib3s');
  return _glVertexAttrib3s(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3sv (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib3sv(int index, Pointer<Int16>? v) {
  final _glVertexAttrib3sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib3sv');
  return _glVertexAttrib3sv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Nbv (GLuint index, const GLbyte *v)
/// ```
void glVertexAttrib4Nbv(int index, String v) {
  final _glVertexAttrib4Nbv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Utf8>? v),
      void Function(int index, Pointer<Utf8>? v)>('glVertexAttrib4Nbv');
  final _vPointer = v.toNativeUtf8();
  final _result = _glVertexAttrib4Nbv(index, _vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Niv (GLuint index, const GLint *v)
/// ```
void glVertexAttrib4Niv(int index, Pointer<Int32>? v) {
  final _glVertexAttrib4Niv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttrib4Niv');
  return _glVertexAttrib4Niv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Nsv (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib4Nsv(int index, Pointer<Int16>? v) {
  final _glVertexAttrib4Nsv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib4Nsv');
  return _glVertexAttrib4Nsv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Nub (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
/// ```
void glVertexAttrib4Nub(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4Nub = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint8 x, Uint8 y, Uint8 z, Uint8 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4Nub');
  return _glVertexAttrib4Nub(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Nubv (GLuint index, const GLubyte *v)
/// ```
void glVertexAttrib4Nubv(int index, Pointer<Uint8>? v) {
  final _glVertexAttrib4Nubv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttrib4Nubv');
  return _glVertexAttrib4Nubv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Nuiv (GLuint index, const GLuint *v)
/// ```
void glVertexAttrib4Nuiv(int index, Pointer<Uint32>? v) {
  final _glVertexAttrib4Nuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttrib4Nuiv');
  return _glVertexAttrib4Nuiv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4Nusv (GLuint index, const GLushort *v)
/// ```
void glVertexAttrib4Nusv(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib4Nusv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib4Nusv');
  return _glVertexAttrib4Nusv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4bv (GLuint index, const GLbyte *v)
/// ```
void glVertexAttrib4bv(int index, String v) {
  final _glVertexAttrib4bv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Utf8>? v),
      void Function(int index, Pointer<Utf8>? v)>('glVertexAttrib4bv');
  final _vPointer = v.toNativeUtf8();
  final _result = _glVertexAttrib4bv(index, _vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glVertexAttrib4d(int index, double x, double y, double z, double w) {
  final _glVertexAttrib4d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttrib4d');
  return _glVertexAttrib4d(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib4dv(int index, Pointer<Double>? v) {
  final _glVertexAttrib4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib4dv');
  return _glVertexAttrib4dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glVertexAttrib4f(int index, double x, double y, double z, double w) {
  final _glVertexAttrib4f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttrib4f');
  return _glVertexAttrib4f(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4fv (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib4fv(int index, Pointer<Float>? v) {
  final _glVertexAttrib4fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib4fv');
  return _glVertexAttrib4fv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4iv (GLuint index, const GLint *v)
/// ```
void glVertexAttrib4iv(int index, Pointer<Int32>? v) {
  final _glVertexAttrib4iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttrib4iv');
  return _glVertexAttrib4iv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4s (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
/// ```
void glVertexAttrib4s(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4s = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y, Int16 z, Int16 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4s');
  return _glVertexAttrib4s(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4sv (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib4sv(int index, Pointer<Int16>? v) {
  final _glVertexAttrib4sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib4sv');
  return _glVertexAttrib4sv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4ubv (GLuint index, const GLubyte *v)
/// ```
void glVertexAttrib4ubv(int index, Pointer<Uint8>? v) {
  final _glVertexAttrib4ubv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttrib4ubv');
  return _glVertexAttrib4ubv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4uiv (GLuint index, const GLuint *v)
/// ```
void glVertexAttrib4uiv(int index, Pointer<Uint32>? v) {
  final _glVertexAttrib4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttrib4uiv');
  return _glVertexAttrib4uiv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4usv (GLuint index, const GLushort *v)
/// ```
void glVertexAttrib4usv(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib4usv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib4usv');
  return _glVertexAttrib4usv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribPointer (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribPointer(int index, int size, int type, int normalized, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribPointer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Int32 normalized, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int size, int type, int normalized, int stride, Pointer<Void>? pointer)>('glVertexAttribPointer');
  return _glVertexAttribPointer(index, size, type, normalized, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2x3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix2x3fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix2x3fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix2x3fv');
  return _glUniformMatrix2x3fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3x2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix3x2fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix3x2fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix3x2fv');
  return _glUniformMatrix3x2fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2x4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix2x4fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix2x4fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix2x4fv');
  return _glUniformMatrix2x4fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4x2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix4x2fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix4x2fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix4x2fv');
  return _glUniformMatrix4x2fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3x4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix3x4fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix3x4fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix3x4fv');
  return _glUniformMatrix3x4fv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4x3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix4x3fv(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix4x3fv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix4x3fv');
  return _glUniformMatrix4x3fv(location, count, transpose, value);
}

/// ARB_vertex_array_object
/// ```c
/// GLAPI void APIENTRY glColorMaski (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)
/// ```
void glColorMaski(int index, int r, int g, int b, int a) {
  final _glColorMaski = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 r, Int32 g, Int32 b, Int32 a),
      void Function(int index, int r, int g, int b, int a)>('glColorMaski');
  return _glColorMaski(index, r, g, b, a);
}

/// ```c
/// GLAPI void APIENTRY glGetBooleani_v (GLenum target, GLuint index, GLboolean *data)
/// ```
void glGetBooleani_v(int target, int index, Pointer<Int32>? data) {
  final _glGetBooleani_v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? data),
      void Function(int target, int index, Pointer<Int32>? data)>('glGetBooleani_v');
  return _glGetBooleani_v(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glGetIntegeri_v (GLenum target, GLuint index, GLint *data)
/// ```
void glGetIntegeri_v(int target, int index, Pointer<Int32>? data) {
  final _glGetIntegeri_v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? data),
      void Function(int target, int index, Pointer<Int32>? data)>('glGetIntegeri_v');
  return _glGetIntegeri_v(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glEnablei (GLenum target, GLuint index)
/// ```
void glEnablei(int target, int index) {
  final _glEnablei = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index),
      void Function(int target, int index)>('glEnablei');
  return _glEnablei(target, index);
}

/// ```c
/// GLAPI void APIENTRY glDisablei (GLenum target, GLuint index)
/// ```
void glDisablei(int target, int index) {
  final _glDisablei = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index),
      void Function(int target, int index)>('glDisablei');
  return _glDisablei(target, index);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsEnabledi (GLenum target, GLuint index)
/// ```
int glIsEnabledi(int target, int index) {
  final _glIsEnabledi = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 target, Uint32 index),
      int Function(int target, int index)>('glIsEnabledi');
  return _glIsEnabledi(target, index);
}

/// ```c
/// GLAPI void APIENTRY glBeginTransformFeedback (GLenum primitiveMode)
/// ```
void glBeginTransformFeedback(int primitiveMode) {
  final _glBeginTransformFeedback = DLL_SDL2.lookupFunction<
      Void Function(Uint32 primitiveMode),
      void Function(int primitiveMode)>('glBeginTransformFeedback');
  return _glBeginTransformFeedback(primitiveMode);
}

/// ```c
/// GLAPI void APIENTRY glEndTransformFeedback (void)
/// ```
void glEndTransformFeedback() {
  final _glEndTransformFeedback = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndTransformFeedback');
  return _glEndTransformFeedback();
}

/// ```c
/// GLAPI void APIENTRY glBindBufferRange (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
/// ```
void glBindBufferRange(int target, int index, int buffer, Pointer<Void>? offset, Pointer<Void>? size) {
  final _glBindBufferRange = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? size),
      void Function(int target, int index, int buffer, Pointer<Void>? offset, Pointer<Void>? size)>('glBindBufferRange');
  return _glBindBufferRange(target, index, buffer, offset, size);
}

/// ```c
/// GLAPI void APIENTRY glBindBufferBase (GLenum target, GLuint index, GLuint buffer)
/// ```
void glBindBufferBase(int target, int index, int buffer) {
  final _glBindBufferBase = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer),
      void Function(int target, int index, int buffer)>('glBindBufferBase');
  return _glBindBufferBase(target, index, buffer);
}

/// ```c
/// GLAPI void APIENTRY glTransformFeedbackVaryings (GLuint program, GLsizei count, const GLchar* *varyings, GLenum bufferMode)
/// ```
void glTransformFeedbackVaryings(int program, int count, Pointer<Pointer<Int8>>? varyings, int bufferMode) {
  final _glTransformFeedbackVaryings = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 count, Pointer<Pointer<Int8>>? varyings, Uint32 bufferMode),
      void Function(int program, int count, Pointer<Pointer<Int8>>? varyings, int bufferMode)>('glTransformFeedbackVaryings');
  return _glTransformFeedbackVaryings(program, count, varyings, bufferMode);
}

/// ```c
/// GLAPI void APIENTRY glGetTransformFeedbackVarying (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name)
/// ```
void glGetTransformFeedbackVarying(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetTransformFeedbackVarying = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetTransformFeedbackVarying');
  return _glGetTransformFeedbackVarying(program, index, bufSize, length, size, type, name);
}

/// ```c
/// GLAPI void APIENTRY glClampColor (GLenum target, GLenum clamp)
/// ```
void glClampColor(int target, int clamp) {
  final _glClampColor = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 clamp),
      void Function(int target, int clamp)>('glClampColor');
  return _glClampColor(target, clamp);
}

/// ```c
/// GLAPI void APIENTRY glBeginConditionalRender (GLuint id, GLenum mode)
/// ```
void glBeginConditionalRender(int id, int mode) {
  final _glBeginConditionalRender = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 mode),
      void Function(int id, int mode)>('glBeginConditionalRender');
  return _glBeginConditionalRender(id, mode);
}

/// ```c
/// GLAPI void APIENTRY glEndConditionalRender (void)
/// ```
void glEndConditionalRender() {
  final _glEndConditionalRender = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndConditionalRender');
  return _glEndConditionalRender();
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribIPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribIPointer(int index, int size, int type, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribIPointer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int size, int type, int stride, Pointer<Void>? pointer)>('glVertexAttribIPointer');
  return _glVertexAttribIPointer(index, size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribIiv (GLuint index, GLenum pname, GLint *params)
/// ```
void glGetVertexAttribIiv(int index, int pname, Pointer<Int32>? params) {
  final _glGetVertexAttribIiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int index, int pname, Pointer<Int32>? params)>('glGetVertexAttribIiv');
  return _glGetVertexAttribIiv(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribIuiv (GLuint index, GLenum pname, GLuint *params)
/// ```
void glGetVertexAttribIuiv(int index, int pname, Pointer<Uint32>? params) {
  final _glGetVertexAttribIuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Uint32>? params),
      void Function(int index, int pname, Pointer<Uint32>? params)>('glGetVertexAttribIuiv');
  return _glGetVertexAttribIuiv(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1i (GLuint index, GLint x)
/// ```
void glVertexAttribI1i(int index, int x) {
  final _glVertexAttribI1i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x),
      void Function(int index, int x)>('glVertexAttribI1i');
  return _glVertexAttribI1i(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2i (GLuint index, GLint x, GLint y)
/// ```
void glVertexAttribI2i(int index, int x, int y) {
  final _glVertexAttribI2i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x, Int32 y),
      void Function(int index, int x, int y)>('glVertexAttribI2i');
  return _glVertexAttribI2i(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3i (GLuint index, GLint x, GLint y, GLint z)
/// ```
void glVertexAttribI3i(int index, int x, int y, int z) {
  final _glVertexAttribI3i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x, Int32 y, Int32 z),
      void Function(int index, int x, int y, int z)>('glVertexAttribI3i');
  return _glVertexAttribI3i(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4i (GLuint index, GLint x, GLint y, GLint z, GLint w)
/// ```
void glVertexAttribI4i(int index, int x, int y, int z, int w) {
  final _glVertexAttribI4i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttribI4i');
  return _glVertexAttribI4i(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1ui (GLuint index, GLuint x)
/// ```
void glVertexAttribI1ui(int index, int x) {
  final _glVertexAttribI1ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x),
      void Function(int index, int x)>('glVertexAttribI1ui');
  return _glVertexAttribI1ui(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2ui (GLuint index, GLuint x, GLuint y)
/// ```
void glVertexAttribI2ui(int index, int x, int y) {
  final _glVertexAttribI2ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x, Uint32 y),
      void Function(int index, int x, int y)>('glVertexAttribI2ui');
  return _glVertexAttribI2ui(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3ui (GLuint index, GLuint x, GLuint y, GLuint z)
/// ```
void glVertexAttribI3ui(int index, int x, int y, int z) {
  final _glVertexAttribI3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x, Uint32 y, Uint32 z),
      void Function(int index, int x, int y, int z)>('glVertexAttribI3ui');
  return _glVertexAttribI3ui(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4ui (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
/// ```
void glVertexAttribI4ui(int index, int x, int y, int z, int w) {
  final _glVertexAttribI4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttribI4ui');
  return _glVertexAttribI4ui(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1iv (GLuint index, const GLint *v)
/// ```
void glVertexAttribI1iv(int index, Pointer<Int32>? v) {
  final _glVertexAttribI1iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI1iv');
  return _glVertexAttribI1iv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2iv (GLuint index, const GLint *v)
/// ```
void glVertexAttribI2iv(int index, Pointer<Int32>? v) {
  final _glVertexAttribI2iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI2iv');
  return _glVertexAttribI2iv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3iv (GLuint index, const GLint *v)
/// ```
void glVertexAttribI3iv(int index, Pointer<Int32>? v) {
  final _glVertexAttribI3iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI3iv');
  return _glVertexAttribI3iv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4iv (GLuint index, const GLint *v)
/// ```
void glVertexAttribI4iv(int index, Pointer<Int32>? v) {
  final _glVertexAttribI4iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI4iv');
  return _glVertexAttribI4iv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1uiv (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI1uiv(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI1uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI1uiv');
  return _glVertexAttribI1uiv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2uiv (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI2uiv(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI2uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI2uiv');
  return _glVertexAttribI2uiv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3uiv (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI3uiv(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI3uiv');
  return _glVertexAttribI3uiv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4uiv (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI4uiv(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI4uiv');
  return _glVertexAttribI4uiv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4bv (GLuint index, const GLbyte *v)
/// ```
void glVertexAttribI4bv(int index, String v) {
  final _glVertexAttribI4bv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Utf8>? v),
      void Function(int index, Pointer<Utf8>? v)>('glVertexAttribI4bv');
  final _vPointer = v.toNativeUtf8();
  final _result = _glVertexAttribI4bv(index, _vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4sv (GLuint index, const GLshort *v)
/// ```
void glVertexAttribI4sv(int index, Pointer<Int16>? v) {
  final _glVertexAttribI4sv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttribI4sv');
  return _glVertexAttribI4sv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4ubv (GLuint index, const GLubyte *v)
/// ```
void glVertexAttribI4ubv(int index, Pointer<Uint8>? v) {
  final _glVertexAttribI4ubv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttribI4ubv');
  return _glVertexAttribI4ubv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4usv (GLuint index, const GLushort *v)
/// ```
void glVertexAttribI4usv(int index, Pointer<Uint16>? v) {
  final _glVertexAttribI4usv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttribI4usv');
  return _glVertexAttribI4usv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformuiv (GLuint program, GLint location, GLuint *params)
/// ```
void glGetUniformuiv(int program, int location, Pointer<Uint32>? params) {
  final _glGetUniformuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Uint32>? params),
      void Function(int program, int location, Pointer<Uint32>? params)>('glGetUniformuiv');
  return _glGetUniformuiv(program, location, params);
}

/// ```c
/// GLAPI void APIENTRY glBindFragDataLocation (GLuint program, GLuint color, const GLchar *name)
/// ```
void glBindFragDataLocation(int program, int color, String name) {
  final _glBindFragDataLocation = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 color, Pointer<Utf8>? name),
      void Function(int program, int color, Pointer<Utf8>? name)>('glBindFragDataLocation');
  final _namePointer = name.toNativeUtf8();
  final _result = _glBindFragDataLocation(program, color, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI GLint APIENTRY glGetFragDataLocation (GLuint program, const GLchar *name)
/// ```
int glGetFragDataLocation(int program, String name) {
  final _glGetFragDataLocation = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Pointer<Utf8>? name),
      int Function(int program, Pointer<Utf8>? name)>('glGetFragDataLocation');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetFragDataLocation(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glUniform1ui (GLint location, GLuint v0)
/// ```
void glUniform1ui(int location, int v0) {
  final _glUniform1ui = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0),
      void Function(int location, int v0)>('glUniform1ui');
  return _glUniform1ui(location, v0);
}

/// ```c
/// GLAPI void APIENTRY glUniform2ui (GLint location, GLuint v0, GLuint v1)
/// ```
void glUniform2ui(int location, int v0, int v1) {
  final _glUniform2ui = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0, Uint32 v1),
      void Function(int location, int v0, int v1)>('glUniform2ui');
  return _glUniform2ui(location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glUniform3ui (GLint location, GLuint v0, GLuint v1, GLuint v2)
/// ```
void glUniform3ui(int location, int v0, int v1, int v2) {
  final _glUniform3ui = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0, Uint32 v1, Uint32 v2),
      void Function(int location, int v0, int v1, int v2)>('glUniform3ui');
  return _glUniform3ui(location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glUniform4ui (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
/// ```
void glUniform4ui(int location, int v0, int v1, int v2, int v3) {
  final _glUniform4ui = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3),
      void Function(int location, int v0, int v1, int v2, int v3)>('glUniform4ui');
  return _glUniform4ui(location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glUniform1uiv (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform1uiv(int location, int count, Pointer<Uint32>? value) {
  final _glUniform1uiv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform1uiv');
  return _glUniform1uiv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2uiv (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform2uiv(int location, int count, Pointer<Uint32>? value) {
  final _glUniform2uiv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform2uiv');
  return _glUniform2uiv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3uiv (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform3uiv(int location, int count, Pointer<Uint32>? value) {
  final _glUniform3uiv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform3uiv');
  return _glUniform3uiv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4uiv (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform4uiv(int location, int count, Pointer<Uint32>? value) {
  final _glUniform4uiv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform4uiv');
  return _glUniform4uiv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glTexParameterIiv (GLenum target, GLenum pname, const GLint *params)
/// ```
void glTexParameterIiv(int target, int pname, Pointer<Int32>? params) {
  final _glTexParameterIiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glTexParameterIiv');
  return _glTexParameterIiv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTexParameterIuiv (GLenum target, GLenum pname, const GLuint *params)
/// ```
void glTexParameterIuiv(int target, int pname, Pointer<Uint32>? params) {
  final _glTexParameterIuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int target, int pname, Pointer<Uint32>? params)>('glTexParameterIuiv');
  return _glTexParameterIuiv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTexParameterIiv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetTexParameterIiv(int target, int pname, Pointer<Int32>? params) {
  final _glGetTexParameterIiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetTexParameterIiv');
  return _glGetTexParameterIiv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTexParameterIuiv (GLenum target, GLenum pname, GLuint *params)
/// ```
void glGetTexParameterIuiv(int target, int pname, Pointer<Uint32>? params) {
  final _glGetTexParameterIuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int target, int pname, Pointer<Uint32>? params)>('glGetTexParameterIuiv');
  return _glGetTexParameterIuiv(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glClearBufferiv (GLenum buffer, GLint drawbuffer, const GLint *value)
/// ```
void glClearBufferiv(int buffer, int drawbuffer, Pointer<Int32>? value) {
  final _glClearBufferiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Int32 drawbuffer, Pointer<Int32>? value),
      void Function(int buffer, int drawbuffer, Pointer<Int32>? value)>('glClearBufferiv');
  return _glClearBufferiv(buffer, drawbuffer, value);
}

/// ```c
/// GLAPI void APIENTRY glClearBufferuiv (GLenum buffer, GLint drawbuffer, const GLuint *value)
/// ```
void glClearBufferuiv(int buffer, int drawbuffer, Pointer<Uint32>? value) {
  final _glClearBufferuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Int32 drawbuffer, Pointer<Uint32>? value),
      void Function(int buffer, int drawbuffer, Pointer<Uint32>? value)>('glClearBufferuiv');
  return _glClearBufferuiv(buffer, drawbuffer, value);
}

/// ```c
/// GLAPI void APIENTRY glClearBufferfv (GLenum buffer, GLint drawbuffer, const GLfloat *value)
/// ```
void glClearBufferfv(int buffer, int drawbuffer, Pointer<Float>? value) {
  final _glClearBufferfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Int32 drawbuffer, Pointer<Float>? value),
      void Function(int buffer, int drawbuffer, Pointer<Float>? value)>('glClearBufferfv');
  return _glClearBufferfv(buffer, drawbuffer, value);
}

/// ```c
/// GLAPI void APIENTRY glClearBufferfi (GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil)
/// ```
void glClearBufferfi(int buffer, int drawbuffer, double depth, int stencil) {
  final _glClearBufferfi = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Int32 drawbuffer, Float depth, Int32 stencil),
      void Function(int buffer, int drawbuffer, double depth, int stencil)>('glClearBufferfi');
  return _glClearBufferfi(buffer, drawbuffer, depth, stencil);
}

/// ```c
/// GLAPI const GLubyte * APIENTRY glGetStringi (GLenum name, GLuint index)
/// ```
Pointer<Uint8>? glGetStringi(int name, int index) {
  final _glGetStringi = DLL_SDL2.lookupFunction<
      Pointer<Uint8>? Function(Uint32 name, Uint32 index),
      Pointer<Uint8>? Function(int name, int index)>('glGetStringi');
  return _glGetStringi(name, index);
}

/// ARB_uniform_buffer_object
/// ```c
/// GLAPI void APIENTRY glDrawArraysInstanced (GLenum mode, GLint first, GLsizei count, GLsizei primcount)
/// ```
void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
  final _glDrawArraysInstanced = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Int32 first, Uint32 count, Uint32 primcount),
      void Function(int mode, int first, int count, int primcount)>('glDrawArraysInstanced');
  return _glDrawArraysInstanced(mode, first, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementsInstanced (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount)
/// ```
void glDrawElementsInstanced(int mode, int count, int type, Pointer<Void>? indices, int primcount) {
  final _glDrawElementsInstanced = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 count, Uint32 type, Pointer<Void>? indices, Uint32 primcount),
      void Function(int mode, int count, int type, Pointer<Void>? indices, int primcount)>('glDrawElementsInstanced');
  return _glDrawElementsInstanced(mode, count, type, indices, primcount);
}

/// ```c
/// GLAPI void APIENTRY glTexBuffer (GLenum target, GLenum internalformat, GLuint buffer)
/// ```
void glTexBuffer(int target, int internalformat, int buffer) {
  final _glTexBuffer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 buffer),
      void Function(int target, int internalformat, int buffer)>('glTexBuffer');
  return _glTexBuffer(target, internalformat, buffer);
}

/// ```c
/// GLAPI void APIENTRY glPrimitiveRestartIndex (GLuint index)
/// ```
void glPrimitiveRestartIndex(int index) {
  final _glPrimitiveRestartIndex = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index),
      void Function(int index)>('glPrimitiveRestartIndex');
  return _glPrimitiveRestartIndex(index);
}

/// ARB_texture_multisample
/// ```c
/// GLAPI void APIENTRY glGetInteger64i_v (GLenum target, GLuint index, GLint64 *data)
/// ```
void glGetInteger64i_v(int target, int index, Pointer<Int64>? data) {
  final _glGetInteger64i_v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int64>? data),
      void Function(int target, int index, Pointer<Int64>? data)>('glGetInteger64i_v');
  return _glGetInteger64i_v(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferParameteri64v (GLenum target, GLenum pname, GLint64 *params)
/// ```
void glGetBufferParameteri64v(int target, int pname, Pointer<Int64>? params) {
  final _glGetBufferParameteri64v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int64>? params),
      void Function(int target, int pname, Pointer<Int64>? params)>('glGetBufferParameteri64v');
  return _glGetBufferParameteri64v(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture (GLenum target, GLenum attachment, GLuint texture, GLint level)
/// ```
void glFramebufferTexture(int target, int attachment, int texture, int level) {
  final _glFramebufferTexture = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int texture, int level)>('glFramebufferTexture');
  return _glFramebufferTexture(target, attachment, texture, level);
}

/// ARB_vertex_type_2_10_10_10_rev
/// ```c
/// GLAPI void APIENTRY glVertexAttribDivisor (GLuint index, GLuint divisor)
/// ```
void glVertexAttribDivisor(int index, int divisor) {
  final _glVertexAttribDivisor = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 divisor),
      void Function(int index, int divisor)>('glVertexAttribDivisor');
  return _glVertexAttribDivisor(index, divisor);
}

/// ARB_transform_feedback3
/// ```c
/// GLAPI void APIENTRY glMinSampleShading (GLclampf value)
/// ```
void glMinSampleShading(double value) {
  final _glMinSampleShading = DLL_SDL2.lookupFunction<
      Void Function(Float value),
      void Function(double value)>('glMinSampleShading');
  return _glMinSampleShading(value);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationi (GLuint buf, GLenum mode)
/// ```
void glBlendEquationi(int buf, int mode) {
  final _glBlendEquationi = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 mode),
      void Function(int buf, int mode)>('glBlendEquationi');
  return _glBlendEquationi(buf, mode);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationSeparatei (GLuint buf, GLenum modeRGB, GLenum modeAlpha)
/// ```
void glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) {
  final _glBlendEquationSeparatei = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 modeRGB, Uint32 modeAlpha),
      void Function(int buf, int modeRGB, int modeAlpha)>('glBlendEquationSeparatei');
  return _glBlendEquationSeparatei(buf, modeRGB, modeAlpha);
}

/// ```c
/// GLAPI void APIENTRY glBlendFunci (GLuint buf, GLenum src, GLenum dst)
/// ```
void glBlendFunci(int buf, int src, int dst) {
  final _glBlendFunci = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 src, Uint32 dst),
      void Function(int buf, int src, int dst)>('glBlendFunci');
  return _glBlendFunci(buf, src, dst);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncSeparatei (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
/// ```
void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
  final _glBlendFuncSeparatei = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 srcRGB, Uint32 dstRGB, Uint32 srcAlpha, Uint32 dstAlpha),
      void Function(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha)>('glBlendFuncSeparatei');
  return _glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
}

/// ARB_viewport_array
/// ```c
/// GLAPI void APIENTRY glActiveTextureARB (GLenum texture)
/// ```
void glActiveTextureARB(int texture) {
  final _glActiveTextureARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture),
      void Function(int texture)>('glActiveTextureARB');
  return _glActiveTextureARB(texture);
}

/// ```c
/// GLAPI void APIENTRY glClientActiveTextureARB (GLenum texture)
/// ```
void glClientActiveTextureARB(int texture) {
  final _glClientActiveTextureARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture),
      void Function(int texture)>('glClientActiveTextureARB');
  return _glClientActiveTextureARB(texture);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1dARB (GLenum target, GLdouble s)
/// ```
void glMultiTexCoord1dARB(int target, double s) {
  final _glMultiTexCoord1dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s),
      void Function(int target, double s)>('glMultiTexCoord1dARB');
  return _glMultiTexCoord1dARB(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1dvARB (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord1dvARB(int target, Pointer<Double>? v) {
  final _glMultiTexCoord1dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord1dvARB');
  return _glMultiTexCoord1dvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1fARB (GLenum target, GLfloat s)
/// ```
void glMultiTexCoord1fARB(int target, double s) {
  final _glMultiTexCoord1fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s),
      void Function(int target, double s)>('glMultiTexCoord1fARB');
  return _glMultiTexCoord1fARB(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1fvARB (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord1fvARB(int target, Pointer<Float>? v) {
  final _glMultiTexCoord1fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord1fvARB');
  return _glMultiTexCoord1fvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1iARB (GLenum target, GLint s)
/// ```
void glMultiTexCoord1iARB(int target, int s) {
  final _glMultiTexCoord1iARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s),
      void Function(int target, int s)>('glMultiTexCoord1iARB');
  return _glMultiTexCoord1iARB(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1ivARB (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord1ivARB(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord1ivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord1ivARB');
  return _glMultiTexCoord1ivARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1sARB (GLenum target, GLshort s)
/// ```
void glMultiTexCoord1sARB(int target, int s) {
  final _glMultiTexCoord1sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s),
      void Function(int target, int s)>('glMultiTexCoord1sARB');
  return _glMultiTexCoord1sARB(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1svARB (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord1svARB(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord1svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord1svARB');
  return _glMultiTexCoord1svARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2dARB (GLenum target, GLdouble s, GLdouble t)
/// ```
void glMultiTexCoord2dARB(int target, double s, double t) {
  final _glMultiTexCoord2dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s, Double t),
      void Function(int target, double s, double t)>('glMultiTexCoord2dARB');
  return _glMultiTexCoord2dARB(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2dvARB (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord2dvARB(int target, Pointer<Double>? v) {
  final _glMultiTexCoord2dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord2dvARB');
  return _glMultiTexCoord2dvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2fARB (GLenum target, GLfloat s, GLfloat t)
/// ```
void glMultiTexCoord2fARB(int target, double s, double t) {
  final _glMultiTexCoord2fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s, Float t),
      void Function(int target, double s, double t)>('glMultiTexCoord2fARB');
  return _glMultiTexCoord2fARB(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2fvARB (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord2fvARB(int target, Pointer<Float>? v) {
  final _glMultiTexCoord2fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord2fvARB');
  return _glMultiTexCoord2fvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2iARB (GLenum target, GLint s, GLint t)
/// ```
void glMultiTexCoord2iARB(int target, int s, int t) {
  final _glMultiTexCoord2iARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s, Int32 t),
      void Function(int target, int s, int t)>('glMultiTexCoord2iARB');
  return _glMultiTexCoord2iARB(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2ivARB (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord2ivARB(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord2ivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord2ivARB');
  return _glMultiTexCoord2ivARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2sARB (GLenum target, GLshort s, GLshort t)
/// ```
void glMultiTexCoord2sARB(int target, int s, int t) {
  final _glMultiTexCoord2sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s, Int16 t),
      void Function(int target, int s, int t)>('glMultiTexCoord2sARB');
  return _glMultiTexCoord2sARB(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2svARB (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord2svARB(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord2svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord2svARB');
  return _glMultiTexCoord2svARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r)
/// ```
void glMultiTexCoord3dARB(int target, double s, double t, double r) {
  final _glMultiTexCoord3dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s, Double t, Double r),
      void Function(int target, double s, double t, double r)>('glMultiTexCoord3dARB');
  return _glMultiTexCoord3dARB(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3dvARB (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord3dvARB(int target, Pointer<Double>? v) {
  final _glMultiTexCoord3dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord3dvARB');
  return _glMultiTexCoord3dvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r)
/// ```
void glMultiTexCoord3fARB(int target, double s, double t, double r) {
  final _glMultiTexCoord3fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s, Float t, Float r),
      void Function(int target, double s, double t, double r)>('glMultiTexCoord3fARB');
  return _glMultiTexCoord3fARB(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3fvARB (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord3fvARB(int target, Pointer<Float>? v) {
  final _glMultiTexCoord3fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord3fvARB');
  return _glMultiTexCoord3fvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3iARB (GLenum target, GLint s, GLint t, GLint r)
/// ```
void glMultiTexCoord3iARB(int target, int s, int t, int r) {
  final _glMultiTexCoord3iARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s, Int32 t, Int32 r),
      void Function(int target, int s, int t, int r)>('glMultiTexCoord3iARB');
  return _glMultiTexCoord3iARB(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3ivARB (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord3ivARB(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord3ivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord3ivARB');
  return _glMultiTexCoord3ivARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3sARB (GLenum target, GLshort s, GLshort t, GLshort r)
/// ```
void glMultiTexCoord3sARB(int target, int s, int t, int r) {
  final _glMultiTexCoord3sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s, Int16 t, Int16 r),
      void Function(int target, int s, int t, int r)>('glMultiTexCoord3sARB');
  return _glMultiTexCoord3sARB(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3svARB (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord3svARB(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord3svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord3svARB');
  return _glMultiTexCoord3svARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
/// ```
void glMultiTexCoord4dARB(int target, double s, double t, double r, double q) {
  final _glMultiTexCoord4dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double s, Double t, Double r, Double q),
      void Function(int target, double s, double t, double r, double q)>('glMultiTexCoord4dARB');
  return _glMultiTexCoord4dARB(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4dvARB (GLenum target, const GLdouble *v)
/// ```
void glMultiTexCoord4dvARB(int target, Pointer<Double>? v) {
  final _glMultiTexCoord4dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Double>? v),
      void Function(int target, Pointer<Double>? v)>('glMultiTexCoord4dvARB');
  return _glMultiTexCoord4dvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
/// ```
void glMultiTexCoord4fARB(int target, double s, double t, double r, double q) {
  final _glMultiTexCoord4fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float s, Float t, Float r, Float q),
      void Function(int target, double s, double t, double r, double q)>('glMultiTexCoord4fARB');
  return _glMultiTexCoord4fARB(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4fvARB (GLenum target, const GLfloat *v)
/// ```
void glMultiTexCoord4fvARB(int target, Pointer<Float>? v) {
  final _glMultiTexCoord4fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? v),
      void Function(int target, Pointer<Float>? v)>('glMultiTexCoord4fvARB');
  return _glMultiTexCoord4fvARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4iARB (GLenum target, GLint s, GLint t, GLint r, GLint q)
/// ```
void glMultiTexCoord4iARB(int target, int s, int t, int r, int q) {
  final _glMultiTexCoord4iARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 s, Int32 t, Int32 r, Int32 q),
      void Function(int target, int s, int t, int r, int q)>('glMultiTexCoord4iARB');
  return _glMultiTexCoord4iARB(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4ivARB (GLenum target, const GLint *v)
/// ```
void glMultiTexCoord4ivARB(int target, Pointer<Int32>? v) {
  final _glMultiTexCoord4ivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int32>? v),
      void Function(int target, Pointer<Int32>? v)>('glMultiTexCoord4ivARB');
  return _glMultiTexCoord4ivARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4sARB (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
/// ```
void glMultiTexCoord4sARB(int target, int s, int t, int r, int q) {
  final _glMultiTexCoord4sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int16 s, Int16 t, Int16 r, Int16 q),
      void Function(int target, int s, int t, int r, int q)>('glMultiTexCoord4sARB');
  return _glMultiTexCoord4sARB(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4svARB (GLenum target, const GLshort *v)
/// ```
void glMultiTexCoord4svARB(int target, Pointer<Int16>? v) {
  final _glMultiTexCoord4svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Int16>? v),
      void Function(int target, Pointer<Int16>? v)>('glMultiTexCoord4svARB');
  return _glMultiTexCoord4svARB(target, v);
}

/// ```c
/// GLAPI void APIENTRY glLoadTransposeMatrixfARB (const GLfloat *m)
/// ```
void glLoadTransposeMatrixfARB(Pointer<Float>? m) {
  final _glLoadTransposeMatrixfARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? m),
      void Function(Pointer<Float>? m)>('glLoadTransposeMatrixfARB');
  return _glLoadTransposeMatrixfARB(m);
}

/// ```c
/// GLAPI void APIENTRY glLoadTransposeMatrixdARB (const GLdouble *m)
/// ```
void glLoadTransposeMatrixdARB(Pointer<Double>? m) {
  final _glLoadTransposeMatrixdARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? m),
      void Function(Pointer<Double>? m)>('glLoadTransposeMatrixdARB');
  return _glLoadTransposeMatrixdARB(m);
}

/// ```c
/// GLAPI void APIENTRY glMultTransposeMatrixfARB (const GLfloat *m)
/// ```
void glMultTransposeMatrixfARB(Pointer<Float>? m) {
  final _glMultTransposeMatrixfARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? m),
      void Function(Pointer<Float>? m)>('glMultTransposeMatrixfARB');
  return _glMultTransposeMatrixfARB(m);
}

/// ```c
/// GLAPI void APIENTRY glMultTransposeMatrixdARB (const GLdouble *m)
/// ```
void glMultTransposeMatrixdARB(Pointer<Double>? m) {
  final _glMultTransposeMatrixdARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? m),
      void Function(Pointer<Double>? m)>('glMultTransposeMatrixdARB');
  return _glMultTransposeMatrixdARB(m);
}

/// ```c
/// GLAPI void APIENTRY glSampleCoverageARB (GLclampf value, GLboolean invert)
/// ```
void glSampleCoverageARB(double value, int invert) {
  final _glSampleCoverageARB = DLL_SDL2.lookupFunction<
      Void Function(Float value, Int32 invert),
      void Function(double value, int invert)>('glSampleCoverageARB');
  return _glSampleCoverageARB(value, invert);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexImage3DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexImage3DARB(int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexImage3DARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? data)>('glCompressedTexImage3DARB');
  return _glCompressedTexImage3DARB(target, level, internalformat, width, height, depth, border, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexImage2DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexImage2DARB(int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexImage2DARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Int32 border, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? data)>('glCompressedTexImage2DARB');
  return _glCompressedTexImage2DARB(target, level, internalformat, width, height, border, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexImage1DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexImage1DARB(int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexImage1DARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Int32 border, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? data)>('glCompressedTexImage1DARB');
  return _glCompressedTexImage1DARB(target, level, internalformat, width, border, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexSubImage3DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexSubImage3DARB(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexSubImage3DARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? data)>('glCompressedTexSubImage3DARB');
  return _glCompressedTexSubImage3DARB(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexSubImage2DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexSubImage2DARB(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexSubImage2DARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? data)>('glCompressedTexSubImage2DARB');
  return _glCompressedTexSubImage2DARB(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTexSubImage1DARB (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data)
/// ```
void glCompressedTexSubImage1DARB(int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? data) {
  final _glCompressedTexSubImage1DARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 imageSize, Pointer<Void>? data),
      void Function(int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? data)>('glCompressedTexSubImage1DARB');
  return _glCompressedTexSubImage1DARB(target, level, xoffset, width, format, imageSize, data);
}

/// ```c
/// GLAPI void APIENTRY glGetCompressedTexImageARB (GLenum target, GLint level, GLvoid *img)
/// ```
void glGetCompressedTexImageARB(int target, int level, Pointer<Void>? img) {
  final _glGetCompressedTexImageARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Pointer<Void>? img),
      void Function(int target, int level, Pointer<Void>? img)>('glGetCompressedTexImageARB');
  return _glGetCompressedTexImageARB(target, level, img);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfARB (GLenum pname, GLfloat param)
/// ```
void glPointParameterfARB(int pname, double param) {
  final _glPointParameterfARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glPointParameterfARB');
  return _glPointParameterfARB(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfvARB (GLenum pname, const GLfloat *params)
/// ```
void glPointParameterfvARB(int pname, Pointer<Float>? params) {
  final _glPointParameterfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glPointParameterfvARB');
  return _glPointParameterfvARB(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glWeightbvARB (GLint size, const GLbyte *weights)
/// ```
void glWeightbvARB(int size, String weights) {
  final _glWeightbvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Utf8>? weights),
      void Function(int size, Pointer<Utf8>? weights)>('glWeightbvARB');
  final _weightsPointer = weights.toNativeUtf8();
  final _result = _glWeightbvARB(size, _weightsPointer);
  calloc.free(_weightsPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glWeightsvARB (GLint size, const GLshort *weights)
/// ```
void glWeightsvARB(int size, Pointer<Int16>? weights) {
  final _glWeightsvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Int16>? weights),
      void Function(int size, Pointer<Int16>? weights)>('glWeightsvARB');
  return _glWeightsvARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightivARB (GLint size, const GLint *weights)
/// ```
void glWeightivARB(int size, Pointer<Int32>? weights) {
  final _glWeightivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Int32>? weights),
      void Function(int size, Pointer<Int32>? weights)>('glWeightivARB');
  return _glWeightivARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightfvARB (GLint size, const GLfloat *weights)
/// ```
void glWeightfvARB(int size, Pointer<Float>? weights) {
  final _glWeightfvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Float>? weights),
      void Function(int size, Pointer<Float>? weights)>('glWeightfvARB');
  return _glWeightfvARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightdvARB (GLint size, const GLdouble *weights)
/// ```
void glWeightdvARB(int size, Pointer<Double>? weights) {
  final _glWeightdvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Double>? weights),
      void Function(int size, Pointer<Double>? weights)>('glWeightdvARB');
  return _glWeightdvARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightubvARB (GLint size, const GLubyte *weights)
/// ```
void glWeightubvARB(int size, Pointer<Uint8>? weights) {
  final _glWeightubvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Uint8>? weights),
      void Function(int size, Pointer<Uint8>? weights)>('glWeightubvARB');
  return _glWeightubvARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightusvARB (GLint size, const GLushort *weights)
/// ```
void glWeightusvARB(int size, Pointer<Uint16>? weights) {
  final _glWeightusvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Uint16>? weights),
      void Function(int size, Pointer<Uint16>? weights)>('glWeightusvARB');
  return _glWeightusvARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightuivARB (GLint size, const GLuint *weights)
/// ```
void glWeightuivARB(int size, Pointer<Uint32>? weights) {
  final _glWeightuivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Uint32>? weights),
      void Function(int size, Pointer<Uint32>? weights)>('glWeightuivARB');
  return _glWeightuivARB(size, weights);
}

/// ```c
/// GLAPI void APIENTRY glWeightPointerARB (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glWeightPointerARB(int size, int type, int stride, Pointer<Void>? pointer) {
  final _glWeightPointerARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, Pointer<Void>? pointer)>('glWeightPointerARB');
  return _glWeightPointerARB(size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glVertexBlendARB (GLint count)
/// ```
void glVertexBlendARB(int count) {
  final _glVertexBlendARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 count),
      void Function(int count)>('glVertexBlendARB');
  return _glVertexBlendARB(count);
}

/// ```c
/// GLAPI void APIENTRY glCurrentPaletteMatrixARB (GLint index)
/// ```
void glCurrentPaletteMatrixARB(int index) {
  final _glCurrentPaletteMatrixARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 index),
      void Function(int index)>('glCurrentPaletteMatrixARB');
  return _glCurrentPaletteMatrixARB(index);
}

/// ```c
/// GLAPI void APIENTRY glMatrixIndexubvARB (GLint size, const GLubyte *indices)
/// ```
void glMatrixIndexubvARB(int size, Pointer<Uint8>? indices) {
  final _glMatrixIndexubvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Uint8>? indices),
      void Function(int size, Pointer<Uint8>? indices)>('glMatrixIndexubvARB');
  return _glMatrixIndexubvARB(size, indices);
}

/// ```c
/// GLAPI void APIENTRY glMatrixIndexusvARB (GLint size, const GLushort *indices)
/// ```
void glMatrixIndexusvARB(int size, Pointer<Uint16>? indices) {
  final _glMatrixIndexusvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Uint16>? indices),
      void Function(int size, Pointer<Uint16>? indices)>('glMatrixIndexusvARB');
  return _glMatrixIndexusvARB(size, indices);
}

/// ```c
/// GLAPI void APIENTRY glMatrixIndexuivARB (GLint size, const GLuint *indices)
/// ```
void glMatrixIndexuivARB(int size, Pointer<Uint32>? indices) {
  final _glMatrixIndexuivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Pointer<Uint32>? indices),
      void Function(int size, Pointer<Uint32>? indices)>('glMatrixIndexuivARB');
  return _glMatrixIndexuivARB(size, indices);
}

/// ```c
/// GLAPI void APIENTRY glMatrixIndexPointerARB (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glMatrixIndexPointerARB(int size, int type, int stride, Pointer<Void>? pointer) {
  final _glMatrixIndexPointerARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, Pointer<Void>? pointer)>('glMatrixIndexPointerARB');
  return _glMatrixIndexPointerARB(size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2dARB (GLdouble x, GLdouble y)
/// ```
void glWindowPos2dARB(double x, double y) {
  final _glWindowPos2dARB = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y),
      void Function(double x, double y)>('glWindowPos2dARB');
  return _glWindowPos2dARB(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2dvARB (const GLdouble *v)
/// ```
void glWindowPos2dvARB(Pointer<Double>? v) {
  final _glWindowPos2dvARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos2dvARB');
  return _glWindowPos2dvARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2fARB (GLfloat x, GLfloat y)
/// ```
void glWindowPos2fARB(double x, double y) {
  final _glWindowPos2fARB = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y),
      void Function(double x, double y)>('glWindowPos2fARB');
  return _glWindowPos2fARB(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2fvARB (const GLfloat *v)
/// ```
void glWindowPos2fvARB(Pointer<Float>? v) {
  final _glWindowPos2fvARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos2fvARB');
  return _glWindowPos2fvARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2iARB (GLint x, GLint y)
/// ```
void glWindowPos2iARB(int x, int y) {
  final _glWindowPos2iARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y),
      void Function(int x, int y)>('glWindowPos2iARB');
  return _glWindowPos2iARB(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2ivARB (const GLint *v)
/// ```
void glWindowPos2ivARB(Pointer<Int32>? v) {
  final _glWindowPos2ivARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos2ivARB');
  return _glWindowPos2ivARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2sARB (GLshort x, GLshort y)
/// ```
void glWindowPos2sARB(int x, int y) {
  final _glWindowPos2sARB = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y),
      void Function(int x, int y)>('glWindowPos2sARB');
  return _glWindowPos2sARB(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2svARB (const GLshort *v)
/// ```
void glWindowPos2svARB(Pointer<Int16>? v) {
  final _glWindowPos2svARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos2svARB');
  return _glWindowPos2svARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3dARB (GLdouble x, GLdouble y, GLdouble z)
/// ```
void glWindowPos3dARB(double x, double y, double z) {
  final _glWindowPos3dARB = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y, Double z),
      void Function(double x, double y, double z)>('glWindowPos3dARB');
  return _glWindowPos3dARB(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3dvARB (const GLdouble *v)
/// ```
void glWindowPos3dvARB(Pointer<Double>? v) {
  final _glWindowPos3dvARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos3dvARB');
  return _glWindowPos3dvARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3fARB (GLfloat x, GLfloat y, GLfloat z)
/// ```
void glWindowPos3fARB(double x, double y, double z) {
  final _glWindowPos3fARB = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y, Float z),
      void Function(double x, double y, double z)>('glWindowPos3fARB');
  return _glWindowPos3fARB(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3fvARB (const GLfloat *v)
/// ```
void glWindowPos3fvARB(Pointer<Float>? v) {
  final _glWindowPos3fvARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos3fvARB');
  return _glWindowPos3fvARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3iARB (GLint x, GLint y, GLint z)
/// ```
void glWindowPos3iARB(int x, int y, int z) {
  final _glWindowPos3iARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y, Int32 z),
      void Function(int x, int y, int z)>('glWindowPos3iARB');
  return _glWindowPos3iARB(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3ivARB (const GLint *v)
/// ```
void glWindowPos3ivARB(Pointer<Int32>? v) {
  final _glWindowPos3ivARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos3ivARB');
  return _glWindowPos3ivARB(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3sARB (GLshort x, GLshort y, GLshort z)
/// ```
void glWindowPos3sARB(int x, int y, int z) {
  final _glWindowPos3sARB = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y, Int16 z),
      void Function(int x, int y, int z)>('glWindowPos3sARB');
  return _glWindowPos3sARB(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3svARB (const GLshort *v)
/// ```
void glWindowPos3svARB(Pointer<Int16>? v) {
  final _glWindowPos3svARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos3svARB');
  return _glWindowPos3svARB(v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1dARB (GLuint index, GLdouble x)
/// ```
void glVertexAttrib1dARB(int index, double x) {
  final _glVertexAttrib1dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x),
      void Function(int index, double x)>('glVertexAttrib1dARB');
  return _glVertexAttrib1dARB(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1dvARB (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib1dvARB(int index, Pointer<Double>? v) {
  final _glVertexAttrib1dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib1dvARB');
  return _glVertexAttrib1dvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1fARB (GLuint index, GLfloat x)
/// ```
void glVertexAttrib1fARB(int index, double x) {
  final _glVertexAttrib1fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x),
      void Function(int index, double x)>('glVertexAttrib1fARB');
  return _glVertexAttrib1fARB(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1fvARB (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib1fvARB(int index, Pointer<Float>? v) {
  final _glVertexAttrib1fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib1fvARB');
  return _glVertexAttrib1fvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1sARB (GLuint index, GLshort x)
/// ```
void glVertexAttrib1sARB(int index, int x) {
  final _glVertexAttrib1sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x),
      void Function(int index, int x)>('glVertexAttrib1sARB');
  return _glVertexAttrib1sARB(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1svARB (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib1svARB(int index, Pointer<Int16>? v) {
  final _glVertexAttrib1svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib1svARB');
  return _glVertexAttrib1svARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2dARB (GLuint index, GLdouble x, GLdouble y)
/// ```
void glVertexAttrib2dARB(int index, double x, double y) {
  final _glVertexAttrib2dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y),
      void Function(int index, double x, double y)>('glVertexAttrib2dARB');
  return _glVertexAttrib2dARB(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2dvARB (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib2dvARB(int index, Pointer<Double>? v) {
  final _glVertexAttrib2dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib2dvARB');
  return _glVertexAttrib2dvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2fARB (GLuint index, GLfloat x, GLfloat y)
/// ```
void glVertexAttrib2fARB(int index, double x, double y) {
  final _glVertexAttrib2fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y),
      void Function(int index, double x, double y)>('glVertexAttrib2fARB');
  return _glVertexAttrib2fARB(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2fvARB (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib2fvARB(int index, Pointer<Float>? v) {
  final _glVertexAttrib2fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib2fvARB');
  return _glVertexAttrib2fvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2sARB (GLuint index, GLshort x, GLshort y)
/// ```
void glVertexAttrib2sARB(int index, int x, int y) {
  final _glVertexAttrib2sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y),
      void Function(int index, int x, int y)>('glVertexAttrib2sARB');
  return _glVertexAttrib2sARB(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2svARB (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib2svARB(int index, Pointer<Int16>? v) {
  final _glVertexAttrib2svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib2svARB');
  return _glVertexAttrib2svARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glVertexAttrib3dARB(int index, double x, double y, double z) {
  final _glVertexAttrib3dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z),
      void Function(int index, double x, double y, double z)>('glVertexAttrib3dARB');
  return _glVertexAttrib3dARB(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3dvARB (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib3dvARB(int index, Pointer<Double>? v) {
  final _glVertexAttrib3dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib3dvARB');
  return _glVertexAttrib3dvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glVertexAttrib3fARB(int index, double x, double y, double z) {
  final _glVertexAttrib3fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float z),
      void Function(int index, double x, double y, double z)>('glVertexAttrib3fARB');
  return _glVertexAttrib3fARB(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3fvARB (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib3fvARB(int index, Pointer<Float>? v) {
  final _glVertexAttrib3fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib3fvARB');
  return _glVertexAttrib3fvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3sARB (GLuint index, GLshort x, GLshort y, GLshort z)
/// ```
void glVertexAttrib3sARB(int index, int x, int y, int z) {
  final _glVertexAttrib3sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y, Int16 z),
      void Function(int index, int x, int y, int z)>('glVertexAttrib3sARB');
  return _glVertexAttrib3sARB(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3svARB (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib3svARB(int index, Pointer<Int16>? v) {
  final _glVertexAttrib3svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib3svARB');
  return _glVertexAttrib3svARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NbvARB (GLuint index, const GLbyte *v)
/// ```
void glVertexAttrib4NbvARB(int index, String v) {
  final _glVertexAttrib4NbvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Utf8>? v),
      void Function(int index, Pointer<Utf8>? v)>('glVertexAttrib4NbvARB');
  final _vPointer = v.toNativeUtf8();
  final _result = _glVertexAttrib4NbvARB(index, _vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NivARB (GLuint index, const GLint *v)
/// ```
void glVertexAttrib4NivARB(int index, Pointer<Int32>? v) {
  final _glVertexAttrib4NivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttrib4NivARB');
  return _glVertexAttrib4NivARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NsvARB (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib4NsvARB(int index, Pointer<Int16>? v) {
  final _glVertexAttrib4NsvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib4NsvARB');
  return _glVertexAttrib4NsvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NubARB (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
/// ```
void glVertexAttrib4NubARB(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4NubARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint8 x, Uint8 y, Uint8 z, Uint8 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4NubARB');
  return _glVertexAttrib4NubARB(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NubvARB (GLuint index, const GLubyte *v)
/// ```
void glVertexAttrib4NubvARB(int index, Pointer<Uint8>? v) {
  final _glVertexAttrib4NubvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttrib4NubvARB');
  return _glVertexAttrib4NubvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NuivARB (GLuint index, const GLuint *v)
/// ```
void glVertexAttrib4NuivARB(int index, Pointer<Uint32>? v) {
  final _glVertexAttrib4NuivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttrib4NuivARB');
  return _glVertexAttrib4NuivARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4NusvARB (GLuint index, const GLushort *v)
/// ```
void glVertexAttrib4NusvARB(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib4NusvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib4NusvARB');
  return _glVertexAttrib4NusvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4bvARB (GLuint index, const GLbyte *v)
/// ```
void glVertexAttrib4bvARB(int index, String v) {
  final _glVertexAttrib4bvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Utf8>? v),
      void Function(int index, Pointer<Utf8>? v)>('glVertexAttrib4bvARB');
  final _vPointer = v.toNativeUtf8();
  final _result = _glVertexAttrib4bvARB(index, _vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glVertexAttrib4dARB(int index, double x, double y, double z, double w) {
  final _glVertexAttrib4dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttrib4dARB');
  return _glVertexAttrib4dARB(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4dvARB (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib4dvARB(int index, Pointer<Double>? v) {
  final _glVertexAttrib4dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib4dvARB');
  return _glVertexAttrib4dvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glVertexAttrib4fARB(int index, double x, double y, double z, double w) {
  final _glVertexAttrib4fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttrib4fARB');
  return _glVertexAttrib4fARB(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4fvARB (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib4fvARB(int index, Pointer<Float>? v) {
  final _glVertexAttrib4fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib4fvARB');
  return _glVertexAttrib4fvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4ivARB (GLuint index, const GLint *v)
/// ```
void glVertexAttrib4ivARB(int index, Pointer<Int32>? v) {
  final _glVertexAttrib4ivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttrib4ivARB');
  return _glVertexAttrib4ivARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4sARB (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
/// ```
void glVertexAttrib4sARB(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4sARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y, Int16 z, Int16 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4sARB');
  return _glVertexAttrib4sARB(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4svARB (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib4svARB(int index, Pointer<Int16>? v) {
  final _glVertexAttrib4svARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib4svARB');
  return _glVertexAttrib4svARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4ubvARB (GLuint index, const GLubyte *v)
/// ```
void glVertexAttrib4ubvARB(int index, Pointer<Uint8>? v) {
  final _glVertexAttrib4ubvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttrib4ubvARB');
  return _glVertexAttrib4ubvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4uivARB (GLuint index, const GLuint *v)
/// ```
void glVertexAttrib4uivARB(int index, Pointer<Uint32>? v) {
  final _glVertexAttrib4uivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttrib4uivARB');
  return _glVertexAttrib4uivARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4usvARB (GLuint index, const GLushort *v)
/// ```
void glVertexAttrib4usvARB(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib4usvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib4usvARB');
  return _glVertexAttrib4usvARB(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribPointerARB (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribPointerARB(int index, int size, int type, int normalized, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribPointerARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Int32 normalized, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int size, int type, int normalized, int stride, Pointer<Void>? pointer)>('glVertexAttribPointerARB');
  return _glVertexAttribPointerARB(index, size, type, normalized, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glEnableVertexAttribArrayARB (GLuint index)
/// ```
void glEnableVertexAttribArrayARB(int index) {
  final _glEnableVertexAttribArrayARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index),
      void Function(int index)>('glEnableVertexAttribArrayARB');
  return _glEnableVertexAttribArrayARB(index);
}

/// ```c
/// GLAPI void APIENTRY glDisableVertexAttribArrayARB (GLuint index)
/// ```
void glDisableVertexAttribArrayARB(int index) {
  final _glDisableVertexAttribArrayARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index),
      void Function(int index)>('glDisableVertexAttribArrayARB');
  return _glDisableVertexAttribArrayARB(index);
}

/// ```c
/// GLAPI void APIENTRY glProgramStringARB (GLenum target, GLenum format, GLsizei len, const GLvoid *string)
/// ```
void glProgramStringARB(int target, int format, int len, Pointer<Void>? string) {
  final _glProgramStringARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 len, Pointer<Void>? string),
      void Function(int target, int format, int len, Pointer<Void>? string)>('glProgramStringARB');
  return _glProgramStringARB(target, format, len, string);
}

/// ```c
/// GLAPI void APIENTRY glBindProgramARB (GLenum target, GLuint program)
/// ```
void glBindProgramARB(int target, int program) {
  final _glBindProgramARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 program),
      void Function(int target, int program)>('glBindProgramARB');
  return _glBindProgramARB(target, program);
}

/// ```c
/// GLAPI void APIENTRY glDeleteProgramsARB (GLsizei n, const GLuint *programs)
/// ```
void glDeleteProgramsARB(int n, Pointer<Uint32>? programs) {
  final _glDeleteProgramsARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? programs),
      void Function(int n, Pointer<Uint32>? programs)>('glDeleteProgramsARB');
  return _glDeleteProgramsARB(n, programs);
}

/// ```c
/// GLAPI void APIENTRY glGenProgramsARB (GLsizei n, GLuint *programs)
/// ```
void glGenProgramsARB(int n, Pointer<Uint32>? programs) {
  final _glGenProgramsARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? programs),
      void Function(int n, Pointer<Uint32>? programs)>('glGenProgramsARB');
  return _glGenProgramsARB(n, programs);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glProgramEnvParameter4dARB(int target, int index, double x, double y, double z, double w) {
  final _glProgramEnvParameter4dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int target, int index, double x, double y, double z, double w)>('glProgramEnvParameter4dARB');
  return _glProgramEnvParameter4dARB(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameter4dvARB (GLenum target, GLuint index, const GLdouble *params)
/// ```
void glProgramEnvParameter4dvARB(int target, int index, Pointer<Double>? params) {
  final _glProgramEnvParameter4dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? params),
      void Function(int target, int index, Pointer<Double>? params)>('glProgramEnvParameter4dvARB');
  return _glProgramEnvParameter4dvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glProgramEnvParameter4fARB(int target, int index, double x, double y, double z, double w) {
  final _glProgramEnvParameter4fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int target, int index, double x, double y, double z, double w)>('glProgramEnvParameter4fARB');
  return _glProgramEnvParameter4fARB(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameter4fvARB (GLenum target, GLuint index, const GLfloat *params)
/// ```
void glProgramEnvParameter4fvARB(int target, int index, Pointer<Float>? params) {
  final _glProgramEnvParameter4fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? params),
      void Function(int target, int index, Pointer<Float>? params)>('glProgramEnvParameter4fvARB');
  return _glProgramEnvParameter4fvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glProgramLocalParameter4dARB(int target, int index, double x, double y, double z, double w) {
  final _glProgramLocalParameter4dARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int target, int index, double x, double y, double z, double w)>('glProgramLocalParameter4dARB');
  return _glProgramLocalParameter4dARB(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameter4dvARB (GLenum target, GLuint index, const GLdouble *params)
/// ```
void glProgramLocalParameter4dvARB(int target, int index, Pointer<Double>? params) {
  final _glProgramLocalParameter4dvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? params),
      void Function(int target, int index, Pointer<Double>? params)>('glProgramLocalParameter4dvARB');
  return _glProgramLocalParameter4dvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glProgramLocalParameter4fARB(int target, int index, double x, double y, double z, double w) {
  final _glProgramLocalParameter4fARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int target, int index, double x, double y, double z, double w)>('glProgramLocalParameter4fARB');
  return _glProgramLocalParameter4fARB(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameter4fvARB (GLenum target, GLuint index, const GLfloat *params)
/// ```
void glProgramLocalParameter4fvARB(int target, int index, Pointer<Float>? params) {
  final _glProgramLocalParameter4fvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? params),
      void Function(int target, int index, Pointer<Float>? params)>('glProgramLocalParameter4fvARB');
  return _glProgramLocalParameter4fvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramEnvParameterdvARB (GLenum target, GLuint index, GLdouble *params)
/// ```
void glGetProgramEnvParameterdvARB(int target, int index, Pointer<Double>? params) {
  final _glGetProgramEnvParameterdvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? params),
      void Function(int target, int index, Pointer<Double>? params)>('glGetProgramEnvParameterdvARB');
  return _glGetProgramEnvParameterdvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramEnvParameterfvARB (GLenum target, GLuint index, GLfloat *params)
/// ```
void glGetProgramEnvParameterfvARB(int target, int index, Pointer<Float>? params) {
  final _glGetProgramEnvParameterfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? params),
      void Function(int target, int index, Pointer<Float>? params)>('glGetProgramEnvParameterfvARB');
  return _glGetProgramEnvParameterfvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramLocalParameterdvARB (GLenum target, GLuint index, GLdouble *params)
/// ```
void glGetProgramLocalParameterdvARB(int target, int index, Pointer<Double>? params) {
  final _glGetProgramLocalParameterdvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? params),
      void Function(int target, int index, Pointer<Double>? params)>('glGetProgramLocalParameterdvARB');
  return _glGetProgramLocalParameterdvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramLocalParameterfvARB (GLenum target, GLuint index, GLfloat *params)
/// ```
void glGetProgramLocalParameterfvARB(int target, int index, Pointer<Float>? params) {
  final _glGetProgramLocalParameterfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? params),
      void Function(int target, int index, Pointer<Float>? params)>('glGetProgramLocalParameterfvARB');
  return _glGetProgramLocalParameterfvARB(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramivARB (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetProgramivARB(int target, int pname, Pointer<Int32>? params) {
  final _glGetProgramivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetProgramivARB');
  return _glGetProgramivARB(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramStringARB (GLenum target, GLenum pname, GLvoid *string)
/// ```
void glGetProgramStringARB(int target, int pname, Pointer<Void>? string) {
  final _glGetProgramStringARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Void>? string),
      void Function(int target, int pname, Pointer<Void>? string)>('glGetProgramStringARB');
  return _glGetProgramStringARB(target, pname, string);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribdvARB (GLuint index, GLenum pname, GLdouble *params)
/// ```
void glGetVertexAttribdvARB(int index, int pname, Pointer<Double>? params) {
  final _glGetVertexAttribdvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Double>? params),
      void Function(int index, int pname, Pointer<Double>? params)>('glGetVertexAttribdvARB');
  return _glGetVertexAttribdvARB(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribfvARB (GLuint index, GLenum pname, GLfloat *params)
/// ```
void glGetVertexAttribfvARB(int index, int pname, Pointer<Float>? params) {
  final _glGetVertexAttribfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Float>? params),
      void Function(int index, int pname, Pointer<Float>? params)>('glGetVertexAttribfvARB');
  return _glGetVertexAttribfvARB(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribivARB (GLuint index, GLenum pname, GLint *params)
/// ```
void glGetVertexAttribivARB(int index, int pname, Pointer<Int32>? params) {
  final _glGetVertexAttribivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int index, int pname, Pointer<Int32>? params)>('glGetVertexAttribivARB');
  return _glGetVertexAttribivARB(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribPointervARB (GLuint index, GLenum pname, GLvoid* *pointer)
/// ```
void glGetVertexAttribPointervARB(int index, int pname, Pointer<Pointer<Void>>? pointer) {
  final _glGetVertexAttribPointervARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Pointer<Void>>? pointer),
      void Function(int index, int pname, Pointer<Pointer<Void>>? pointer)>('glGetVertexAttribPointervARB');
  return _glGetVertexAttribPointervARB(index, pname, pointer);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsProgramARB (GLuint program)
/// ```
int glIsProgramARB(int program) {
  final _glIsProgramARB = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program),
      int Function(int program)>('glIsProgramARB');
  return _glIsProgramARB(program);
}

/// All ARB_fragment_program entry points are shared with ARB_vertex_program.
/// ```c
/// GLAPI void APIENTRY glBindBufferARB (GLenum target, GLuint buffer)
/// ```
void glBindBufferARB(int target, int buffer) {
  final _glBindBufferARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 buffer),
      void Function(int target, int buffer)>('glBindBufferARB');
  return _glBindBufferARB(target, buffer);
}

/// ```c
/// GLAPI void APIENTRY glDeleteBuffersARB (GLsizei n, const GLuint *buffers)
/// ```
void glDeleteBuffersARB(int n, Pointer<Uint32>? buffers) {
  final _glDeleteBuffersARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? buffers),
      void Function(int n, Pointer<Uint32>? buffers)>('glDeleteBuffersARB');
  return _glDeleteBuffersARB(n, buffers);
}

/// ```c
/// GLAPI void APIENTRY glGenBuffersARB (GLsizei n, GLuint *buffers)
/// ```
void glGenBuffersARB(int n, Pointer<Uint32>? buffers) {
  final _glGenBuffersARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? buffers),
      void Function(int n, Pointer<Uint32>? buffers)>('glGenBuffersARB');
  return _glGenBuffersARB(n, buffers);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsBufferARB (GLuint buffer)
/// ```
int glIsBufferARB(int buffer) {
  final _glIsBufferARB = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 buffer),
      int Function(int buffer)>('glIsBufferARB');
  return _glIsBufferARB(buffer);
}

/// ```c
/// GLAPI void APIENTRY glBufferDataARB (GLenum target, GLsizeiptrARB size, const GLvoid *data, GLenum usage)
/// ```
void glBufferDataARB(int target, int size, Pointer<Void>? data, int usage) {
  final _glBufferDataARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 size, Pointer<Void>? data, Uint32 usage),
      void Function(int target, int size, Pointer<Void>? data, int usage)>('glBufferDataARB');
  return _glBufferDataARB(target, size, data, usage);
}

/// ```c
/// GLAPI void APIENTRY glBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid *data)
/// ```
void glBufferSubDataARB(int target, int offset, int size, Pointer<Void>? data) {
  final _glBufferSubDataARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 offset, Int32 size, Pointer<Void>? data),
      void Function(int target, int offset, int size, Pointer<Void>? data)>('glBufferSubDataARB');
  return _glBufferSubDataARB(target, offset, size, data);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data)
/// ```
void glGetBufferSubDataARB(int target, int offset, int size, Pointer<Void>? data) {
  final _glGetBufferSubDataARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 offset, Int32 size, Pointer<Void>? data),
      void Function(int target, int offset, int size, Pointer<Void>? data)>('glGetBufferSubDataARB');
  return _glGetBufferSubDataARB(target, offset, size, data);
}

/// ```c
/// GLAPI GLvoid* APIENTRY glMapBufferARB (GLenum target, GLenum access)
/// ```
Pointer<Void>? glMapBufferARB(int target, int access) {
  final _glMapBufferARB = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 target, Uint32 access),
      Pointer<Void>? Function(int target, int access)>('glMapBufferARB');
  return _glMapBufferARB(target, access);
}

/// ```c
/// GLAPI GLboolean APIENTRY glUnmapBufferARB (GLenum target)
/// ```
int glUnmapBufferARB(int target) {
  final _glUnmapBufferARB = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 target),
      int Function(int target)>('glUnmapBufferARB');
  return _glUnmapBufferARB(target);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferParameterivARB (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetBufferParameterivARB(int target, int pname, Pointer<Int32>? params) {
  final _glGetBufferParameterivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetBufferParameterivARB');
  return _glGetBufferParameterivARB(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferPointervARB (GLenum target, GLenum pname, GLvoid* *params)
/// ```
void glGetBufferPointervARB(int target, int pname, Pointer<Pointer<Void>>? params) {
  final _glGetBufferPointervARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Pointer<Void>>? params),
      void Function(int target, int pname, Pointer<Pointer<Void>>? params)>('glGetBufferPointervARB');
  return _glGetBufferPointervARB(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGenQueriesARB (GLsizei n, GLuint *ids)
/// ```
void glGenQueriesARB(int n, Pointer<Uint32>? ids) {
  final _glGenQueriesARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glGenQueriesARB');
  return _glGenQueriesARB(n, ids);
}

/// ```c
/// GLAPI void APIENTRY glDeleteQueriesARB (GLsizei n, const GLuint *ids)
/// ```
void glDeleteQueriesARB(int n, Pointer<Uint32>? ids) {
  final _glDeleteQueriesARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glDeleteQueriesARB');
  return _glDeleteQueriesARB(n, ids);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsQueryARB (GLuint id)
/// ```
int glIsQueryARB(int id) {
  final _glIsQueryARB = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id),
      int Function(int id)>('glIsQueryARB');
  return _glIsQueryARB(id);
}

/// ```c
/// GLAPI void APIENTRY glBeginQueryARB (GLenum target, GLuint id)
/// ```
void glBeginQueryARB(int target, int id) {
  final _glBeginQueryARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id),
      void Function(int target, int id)>('glBeginQueryARB');
  return _glBeginQueryARB(target, id);
}

/// ```c
/// GLAPI void APIENTRY glEndQueryARB (GLenum target)
/// ```
void glEndQueryARB(int target) {
  final _glEndQueryARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glEndQueryARB');
  return _glEndQueryARB(target);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryivARB (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetQueryivARB(int target, int pname, Pointer<Int32>? params) {
  final _glGetQueryivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetQueryivARB');
  return _glGetQueryivARB(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjectivARB (GLuint id, GLenum pname, GLint *params)
/// ```
void glGetQueryObjectivARB(int id, int pname, Pointer<Int32>? params) {
  final _glGetQueryObjectivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int32>? params),
      void Function(int id, int pname, Pointer<Int32>? params)>('glGetQueryObjectivARB');
  return _glGetQueryObjectivARB(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjectuivARB (GLuint id, GLenum pname, GLuint *params)
/// ```
void glGetQueryObjectuivARB(int id, int pname, Pointer<Uint32>? params) {
  final _glGetQueryObjectuivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Uint32>? params),
      void Function(int id, int pname, Pointer<Uint32>? params)>('glGetQueryObjectuivARB');
  return _glGetQueryObjectuivARB(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glDeleteObjectARB (GLhandleARB obj)
/// ```
void glDeleteObjectARB(Pointer<Void>? obj) {
  final _glDeleteObjectARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? obj),
      void Function(Pointer<Void>? obj)>('glDeleteObjectARB');
  return _glDeleteObjectARB(obj);
}

/// ```c
/// GLAPI GLhandleARB APIENTRY glGetHandleARB (GLenum pname)
/// ```
Pointer<Void>? glGetHandleARB(int pname) {
  final _glGetHandleARB = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 pname),
      Pointer<Void>? Function(int pname)>('glGetHandleARB');
  return _glGetHandleARB(pname);
}

/// ```c
/// GLAPI void APIENTRY glDetachObjectARB (GLhandleARB containerObj, GLhandleARB attachedObj)
/// ```
void glDetachObjectARB(Pointer<Void>? containerObj, Pointer<Void>? attachedObj) {
  final _glDetachObjectARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? containerObj, Pointer<Void>? attachedObj),
      void Function(Pointer<Void>? containerObj, Pointer<Void>? attachedObj)>('glDetachObjectARB');
  return _glDetachObjectARB(containerObj, attachedObj);
}

/// ```c
/// GLAPI GLhandleARB APIENTRY glCreateShaderObjectARB (GLenum shaderType)
/// ```
Pointer<Void>? glCreateShaderObjectARB(int shaderType) {
  final _glCreateShaderObjectARB = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 shaderType),
      Pointer<Void>? Function(int shaderType)>('glCreateShaderObjectARB');
  return _glCreateShaderObjectARB(shaderType);
}

/// ```c
/// GLAPI void APIENTRY glShaderSourceARB (GLhandleARB shaderObj, GLsizei count, const GLcharARB* *string, const GLint *length)
/// ```
void glShaderSourceARB(Pointer<Void>? shaderObj, int count, Pointer<Pointer<Int8>>? string, Pointer<Int32>? length) {
  final _glShaderSourceARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? shaderObj, Uint32 count, Pointer<Pointer<Int8>>? string, Pointer<Int32>? length),
      void Function(Pointer<Void>? shaderObj, int count, Pointer<Pointer<Int8>>? string, Pointer<Int32>? length)>('glShaderSourceARB');
  return _glShaderSourceARB(shaderObj, count, string, length);
}

/// ```c
/// GLAPI void APIENTRY glCompileShaderARB (GLhandleARB shaderObj)
/// ```
void glCompileShaderARB(Pointer<Void>? shaderObj) {
  final _glCompileShaderARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? shaderObj),
      void Function(Pointer<Void>? shaderObj)>('glCompileShaderARB');
  return _glCompileShaderARB(shaderObj);
}

/// ```c
/// GLAPI GLhandleARB APIENTRY glCreateProgramObjectARB (void)
/// ```
Pointer<Void>? glCreateProgramObjectARB() {
  final _glCreateProgramObjectARB = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(),
      Pointer<Void>? Function()>('glCreateProgramObjectARB');
  return _glCreateProgramObjectARB();
}

/// ```c
/// GLAPI void APIENTRY glAttachObjectARB (GLhandleARB containerObj, GLhandleARB obj)
/// ```
void glAttachObjectARB(Pointer<Void>? containerObj, Pointer<Void>? obj) {
  final _glAttachObjectARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? containerObj, Pointer<Void>? obj),
      void Function(Pointer<Void>? containerObj, Pointer<Void>? obj)>('glAttachObjectARB');
  return _glAttachObjectARB(containerObj, obj);
}

/// ```c
/// GLAPI void APIENTRY glLinkProgramARB (GLhandleARB programObj)
/// ```
void glLinkProgramARB(Pointer<Void>? programObj) {
  final _glLinkProgramARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj),
      void Function(Pointer<Void>? programObj)>('glLinkProgramARB');
  return _glLinkProgramARB(programObj);
}

/// ```c
/// GLAPI void APIENTRY glUseProgramObjectARB (GLhandleARB programObj)
/// ```
void glUseProgramObjectARB(Pointer<Void>? programObj) {
  final _glUseProgramObjectARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj),
      void Function(Pointer<Void>? programObj)>('glUseProgramObjectARB');
  return _glUseProgramObjectARB(programObj);
}

/// ```c
/// GLAPI void APIENTRY glValidateProgramARB (GLhandleARB programObj)
/// ```
void glValidateProgramARB(Pointer<Void>? programObj) {
  final _glValidateProgramARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj),
      void Function(Pointer<Void>? programObj)>('glValidateProgramARB');
  return _glValidateProgramARB(programObj);
}

/// ```c
/// GLAPI void APIENTRY glUniform1fARB (GLint location, GLfloat v0)
/// ```
void glUniform1fARB(int location, double v0) {
  final _glUniform1fARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0),
      void Function(int location, double v0)>('glUniform1fARB');
  return _glUniform1fARB(location, v0);
}

/// ```c
/// GLAPI void APIENTRY glUniform2fARB (GLint location, GLfloat v0, GLfloat v1)
/// ```
void glUniform2fARB(int location, double v0, double v1) {
  final _glUniform2fARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0, Float v1),
      void Function(int location, double v0, double v1)>('glUniform2fARB');
  return _glUniform2fARB(location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glUniform3fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
/// ```
void glUniform3fARB(int location, double v0, double v1, double v2) {
  final _glUniform3fARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0, Float v1, Float v2),
      void Function(int location, double v0, double v1, double v2)>('glUniform3fARB');
  return _glUniform3fARB(location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glUniform4fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
/// ```
void glUniform4fARB(int location, double v0, double v1, double v2, double v3) {
  final _glUniform4fARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Float v0, Float v1, Float v2, Float v3),
      void Function(int location, double v0, double v1, double v2, double v3)>('glUniform4fARB');
  return _glUniform4fARB(location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glUniform1iARB (GLint location, GLint v0)
/// ```
void glUniform1iARB(int location, int v0) {
  final _glUniform1iARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0),
      void Function(int location, int v0)>('glUniform1iARB');
  return _glUniform1iARB(location, v0);
}

/// ```c
/// GLAPI void APIENTRY glUniform2iARB (GLint location, GLint v0, GLint v1)
/// ```
void glUniform2iARB(int location, int v0, int v1) {
  final _glUniform2iARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0, Int32 v1),
      void Function(int location, int v0, int v1)>('glUniform2iARB');
  return _glUniform2iARB(location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glUniform3iARB (GLint location, GLint v0, GLint v1, GLint v2)
/// ```
void glUniform3iARB(int location, int v0, int v1, int v2) {
  final _glUniform3iARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0, Int32 v1, Int32 v2),
      void Function(int location, int v0, int v1, int v2)>('glUniform3iARB');
  return _glUniform3iARB(location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glUniform4iARB (GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
/// ```
void glUniform4iARB(int location, int v0, int v1, int v2, int v3) {
  final _glUniform4iARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3),
      void Function(int location, int v0, int v1, int v2, int v3)>('glUniform4iARB');
  return _glUniform4iARB(location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glUniform1fvARB (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform1fvARB(int location, int count, Pointer<Float>? value) {
  final _glUniform1fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform1fvARB');
  return _glUniform1fvARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2fvARB (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform2fvARB(int location, int count, Pointer<Float>? value) {
  final _glUniform2fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform2fvARB');
  return _glUniform2fvARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3fvARB (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform3fvARB(int location, int count, Pointer<Float>? value) {
  final _glUniform3fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform3fvARB');
  return _glUniform3fvARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4fvARB (GLint location, GLsizei count, const GLfloat *value)
/// ```
void glUniform4fvARB(int location, int count, Pointer<Float>? value) {
  final _glUniform4fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int location, int count, Pointer<Float>? value)>('glUniform4fvARB');
  return _glUniform4fvARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform1ivARB (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform1ivARB(int location, int count, Pointer<Int32>? value) {
  final _glUniform1ivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform1ivARB');
  return _glUniform1ivARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2ivARB (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform2ivARB(int location, int count, Pointer<Int32>? value) {
  final _glUniform2ivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform2ivARB');
  return _glUniform2ivARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3ivARB (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform3ivARB(int location, int count, Pointer<Int32>? value) {
  final _glUniform3ivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform3ivARB');
  return _glUniform3ivARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4ivARB (GLint location, GLsizei count, const GLint *value)
/// ```
void glUniform4ivARB(int location, int count, Pointer<Int32>? value) {
  final _glUniform4ivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int location, int count, Pointer<Int32>? value)>('glUniform4ivARB');
  return _glUniform4ivARB(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix2fvARB(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix2fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix2fvARB');
  return _glUniformMatrix2fvARB(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix3fvARB(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix3fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix3fvARB');
  return _glUniformMatrix3fvARB(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glUniformMatrix4fvARB(int location, int count, int transpose, Pointer<Float>? value) {
  final _glUniformMatrix4fvARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int location, int count, int transpose, Pointer<Float>? value)>('glUniformMatrix4fvARB');
  return _glUniformMatrix4fvARB(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glGetObjectParameterfvARB (GLhandleARB obj, GLenum pname, GLfloat *params)
/// ```
void glGetObjectParameterfvARB(Pointer<Void>? obj, int pname, Pointer<Float>? params) {
  final _glGetObjectParameterfvARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? obj, Uint32 pname, Pointer<Float>? params),
      void Function(Pointer<Void>? obj, int pname, Pointer<Float>? params)>('glGetObjectParameterfvARB');
  return _glGetObjectParameterfvARB(obj, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetObjectParameterivARB (GLhandleARB obj, GLenum pname, GLint *params)
/// ```
void glGetObjectParameterivARB(Pointer<Void>? obj, int pname, Pointer<Int32>? params) {
  final _glGetObjectParameterivARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? obj, Uint32 pname, Pointer<Int32>? params),
      void Function(Pointer<Void>? obj, int pname, Pointer<Int32>? params)>('glGetObjectParameterivARB');
  return _glGetObjectParameterivARB(obj, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetInfoLogARB (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *infoLog)
/// ```
void glGetInfoLogARB(Pointer<Void>? obj, int maxLength, Pointer<Uint32>? length, Pointer<Int8>? infoLog) {
  final _glGetInfoLogARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? obj, Uint32 maxLength, Pointer<Uint32>? length, Pointer<Int8>? infoLog),
      void Function(Pointer<Void>? obj, int maxLength, Pointer<Uint32>? length, Pointer<Int8>? infoLog)>('glGetInfoLogARB');
  return _glGetInfoLogARB(obj, maxLength, length, infoLog);
}

/// ```c
/// GLAPI void APIENTRY glGetAttachedObjectsARB (GLhandleARB containerObj, GLsizei maxCount, GLsizei *count, GLhandleARB *obj)
/// ```
void glGetAttachedObjectsARB(Pointer<Void>? containerObj, int maxCount, Pointer<Uint32>? count, Pointer<Pointer<Void>>? obj) {
  final _glGetAttachedObjectsARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? containerObj, Uint32 maxCount, Pointer<Uint32>? count, Pointer<Pointer<Void>>? obj),
      void Function(Pointer<Void>? containerObj, int maxCount, Pointer<Uint32>? count, Pointer<Pointer<Void>>? obj)>('glGetAttachedObjectsARB');
  return _glGetAttachedObjectsARB(containerObj, maxCount, count, obj);
}

/// ```c
/// GLAPI GLint APIENTRY glGetUniformLocationARB (GLhandleARB programObj, const GLcharARB *name)
/// ```
int glGetUniformLocationARB(Pointer<Void>? programObj, String name) {
  final _glGetUniformLocationARB = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? programObj, Pointer<Utf8>? name),
      int Function(Pointer<Void>? programObj, Pointer<Utf8>? name)>('glGetUniformLocationARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetUniformLocationARB(programObj, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetActiveUniformARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name)
/// ```
void glGetActiveUniformARB(Pointer<Void>? programObj, int index, int maxLength, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetActiveUniformARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj, Uint32 index, Uint32 maxLength, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(Pointer<Void>? programObj, int index, int maxLength, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetActiveUniformARB');
  return _glGetActiveUniformARB(programObj, index, maxLength, length, size, type, name);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformfvARB (GLhandleARB programObj, GLint location, GLfloat *params)
/// ```
void glGetUniformfvARB(Pointer<Void>? programObj, int location, Pointer<Float>? params) {
  final _glGetUniformfvARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj, Int32 location, Pointer<Float>? params),
      void Function(Pointer<Void>? programObj, int location, Pointer<Float>? params)>('glGetUniformfvARB');
  return _glGetUniformfvARB(programObj, location, params);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformivARB (GLhandleARB programObj, GLint location, GLint *params)
/// ```
void glGetUniformivARB(Pointer<Void>? programObj, int location, Pointer<Int32>? params) {
  final _glGetUniformivARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj, Int32 location, Pointer<Int32>? params),
      void Function(Pointer<Void>? programObj, int location, Pointer<Int32>? params)>('glGetUniformivARB');
  return _glGetUniformivARB(programObj, location, params);
}

/// ```c
/// GLAPI void APIENTRY glGetShaderSourceARB (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *source)
/// ```
void glGetShaderSourceARB(Pointer<Void>? obj, int maxLength, Pointer<Uint32>? length, Pointer<Int8>? source) {
  final _glGetShaderSourceARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? obj, Uint32 maxLength, Pointer<Uint32>? length, Pointer<Int8>? source),
      void Function(Pointer<Void>? obj, int maxLength, Pointer<Uint32>? length, Pointer<Int8>? source)>('glGetShaderSourceARB');
  return _glGetShaderSourceARB(obj, maxLength, length, source);
}

/// ```c
/// GLAPI void APIENTRY glBindAttribLocationARB (GLhandleARB programObj, GLuint index, const GLcharARB *name)
/// ```
void glBindAttribLocationARB(Pointer<Void>? programObj, int index, String name) {
  final _glBindAttribLocationARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj, Uint32 index, Pointer<Utf8>? name),
      void Function(Pointer<Void>? programObj, int index, Pointer<Utf8>? name)>('glBindAttribLocationARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glBindAttribLocationARB(programObj, index, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetActiveAttribARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name)
/// ```
void glGetActiveAttribARB(Pointer<Void>? programObj, int index, int maxLength, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetActiveAttribARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? programObj, Uint32 index, Uint32 maxLength, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(Pointer<Void>? programObj, int index, int maxLength, Pointer<Uint32>? length, Pointer<Int32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetActiveAttribARB');
  return _glGetActiveAttribARB(programObj, index, maxLength, length, size, type, name);
}

/// ```c
/// GLAPI GLint APIENTRY glGetAttribLocationARB (GLhandleARB programObj, const GLcharARB *name)
/// ```
int glGetAttribLocationARB(Pointer<Void>? programObj, String name) {
  final _glGetAttribLocationARB = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? programObj, Pointer<Utf8>? name),
      int Function(Pointer<Void>? programObj, Pointer<Utf8>? name)>('glGetAttribLocationARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetAttribLocationARB(programObj, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glDrawBuffersARB (GLsizei n, const GLenum *bufs)
/// ```
void glDrawBuffersARB(int n, Pointer<Uint32>? bufs) {
  final _glDrawBuffersARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? bufs),
      void Function(int n, Pointer<Uint32>? bufs)>('glDrawBuffersARB');
  return _glDrawBuffersARB(n, bufs);
}

/// ```c
/// GLAPI void APIENTRY glClampColorARB (GLenum target, GLenum clamp)
/// ```
void glClampColorARB(int target, int clamp) {
  final _glClampColorARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 clamp),
      void Function(int target, int clamp)>('glClampColorARB');
  return _glClampColorARB(target, clamp);
}

/// ```c
/// GLAPI void APIENTRY glDrawArraysInstancedARB (GLenum mode, GLint first, GLsizei count, GLsizei primcount)
/// ```
void glDrawArraysInstancedARB(int mode, int first, int count, int primcount) {
  final _glDrawArraysInstancedARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Int32 first, Uint32 count, Uint32 primcount),
      void Function(int mode, int first, int count, int primcount)>('glDrawArraysInstancedARB');
  return _glDrawArraysInstancedARB(mode, first, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementsInstancedARB (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount)
/// ```
void glDrawElementsInstancedARB(int mode, int count, int type, Pointer<Void>? indices, int primcount) {
  final _glDrawElementsInstancedARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 count, Uint32 type, Pointer<Void>? indices, Uint32 primcount),
      void Function(int mode, int count, int type, Pointer<Void>? indices, int primcount)>('glDrawElementsInstancedARB');
  return _glDrawElementsInstancedARB(mode, count, type, indices, primcount);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsRenderbuffer (GLuint renderbuffer)
/// ```
int glIsRenderbuffer(int renderbuffer) {
  final _glIsRenderbuffer = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 renderbuffer),
      int Function(int renderbuffer)>('glIsRenderbuffer');
  return _glIsRenderbuffer(renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glBindRenderbuffer (GLenum target, GLuint renderbuffer)
/// ```
void glBindRenderbuffer(int target, int renderbuffer) {
  final _glBindRenderbuffer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 renderbuffer),
      void Function(int target, int renderbuffer)>('glBindRenderbuffer');
  return _glBindRenderbuffer(target, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glDeleteRenderbuffers (GLsizei n, const GLuint *renderbuffers)
/// ```
void glDeleteRenderbuffers(int n, Pointer<Uint32>? renderbuffers) {
  final _glDeleteRenderbuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? renderbuffers),
      void Function(int n, Pointer<Uint32>? renderbuffers)>('glDeleteRenderbuffers');
  return _glDeleteRenderbuffers(n, renderbuffers);
}

/// ```c
/// GLAPI void APIENTRY glGenRenderbuffers (GLsizei n, GLuint *renderbuffers)
/// ```
void glGenRenderbuffers(int n, Pointer<Uint32>? renderbuffers) {
  final _glGenRenderbuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? renderbuffers),
      void Function(int n, Pointer<Uint32>? renderbuffers)>('glGenRenderbuffers');
  return _glGenRenderbuffers(n, renderbuffers);
}

/// ```c
/// GLAPI void APIENTRY glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glRenderbufferStorage(int target, int internalformat, int width, int height) {
  final _glRenderbufferStorage = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int target, int internalformat, int width, int height)>('glRenderbufferStorage');
  return _glRenderbufferStorage(target, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetRenderbufferParameteriv(int target, int pname, Pointer<Int32>? params) {
  final _glGetRenderbufferParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetRenderbufferParameteriv');
  return _glGetRenderbufferParameteriv(target, pname, params);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsFramebuffer (GLuint framebuffer)
/// ```
int glIsFramebuffer(int framebuffer) {
  final _glIsFramebuffer = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 framebuffer),
      int Function(int framebuffer)>('glIsFramebuffer');
  return _glIsFramebuffer(framebuffer);
}

/// ```c
/// GLAPI void APIENTRY glBindFramebuffer (GLenum target, GLuint framebuffer)
/// ```
void glBindFramebuffer(int target, int framebuffer) {
  final _glBindFramebuffer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 framebuffer),
      void Function(int target, int framebuffer)>('glBindFramebuffer');
  return _glBindFramebuffer(target, framebuffer);
}

/// ```c
/// GLAPI void APIENTRY glDeleteFramebuffers (GLsizei n, const GLuint *framebuffers)
/// ```
void glDeleteFramebuffers(int n, Pointer<Uint32>? framebuffers) {
  final _glDeleteFramebuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? framebuffers),
      void Function(int n, Pointer<Uint32>? framebuffers)>('glDeleteFramebuffers');
  return _glDeleteFramebuffers(n, framebuffers);
}

/// ```c
/// GLAPI void APIENTRY glGenFramebuffers (GLsizei n, GLuint *framebuffers)
/// ```
void glGenFramebuffers(int n, Pointer<Uint32>? framebuffers) {
  final _glGenFramebuffers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? framebuffers),
      void Function(int n, Pointer<Uint32>? framebuffers)>('glGenFramebuffers');
  return _glGenFramebuffers(n, framebuffers);
}

/// ```c
/// GLAPI GLenum APIENTRY glCheckFramebufferStatus (GLenum target)
/// ```
int glCheckFramebufferStatus(int target) {
  final _glCheckFramebufferStatus = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 target),
      int Function(int target)>('glCheckFramebufferStatus');
  return _glCheckFramebufferStatus(target);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture1D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
/// ```
void glFramebufferTexture1D(int target, int attachment, int textarget, int texture, int level) {
  final _glFramebufferTexture1D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int textarget, int texture, int level)>('glFramebufferTexture1D');
  return _glFramebufferTexture1D(target, attachment, textarget, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
/// ```
void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
  final _glFramebufferTexture2D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int textarget, int texture, int level)>('glFramebufferTexture2D');
  return _glFramebufferTexture2D(target, attachment, textarget, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture3D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)
/// ```
void glFramebufferTexture3D(int target, int attachment, int textarget, int texture, int level, int zoffset) {
  final _glFramebufferTexture3D = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level, Int32 zoffset),
      void Function(int target, int attachment, int textarget, int texture, int level, int zoffset)>('glFramebufferTexture3D');
  return _glFramebufferTexture3D(target, attachment, textarget, texture, level, zoffset);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
/// ```
void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
  final _glFramebufferRenderbuffer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 renderbuffertarget, Uint32 renderbuffer),
      void Function(int target, int attachment, int renderbuffertarget, int renderbuffer)>('glFramebufferRenderbuffer');
  return _glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint *params)
/// ```
void glGetFramebufferAttachmentParameteriv(int target, int attachment, int pname, Pointer<Int32>? params) {
  final _glGetFramebufferAttachmentParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int attachment, int pname, Pointer<Int32>? params)>('glGetFramebufferAttachmentParameteriv');
  return _glGetFramebufferAttachmentParameteriv(target, attachment, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGenerateMipmap (GLenum target)
/// ```
void glGenerateMipmap(int target) {
  final _glGenerateMipmap = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glGenerateMipmap');
  return _glGenerateMipmap(target);
}

/// ```c
/// GLAPI void APIENTRY glBlitFramebuffer (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
/// ```
void glBlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter) {
  final _glBlitFramebuffer = DLL_SDL2.lookupFunction<
      Void Function(Int32 srcX0, Int32 srcY0, Int32 srcX1, Int32 srcY1, Int32 dstX0, Int32 dstY0, Int32 dstX1, Int32 dstY1, Uint32 mask, Uint32 filter),
      void Function(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter)>('glBlitFramebuffer');
  return _glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}

/// ```c
/// GLAPI void APIENTRY glRenderbufferStorageMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glRenderbufferStorageMultisample(int target, int samples, int internalformat, int width, int height) {
  final _glRenderbufferStorageMultisample = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 samples, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int target, int samples, int internalformat, int width, int height)>('glRenderbufferStorageMultisample');
  return _glRenderbufferStorageMultisample(target, samples, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureLayer (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)
/// ```
void glFramebufferTextureLayer(int target, int attachment, int texture, int level, int layer) {
  final _glFramebufferTextureLayer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Int32 layer),
      void Function(int target, int attachment, int texture, int level, int layer)>('glFramebufferTextureLayer');
  return _glFramebufferTextureLayer(target, attachment, texture, level, layer);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameteriARB (GLuint program, GLenum pname, GLint value)
/// ```
void glProgramParameteriARB(int program, int pname, int value) {
  final _glProgramParameteriARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 pname, Int32 value),
      void Function(int program, int pname, int value)>('glProgramParameteriARB');
  return _glProgramParameteriARB(program, pname, value);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureARB (GLenum target, GLenum attachment, GLuint texture, GLint level)
/// ```
void glFramebufferTextureARB(int target, int attachment, int texture, int level) {
  final _glFramebufferTextureARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int texture, int level)>('glFramebufferTextureARB');
  return _glFramebufferTextureARB(target, attachment, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureLayerARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)
/// ```
void glFramebufferTextureLayerARB(int target, int attachment, int texture, int level, int layer) {
  final _glFramebufferTextureLayerARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Int32 layer),
      void Function(int target, int attachment, int texture, int level, int layer)>('glFramebufferTextureLayerARB');
  return _glFramebufferTextureLayerARB(target, attachment, texture, level, layer);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureFaceARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)
/// ```
void glFramebufferTextureFaceARB(int target, int attachment, int texture, int level, int face) {
  final _glFramebufferTextureFaceARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Uint32 face),
      void Function(int target, int attachment, int texture, int level, int face)>('glFramebufferTextureFaceARB');
  return _glFramebufferTextureFaceARB(target, attachment, texture, level, face);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribDivisorARB (GLuint index, GLuint divisor)
/// ```
void glVertexAttribDivisorARB(int index, int divisor) {
  final _glVertexAttribDivisorARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 divisor),
      void Function(int index, int divisor)>('glVertexAttribDivisorARB');
  return _glVertexAttribDivisorARB(index, divisor);
}

/// ```c
/// GLAPI GLvoid* APIENTRY glMapBufferRange (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)
/// ```
Pointer<Void>? glMapBufferRange(int target, Pointer<Void>? offset, Pointer<Void>? length, int access) {
  final _glMapBufferRange = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 target, Pointer<Void>? offset, Pointer<Void>? length, Uint32 access),
      Pointer<Void>? Function(int target, Pointer<Void>? offset, Pointer<Void>? length, int access)>('glMapBufferRange');
  return _glMapBufferRange(target, offset, length, access);
}

/// ```c
/// GLAPI void APIENTRY glFlushMappedBufferRange (GLenum target, GLintptr offset, GLsizeiptr length)
/// ```
void glFlushMappedBufferRange(int target, Pointer<Void>? offset, Pointer<Void>? length) {
  final _glFlushMappedBufferRange = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Void>? offset, Pointer<Void>? length),
      void Function(int target, Pointer<Void>? offset, Pointer<Void>? length)>('glFlushMappedBufferRange');
  return _glFlushMappedBufferRange(target, offset, length);
}

/// ```c
/// GLAPI void APIENTRY glTexBufferARB (GLenum target, GLenum internalformat, GLuint buffer)
/// ```
void glTexBufferARB(int target, int internalformat, int buffer) {
  final _glTexBufferARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 buffer),
      void Function(int target, int internalformat, int buffer)>('glTexBufferARB');
  return _glTexBufferARB(target, internalformat, buffer);
}

/// ```c
/// GLAPI void APIENTRY glBindVertexArray (GLuint array)
/// ```
void glBindVertexArray(int array) {
  final _glBindVertexArray = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array),
      void Function(int array)>('glBindVertexArray');
  return _glBindVertexArray(array);
}

/// ```c
/// GLAPI void APIENTRY glDeleteVertexArrays (GLsizei n, const GLuint *arrays)
/// ```
void glDeleteVertexArrays(int n, Pointer<Uint32>? arrays) {
  final _glDeleteVertexArrays = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? arrays),
      void Function(int n, Pointer<Uint32>? arrays)>('glDeleteVertexArrays');
  return _glDeleteVertexArrays(n, arrays);
}

/// ```c
/// GLAPI void APIENTRY glGenVertexArrays (GLsizei n, GLuint *arrays)
/// ```
void glGenVertexArrays(int n, Pointer<Uint32>? arrays) {
  final _glGenVertexArrays = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? arrays),
      void Function(int n, Pointer<Uint32>? arrays)>('glGenVertexArrays');
  return _glGenVertexArrays(n, arrays);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsVertexArray (GLuint array)
/// ```
int glIsVertexArray(int array) {
  final _glIsVertexArray = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 array),
      int Function(int array)>('glIsVertexArray');
  return _glIsVertexArray(array);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformIndices (GLuint program, GLsizei uniformCount, const GLchar* *uniformNames, GLuint *uniformIndices)
/// ```
void glGetUniformIndices(int program, int uniformCount, Pointer<Pointer<Int8>>? uniformNames, Pointer<Uint32>? uniformIndices) {
  final _glGetUniformIndices = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 uniformCount, Pointer<Pointer<Int8>>? uniformNames, Pointer<Uint32>? uniformIndices),
      void Function(int program, int uniformCount, Pointer<Pointer<Int8>>? uniformNames, Pointer<Uint32>? uniformIndices)>('glGetUniformIndices');
  return _glGetUniformIndices(program, uniformCount, uniformNames, uniformIndices);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, const GLuint *uniformIndices, GLenum pname, GLint *params)
/// ```
void glGetActiveUniformsiv(int program, int uniformCount, Pointer<Uint32>? uniformIndices, int pname, Pointer<Int32>? params) {
  final _glGetActiveUniformsiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 uniformCount, Pointer<Uint32>? uniformIndices, Uint32 pname, Pointer<Int32>? params),
      void Function(int program, int uniformCount, Pointer<Uint32>? uniformIndices, int pname, Pointer<Int32>? params)>('glGetActiveUniformsiv');
  return _glGetActiveUniformsiv(program, uniformCount, uniformIndices, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformName)
/// ```
void glGetActiveUniformName(int program, int uniformIndex, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? uniformName) {
  final _glGetActiveUniformName = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 uniformIndex, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? uniformName),
      void Function(int program, int uniformIndex, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? uniformName)>('glGetActiveUniformName');
  return _glGetActiveUniformName(program, uniformIndex, bufSize, length, uniformName);
}

/// ```c
/// GLAPI GLuint APIENTRY glGetUniformBlockIndex (GLuint program, const GLchar *uniformBlockName)
/// ```
int glGetUniformBlockIndex(int program, String uniformBlockName) {
  final _glGetUniformBlockIndex = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 program, Pointer<Utf8>? uniformBlockName),
      int Function(int program, Pointer<Utf8>? uniformBlockName)>('glGetUniformBlockIndex');
  final _uniformBlockNamePointer = uniformBlockName.toNativeUtf8();
  final _result = _glGetUniformBlockIndex(program, _uniformBlockNamePointer);
  calloc.free(_uniformBlockNamePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint *params)
/// ```
void glGetActiveUniformBlockiv(int program, int uniformBlockIndex, int pname, Pointer<Int32>? params) {
  final _glGetActiveUniformBlockiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 uniformBlockIndex, Uint32 pname, Pointer<Int32>? params),
      void Function(int program, int uniformBlockIndex, int pname, Pointer<Int32>? params)>('glGetActiveUniformBlockiv');
  return _glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformBlockName)
/// ```
void glGetActiveUniformBlockName(int program, int uniformBlockIndex, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? uniformBlockName) {
  final _glGetActiveUniformBlockName = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 uniformBlockIndex, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? uniformBlockName),
      void Function(int program, int uniformBlockIndex, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? uniformBlockName)>('glGetActiveUniformBlockName');
  return _glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length, uniformBlockName);
}

/// ```c
/// GLAPI void APIENTRY glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding)
/// ```
void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
  final _glUniformBlockBinding = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 uniformBlockIndex, Uint32 uniformBlockBinding),
      void Function(int program, int uniformBlockIndex, int uniformBlockBinding)>('glUniformBlockBinding');
  return _glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
}

/// ```c
/// GLAPI void APIENTRY glCopyBufferSubData (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)
/// ```
void glCopyBufferSubData(int readTarget, int writeTarget, Pointer<Void>? readOffset, Pointer<Void>? writeOffset, Pointer<Void>? size) {
  final _glCopyBufferSubData = DLL_SDL2.lookupFunction<
      Void Function(Uint32 readTarget, Uint32 writeTarget, Pointer<Void>? readOffset, Pointer<Void>? writeOffset, Pointer<Void>? size),
      void Function(int readTarget, int writeTarget, Pointer<Void>? readOffset, Pointer<Void>? writeOffset, Pointer<Void>? size)>('glCopyBufferSubData');
  return _glCopyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLint basevertex)
/// ```
void glDrawElementsBaseVertex(int mode, int count, int type, Pointer<Void>? indices, int basevertex) {
  final _glDrawElementsBaseVertex = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 count, Uint32 type, Pointer<Void>? indices, Int32 basevertex),
      void Function(int mode, int count, int type, Pointer<Void>? indices, int basevertex)>('glDrawElementsBaseVertex');
  return _glDrawElementsBaseVertex(mode, count, type, indices, basevertex);
}

/// ```c
/// GLAPI void APIENTRY glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices, GLint basevertex)
/// ```
void glDrawRangeElementsBaseVertex(int mode, int start, int end, int count, int type, Pointer<Void>? indices, int basevertex) {
  final _glDrawRangeElementsBaseVertex = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 start, Uint32 end, Uint32 count, Uint32 type, Pointer<Void>? indices, Int32 basevertex),
      void Function(int mode, int start, int end, int count, int type, Pointer<Void>? indices, int basevertex)>('glDrawRangeElementsBaseVertex');
  return _glDrawRangeElementsBaseVertex(mode, start, end, count, type, indices, basevertex);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount, GLint basevertex)
/// ```
void glDrawElementsInstancedBaseVertex(int mode, int count, int type, Pointer<Void>? indices, int primcount, int basevertex) {
  final _glDrawElementsInstancedBaseVertex = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 count, Uint32 type, Pointer<Void>? indices, Uint32 primcount, Int32 basevertex),
      void Function(int mode, int count, int type, Pointer<Void>? indices, int primcount, int basevertex)>('glDrawElementsInstancedBaseVertex');
  return _glDrawElementsInstancedBaseVertex(mode, count, type, indices, primcount, basevertex);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawElementsBaseVertex (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount, const GLint *basevertex)
/// ```
void glMultiDrawElementsBaseVertex(int mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount, Pointer<Int32>? basevertex) {
  final _glMultiDrawElementsBaseVertex = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Uint32>? count, Uint32 type, Pointer<Pointer<Void>>? indices, Uint32 primcount, Pointer<Int32>? basevertex),
      void Function(int mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount, Pointer<Int32>? basevertex)>('glMultiDrawElementsBaseVertex');
  return _glMultiDrawElementsBaseVertex(mode, count, type, indices, primcount, basevertex);
}

/// ```c
/// GLAPI void APIENTRY glProvokingVertex (GLenum mode)
/// ```
void glProvokingVertex(int mode) {
  final _glProvokingVertex = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glProvokingVertex');
  return _glProvokingVertex(mode);
}

/// ```c
/// GLAPI GLsync APIENTRY glFenceSync (GLenum condition, GLbitfield flags)
/// ```
Pointer<Void>? glFenceSync(int condition, int flags) {
  final _glFenceSync = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 condition, Uint32 flags),
      Pointer<Void>? Function(int condition, int flags)>('glFenceSync');
  return _glFenceSync(condition, flags);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsSync (GLsync sync)
/// ```
int glIsSync(Pointer<Void>? sync) {
  final _glIsSync = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? sync),
      int Function(Pointer<Void>? sync)>('glIsSync');
  return _glIsSync(sync);
}

/// ```c
/// GLAPI void APIENTRY glDeleteSync (GLsync sync)
/// ```
void glDeleteSync(Pointer<Void>? sync) {
  final _glDeleteSync = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? sync),
      void Function(Pointer<Void>? sync)>('glDeleteSync');
  return _glDeleteSync(sync);
}

/// ```c
/// GLAPI GLenum APIENTRY glClientWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout)
/// ```
int glClientWaitSync(Pointer<Void>? sync, int flags, int timeout) {
  final _glClientWaitSync = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? sync, Uint32 flags, Uint64 timeout),
      int Function(Pointer<Void>? sync, int flags, int timeout)>('glClientWaitSync');
  return _glClientWaitSync(sync, flags, timeout);
}

/// ```c
/// GLAPI void APIENTRY glWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout)
/// ```
void glWaitSync(Pointer<Void>? sync, int flags, int timeout) {
  final _glWaitSync = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? sync, Uint32 flags, Uint64 timeout),
      void Function(Pointer<Void>? sync, int flags, int timeout)>('glWaitSync');
  return _glWaitSync(sync, flags, timeout);
}

/// ```c
/// GLAPI void APIENTRY glGetInteger64v (GLenum pname, GLint64 *params)
/// ```
void glGetInteger64v(int pname, Pointer<Int64>? params) {
  final _glGetInteger64v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int64>? params),
      void Function(int pname, Pointer<Int64>? params)>('glGetInteger64v');
  return _glGetInteger64v(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetSynciv (GLsync sync, GLenum pname, GLsizei bufSize, GLsizei *length, GLint *values)
/// ```
void glGetSynciv(Pointer<Void>? sync, int pname, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? values) {
  final _glGetSynciv = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? sync, Uint32 pname, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int32>? values),
      void Function(Pointer<Void>? sync, int pname, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? values)>('glGetSynciv');
  return _glGetSynciv(sync, pname, bufSize, length, values);
}

/// ```c
/// GLAPI void APIENTRY glTexImage2DMultisample (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)
/// ```
void glTexImage2DMultisample(int target, int samples, int internalformat, int width, int height, int fixedsamplelocations) {
  final _glTexImage2DMultisample = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 samples, Int32 internalformat, Uint32 width, Uint32 height, Int32 fixedsamplelocations),
      void Function(int target, int samples, int internalformat, int width, int height, int fixedsamplelocations)>('glTexImage2DMultisample');
  return _glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations);
}

/// ```c
/// GLAPI void APIENTRY glTexImage3DMultisample (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)
/// ```
void glTexImage3DMultisample(int target, int samples, int internalformat, int width, int height, int depth, int fixedsamplelocations) {
  final _glTexImage3DMultisample = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 samples, Int32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 fixedsamplelocations),
      void Function(int target, int samples, int internalformat, int width, int height, int depth, int fixedsamplelocations)>('glTexImage3DMultisample');
  return _glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations);
}

/// ```c
/// GLAPI void APIENTRY glGetMultisamplefv (GLenum pname, GLuint index, GLfloat *val)
/// ```
void glGetMultisamplefv(int pname, int index, Pointer<Float>? val) {
  final _glGetMultisamplefv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Uint32 index, Pointer<Float>? val),
      void Function(int pname, int index, Pointer<Float>? val)>('glGetMultisamplefv');
  return _glGetMultisamplefv(pname, index, val);
}

/// ```c
/// GLAPI void APIENTRY glSampleMaski (GLuint index, GLbitfield mask)
/// ```
void glSampleMaski(int index, int mask) {
  final _glSampleMaski = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 mask),
      void Function(int index, int mask)>('glSampleMaski');
  return _glSampleMaski(index, mask);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationiARB (GLuint buf, GLenum mode)
/// ```
void glBlendEquationiARB(int buf, int mode) {
  final _glBlendEquationiARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 mode),
      void Function(int buf, int mode)>('glBlendEquationiARB');
  return _glBlendEquationiARB(buf, mode);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationSeparateiARB (GLuint buf, GLenum modeRGB, GLenum modeAlpha)
/// ```
void glBlendEquationSeparateiARB(int buf, int modeRGB, int modeAlpha) {
  final _glBlendEquationSeparateiARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 modeRGB, Uint32 modeAlpha),
      void Function(int buf, int modeRGB, int modeAlpha)>('glBlendEquationSeparateiARB');
  return _glBlendEquationSeparateiARB(buf, modeRGB, modeAlpha);
}

/// ```c
/// GLAPI void APIENTRY glBlendFunciARB (GLuint buf, GLenum src, GLenum dst)
/// ```
void glBlendFunciARB(int buf, int src, int dst) {
  final _glBlendFunciARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 src, Uint32 dst),
      void Function(int buf, int src, int dst)>('glBlendFunciARB');
  return _glBlendFunciARB(buf, src, dst);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncSeparateiARB (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
/// ```
void glBlendFuncSeparateiARB(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
  final _glBlendFuncSeparateiARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 srcRGB, Uint32 dstRGB, Uint32 srcAlpha, Uint32 dstAlpha),
      void Function(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha)>('glBlendFuncSeparateiARB');
  return _glBlendFuncSeparateiARB(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
}

/// ```c
/// GLAPI void APIENTRY glMinSampleShadingARB (GLclampf value)
/// ```
void glMinSampleShadingARB(double value) {
  final _glMinSampleShadingARB = DLL_SDL2.lookupFunction<
      Void Function(Float value),
      void Function(double value)>('glMinSampleShadingARB');
  return _glMinSampleShadingARB(value);
}

/// ```c
/// GLAPI void APIENTRY glNamedStringARB (GLenum type, GLint namelen, const GLchar *name, GLint stringlen, const GLchar *string)
/// ```
void glNamedStringARB(int type, int namelen, String name, int stringlen, String string) {
  final _glNamedStringARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Int32 namelen, Pointer<Utf8>? name, Int32 stringlen, Pointer<Utf8>? string),
      void Function(int type, int namelen, Pointer<Utf8>? name, int stringlen, Pointer<Utf8>? string)>('glNamedStringARB');
  final _namePointer = name.toNativeUtf8();
  final _stringPointer = string.toNativeUtf8();
  final _result = _glNamedStringARB(type, namelen, _namePointer, stringlen, _stringPointer);
  calloc.free(_namePointer);
  calloc.free(_stringPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glDeleteNamedStringARB (GLint namelen, const GLchar *name)
/// ```
void glDeleteNamedStringARB(int namelen, String name) {
  final _glDeleteNamedStringARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 namelen, Pointer<Utf8>? name),
      void Function(int namelen, Pointer<Utf8>? name)>('glDeleteNamedStringARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glDeleteNamedStringARB(namelen, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glCompileShaderIncludeARB (GLuint shader, GLsizei count, const GLchar* *path, const GLint *length)
/// ```
void glCompileShaderIncludeARB(int shader, int count, Pointer<Pointer<Int8>>? path, Pointer<Int32>? length) {
  final _glCompileShaderIncludeARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shader, Uint32 count, Pointer<Pointer<Int8>>? path, Pointer<Int32>? length),
      void Function(int shader, int count, Pointer<Pointer<Int8>>? path, Pointer<Int32>? length)>('glCompileShaderIncludeARB');
  return _glCompileShaderIncludeARB(shader, count, path, length);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsNamedStringARB (GLint namelen, const GLchar *name)
/// ```
int glIsNamedStringARB(int namelen, String name) {
  final _glIsNamedStringARB = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 namelen, Pointer<Utf8>? name),
      int Function(int namelen, Pointer<Utf8>? name)>('glIsNamedStringARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glIsNamedStringARB(namelen, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetNamedStringARB (GLint namelen, const GLchar *name, GLsizei bufSize, GLint *stringlen, GLchar *string)
/// ```
void glGetNamedStringARB(int namelen, String name, int bufSize, Pointer<Int32>? stringlen, Pointer<Int8>? string) {
  final _glGetNamedStringARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 namelen, Pointer<Utf8>? name, Uint32 bufSize, Pointer<Int32>? stringlen, Pointer<Int8>? string),
      void Function(int namelen, Pointer<Utf8>? name, int bufSize, Pointer<Int32>? stringlen, Pointer<Int8>? string)>('glGetNamedStringARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetNamedStringARB(namelen, _namePointer, bufSize, stringlen, string);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetNamedStringivARB (GLint namelen, const GLchar *name, GLenum pname, GLint *params)
/// ```
void glGetNamedStringivARB(int namelen, String name, int pname, Pointer<Int32>? params) {
  final _glGetNamedStringivARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 namelen, Pointer<Utf8>? name, Uint32 pname, Pointer<Int32>? params),
      void Function(int namelen, Pointer<Utf8>? name, int pname, Pointer<Int32>? params)>('glGetNamedStringivARB');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetNamedStringivARB(namelen, _namePointer, pname, params);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glBindFragDataLocationIndexed (GLuint program, GLuint colorNumber, GLuint index, const GLchar *name)
/// ```
void glBindFragDataLocationIndexed(int program, int colorNumber, int index, String name) {
  final _glBindFragDataLocationIndexed = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 colorNumber, Uint32 index, Pointer<Utf8>? name),
      void Function(int program, int colorNumber, int index, Pointer<Utf8>? name)>('glBindFragDataLocationIndexed');
  final _namePointer = name.toNativeUtf8();
  final _result = _glBindFragDataLocationIndexed(program, colorNumber, index, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI GLint APIENTRY glGetFragDataIndex (GLuint program, const GLchar *name)
/// ```
int glGetFragDataIndex(int program, String name) {
  final _glGetFragDataIndex = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Pointer<Utf8>? name),
      int Function(int program, Pointer<Utf8>? name)>('glGetFragDataIndex');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetFragDataIndex(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGenSamplers (GLsizei count, GLuint *samplers)
/// ```
void glGenSamplers(int count, Pointer<Uint32>? samplers) {
  final _glGenSamplers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 count, Pointer<Uint32>? samplers),
      void Function(int count, Pointer<Uint32>? samplers)>('glGenSamplers');
  return _glGenSamplers(count, samplers);
}

/// ```c
/// GLAPI void APIENTRY glDeleteSamplers (GLsizei count, const GLuint *samplers)
/// ```
void glDeleteSamplers(int count, Pointer<Uint32>? samplers) {
  final _glDeleteSamplers = DLL_SDL2.lookupFunction<
      Void Function(Uint32 count, Pointer<Uint32>? samplers),
      void Function(int count, Pointer<Uint32>? samplers)>('glDeleteSamplers');
  return _glDeleteSamplers(count, samplers);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsSampler (GLuint sampler)
/// ```
int glIsSampler(int sampler) {
  final _glIsSampler = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 sampler),
      int Function(int sampler)>('glIsSampler');
  return _glIsSampler(sampler);
}

/// ```c
/// GLAPI void APIENTRY glBindSampler (GLuint unit, GLuint sampler)
/// ```
void glBindSampler(int unit, int sampler) {
  final _glBindSampler = DLL_SDL2.lookupFunction<
      Void Function(Uint32 unit, Uint32 sampler),
      void Function(int unit, int sampler)>('glBindSampler');
  return _glBindSampler(unit, sampler);
}

/// ```c
/// GLAPI void APIENTRY glSamplerParameteri (GLuint sampler, GLenum pname, GLint param)
/// ```
void glSamplerParameteri(int sampler, int pname, int param) {
  final _glSamplerParameteri = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Int32 param),
      void Function(int sampler, int pname, int param)>('glSamplerParameteri');
  return _glSamplerParameteri(sampler, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSamplerParameteriv (GLuint sampler, GLenum pname, const GLint *param)
/// ```
void glSamplerParameteriv(int sampler, int pname, Pointer<Int32>? param) {
  final _glSamplerParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Int32>? param),
      void Function(int sampler, int pname, Pointer<Int32>? param)>('glSamplerParameteriv');
  return _glSamplerParameteriv(sampler, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSamplerParameterf (GLuint sampler, GLenum pname, GLfloat param)
/// ```
void glSamplerParameterf(int sampler, int pname, double param) {
  final _glSamplerParameterf = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Float param),
      void Function(int sampler, int pname, double param)>('glSamplerParameterf');
  return _glSamplerParameterf(sampler, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSamplerParameterfv (GLuint sampler, GLenum pname, const GLfloat *param)
/// ```
void glSamplerParameterfv(int sampler, int pname, Pointer<Float>? param) {
  final _glSamplerParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Float>? param),
      void Function(int sampler, int pname, Pointer<Float>? param)>('glSamplerParameterfv');
  return _glSamplerParameterfv(sampler, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSamplerParameterIiv (GLuint sampler, GLenum pname, const GLint *param)
/// ```
void glSamplerParameterIiv(int sampler, int pname, Pointer<Int32>? param) {
  final _glSamplerParameterIiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Int32>? param),
      void Function(int sampler, int pname, Pointer<Int32>? param)>('glSamplerParameterIiv');
  return _glSamplerParameterIiv(sampler, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSamplerParameterIuiv (GLuint sampler, GLenum pname, const GLuint *param)
/// ```
void glSamplerParameterIuiv(int sampler, int pname, Pointer<Uint32>? param) {
  final _glSamplerParameterIuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Uint32>? param),
      void Function(int sampler, int pname, Pointer<Uint32>? param)>('glSamplerParameterIuiv');
  return _glSamplerParameterIuiv(sampler, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glGetSamplerParameteriv (GLuint sampler, GLenum pname, GLint *params)
/// ```
void glGetSamplerParameteriv(int sampler, int pname, Pointer<Int32>? params) {
  final _glGetSamplerParameteriv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Int32>? params),
      void Function(int sampler, int pname, Pointer<Int32>? params)>('glGetSamplerParameteriv');
  return _glGetSamplerParameteriv(sampler, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetSamplerParameterIiv (GLuint sampler, GLenum pname, GLint *params)
/// ```
void glGetSamplerParameterIiv(int sampler, int pname, Pointer<Int32>? params) {
  final _glGetSamplerParameterIiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Int32>? params),
      void Function(int sampler, int pname, Pointer<Int32>? params)>('glGetSamplerParameterIiv');
  return _glGetSamplerParameterIiv(sampler, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat *params)
/// ```
void glGetSamplerParameterfv(int sampler, int pname, Pointer<Float>? params) {
  final _glGetSamplerParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Float>? params),
      void Function(int sampler, int pname, Pointer<Float>? params)>('glGetSamplerParameterfv');
  return _glGetSamplerParameterfv(sampler, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint *params)
/// ```
void glGetSamplerParameterIuiv(int sampler, int pname, Pointer<Uint32>? params) {
  final _glGetSamplerParameterIuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sampler, Uint32 pname, Pointer<Uint32>? params),
      void Function(int sampler, int pname, Pointer<Uint32>? params)>('glGetSamplerParameterIuiv');
  return _glGetSamplerParameterIuiv(sampler, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glQueryCounter (GLuint id, GLenum target)
/// ```
void glQueryCounter(int id, int target) {
  final _glQueryCounter = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 target),
      void Function(int id, int target)>('glQueryCounter');
  return _glQueryCounter(id, target);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjecti64v (GLuint id, GLenum pname, GLint64 *params)
/// ```
void glGetQueryObjecti64v(int id, int pname, Pointer<Int64>? params) {
  final _glGetQueryObjecti64v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int64>? params),
      void Function(int id, int pname, Pointer<Int64>? params)>('glGetQueryObjecti64v');
  return _glGetQueryObjecti64v(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjectui64v (GLuint id, GLenum pname, GLuint64 *params)
/// ```
void glGetQueryObjectui64v(int id, int pname, Pointer<Uint64>? params) {
  final _glGetQueryObjectui64v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Uint64>? params),
      void Function(int id, int pname, Pointer<Uint64>? params)>('glGetQueryObjectui64v');
  return _glGetQueryObjectui64v(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVertexP2ui (GLenum type, GLuint value)
/// ```
void glVertexP2ui(int type, int value) {
  final _glVertexP2ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 value),
      void Function(int type, int value)>('glVertexP2ui');
  return _glVertexP2ui(type, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexP2uiv (GLenum type, const GLuint *value)
/// ```
void glVertexP2uiv(int type, Pointer<Uint32>? value) {
  final _glVertexP2uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? value),
      void Function(int type, Pointer<Uint32>? value)>('glVertexP2uiv');
  return _glVertexP2uiv(type, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexP3ui (GLenum type, GLuint value)
/// ```
void glVertexP3ui(int type, int value) {
  final _glVertexP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 value),
      void Function(int type, int value)>('glVertexP3ui');
  return _glVertexP3ui(type, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexP3uiv (GLenum type, const GLuint *value)
/// ```
void glVertexP3uiv(int type, Pointer<Uint32>? value) {
  final _glVertexP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? value),
      void Function(int type, Pointer<Uint32>? value)>('glVertexP3uiv');
  return _glVertexP3uiv(type, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexP4ui (GLenum type, GLuint value)
/// ```
void glVertexP4ui(int type, int value) {
  final _glVertexP4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 value),
      void Function(int type, int value)>('glVertexP4ui');
  return _glVertexP4ui(type, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexP4uiv (GLenum type, const GLuint *value)
/// ```
void glVertexP4uiv(int type, Pointer<Uint32>? value) {
  final _glVertexP4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? value),
      void Function(int type, Pointer<Uint32>? value)>('glVertexP4uiv');
  return _glVertexP4uiv(type, value);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP1ui (GLenum type, GLuint coords)
/// ```
void glTexCoordP1ui(int type, int coords) {
  final _glTexCoordP1ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 coords),
      void Function(int type, int coords)>('glTexCoordP1ui');
  return _glTexCoordP1ui(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP1uiv (GLenum type, const GLuint *coords)
/// ```
void glTexCoordP1uiv(int type, Pointer<Uint32>? coords) {
  final _glTexCoordP1uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? coords),
      void Function(int type, Pointer<Uint32>? coords)>('glTexCoordP1uiv');
  return _glTexCoordP1uiv(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP2ui (GLenum type, GLuint coords)
/// ```
void glTexCoordP2ui(int type, int coords) {
  final _glTexCoordP2ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 coords),
      void Function(int type, int coords)>('glTexCoordP2ui');
  return _glTexCoordP2ui(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP2uiv (GLenum type, const GLuint *coords)
/// ```
void glTexCoordP2uiv(int type, Pointer<Uint32>? coords) {
  final _glTexCoordP2uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? coords),
      void Function(int type, Pointer<Uint32>? coords)>('glTexCoordP2uiv');
  return _glTexCoordP2uiv(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP3ui (GLenum type, GLuint coords)
/// ```
void glTexCoordP3ui(int type, int coords) {
  final _glTexCoordP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 coords),
      void Function(int type, int coords)>('glTexCoordP3ui');
  return _glTexCoordP3ui(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP3uiv (GLenum type, const GLuint *coords)
/// ```
void glTexCoordP3uiv(int type, Pointer<Uint32>? coords) {
  final _glTexCoordP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? coords),
      void Function(int type, Pointer<Uint32>? coords)>('glTexCoordP3uiv');
  return _glTexCoordP3uiv(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP4ui (GLenum type, GLuint coords)
/// ```
void glTexCoordP4ui(int type, int coords) {
  final _glTexCoordP4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 coords),
      void Function(int type, int coords)>('glTexCoordP4ui');
  return _glTexCoordP4ui(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordP4uiv (GLenum type, const GLuint *coords)
/// ```
void glTexCoordP4uiv(int type, Pointer<Uint32>? coords) {
  final _glTexCoordP4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? coords),
      void Function(int type, Pointer<Uint32>? coords)>('glTexCoordP4uiv');
  return _glTexCoordP4uiv(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP1ui (GLenum texture, GLenum type, GLuint coords)
/// ```
void glMultiTexCoordP1ui(int texture, int type, int coords) {
  final _glMultiTexCoordP1ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Uint32 coords),
      void Function(int texture, int type, int coords)>('glMultiTexCoordP1ui');
  return _glMultiTexCoordP1ui(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP1uiv (GLenum texture, GLenum type, const GLuint *coords)
/// ```
void glMultiTexCoordP1uiv(int texture, int type, Pointer<Uint32>? coords) {
  final _glMultiTexCoordP1uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Pointer<Uint32>? coords),
      void Function(int texture, int type, Pointer<Uint32>? coords)>('glMultiTexCoordP1uiv');
  return _glMultiTexCoordP1uiv(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP2ui (GLenum texture, GLenum type, GLuint coords)
/// ```
void glMultiTexCoordP2ui(int texture, int type, int coords) {
  final _glMultiTexCoordP2ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Uint32 coords),
      void Function(int texture, int type, int coords)>('glMultiTexCoordP2ui');
  return _glMultiTexCoordP2ui(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP2uiv (GLenum texture, GLenum type, const GLuint *coords)
/// ```
void glMultiTexCoordP2uiv(int texture, int type, Pointer<Uint32>? coords) {
  final _glMultiTexCoordP2uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Pointer<Uint32>? coords),
      void Function(int texture, int type, Pointer<Uint32>? coords)>('glMultiTexCoordP2uiv');
  return _glMultiTexCoordP2uiv(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP3ui (GLenum texture, GLenum type, GLuint coords)
/// ```
void glMultiTexCoordP3ui(int texture, int type, int coords) {
  final _glMultiTexCoordP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Uint32 coords),
      void Function(int texture, int type, int coords)>('glMultiTexCoordP3ui');
  return _glMultiTexCoordP3ui(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP3uiv (GLenum texture, GLenum type, const GLuint *coords)
/// ```
void glMultiTexCoordP3uiv(int texture, int type, Pointer<Uint32>? coords) {
  final _glMultiTexCoordP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Pointer<Uint32>? coords),
      void Function(int texture, int type, Pointer<Uint32>? coords)>('glMultiTexCoordP3uiv');
  return _glMultiTexCoordP3uiv(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP4ui (GLenum texture, GLenum type, GLuint coords)
/// ```
void glMultiTexCoordP4ui(int texture, int type, int coords) {
  final _glMultiTexCoordP4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Uint32 coords),
      void Function(int texture, int type, int coords)>('glMultiTexCoordP4ui');
  return _glMultiTexCoordP4ui(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordP4uiv (GLenum texture, GLenum type, const GLuint *coords)
/// ```
void glMultiTexCoordP4uiv(int texture, int type, Pointer<Uint32>? coords) {
  final _glMultiTexCoordP4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 type, Pointer<Uint32>? coords),
      void Function(int texture, int type, Pointer<Uint32>? coords)>('glMultiTexCoordP4uiv');
  return _glMultiTexCoordP4uiv(texture, type, coords);
}

/// ```c
/// GLAPI void APIENTRY glNormalP3ui (GLenum type, GLuint coords)
/// ```
void glNormalP3ui(int type, int coords) {
  final _glNormalP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 coords),
      void Function(int type, int coords)>('glNormalP3ui');
  return _glNormalP3ui(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glNormalP3uiv (GLenum type, const GLuint *coords)
/// ```
void glNormalP3uiv(int type, Pointer<Uint32>? coords) {
  final _glNormalP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? coords),
      void Function(int type, Pointer<Uint32>? coords)>('glNormalP3uiv');
  return _glNormalP3uiv(type, coords);
}

/// ```c
/// GLAPI void APIENTRY glColorP3ui (GLenum type, GLuint color)
/// ```
void glColorP3ui(int type, int color) {
  final _glColorP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 color),
      void Function(int type, int color)>('glColorP3ui');
  return _glColorP3ui(type, color);
}

/// ```c
/// GLAPI void APIENTRY glColorP3uiv (GLenum type, const GLuint *color)
/// ```
void glColorP3uiv(int type, Pointer<Uint32>? color) {
  final _glColorP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? color),
      void Function(int type, Pointer<Uint32>? color)>('glColorP3uiv');
  return _glColorP3uiv(type, color);
}

/// ```c
/// GLAPI void APIENTRY glColorP4ui (GLenum type, GLuint color)
/// ```
void glColorP4ui(int type, int color) {
  final _glColorP4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 color),
      void Function(int type, int color)>('glColorP4ui');
  return _glColorP4ui(type, color);
}

/// ```c
/// GLAPI void APIENTRY glColorP4uiv (GLenum type, const GLuint *color)
/// ```
void glColorP4uiv(int type, Pointer<Uint32>? color) {
  final _glColorP4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? color),
      void Function(int type, Pointer<Uint32>? color)>('glColorP4uiv');
  return _glColorP4uiv(type, color);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColorP3ui (GLenum type, GLuint color)
/// ```
void glSecondaryColorP3ui(int type, int color) {
  final _glSecondaryColorP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 color),
      void Function(int type, int color)>('glSecondaryColorP3ui');
  return _glSecondaryColorP3ui(type, color);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColorP3uiv (GLenum type, const GLuint *color)
/// ```
void glSecondaryColorP3uiv(int type, Pointer<Uint32>? color) {
  final _glSecondaryColorP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Uint32>? color),
      void Function(int type, Pointer<Uint32>? color)>('glSecondaryColorP3uiv');
  return _glSecondaryColorP3uiv(type, color);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP1ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
/// ```
void glVertexAttribP1ui(int index, int type, int normalized, int value) {
  final _glVertexAttribP1ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Uint32 value),
      void Function(int index, int type, int normalized, int value)>('glVertexAttribP1ui');
  return _glVertexAttribP1ui(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP1uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
/// ```
void glVertexAttribP1uiv(int index, int type, int normalized, Pointer<Uint32>? value) {
  final _glVertexAttribP1uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Pointer<Uint32>? value),
      void Function(int index, int type, int normalized, Pointer<Uint32>? value)>('glVertexAttribP1uiv');
  return _glVertexAttribP1uiv(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP2ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
/// ```
void glVertexAttribP2ui(int index, int type, int normalized, int value) {
  final _glVertexAttribP2ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Uint32 value),
      void Function(int index, int type, int normalized, int value)>('glVertexAttribP2ui');
  return _glVertexAttribP2ui(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP2uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
/// ```
void glVertexAttribP2uiv(int index, int type, int normalized, Pointer<Uint32>? value) {
  final _glVertexAttribP2uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Pointer<Uint32>? value),
      void Function(int index, int type, int normalized, Pointer<Uint32>? value)>('glVertexAttribP2uiv');
  return _glVertexAttribP2uiv(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP3ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
/// ```
void glVertexAttribP3ui(int index, int type, int normalized, int value) {
  final _glVertexAttribP3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Uint32 value),
      void Function(int index, int type, int normalized, int value)>('glVertexAttribP3ui');
  return _glVertexAttribP3ui(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP3uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
/// ```
void glVertexAttribP3uiv(int index, int type, int normalized, Pointer<Uint32>? value) {
  final _glVertexAttribP3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Pointer<Uint32>? value),
      void Function(int index, int type, int normalized, Pointer<Uint32>? value)>('glVertexAttribP3uiv');
  return _glVertexAttribP3uiv(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP4ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
/// ```
void glVertexAttribP4ui(int index, int type, int normalized, int value) {
  final _glVertexAttribP4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Uint32 value),
      void Function(int index, int type, int normalized, int value)>('glVertexAttribP4ui');
  return _glVertexAttribP4ui(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribP4uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
/// ```
void glVertexAttribP4uiv(int index, int type, int normalized, Pointer<Uint32>? value) {
  final _glVertexAttribP4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 type, Int32 normalized, Pointer<Uint32>? value),
      void Function(int index, int type, int normalized, Pointer<Uint32>? value)>('glVertexAttribP4uiv');
  return _glVertexAttribP4uiv(index, type, normalized, value);
}

/// ```c
/// GLAPI void APIENTRY glDrawArraysIndirect (GLenum mode, const GLvoid *indirect)
/// ```
void glDrawArraysIndirect(int mode, Pointer<Void>? indirect) {
  final _glDrawArraysIndirect = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Void>? indirect),
      void Function(int mode, Pointer<Void>? indirect)>('glDrawArraysIndirect');
  return _glDrawArraysIndirect(mode, indirect);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementsIndirect (GLenum mode, GLenum type, const GLvoid *indirect)
/// ```
void glDrawElementsIndirect(int mode, int type, Pointer<Void>? indirect) {
  final _glDrawElementsIndirect = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 type, Pointer<Void>? indirect),
      void Function(int mode, int type, Pointer<Void>? indirect)>('glDrawElementsIndirect');
  return _glDrawElementsIndirect(mode, type, indirect);
}

/// ```c
/// GLAPI void APIENTRY glUniform1d (GLint location, GLdouble x)
/// ```
void glUniform1d(int location, double x) {
  final _glUniform1d = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Double x),
      void Function(int location, double x)>('glUniform1d');
  return _glUniform1d(location, x);
}

/// ```c
/// GLAPI void APIENTRY glUniform2d (GLint location, GLdouble x, GLdouble y)
/// ```
void glUniform2d(int location, double x, double y) {
  final _glUniform2d = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Double x, Double y),
      void Function(int location, double x, double y)>('glUniform2d');
  return _glUniform2d(location, x, y);
}

/// ```c
/// GLAPI void APIENTRY glUniform3d (GLint location, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glUniform3d(int location, double x, double y, double z) {
  final _glUniform3d = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Double x, Double y, Double z),
      void Function(int location, double x, double y, double z)>('glUniform3d');
  return _glUniform3d(location, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glUniform4d (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glUniform4d(int location, double x, double y, double z, double w) {
  final _glUniform4d = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Double x, Double y, Double z, Double w),
      void Function(int location, double x, double y, double z, double w)>('glUniform4d');
  return _glUniform4d(location, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glUniform1dv (GLint location, GLsizei count, const GLdouble *value)
/// ```
void glUniform1dv(int location, int count, Pointer<Double>? value) {
  final _glUniform1dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int location, int count, Pointer<Double>? value)>('glUniform1dv');
  return _glUniform1dv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2dv (GLint location, GLsizei count, const GLdouble *value)
/// ```
void glUniform2dv(int location, int count, Pointer<Double>? value) {
  final _glUniform2dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int location, int count, Pointer<Double>? value)>('glUniform2dv');
  return _glUniform2dv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3dv (GLint location, GLsizei count, const GLdouble *value)
/// ```
void glUniform3dv(int location, int count, Pointer<Double>? value) {
  final _glUniform3dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int location, int count, Pointer<Double>? value)>('glUniform3dv');
  return _glUniform3dv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4dv (GLint location, GLsizei count, const GLdouble *value)
/// ```
void glUniform4dv(int location, int count, Pointer<Double>? value) {
  final _glUniform4dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int location, int count, Pointer<Double>? value)>('glUniform4dv');
  return _glUniform4dv(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix2dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix2dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix2dv');
  return _glUniformMatrix2dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix3dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix3dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix3dv');
  return _glUniformMatrix3dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix4dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix4dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix4dv');
  return _glUniformMatrix4dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix2x3dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix2x3dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix2x3dv');
  return _glUniformMatrix2x3dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix2x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix2x4dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix2x4dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix2x4dv');
  return _glUniformMatrix2x4dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix3x2dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix3x2dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix3x2dv');
  return _glUniformMatrix3x2dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix3x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix3x4dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix3x4dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix3x4dv');
  return _glUniformMatrix3x4dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix4x2dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix4x2dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix4x2dv');
  return _glUniformMatrix4x2dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformMatrix4x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glUniformMatrix4x3dv(int location, int count, int transpose, Pointer<Double>? value) {
  final _glUniformMatrix4x3dv = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int location, int count, int transpose, Pointer<Double>? value)>('glUniformMatrix4x3dv');
  return _glUniformMatrix4x3dv(location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformdv (GLuint program, GLint location, GLdouble *params)
/// ```
void glGetUniformdv(int program, int location, Pointer<Double>? params) {
  final _glGetUniformdv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Double>? params),
      void Function(int program, int location, Pointer<Double>? params)>('glGetUniformdv');
  return _glGetUniformdv(program, location, params);
}

/// ```c
/// GLAPI GLint APIENTRY glGetSubroutineUniformLocation (GLuint program, GLenum shadertype, const GLchar *name)
/// ```
int glGetSubroutineUniformLocation(int program, int shadertype, String name) {
  final _glGetSubroutineUniformLocation = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Uint32 shadertype, Pointer<Utf8>? name),
      int Function(int program, int shadertype, Pointer<Utf8>? name)>('glGetSubroutineUniformLocation');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetSubroutineUniformLocation(program, shadertype, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI GLuint APIENTRY glGetSubroutineIndex (GLuint program, GLenum shadertype, const GLchar *name)
/// ```
int glGetSubroutineIndex(int program, int shadertype, String name) {
  final _glGetSubroutineIndex = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 program, Uint32 shadertype, Pointer<Utf8>? name),
      int Function(int program, int shadertype, Pointer<Utf8>? name)>('glGetSubroutineIndex');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetSubroutineIndex(program, shadertype, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetActiveSubroutineUniformiv (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint *values)
/// ```
void glGetActiveSubroutineUniformiv(int program, int shadertype, int index, int pname, Pointer<Int32>? values) {
  final _glGetActiveSubroutineUniformiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 shadertype, Uint32 index, Uint32 pname, Pointer<Int32>? values),
      void Function(int program, int shadertype, int index, int pname, Pointer<Int32>? values)>('glGetActiveSubroutineUniformiv');
  return _glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveSubroutineUniformName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei *length, GLchar *name)
/// ```
void glGetActiveSubroutineUniformName(int program, int shadertype, int index, int bufsize, Pointer<Uint32>? length, Pointer<Int8>? name) {
  final _glGetActiveSubroutineUniformName = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 shadertype, Uint32 index, Uint32 bufsize, Pointer<Uint32>? length, Pointer<Int8>? name),
      void Function(int program, int shadertype, int index, int bufsize, Pointer<Uint32>? length, Pointer<Int8>? name)>('glGetActiveSubroutineUniformName');
  return _glGetActiveSubroutineUniformName(program, shadertype, index, bufsize, length, name);
}

/// ```c
/// GLAPI void APIENTRY glGetActiveSubroutineName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei *length, GLchar *name)
/// ```
void glGetActiveSubroutineName(int program, int shadertype, int index, int bufsize, Pointer<Uint32>? length, Pointer<Int8>? name) {
  final _glGetActiveSubroutineName = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 shadertype, Uint32 index, Uint32 bufsize, Pointer<Uint32>? length, Pointer<Int8>? name),
      void Function(int program, int shadertype, int index, int bufsize, Pointer<Uint32>? length, Pointer<Int8>? name)>('glGetActiveSubroutineName');
  return _glGetActiveSubroutineName(program, shadertype, index, bufsize, length, name);
}

/// ```c
/// GLAPI void APIENTRY glUniformSubroutinesuiv (GLenum shadertype, GLsizei count, const GLuint *indices)
/// ```
void glUniformSubroutinesuiv(int shadertype, int count, Pointer<Uint32>? indices) {
  final _glUniformSubroutinesuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shadertype, Uint32 count, Pointer<Uint32>? indices),
      void Function(int shadertype, int count, Pointer<Uint32>? indices)>('glUniformSubroutinesuiv');
  return _glUniformSubroutinesuiv(shadertype, count, indices);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformSubroutineuiv (GLenum shadertype, GLint location, GLuint *params)
/// ```
void glGetUniformSubroutineuiv(int shadertype, int location, Pointer<Uint32>? params) {
  final _glGetUniformSubroutineuiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shadertype, Int32 location, Pointer<Uint32>? params),
      void Function(int shadertype, int location, Pointer<Uint32>? params)>('glGetUniformSubroutineuiv');
  return _glGetUniformSubroutineuiv(shadertype, location, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramStageiv (GLuint program, GLenum shadertype, GLenum pname, GLint *values)
/// ```
void glGetProgramStageiv(int program, int shadertype, int pname, Pointer<Int32>? values) {
  final _glGetProgramStageiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 shadertype, Uint32 pname, Pointer<Int32>? values),
      void Function(int program, int shadertype, int pname, Pointer<Int32>? values)>('glGetProgramStageiv');
  return _glGetProgramStageiv(program, shadertype, pname, values);
}

/// ```c
/// GLAPI void APIENTRY glPatchParameteri (GLenum pname, GLint value)
/// ```
void glPatchParameteri(int pname, int value) {
  final _glPatchParameteri = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 value),
      void Function(int pname, int value)>('glPatchParameteri');
  return _glPatchParameteri(pname, value);
}

/// ```c
/// GLAPI void APIENTRY glPatchParameterfv (GLenum pname, const GLfloat *values)
/// ```
void glPatchParameterfv(int pname, Pointer<Float>? values) {
  final _glPatchParameterfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? values),
      void Function(int pname, Pointer<Float>? values)>('glPatchParameterfv');
  return _glPatchParameterfv(pname, values);
}

/// ```c
/// GLAPI void APIENTRY glBindTransformFeedback (GLenum target, GLuint id)
/// ```
void glBindTransformFeedback(int target, int id) {
  final _glBindTransformFeedback = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id),
      void Function(int target, int id)>('glBindTransformFeedback');
  return _glBindTransformFeedback(target, id);
}

/// ```c
/// GLAPI void APIENTRY glDeleteTransformFeedbacks (GLsizei n, const GLuint *ids)
/// ```
void glDeleteTransformFeedbacks(int n, Pointer<Uint32>? ids) {
  final _glDeleteTransformFeedbacks = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glDeleteTransformFeedbacks');
  return _glDeleteTransformFeedbacks(n, ids);
}

/// ```c
/// GLAPI void APIENTRY glGenTransformFeedbacks (GLsizei n, GLuint *ids)
/// ```
void glGenTransformFeedbacks(int n, Pointer<Uint32>? ids) {
  final _glGenTransformFeedbacks = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glGenTransformFeedbacks');
  return _glGenTransformFeedbacks(n, ids);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsTransformFeedback (GLuint id)
/// ```
int glIsTransformFeedback(int id) {
  final _glIsTransformFeedback = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id),
      int Function(int id)>('glIsTransformFeedback');
  return _glIsTransformFeedback(id);
}

/// ```c
/// GLAPI void APIENTRY glPauseTransformFeedback (void)
/// ```
void glPauseTransformFeedback() {
  final _glPauseTransformFeedback = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glPauseTransformFeedback');
  return _glPauseTransformFeedback();
}

/// ```c
/// GLAPI void APIENTRY glResumeTransformFeedback (void)
/// ```
void glResumeTransformFeedback() {
  final _glResumeTransformFeedback = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glResumeTransformFeedback');
  return _glResumeTransformFeedback();
}

/// ```c
/// GLAPI void APIENTRY glDrawTransformFeedback (GLenum mode, GLuint id)
/// ```
void glDrawTransformFeedback(int mode, int id) {
  final _glDrawTransformFeedback = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 id),
      void Function(int mode, int id)>('glDrawTransformFeedback');
  return _glDrawTransformFeedback(mode, id);
}

/// ```c
/// GLAPI void APIENTRY glDrawTransformFeedbackStream (GLenum mode, GLuint id, GLuint stream)
/// ```
void glDrawTransformFeedbackStream(int mode, int id, int stream) {
  final _glDrawTransformFeedbackStream = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 id, Uint32 stream),
      void Function(int mode, int id, int stream)>('glDrawTransformFeedbackStream');
  return _glDrawTransformFeedbackStream(mode, id, stream);
}

/// ```c
/// GLAPI void APIENTRY glBeginQueryIndexed (GLenum target, GLuint index, GLuint id)
/// ```
void glBeginQueryIndexed(int target, int index, int id) {
  final _glBeginQueryIndexed = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 id),
      void Function(int target, int index, int id)>('glBeginQueryIndexed');
  return _glBeginQueryIndexed(target, index, id);
}

/// ```c
/// GLAPI void APIENTRY glEndQueryIndexed (GLenum target, GLuint index)
/// ```
void glEndQueryIndexed(int target, int index) {
  final _glEndQueryIndexed = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index),
      void Function(int target, int index)>('glEndQueryIndexed');
  return _glEndQueryIndexed(target, index);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryIndexediv (GLenum target, GLuint index, GLenum pname, GLint *params)
/// ```
void glGetQueryIndexediv(int target, int index, int pname, Pointer<Int32>? params) {
  final _glGetQueryIndexediv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int index, int pname, Pointer<Int32>? params)>('glGetQueryIndexediv');
  return _glGetQueryIndexediv(target, index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glReleaseShaderCompiler (void)
/// ```
void glReleaseShaderCompiler() {
  final _glReleaseShaderCompiler = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glReleaseShaderCompiler');
  return _glReleaseShaderCompiler();
}

/// ```c
/// GLAPI void APIENTRY glShaderBinary (GLsizei count, const GLuint *shaders, GLenum binaryformat, const GLvoid *binary, GLsizei length)
/// ```
void glShaderBinary(int count, Pointer<Uint32>? shaders, int binaryformat, Pointer<Void>? binary, int length) {
  final _glShaderBinary = DLL_SDL2.lookupFunction<
      Void Function(Uint32 count, Pointer<Uint32>? shaders, Uint32 binaryformat, Pointer<Void>? binary, Uint32 length),
      void Function(int count, Pointer<Uint32>? shaders, int binaryformat, Pointer<Void>? binary, int length)>('glShaderBinary');
  return _glShaderBinary(count, shaders, binaryformat, binary, length);
}

/// ```c
/// GLAPI void APIENTRY glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint *range, GLint *precision)
/// ```
void glGetShaderPrecisionFormat(int shadertype, int precisiontype, Pointer<Int32>? range, Pointer<Int32>? precision) {
  final _glGetShaderPrecisionFormat = DLL_SDL2.lookupFunction<
      Void Function(Uint32 shadertype, Uint32 precisiontype, Pointer<Int32>? range, Pointer<Int32>? precision),
      void Function(int shadertype, int precisiontype, Pointer<Int32>? range, Pointer<Int32>? precision)>('glGetShaderPrecisionFormat');
  return _glGetShaderPrecisionFormat(shadertype, precisiontype, range, precision);
}

/// ```c
/// GLAPI void APIENTRY glDepthRangef (GLclampf n, GLclampf f)
/// ```
void glDepthRangef(double n, double f) {
  final _glDepthRangef = DLL_SDL2.lookupFunction<
      Void Function(Float n, Float f),
      void Function(double n, double f)>('glDepthRangef');
  return _glDepthRangef(n, f);
}

/// ```c
/// GLAPI void APIENTRY glClearDepthf (GLclampf d)
/// ```
void glClearDepthf(double d) {
  final _glClearDepthf = DLL_SDL2.lookupFunction<
      Void Function(Float d),
      void Function(double d)>('glClearDepthf');
  return _glClearDepthf(d);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramBinary (GLuint program, GLsizei bufSize, GLsizei *length, GLenum *binaryFormat, GLvoid *binary)
/// ```
void glGetProgramBinary(int program, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? binaryFormat, Pointer<Void>? binary) {
  final _glGetProgramBinary = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Uint32>? binaryFormat, Pointer<Void>? binary),
      void Function(int program, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? binaryFormat, Pointer<Void>? binary)>('glGetProgramBinary');
  return _glGetProgramBinary(program, bufSize, length, binaryFormat, binary);
}

/// ```c
/// GLAPI void APIENTRY glProgramBinary (GLuint program, GLenum binaryFormat, const GLvoid *binary, GLsizei length)
/// ```
void glProgramBinary(int program, int binaryFormat, Pointer<Void>? binary, int length) {
  final _glProgramBinary = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 binaryFormat, Pointer<Void>? binary, Uint32 length),
      void Function(int program, int binaryFormat, Pointer<Void>? binary, int length)>('glProgramBinary');
  return _glProgramBinary(program, binaryFormat, binary, length);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameteri (GLuint program, GLenum pname, GLint value)
/// ```
void glProgramParameteri(int program, int pname, int value) {
  final _glProgramParameteri = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 pname, Int32 value),
      void Function(int program, int pname, int value)>('glProgramParameteri');
  return _glProgramParameteri(program, pname, value);
}

/// ```c
/// GLAPI void APIENTRY glUseProgramStages (GLuint pipeline, GLbitfield stages, GLuint program)
/// ```
void glUseProgramStages(int pipeline, int stages, int program) {
  final _glUseProgramStages = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pipeline, Uint32 stages, Uint32 program),
      void Function(int pipeline, int stages, int program)>('glUseProgramStages');
  return _glUseProgramStages(pipeline, stages, program);
}

/// ```c
/// GLAPI void APIENTRY glActiveShaderProgram (GLuint pipeline, GLuint program)
/// ```
void glActiveShaderProgram(int pipeline, int program) {
  final _glActiveShaderProgram = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pipeline, Uint32 program),
      void Function(int pipeline, int program)>('glActiveShaderProgram');
  return _glActiveShaderProgram(pipeline, program);
}

/// ```c
/// GLAPI GLuint APIENTRY glCreateShaderProgramv (GLenum type, GLsizei count, const GLchar* *strings)
/// ```
int glCreateShaderProgramv(int type, int count, Pointer<Pointer<Int8>>? strings) {
  final _glCreateShaderProgramv = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 type, Uint32 count, Pointer<Pointer<Int8>>? strings),
      int Function(int type, int count, Pointer<Pointer<Int8>>? strings)>('glCreateShaderProgramv');
  return _glCreateShaderProgramv(type, count, strings);
}

/// ```c
/// GLAPI void APIENTRY glBindProgramPipeline (GLuint pipeline)
/// ```
void glBindProgramPipeline(int pipeline) {
  final _glBindProgramPipeline = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pipeline),
      void Function(int pipeline)>('glBindProgramPipeline');
  return _glBindProgramPipeline(pipeline);
}

/// ```c
/// GLAPI void APIENTRY glDeleteProgramPipelines (GLsizei n, const GLuint *pipelines)
/// ```
void glDeleteProgramPipelines(int n, Pointer<Uint32>? pipelines) {
  final _glDeleteProgramPipelines = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? pipelines),
      void Function(int n, Pointer<Uint32>? pipelines)>('glDeleteProgramPipelines');
  return _glDeleteProgramPipelines(n, pipelines);
}

/// ```c
/// GLAPI void APIENTRY glGenProgramPipelines (GLsizei n, GLuint *pipelines)
/// ```
void glGenProgramPipelines(int n, Pointer<Uint32>? pipelines) {
  final _glGenProgramPipelines = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? pipelines),
      void Function(int n, Pointer<Uint32>? pipelines)>('glGenProgramPipelines');
  return _glGenProgramPipelines(n, pipelines);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsProgramPipeline (GLuint pipeline)
/// ```
int glIsProgramPipeline(int pipeline) {
  final _glIsProgramPipeline = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 pipeline),
      int Function(int pipeline)>('glIsProgramPipeline');
  return _glIsProgramPipeline(pipeline);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramPipelineiv (GLuint pipeline, GLenum pname, GLint *params)
/// ```
void glGetProgramPipelineiv(int pipeline, int pname, Pointer<Int32>? params) {
  final _glGetProgramPipelineiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pipeline, Uint32 pname, Pointer<Int32>? params),
      void Function(int pipeline, int pname, Pointer<Int32>? params)>('glGetProgramPipelineiv');
  return _glGetProgramPipelineiv(pipeline, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1i (GLuint program, GLint location, GLint v0)
/// ```
void glProgramUniform1i(int program, int location, int v0) {
  final _glProgramUniform1i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0),
      void Function(int program, int location, int v0)>('glProgramUniform1i');
  return _glProgramUniform1i(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1iv (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform1iv(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform1iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform1iv');
  return _glProgramUniform1iv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1f (GLuint program, GLint location, GLfloat v0)
/// ```
void glProgramUniform1f(int program, int location, double v0) {
  final _glProgramUniform1f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0),
      void Function(int program, int location, double v0)>('glProgramUniform1f');
  return _glProgramUniform1f(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1fv (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform1fv(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform1fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform1fv');
  return _glProgramUniform1fv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1d (GLuint program, GLint location, GLdouble v0)
/// ```
void glProgramUniform1d(int program, int location, double v0) {
  final _glProgramUniform1d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double v0),
      void Function(int program, int location, double v0)>('glProgramUniform1d');
  return _glProgramUniform1d(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1dv (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform1dv(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform1dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform1dv');
  return _glProgramUniform1dv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1ui (GLuint program, GLint location, GLuint v0)
/// ```
void glProgramUniform1ui(int program, int location, int v0) {
  final _glProgramUniform1ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0),
      void Function(int program, int location, int v0)>('glProgramUniform1ui');
  return _glProgramUniform1ui(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1uiv (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform1uiv(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform1uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform1uiv');
  return _glProgramUniform1uiv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2i (GLuint program, GLint location, GLint v0, GLint v1)
/// ```
void glProgramUniform2i(int program, int location, int v0, int v1) {
  final _glProgramUniform2i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0, Int32 v1),
      void Function(int program, int location, int v0, int v1)>('glProgramUniform2i');
  return _glProgramUniform2i(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2iv (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform2iv(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform2iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform2iv');
  return _glProgramUniform2iv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2f (GLuint program, GLint location, GLfloat v0, GLfloat v1)
/// ```
void glProgramUniform2f(int program, int location, double v0, double v1) {
  final _glProgramUniform2f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0, Float v1),
      void Function(int program, int location, double v0, double v1)>('glProgramUniform2f');
  return _glProgramUniform2f(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2fv (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform2fv(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform2fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform2fv');
  return _glProgramUniform2fv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2d (GLuint program, GLint location, GLdouble v0, GLdouble v1)
/// ```
void glProgramUniform2d(int program, int location, double v0, double v1) {
  final _glProgramUniform2d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double v0, Double v1),
      void Function(int program, int location, double v0, double v1)>('glProgramUniform2d');
  return _glProgramUniform2d(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2dv (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform2dv(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform2dv');
  return _glProgramUniform2dv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2ui (GLuint program, GLint location, GLuint v0, GLuint v1)
/// ```
void glProgramUniform2ui(int program, int location, int v0, int v1) {
  final _glProgramUniform2ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0, Uint32 v1),
      void Function(int program, int location, int v0, int v1)>('glProgramUniform2ui');
  return _glProgramUniform2ui(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2uiv (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform2uiv(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform2uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform2uiv');
  return _glProgramUniform2uiv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2)
/// ```
void glProgramUniform3i(int program, int location, int v0, int v1, int v2) {
  final _glProgramUniform3i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2),
      void Function(int program, int location, int v0, int v1, int v2)>('glProgramUniform3i');
  return _glProgramUniform3i(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3iv (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform3iv(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform3iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform3iv');
  return _glProgramUniform3iv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
/// ```
void glProgramUniform3f(int program, int location, double v0, double v1, double v2) {
  final _glProgramUniform3f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0, Float v1, Float v2),
      void Function(int program, int location, double v0, double v1, double v2)>('glProgramUniform3f');
  return _glProgramUniform3f(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3fv (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform3fv(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform3fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform3fv');
  return _glProgramUniform3fv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2)
/// ```
void glProgramUniform3d(int program, int location, double v0, double v1, double v2) {
  final _glProgramUniform3d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double v0, Double v1, Double v2),
      void Function(int program, int location, double v0, double v1, double v2)>('glProgramUniform3d');
  return _glProgramUniform3d(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3dv (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform3dv(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform3dv');
  return _glProgramUniform3dv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)
/// ```
void glProgramUniform3ui(int program, int location, int v0, int v1, int v2) {
  final _glProgramUniform3ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2),
      void Function(int program, int location, int v0, int v1, int v2)>('glProgramUniform3ui');
  return _glProgramUniform3ui(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3uiv (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform3uiv(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform3uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform3uiv');
  return _glProgramUniform3uiv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
/// ```
void glProgramUniform4i(int program, int location, int v0, int v1, int v2, int v3) {
  final _glProgramUniform4i = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3),
      void Function(int program, int location, int v0, int v1, int v2, int v3)>('glProgramUniform4i');
  return _glProgramUniform4i(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4iv (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform4iv(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform4iv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform4iv');
  return _glProgramUniform4iv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
/// ```
void glProgramUniform4f(int program, int location, double v0, double v1, double v2, double v3) {
  final _glProgramUniform4f = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0, Float v1, Float v2, Float v3),
      void Function(int program, int location, double v0, double v1, double v2, double v3)>('glProgramUniform4f');
  return _glProgramUniform4f(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4fv (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform4fv(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform4fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform4fv');
  return _glProgramUniform4fv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3)
/// ```
void glProgramUniform4d(int program, int location, double v0, double v1, double v2, double v3) {
  final _glProgramUniform4d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double v0, Double v1, Double v2, Double v3),
      void Function(int program, int location, double v0, double v1, double v2, double v3)>('glProgramUniform4d');
  return _glProgramUniform4d(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4dv (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform4dv(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform4dv');
  return _glProgramUniform4dv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
/// ```
void glProgramUniform4ui(int program, int location, int v0, int v1, int v2, int v3) {
  final _glProgramUniform4ui = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3),
      void Function(int program, int location, int v0, int v1, int v2, int v3)>('glProgramUniform4ui');
  return _glProgramUniform4ui(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4uiv (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform4uiv(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform4uiv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform4uiv');
  return _glProgramUniform4uiv(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix2fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix2fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix2fv');
  return _glProgramUniformMatrix2fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix3fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix3fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix3fv');
  return _glProgramUniformMatrix3fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix4fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix4fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix4fv');
  return _glProgramUniformMatrix4fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix2dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix2dv');
  return _glProgramUniformMatrix2dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix3dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix3dv');
  return _glProgramUniformMatrix3dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix4dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix4dv');
  return _glProgramUniformMatrix4dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix2x3fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix2x3fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix2x3fv');
  return _glProgramUniformMatrix2x3fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix3x2fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix3x2fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix3x2fv');
  return _glProgramUniformMatrix3x2fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix2x4fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix2x4fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix2x4fv');
  return _glProgramUniformMatrix2x4fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix4x2fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix4x2fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix4x2fv');
  return _glProgramUniformMatrix4x2fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix3x4fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix3x4fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix3x4fv');
  return _glProgramUniformMatrix3x4fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix4x3fv(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix4x3fv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix4x3fv');
  return _glProgramUniformMatrix4x3fv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix2x3dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix2x3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix2x3dv');
  return _glProgramUniformMatrix2x3dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix3x2dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix3x2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix3x2dv');
  return _glProgramUniformMatrix3x2dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix2x4dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix2x4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix2x4dv');
  return _glProgramUniformMatrix2x4dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix4x2dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix4x2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix4x2dv');
  return _glProgramUniformMatrix4x2dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix3x4dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix3x4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix3x4dv');
  return _glProgramUniformMatrix3x4dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix4x3dv(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix4x3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix4x3dv');
  return _glProgramUniformMatrix4x3dv(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glValidateProgramPipeline (GLuint pipeline)
/// ```
void glValidateProgramPipeline(int pipeline) {
  final _glValidateProgramPipeline = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pipeline),
      void Function(int pipeline)>('glValidateProgramPipeline');
  return _glValidateProgramPipeline(pipeline);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramPipelineInfoLog (GLuint pipeline, GLsizei bufSize, GLsizei *length, GLchar *infoLog)
/// ```
void glGetProgramPipelineInfoLog(int pipeline, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog) {
  final _glGetProgramPipelineInfoLog = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pipeline, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog),
      void Function(int pipeline, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? infoLog)>('glGetProgramPipelineInfoLog');
  return _glGetProgramPipelineInfoLog(pipeline, bufSize, length, infoLog);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1d (GLuint index, GLdouble x)
/// ```
void glVertexAttribL1d(int index, double x) {
  final _glVertexAttribL1d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x),
      void Function(int index, double x)>('glVertexAttribL1d');
  return _glVertexAttribL1d(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2d (GLuint index, GLdouble x, GLdouble y)
/// ```
void glVertexAttribL2d(int index, double x, double y) {
  final _glVertexAttribL2d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y),
      void Function(int index, double x, double y)>('glVertexAttribL2d');
  return _glVertexAttribL2d(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3d (GLuint index, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glVertexAttribL3d(int index, double x, double y, double z) {
  final _glVertexAttribL3d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z),
      void Function(int index, double x, double y, double z)>('glVertexAttribL3d');
  return _glVertexAttribL3d(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glVertexAttribL4d(int index, double x, double y, double z, double w) {
  final _glVertexAttribL4d = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttribL4d');
  return _glVertexAttribL4d(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL1dv(int index, Pointer<Double>? v) {
  final _glVertexAttribL1dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL1dv');
  return _glVertexAttribL1dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL2dv(int index, Pointer<Double>? v) {
  final _glVertexAttribL2dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL2dv');
  return _glVertexAttribL2dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL3dv(int index, Pointer<Double>? v) {
  final _glVertexAttribL3dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL3dv');
  return _glVertexAttribL3dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4dv (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL4dv(int index, Pointer<Double>? v) {
  final _glVertexAttribL4dv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL4dv');
  return _glVertexAttribL4dv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribLPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribLPointer(int index, int size, int type, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribLPointer = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int size, int type, int stride, Pointer<Void>? pointer)>('glVertexAttribLPointer');
  return _glVertexAttribLPointer(index, size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribLdv (GLuint index, GLenum pname, GLdouble *params)
/// ```
void glGetVertexAttribLdv(int index, int pname, Pointer<Double>? params) {
  final _glGetVertexAttribLdv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Double>? params),
      void Function(int index, int pname, Pointer<Double>? params)>('glGetVertexAttribLdv');
  return _glGetVertexAttribLdv(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glViewportArrayv (GLuint first, GLsizei count, const GLfloat *v)
/// ```
void glViewportArrayv(int first, int count, Pointer<Float>? v) {
  final _glViewportArrayv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 first, Uint32 count, Pointer<Float>? v),
      void Function(int first, int count, Pointer<Float>? v)>('glViewportArrayv');
  return _glViewportArrayv(first, count, v);
}

/// ```c
/// GLAPI void APIENTRY glViewportIndexedf (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h)
/// ```
void glViewportIndexedf(int index, double x, double y, double w, double h) {
  final _glViewportIndexedf = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float w, Float h),
      void Function(int index, double x, double y, double w, double h)>('glViewportIndexedf');
  return _glViewportIndexedf(index, x, y, w, h);
}

/// ```c
/// GLAPI void APIENTRY glViewportIndexedfv (GLuint index, const GLfloat *v)
/// ```
void glViewportIndexedfv(int index, Pointer<Float>? v) {
  final _glViewportIndexedfv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glViewportIndexedfv');
  return _glViewportIndexedfv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glScissorArrayv (GLuint first, GLsizei count, const GLint *v)
/// ```
void glScissorArrayv(int first, int count, Pointer<Int32>? v) {
  final _glScissorArrayv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 first, Uint32 count, Pointer<Int32>? v),
      void Function(int first, int count, Pointer<Int32>? v)>('glScissorArrayv');
  return _glScissorArrayv(first, count, v);
}

/// ```c
/// GLAPI void APIENTRY glScissorIndexed (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height)
/// ```
void glScissorIndexed(int index, int left, int bottom, int width, int height) {
  final _glScissorIndexed = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 left, Int32 bottom, Uint32 width, Uint32 height),
      void Function(int index, int left, int bottom, int width, int height)>('glScissorIndexed');
  return _glScissorIndexed(index, left, bottom, width, height);
}

/// ```c
/// GLAPI void APIENTRY glScissorIndexedv (GLuint index, const GLint *v)
/// ```
void glScissorIndexedv(int index, Pointer<Int32>? v) {
  final _glScissorIndexedv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glScissorIndexedv');
  return _glScissorIndexedv(index, v);
}

/// ```c
/// GLAPI void APIENTRY glDepthRangeArrayv (GLuint first, GLsizei count, const GLclampd *v)
/// ```
void glDepthRangeArrayv(int first, int count, Pointer<Double>? v) {
  final _glDepthRangeArrayv = DLL_SDL2.lookupFunction<
      Void Function(Uint32 first, Uint32 count, Pointer<Double>? v),
      void Function(int first, int count, Pointer<Double>? v)>('glDepthRangeArrayv');
  return _glDepthRangeArrayv(first, count, v);
}

/// ```c
/// GLAPI void APIENTRY glDepthRangeIndexed (GLuint index, GLclampd n, GLclampd f)
/// ```
void glDepthRangeIndexed(int index, double n, double f) {
  final _glDepthRangeIndexed = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double n, Double f),
      void Function(int index, double n, double f)>('glDepthRangeIndexed');
  return _glDepthRangeIndexed(index, n, f);
}

/// ```c
/// GLAPI void APIENTRY glGetFloati_v (GLenum target, GLuint index, GLfloat *data)
/// ```
void glGetFloati_v(int target, int index, Pointer<Float>? data) {
  final _glGetFloati_v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? data),
      void Function(int target, int index, Pointer<Float>? data)>('glGetFloati_v');
  return _glGetFloati_v(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glGetDoublei_v (GLenum target, GLuint index, GLdouble *data)
/// ```
void glGetDoublei_v(int target, int index, Pointer<Double>? data) {
  final _glGetDoublei_v = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? data),
      void Function(int target, int index, Pointer<Double>? data)>('glGetDoublei_v');
  return _glGetDoublei_v(target, index, data);
}

/// ```c
/// GLAPI GLsync APIENTRY glCreateSyncFromCLeventARB (struct _cl_context * context, struct _cl_event * event, GLbitfield flags)
/// ```
Pointer<Void>? glCreateSyncFromCLeventARB(Pointer<Pointer<Void>>? context, Pointer<Pointer<Void>>? event, int flags) {
  final _glCreateSyncFromCLeventARB = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Pointer<Void>>? context, Pointer<Pointer<Void>>? event, Uint32 flags),
      Pointer<Void>? Function(Pointer<Pointer<Void>>? context, Pointer<Pointer<Void>>? event, int flags)>('glCreateSyncFromCLeventARB');
  return _glCreateSyncFromCLeventARB(context, event, flags);
}

/// ```c
/// GLAPI void APIENTRY glDebugMessageControlARB (GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint *ids, GLboolean enabled)
/// ```
void glDebugMessageControlARB(int source, int type, int severity, int count, Pointer<Uint32>? ids, int enabled) {
  final _glDebugMessageControlARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 source, Uint32 type, Uint32 severity, Uint32 count, Pointer<Uint32>? ids, Int32 enabled),
      void Function(int source, int type, int severity, int count, Pointer<Uint32>? ids, int enabled)>('glDebugMessageControlARB');
  return _glDebugMessageControlARB(source, type, severity, count, ids, enabled);
}

/// ```c
/// GLAPI void APIENTRY glDebugMessageInsertARB (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar *buf)
/// ```
void glDebugMessageInsertARB(int source, int type, int id, int severity, int length, String buf) {
  final _glDebugMessageInsertARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 source, Uint32 type, Uint32 id, Uint32 severity, Uint32 length, Pointer<Utf8>? buf),
      void Function(int source, int type, int id, int severity, int length, Pointer<Utf8>? buf)>('glDebugMessageInsertARB');
  final _bufPointer = buf.toNativeUtf8();
  final _result = _glDebugMessageInsertARB(source, type, id, severity, length, _bufPointer);
  calloc.free(_bufPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glDebugMessageCallbackARB (GLDEBUGPROCARB callback, const GLvoid *userParam)
/// ```
void glDebugMessageCallbackARB(Pointer<Void>? callback, Pointer<Void>? userParam) {
  final _glDebugMessageCallbackARB = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? callback, Pointer<Void>? userParam),
      void Function(Pointer<Void>? callback, Pointer<Void>? userParam)>('glDebugMessageCallbackARB');
  return _glDebugMessageCallbackARB(callback, userParam);
}

/// ```c
/// GLAPI GLuint APIENTRY glGetDebugMessageLogARB (GLuint count, GLsizei bufsize, GLenum *sources, GLenum *types, GLuint *ids, GLenum *severities, GLsizei *lengths, GLchar *messageLog)
/// ```
int glGetDebugMessageLogARB(int count, int bufsize, Pointer<Uint32>? sources, Pointer<Uint32>? types, Pointer<Uint32>? ids, Pointer<Uint32>? severities, Pointer<Uint32>? lengths, Pointer<Int8>? messageLog) {
  final _glGetDebugMessageLogARB = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 count, Uint32 bufsize, Pointer<Uint32>? sources, Pointer<Uint32>? types, Pointer<Uint32>? ids, Pointer<Uint32>? severities, Pointer<Uint32>? lengths, Pointer<Int8>? messageLog),
      int Function(int count, int bufsize, Pointer<Uint32>? sources, Pointer<Uint32>? types, Pointer<Uint32>? ids, Pointer<Uint32>? severities, Pointer<Uint32>? lengths, Pointer<Int8>? messageLog)>('glGetDebugMessageLogARB');
  return _glGetDebugMessageLogARB(count, bufsize, sources, types, ids, severities, lengths, messageLog);
}

/// ```c
/// GLAPI GLenum APIENTRY glGetGraphicsResetStatusARB (void)
/// ```
int glGetGraphicsResetStatusARB() {
  final _glGetGraphicsResetStatusARB = DLL_SDL2.lookupFunction<
      Uint32 Function(),
      int Function()>('glGetGraphicsResetStatusARB');
  return _glGetGraphicsResetStatusARB();
}

/// ```c
/// GLAPI void APIENTRY glGetnMapdvARB (GLenum target, GLenum query, GLsizei bufSize, GLdouble *v)
/// ```
void glGetnMapdvARB(int target, int query, int bufSize, Pointer<Double>? v) {
  final _glGetnMapdvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 query, Uint32 bufSize, Pointer<Double>? v),
      void Function(int target, int query, int bufSize, Pointer<Double>? v)>('glGetnMapdvARB');
  return _glGetnMapdvARB(target, query, bufSize, v);
}

/// ```c
/// GLAPI void APIENTRY glGetnMapfvARB (GLenum target, GLenum query, GLsizei bufSize, GLfloat *v)
/// ```
void glGetnMapfvARB(int target, int query, int bufSize, Pointer<Float>? v) {
  final _glGetnMapfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 query, Uint32 bufSize, Pointer<Float>? v),
      void Function(int target, int query, int bufSize, Pointer<Float>? v)>('glGetnMapfvARB');
  return _glGetnMapfvARB(target, query, bufSize, v);
}

/// ```c
/// GLAPI void APIENTRY glGetnMapivARB (GLenum target, GLenum query, GLsizei bufSize, GLint *v)
/// ```
void glGetnMapivARB(int target, int query, int bufSize, Pointer<Int32>? v) {
  final _glGetnMapivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 query, Uint32 bufSize, Pointer<Int32>? v),
      void Function(int target, int query, int bufSize, Pointer<Int32>? v)>('glGetnMapivARB');
  return _glGetnMapivARB(target, query, bufSize, v);
}

/// ```c
/// GLAPI void APIENTRY glGetnPixelMapfvARB (GLenum map, GLsizei bufSize, GLfloat *values)
/// ```
void glGetnPixelMapfvARB(int map, int bufSize, Pointer<Float>? values) {
  final _glGetnPixelMapfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 map, Uint32 bufSize, Pointer<Float>? values),
      void Function(int map, int bufSize, Pointer<Float>? values)>('glGetnPixelMapfvARB');
  return _glGetnPixelMapfvARB(map, bufSize, values);
}

/// ```c
/// GLAPI void APIENTRY glGetnPixelMapuivARB (GLenum map, GLsizei bufSize, GLuint *values)
/// ```
void glGetnPixelMapuivARB(int map, int bufSize, Pointer<Uint32>? values) {
  final _glGetnPixelMapuivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 map, Uint32 bufSize, Pointer<Uint32>? values),
      void Function(int map, int bufSize, Pointer<Uint32>? values)>('glGetnPixelMapuivARB');
  return _glGetnPixelMapuivARB(map, bufSize, values);
}

/// ```c
/// GLAPI void APIENTRY glGetnPixelMapusvARB (GLenum map, GLsizei bufSize, GLushort *values)
/// ```
void glGetnPixelMapusvARB(int map, int bufSize, Pointer<Uint16>? values) {
  final _glGetnPixelMapusvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 map, Uint32 bufSize, Pointer<Uint16>? values),
      void Function(int map, int bufSize, Pointer<Uint16>? values)>('glGetnPixelMapusvARB');
  return _glGetnPixelMapusvARB(map, bufSize, values);
}

/// ```c
/// GLAPI void APIENTRY glGetnPolygonStippleARB (GLsizei bufSize, GLubyte *pattern)
/// ```
void glGetnPolygonStippleARB(int bufSize, Pointer<Uint8>? pattern) {
  final _glGetnPolygonStippleARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 bufSize, Pointer<Uint8>? pattern),
      void Function(int bufSize, Pointer<Uint8>? pattern)>('glGetnPolygonStippleARB');
  return _glGetnPolygonStippleARB(bufSize, pattern);
}

/// ```c
/// GLAPI void APIENTRY glGetnColorTableARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid *table)
/// ```
void glGetnColorTableARB(int target, int format, int type, int bufSize, Pointer<Void>? table) {
  final _glGetnColorTableARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Uint32 bufSize, Pointer<Void>? table),
      void Function(int target, int format, int type, int bufSize, Pointer<Void>? table)>('glGetnColorTableARB');
  return _glGetnColorTableARB(target, format, type, bufSize, table);
}

/// ```c
/// GLAPI void APIENTRY glGetnConvolutionFilterARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid *image)
/// ```
void glGetnConvolutionFilterARB(int target, int format, int type, int bufSize, Pointer<Void>? image) {
  final _glGetnConvolutionFilterARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Uint32 bufSize, Pointer<Void>? image),
      void Function(int target, int format, int type, int bufSize, Pointer<Void>? image)>('glGetnConvolutionFilterARB');
  return _glGetnConvolutionFilterARB(target, format, type, bufSize, image);
}

/// ```c
/// GLAPI void APIENTRY glGetnSeparableFilterARB (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, GLvoid *row, GLsizei columnBufSize, GLvoid *column, GLvoid *span)
/// ```
void glGetnSeparableFilterARB(int target, int format, int type, int rowBufSize, Pointer<Void>? row, int columnBufSize, Pointer<Void>? column, Pointer<Void>? span) {
  final _glGetnSeparableFilterARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Uint32 rowBufSize, Pointer<Void>? row, Uint32 columnBufSize, Pointer<Void>? column, Pointer<Void>? span),
      void Function(int target, int format, int type, int rowBufSize, Pointer<Void>? row, int columnBufSize, Pointer<Void>? column, Pointer<Void>? span)>('glGetnSeparableFilterARB');
  return _glGetnSeparableFilterARB(target, format, type, rowBufSize, row, columnBufSize, column, span);
}

/// ```c
/// GLAPI void APIENTRY glGetnHistogramARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid *values)
/// ```
void glGetnHistogramARB(int target, int reset, int format, int type, int bufSize, Pointer<Void>? values) {
  final _glGetnHistogramARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 reset, Uint32 format, Uint32 type, Uint32 bufSize, Pointer<Void>? values),
      void Function(int target, int reset, int format, int type, int bufSize, Pointer<Void>? values)>('glGetnHistogramARB');
  return _glGetnHistogramARB(target, reset, format, type, bufSize, values);
}

/// ```c
/// GLAPI void APIENTRY glGetnMinmaxARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid *values)
/// ```
void glGetnMinmaxARB(int target, int reset, int format, int type, int bufSize, Pointer<Void>? values) {
  final _glGetnMinmaxARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 reset, Uint32 format, Uint32 type, Uint32 bufSize, Pointer<Void>? values),
      void Function(int target, int reset, int format, int type, int bufSize, Pointer<Void>? values)>('glGetnMinmaxARB');
  return _glGetnMinmaxARB(target, reset, format, type, bufSize, values);
}

/// ```c
/// GLAPI void APIENTRY glGetnTexImageARB (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid *img)
/// ```
void glGetnTexImageARB(int target, int level, int format, int type, int bufSize, Pointer<Void>? img) {
  final _glGetnTexImageARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 format, Uint32 type, Uint32 bufSize, Pointer<Void>? img),
      void Function(int target, int level, int format, int type, int bufSize, Pointer<Void>? img)>('glGetnTexImageARB');
  return _glGetnTexImageARB(target, level, format, type, bufSize, img);
}

/// ```c
/// GLAPI void APIENTRY glReadnPixelsARB (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid *data)
/// ```
void glReadnPixelsARB(int x, int y, int width, int height, int format, int type, int bufSize, Pointer<Void>? data) {
  final _glReadnPixelsARB = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Uint32 bufSize, Pointer<Void>? data),
      void Function(int x, int y, int width, int height, int format, int type, int bufSize, Pointer<Void>? data)>('glReadnPixelsARB');
  return _glReadnPixelsARB(x, y, width, height, format, type, bufSize, data);
}

/// ```c
/// GLAPI void APIENTRY glGetnCompressedTexImageARB (GLenum target, GLint lod, GLsizei bufSize, GLvoid *img)
/// ```
void glGetnCompressedTexImageARB(int target, int lod, int bufSize, Pointer<Void>? img) {
  final _glGetnCompressedTexImageARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 lod, Uint32 bufSize, Pointer<Void>? img),
      void Function(int target, int lod, int bufSize, Pointer<Void>? img)>('glGetnCompressedTexImageARB');
  return _glGetnCompressedTexImageARB(target, lod, bufSize, img);
}

/// ```c
/// GLAPI void APIENTRY glGetnUniformfvARB (GLuint program, GLint location, GLsizei bufSize, GLfloat *params)
/// ```
void glGetnUniformfvARB(int program, int location, int bufSize, Pointer<Float>? params) {
  final _glGetnUniformfvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 bufSize, Pointer<Float>? params),
      void Function(int program, int location, int bufSize, Pointer<Float>? params)>('glGetnUniformfvARB');
  return _glGetnUniformfvARB(program, location, bufSize, params);
}

/// ```c
/// GLAPI void APIENTRY glGetnUniformivARB (GLuint program, GLint location, GLsizei bufSize, GLint *params)
/// ```
void glGetnUniformivARB(int program, int location, int bufSize, Pointer<Int32>? params) {
  final _glGetnUniformivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 bufSize, Pointer<Int32>? params),
      void Function(int program, int location, int bufSize, Pointer<Int32>? params)>('glGetnUniformivARB');
  return _glGetnUniformivARB(program, location, bufSize, params);
}

/// ```c
/// GLAPI void APIENTRY glGetnUniformuivARB (GLuint program, GLint location, GLsizei bufSize, GLuint *params)
/// ```
void glGetnUniformuivARB(int program, int location, int bufSize, Pointer<Uint32>? params) {
  final _glGetnUniformuivARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 bufSize, Pointer<Uint32>? params),
      void Function(int program, int location, int bufSize, Pointer<Uint32>? params)>('glGetnUniformuivARB');
  return _glGetnUniformuivARB(program, location, bufSize, params);
}

/// ```c
/// GLAPI void APIENTRY glGetnUniformdvARB (GLuint program, GLint location, GLsizei bufSize, GLdouble *params)
/// ```
void glGetnUniformdvARB(int program, int location, int bufSize, Pointer<Double>? params) {
  final _glGetnUniformdvARB = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 bufSize, Pointer<Double>? params),
      void Function(int program, int location, int bufSize, Pointer<Double>? params)>('glGetnUniformdvARB');
  return _glGetnUniformdvARB(program, location, bufSize, params);
}

/// ```c
/// GLAPI void APIENTRY glBlendColorEXT (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
/// ```
void glBlendColorEXT(double red, double green, double blue, double alpha) {
  final _glBlendColorEXT = DLL_SDL2.lookupFunction<
      Void Function(Float red, Float green, Float blue, Float alpha),
      void Function(double red, double green, double blue, double alpha)>('glBlendColorEXT');
  return _glBlendColorEXT(red, green, blue, alpha);
}

/// ```c
/// GLAPI void APIENTRY glPolygonOffsetEXT (GLfloat factor, GLfloat bias)
/// ```
void glPolygonOffsetEXT(double factor, double bias) {
  final _glPolygonOffsetEXT = DLL_SDL2.lookupFunction<
      Void Function(Float factor, Float bias),
      void Function(double factor, double bias)>('glPolygonOffsetEXT');
  return _glPolygonOffsetEXT(factor, bias);
}

/// ```c
/// GLAPI void APIENTRY glTexImage3DEXT (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexImage3DEXT(int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels) {
  final _glTexImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels)>('glTexImage3DEXT');
  return _glTexImage3DEXT(target, level, internalformat, width, height, depth, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexSubImage3DEXT(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels) {
  final _glTexSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels)>('glTexSubImage3DEXT');
  return _glTexSubImage3DEXT(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glGetTexFilterFuncSGIS (GLenum target, GLenum filter, GLfloat *weights)
/// ```
void glGetTexFilterFuncSGIS(int target, int filter, Pointer<Float>? weights) {
  final _glGetTexFilterFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 filter, Pointer<Float>? weights),
      void Function(int target, int filter, Pointer<Float>? weights)>('glGetTexFilterFuncSGIS');
  return _glGetTexFilterFuncSGIS(target, filter, weights);
}

/// ```c
/// GLAPI void APIENTRY glTexFilterFuncSGIS (GLenum target, GLenum filter, GLsizei n, const GLfloat *weights)
/// ```
void glTexFilterFuncSGIS(int target, int filter, int n, Pointer<Float>? weights) {
  final _glTexFilterFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 filter, Uint32 n, Pointer<Float>? weights),
      void Function(int target, int filter, int n, Pointer<Float>? weights)>('glTexFilterFuncSGIS');
  return _glTexFilterFuncSGIS(target, filter, n, weights);
}

/// ```c
/// GLAPI void APIENTRY glTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexSubImage1DEXT(int target, int level, int xoffset, int width, int format, int type, Pointer<Void>? pixels) {
  final _glTexSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int xoffset, int width, int format, int type, Pointer<Void>? pixels)>('glTexSubImage1DEXT');
  return _glTexSubImage1DEXT(target, level, xoffset, width, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexSubImage2DEXT(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Pointer<Void>? pixels) {
  final _glTexSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Pointer<Void>? pixels)>('glTexSubImage2DEXT');
  return _glTexSubImage2DEXT(target, level, xoffset, yoffset, width, height, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glCopyTexImage1DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
/// ```
void glCopyTexImage1DEXT(int target, int level, int internalformat, int x, int y, int width, int border) {
  final _glCopyTexImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Int32 border),
      void Function(int target, int level, int internalformat, int x, int y, int width, int border)>('glCopyTexImage1DEXT');
  return _glCopyTexImage1DEXT(target, level, internalformat, x, y, width, border);
}

/// ```c
/// GLAPI void APIENTRY glCopyTexImage2DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
/// ```
void glCopyTexImage2DEXT(int target, int level, int internalformat, int x, int y, int width, int height, int border) {
  final _glCopyTexImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Uint32 height, Int32 border),
      void Function(int target, int level, int internalformat, int x, int y, int width, int height, int border)>('glCopyTexImage2DEXT');
  return _glCopyTexImage2DEXT(target, level, internalformat, x, y, width, height, border);
}

/// ```c
/// GLAPI void APIENTRY glCopyTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
/// ```
void glCopyTexSubImage1DEXT(int target, int level, int xoffset, int x, int y, int width) {
  final _glCopyTexSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int level, int xoffset, int x, int y, int width)>('glCopyTexSubImage1DEXT');
  return _glCopyTexSubImage1DEXT(target, level, xoffset, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glCopyTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyTexSubImage2DEXT(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
  final _glCopyTexSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)>('glCopyTexSubImage2DEXT');
  return _glCopyTexSubImage2DEXT(target, level, xoffset, yoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glCopyTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyTexSubImage3DEXT(int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height) {
  final _glCopyTexSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)>('glCopyTexSubImage3DEXT');
  return _glCopyTexSubImage3DEXT(target, level, xoffset, yoffset, zoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetHistogramEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)
/// ```
void glGetHistogramEXT(int target, int reset, int format, int type, Pointer<Void>? values) {
  final _glGetHistogramEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 reset, Uint32 format, Uint32 type, Pointer<Void>? values),
      void Function(int target, int reset, int format, int type, Pointer<Void>? values)>('glGetHistogramEXT');
  return _glGetHistogramEXT(target, reset, format, type, values);
}

/// ```c
/// GLAPI void APIENTRY glGetHistogramParameterfvEXT (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetHistogramParameterfvEXT(int target, int pname, Pointer<Float>? params) {
  final _glGetHistogramParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetHistogramParameterfvEXT');
  return _glGetHistogramParameterfvEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetHistogramParameterivEXT (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetHistogramParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glGetHistogramParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetHistogramParameterivEXT');
  return _glGetHistogramParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMinmaxEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)
/// ```
void glGetMinmaxEXT(int target, int reset, int format, int type, Pointer<Void>? values) {
  final _glGetMinmaxEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 reset, Uint32 format, Uint32 type, Pointer<Void>? values),
      void Function(int target, int reset, int format, int type, Pointer<Void>? values)>('glGetMinmaxEXT');
  return _glGetMinmaxEXT(target, reset, format, type, values);
}

/// ```c
/// GLAPI void APIENTRY glGetMinmaxParameterfvEXT (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetMinmaxParameterfvEXT(int target, int pname, Pointer<Float>? params) {
  final _glGetMinmaxParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetMinmaxParameterfvEXT');
  return _glGetMinmaxParameterfvEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMinmaxParameterivEXT (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetMinmaxParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glGetMinmaxParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetMinmaxParameterivEXT');
  return _glGetMinmaxParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glHistogramEXT (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)
/// ```
void glHistogramEXT(int target, int width, int internalformat, int sink) {
  final _glHistogramEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 width, Uint32 internalformat, Int32 sink),
      void Function(int target, int width, int internalformat, int sink)>('glHistogramEXT');
  return _glHistogramEXT(target, width, internalformat, sink);
}

/// ```c
/// GLAPI void APIENTRY glMinmaxEXT (GLenum target, GLenum internalformat, GLboolean sink)
/// ```
void glMinmaxEXT(int target, int internalformat, int sink) {
  final _glMinmaxEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 sink),
      void Function(int target, int internalformat, int sink)>('glMinmaxEXT');
  return _glMinmaxEXT(target, internalformat, sink);
}

/// ```c
/// GLAPI void APIENTRY glResetHistogramEXT (GLenum target)
/// ```
void glResetHistogramEXT(int target) {
  final _glResetHistogramEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glResetHistogramEXT');
  return _glResetHistogramEXT(target);
}

/// ```c
/// GLAPI void APIENTRY glResetMinmaxEXT (GLenum target)
/// ```
void glResetMinmaxEXT(int target) {
  final _glResetMinmaxEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glResetMinmaxEXT');
  return _glResetMinmaxEXT(target);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image)
/// ```
void glConvolutionFilter1DEXT(int target, int internalformat, int width, int format, int type, Pointer<Void>? image) {
  final _glConvolutionFilter1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? image),
      void Function(int target, int internalformat, int width, int format, int type, Pointer<Void>? image)>('glConvolutionFilter1DEXT');
  return _glConvolutionFilter1DEXT(target, internalformat, width, format, type, image);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image)
/// ```
void glConvolutionFilter2DEXT(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? image) {
  final _glConvolutionFilter2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? image),
      void Function(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? image)>('glConvolutionFilter2DEXT');
  return _glConvolutionFilter2DEXT(target, internalformat, width, height, format, type, image);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameterfEXT (GLenum target, GLenum pname, GLfloat params)
/// ```
void glConvolutionParameterfEXT(int target, int pname, double params) {
  final _glConvolutionParameterfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Float params),
      void Function(int target, int pname, double params)>('glConvolutionParameterfEXT');
  return _glConvolutionParameterfEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameterfvEXT (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glConvolutionParameterfvEXT(int target, int pname, Pointer<Float>? params) {
  final _glConvolutionParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glConvolutionParameterfvEXT');
  return _glConvolutionParameterfvEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameteriEXT (GLenum target, GLenum pname, GLint params)
/// ```
void glConvolutionParameteriEXT(int target, int pname, int params) {
  final _glConvolutionParameteriEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Int32 params),
      void Function(int target, int pname, int params)>('glConvolutionParameteriEXT');
  return _glConvolutionParameteriEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glConvolutionParameterivEXT (GLenum target, GLenum pname, const GLint *params)
/// ```
void glConvolutionParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glConvolutionParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glConvolutionParameterivEXT');
  return _glConvolutionParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCopyConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
/// ```
void glCopyConvolutionFilter1DEXT(int target, int internalformat, int x, int y, int width) {
  final _glCopyConvolutionFilter1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int internalformat, int x, int y, int width)>('glCopyConvolutionFilter1DEXT');
  return _glCopyConvolutionFilter1DEXT(target, internalformat, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glCopyConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyConvolutionFilter2DEXT(int target, int internalformat, int x, int y, int width, int height) {
  final _glCopyConvolutionFilter2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int target, int internalformat, int x, int y, int width, int height)>('glCopyConvolutionFilter2DEXT');
  return _glCopyConvolutionFilter2DEXT(target, internalformat, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetConvolutionFilterEXT (GLenum target, GLenum format, GLenum type, GLvoid *image)
/// ```
void glGetConvolutionFilterEXT(int target, int format, int type, Pointer<Void>? image) {
  final _glGetConvolutionFilterEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? image),
      void Function(int target, int format, int type, Pointer<Void>? image)>('glGetConvolutionFilterEXT');
  return _glGetConvolutionFilterEXT(target, format, type, image);
}

/// ```c
/// GLAPI void APIENTRY glGetConvolutionParameterfvEXT (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetConvolutionParameterfvEXT(int target, int pname, Pointer<Float>? params) {
  final _glGetConvolutionParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetConvolutionParameterfvEXT');
  return _glGetConvolutionParameterfvEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetConvolutionParameterivEXT (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetConvolutionParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glGetConvolutionParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetConvolutionParameterivEXT');
  return _glGetConvolutionParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetSeparableFilterEXT (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span)
/// ```
void glGetSeparableFilterEXT(int target, int format, int type, Pointer<Void>? row, Pointer<Void>? column, Pointer<Void>? span) {
  final _glGetSeparableFilterEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? row, Pointer<Void>? column, Pointer<Void>? span),
      void Function(int target, int format, int type, Pointer<Void>? row, Pointer<Void>? column, Pointer<Void>? span)>('glGetSeparableFilterEXT');
  return _glGetSeparableFilterEXT(target, format, type, row, column, span);
}

/// ```c
/// GLAPI void APIENTRY glSeparableFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column)
/// ```
void glSeparableFilter2DEXT(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? row, Pointer<Void>? column) {
  final _glSeparableFilter2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? row, Pointer<Void>? column),
      void Function(int target, int internalformat, int width, int height, int format, int type, Pointer<Void>? row, Pointer<Void>? column)>('glSeparableFilter2DEXT');
  return _glSeparableFilter2DEXT(target, internalformat, width, height, format, type, row, column);
}

/// ```c
/// GLAPI void APIENTRY glColorTableSGI (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table)
/// ```
void glColorTableSGI(int target, int internalformat, int width, int format, int type, Pointer<Void>? table) {
  final _glColorTableSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? table),
      void Function(int target, int internalformat, int width, int format, int type, Pointer<Void>? table)>('glColorTableSGI');
  return _glColorTableSGI(target, internalformat, width, format, type, table);
}

/// ```c
/// GLAPI void APIENTRY glColorTableParameterfvSGI (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glColorTableParameterfvSGI(int target, int pname, Pointer<Float>? params) {
  final _glColorTableParameterfvSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glColorTableParameterfvSGI');
  return _glColorTableParameterfvSGI(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glColorTableParameterivSGI (GLenum target, GLenum pname, const GLint *params)
/// ```
void glColorTableParameterivSGI(int target, int pname, Pointer<Int32>? params) {
  final _glColorTableParameterivSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glColorTableParameterivSGI');
  return _glColorTableParameterivSGI(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCopyColorTableSGI (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
/// ```
void glCopyColorTableSGI(int target, int internalformat, int x, int y, int width) {
  final _glCopyColorTableSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int internalformat, int x, int y, int width)>('glCopyColorTableSGI');
  return _glCopyColorTableSGI(target, internalformat, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableSGI (GLenum target, GLenum format, GLenum type, GLvoid *table)
/// ```
void glGetColorTableSGI(int target, int format, int type, Pointer<Void>? table) {
  final _glGetColorTableSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? table),
      void Function(int target, int format, int type, Pointer<Void>? table)>('glGetColorTableSGI');
  return _glGetColorTableSGI(target, format, type, table);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableParameterfvSGI (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetColorTableParameterfvSGI(int target, int pname, Pointer<Float>? params) {
  final _glGetColorTableParameterfvSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetColorTableParameterfvSGI');
  return _glGetColorTableParameterfvSGI(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableParameterivSGI (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetColorTableParameterivSGI(int target, int pname, Pointer<Int32>? params) {
  final _glGetColorTableParameterivSGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetColorTableParameterivSGI');
  return _glGetColorTableParameterivSGI(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPixelTexGenSGIX (GLenum mode)
/// ```
void glPixelTexGenSGIX(int mode) {
  final _glPixelTexGenSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glPixelTexGenSGIX');
  return _glPixelTexGenSGIX(mode);
}

/// ```c
/// GLAPI void APIENTRY glPixelTexGenParameteriSGIS (GLenum pname, GLint param)
/// ```
void glPixelTexGenParameteriSGIS(int pname, int param) {
  final _glPixelTexGenParameteriSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glPixelTexGenParameteriSGIS');
  return _glPixelTexGenParameteriSGIS(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPixelTexGenParameterivSGIS (GLenum pname, const GLint *params)
/// ```
void glPixelTexGenParameterivSGIS(int pname, Pointer<Int32>? params) {
  final _glPixelTexGenParameterivSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glPixelTexGenParameterivSGIS');
  return _glPixelTexGenParameterivSGIS(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPixelTexGenParameterfSGIS (GLenum pname, GLfloat param)
/// ```
void glPixelTexGenParameterfSGIS(int pname, double param) {
  final _glPixelTexGenParameterfSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glPixelTexGenParameterfSGIS');
  return _glPixelTexGenParameterfSGIS(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPixelTexGenParameterfvSGIS (GLenum pname, const GLfloat *params)
/// ```
void glPixelTexGenParameterfvSGIS(int pname, Pointer<Float>? params) {
  final _glPixelTexGenParameterfvSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glPixelTexGenParameterfvSGIS');
  return _glPixelTexGenParameterfvSGIS(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetPixelTexGenParameterivSGIS (GLenum pname, GLint *params)
/// ```
void glGetPixelTexGenParameterivSGIS(int pname, Pointer<Int32>? params) {
  final _glGetPixelTexGenParameterivSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glGetPixelTexGenParameterivSGIS');
  return _glGetPixelTexGenParameterivSGIS(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetPixelTexGenParameterfvSGIS (GLenum pname, GLfloat *params)
/// ```
void glGetPixelTexGenParameterfvSGIS(int pname, Pointer<Float>? params) {
  final _glGetPixelTexGenParameterfvSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glGetPixelTexGenParameterfvSGIS');
  return _glGetPixelTexGenParameterfvSGIS(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTexImage4DSGIS (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexImage4DSGIS(int target, int level, int internalformat, int width, int height, int depth, int size4d, int border, int format, int type, Pointer<Void>? pixels) {
  final _glTexImage4DSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Uint32 size4d, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int internalformat, int width, int height, int depth, int size4d, int border, int format, int type, Pointer<Void>? pixels)>('glTexImage4DSGIS');
  return _glTexImage4DSGIS(target, level, internalformat, width, height, depth, size4d, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTexSubImage4DSGIS (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTexSubImage4DSGIS(int target, int level, int xoffset, int yoffset, int zoffset, int woffset, int width, int height, int depth, int size4d, int format, int type, Pointer<Void>? pixels) {
  final _glTexSubImage4DSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Int32 woffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 size4d, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int target, int level, int xoffset, int yoffset, int zoffset, int woffset, int width, int height, int depth, int size4d, int format, int type, Pointer<Void>? pixels)>('glTexSubImage4DSGIS');
  return _glTexSubImage4DSGIS(target, level, xoffset, yoffset, zoffset, woffset, width, height, depth, size4d, format, type, pixels);
}

/// ```c
/// GLAPI GLboolean APIENTRY glAreTexturesResidentEXT (GLsizei n, const GLuint *textures, GLboolean *residences)
/// ```
int glAreTexturesResidentEXT(int n, Pointer<Uint32>? textures, Pointer<Int32>? residences) {
  final _glAreTexturesResidentEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 n, Pointer<Uint32>? textures, Pointer<Int32>? residences),
      int Function(int n, Pointer<Uint32>? textures, Pointer<Int32>? residences)>('glAreTexturesResidentEXT');
  return _glAreTexturesResidentEXT(n, textures, residences);
}

/// ```c
/// GLAPI void APIENTRY glBindTextureEXT (GLenum target, GLuint texture)
/// ```
void glBindTextureEXT(int target, int texture) {
  final _glBindTextureEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 texture),
      void Function(int target, int texture)>('glBindTextureEXT');
  return _glBindTextureEXT(target, texture);
}

/// ```c
/// GLAPI void APIENTRY glDeleteTexturesEXT (GLsizei n, const GLuint *textures)
/// ```
void glDeleteTexturesEXT(int n, Pointer<Uint32>? textures) {
  final _glDeleteTexturesEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? textures),
      void Function(int n, Pointer<Uint32>? textures)>('glDeleteTexturesEXT');
  return _glDeleteTexturesEXT(n, textures);
}

/// ```c
/// GLAPI void APIENTRY glGenTexturesEXT (GLsizei n, GLuint *textures)
/// ```
void glGenTexturesEXT(int n, Pointer<Uint32>? textures) {
  final _glGenTexturesEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? textures),
      void Function(int n, Pointer<Uint32>? textures)>('glGenTexturesEXT');
  return _glGenTexturesEXT(n, textures);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsTextureEXT (GLuint texture)
/// ```
int glIsTextureEXT(int texture) {
  final _glIsTextureEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 texture),
      int Function(int texture)>('glIsTextureEXT');
  return _glIsTextureEXT(texture);
}

/// ```c
/// GLAPI void APIENTRY glPrioritizeTexturesEXT (GLsizei n, const GLuint *textures, const GLclampf *priorities)
/// ```
void glPrioritizeTexturesEXT(int n, Pointer<Uint32>? textures, Pointer<Float>? priorities) {
  final _glPrioritizeTexturesEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? textures, Pointer<Float>? priorities),
      void Function(int n, Pointer<Uint32>? textures, Pointer<Float>? priorities)>('glPrioritizeTexturesEXT');
  return _glPrioritizeTexturesEXT(n, textures, priorities);
}

/// ```c
/// GLAPI void APIENTRY glDetailTexFuncSGIS (GLenum target, GLsizei n, const GLfloat *points)
/// ```
void glDetailTexFuncSGIS(int target, int n, Pointer<Float>? points) {
  final _glDetailTexFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 n, Pointer<Float>? points),
      void Function(int target, int n, Pointer<Float>? points)>('glDetailTexFuncSGIS');
  return _glDetailTexFuncSGIS(target, n, points);
}

/// ```c
/// GLAPI void APIENTRY glGetDetailTexFuncSGIS (GLenum target, GLfloat *points)
/// ```
void glGetDetailTexFuncSGIS(int target, Pointer<Float>? points) {
  final _glGetDetailTexFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? points),
      void Function(int target, Pointer<Float>? points)>('glGetDetailTexFuncSGIS');
  return _glGetDetailTexFuncSGIS(target, points);
}

/// ```c
/// GLAPI void APIENTRY glSharpenTexFuncSGIS (GLenum target, GLsizei n, const GLfloat *points)
/// ```
void glSharpenTexFuncSGIS(int target, int n, Pointer<Float>? points) {
  final _glSharpenTexFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 n, Pointer<Float>? points),
      void Function(int target, int n, Pointer<Float>? points)>('glSharpenTexFuncSGIS');
  return _glSharpenTexFuncSGIS(target, n, points);
}

/// ```c
/// GLAPI void APIENTRY glGetSharpenTexFuncSGIS (GLenum target, GLfloat *points)
/// ```
void glGetSharpenTexFuncSGIS(int target, Pointer<Float>? points) {
  final _glGetSharpenTexFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Float>? points),
      void Function(int target, Pointer<Float>? points)>('glGetSharpenTexFuncSGIS');
  return _glGetSharpenTexFuncSGIS(target, points);
}

/// ```c
/// GLAPI void APIENTRY glSampleMaskSGIS (GLclampf value, GLboolean invert)
/// ```
void glSampleMaskSGIS(double value, int invert) {
  final _glSampleMaskSGIS = DLL_SDL2.lookupFunction<
      Void Function(Float value, Int32 invert),
      void Function(double value, int invert)>('glSampleMaskSGIS');
  return _glSampleMaskSGIS(value, invert);
}

/// ```c
/// GLAPI void APIENTRY glSamplePatternSGIS (GLenum pattern)
/// ```
void glSamplePatternSGIS(int pattern) {
  final _glSamplePatternSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pattern),
      void Function(int pattern)>('glSamplePatternSGIS');
  return _glSamplePatternSGIS(pattern);
}

/// ```c
/// GLAPI void APIENTRY glArrayElementEXT (GLint i)
/// ```
void glArrayElementEXT(int i) {
  final _glArrayElementEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 i),
      void Function(int i)>('glArrayElementEXT');
  return _glArrayElementEXT(i);
}

/// ```c
/// GLAPI void APIENTRY glColorPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer)
/// ```
void glColorPointerEXT(int size, int type, int stride, int count, Pointer<Void>? pointer) {
  final _glColorPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Uint32 count, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, int count, Pointer<Void>? pointer)>('glColorPointerEXT');
  return _glColorPointerEXT(size, type, stride, count, pointer);
}

/// ```c
/// GLAPI void APIENTRY glDrawArraysEXT (GLenum mode, GLint first, GLsizei count)
/// ```
void glDrawArraysEXT(int mode, int first, int count) {
  final _glDrawArraysEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Int32 first, Uint32 count),
      void Function(int mode, int first, int count)>('glDrawArraysEXT');
  return _glDrawArraysEXT(mode, first, count);
}

/// ```c
/// GLAPI void APIENTRY glEdgeFlagPointerEXT (GLsizei stride, GLsizei count, const GLboolean *pointer)
/// ```
void glEdgeFlagPointerEXT(int stride, int count, Pointer<Int32>? pointer) {
  final _glEdgeFlagPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stride, Uint32 count, Pointer<Int32>? pointer),
      void Function(int stride, int count, Pointer<Int32>? pointer)>('glEdgeFlagPointerEXT');
  return _glEdgeFlagPointerEXT(stride, count, pointer);
}

/// ```c
/// GLAPI void APIENTRY glGetPointervEXT (GLenum pname, GLvoid* *params)
/// ```
void glGetPointervEXT(int pname, Pointer<Pointer<Void>>? params) {
  final _glGetPointervEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Pointer<Void>>? params),
      void Function(int pname, Pointer<Pointer<Void>>? params)>('glGetPointervEXT');
  return _glGetPointervEXT(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glIndexPointerEXT (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer)
/// ```
void glIndexPointerEXT(int type, int stride, int count, Pointer<Void>? pointer) {
  final _glIndexPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Uint32 count, Pointer<Void>? pointer),
      void Function(int type, int stride, int count, Pointer<Void>? pointer)>('glIndexPointerEXT');
  return _glIndexPointerEXT(type, stride, count, pointer);
}

/// ```c
/// GLAPI void APIENTRY glNormalPointerEXT (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer)
/// ```
void glNormalPointerEXT(int type, int stride, int count, Pointer<Void>? pointer) {
  final _glNormalPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Uint32 count, Pointer<Void>? pointer),
      void Function(int type, int stride, int count, Pointer<Void>? pointer)>('glNormalPointerEXT');
  return _glNormalPointerEXT(type, stride, count, pointer);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer)
/// ```
void glTexCoordPointerEXT(int size, int type, int stride, int count, Pointer<Void>? pointer) {
  final _glTexCoordPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Uint32 count, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, int count, Pointer<Void>? pointer)>('glTexCoordPointerEXT');
  return _glTexCoordPointerEXT(size, type, stride, count, pointer);
}

/// ```c
/// GLAPI void APIENTRY glVertexPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer)
/// ```
void glVertexPointerEXT(int size, int type, int stride, int count, Pointer<Void>? pointer) {
  final _glVertexPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Uint32 count, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, int count, Pointer<Void>? pointer)>('glVertexPointerEXT');
  return _glVertexPointerEXT(size, type, stride, count, pointer);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationEXT (GLenum mode)
/// ```
void glBlendEquationEXT(int mode) {
  final _glBlendEquationEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glBlendEquationEXT');
  return _glBlendEquationEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glSpriteParameterfSGIX (GLenum pname, GLfloat param)
/// ```
void glSpriteParameterfSGIX(int pname, double param) {
  final _glSpriteParameterfSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glSpriteParameterfSGIX');
  return _glSpriteParameterfSGIX(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSpriteParameterfvSGIX (GLenum pname, const GLfloat *params)
/// ```
void glSpriteParameterfvSGIX(int pname, Pointer<Float>? params) {
  final _glSpriteParameterfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glSpriteParameterfvSGIX');
  return _glSpriteParameterfvSGIX(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glSpriteParameteriSGIX (GLenum pname, GLint param)
/// ```
void glSpriteParameteriSGIX(int pname, int param) {
  final _glSpriteParameteriSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glSpriteParameteriSGIX');
  return _glSpriteParameteriSGIX(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glSpriteParameterivSGIX (GLenum pname, const GLint *params)
/// ```
void glSpriteParameterivSGIX(int pname, Pointer<Int32>? params) {
  final _glSpriteParameterivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glSpriteParameterivSGIX');
  return _glSpriteParameterivSGIX(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfEXT (GLenum pname, GLfloat param)
/// ```
void glPointParameterfEXT(int pname, double param) {
  final _glPointParameterfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glPointParameterfEXT');
  return _glPointParameterfEXT(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfvEXT (GLenum pname, const GLfloat *params)
/// ```
void glPointParameterfvEXT(int pname, Pointer<Float>? params) {
  final _glPointParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glPointParameterfvEXT');
  return _glPointParameterfvEXT(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfSGIS (GLenum pname, GLfloat param)
/// ```
void glPointParameterfSGIS(int pname, double param) {
  final _glPointParameterfSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glPointParameterfSGIS');
  return _glPointParameterfSGIS(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterfvSGIS (GLenum pname, const GLfloat *params)
/// ```
void glPointParameterfvSGIS(int pname, Pointer<Float>? params) {
  final _glPointParameterfvSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glPointParameterfvSGIS');
  return _glPointParameterfvSGIS(pname, params);
}

/// ```c
/// GLAPI GLint APIENTRY glGetInstrumentsSGIX (void)
/// ```
int glGetInstrumentsSGIX() {
  final _glGetInstrumentsSGIX = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('glGetInstrumentsSGIX');
  return _glGetInstrumentsSGIX();
}

/// ```c
/// GLAPI void APIENTRY glInstrumentsBufferSGIX (GLsizei size, GLint *buffer)
/// ```
void glInstrumentsBufferSGIX(int size, Pointer<Int32>? buffer) {
  final _glInstrumentsBufferSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 size, Pointer<Int32>? buffer),
      void Function(int size, Pointer<Int32>? buffer)>('glInstrumentsBufferSGIX');
  return _glInstrumentsBufferSGIX(size, buffer);
}

/// ```c
/// GLAPI GLint APIENTRY glPollInstrumentsSGIX (GLint *marker_p)
/// ```
int glPollInstrumentsSGIX(Pointer<Int32>? marker_p) {
  final _glPollInstrumentsSGIX = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int32>? marker_p),
      int Function(Pointer<Int32>? marker_p)>('glPollInstrumentsSGIX');
  return _glPollInstrumentsSGIX(marker_p);
}

/// ```c
/// GLAPI void APIENTRY glReadInstrumentsSGIX (GLint marker)
/// ```
void glReadInstrumentsSGIX(int marker) {
  final _glReadInstrumentsSGIX = DLL_SDL2.lookupFunction<
      Void Function(Int32 marker),
      void Function(int marker)>('glReadInstrumentsSGIX');
  return _glReadInstrumentsSGIX(marker);
}

/// ```c
/// GLAPI void APIENTRY glStartInstrumentsSGIX (void)
/// ```
void glStartInstrumentsSGIX() {
  final _glStartInstrumentsSGIX = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glStartInstrumentsSGIX');
  return _glStartInstrumentsSGIX();
}

/// ```c
/// GLAPI void APIENTRY glStopInstrumentsSGIX (GLint marker)
/// ```
void glStopInstrumentsSGIX(int marker) {
  final _glStopInstrumentsSGIX = DLL_SDL2.lookupFunction<
      Void Function(Int32 marker),
      void Function(int marker)>('glStopInstrumentsSGIX');
  return _glStopInstrumentsSGIX(marker);
}

/// ```c
/// GLAPI void APIENTRY glFrameZoomSGIX (GLint factor)
/// ```
void glFrameZoomSGIX(int factor) {
  final _glFrameZoomSGIX = DLL_SDL2.lookupFunction<
      Void Function(Int32 factor),
      void Function(int factor)>('glFrameZoomSGIX');
  return _glFrameZoomSGIX(factor);
}

/// ```c
/// GLAPI void APIENTRY glTagSampleBufferSGIX (void)
/// ```
void glTagSampleBufferSGIX() {
  final _glTagSampleBufferSGIX = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glTagSampleBufferSGIX');
  return _glTagSampleBufferSGIX();
}

/// ```c
/// GLAPI void APIENTRY glDeformationMap3dSGIX (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble *points)
/// ```
void glDeformationMap3dSGIX(int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, double w1, double w2, int wstride, int worder, Pointer<Double>? points) {
  final _glDeformationMap3dSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Double u1, Double u2, Int32 ustride, Int32 uorder, Double v1, Double v2, Int32 vstride, Int32 vorder, Double w1, Double w2, Int32 wstride, Int32 worder, Pointer<Double>? points),
      void Function(int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, double w1, double w2, int wstride, int worder, Pointer<Double>? points)>('glDeformationMap3dSGIX');
  return _glDeformationMap3dSGIX(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, w1, w2, wstride, worder, points);
}

/// ```c
/// GLAPI void APIENTRY glDeformationMap3fSGIX (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat *points)
/// ```
void glDeformationMap3fSGIX(int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, double w1, double w2, int wstride, int worder, Pointer<Float>? points) {
  final _glDeformationMap3fSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Float u1, Float u2, Int32 ustride, Int32 uorder, Float v1, Float v2, Int32 vstride, Int32 vorder, Float w1, Float w2, Int32 wstride, Int32 worder, Pointer<Float>? points),
      void Function(int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, double w1, double w2, int wstride, int worder, Pointer<Float>? points)>('glDeformationMap3fSGIX');
  return _glDeformationMap3fSGIX(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, w1, w2, wstride, worder, points);
}

/// ```c
/// GLAPI void APIENTRY glDeformSGIX (GLbitfield mask)
/// ```
void glDeformSGIX(int mask) {
  final _glDeformSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mask),
      void Function(int mask)>('glDeformSGIX');
  return _glDeformSGIX(mask);
}

/// ```c
/// GLAPI void APIENTRY glLoadIdentityDeformationMapSGIX (GLbitfield mask)
/// ```
void glLoadIdentityDeformationMapSGIX(int mask) {
  final _glLoadIdentityDeformationMapSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mask),
      void Function(int mask)>('glLoadIdentityDeformationMapSGIX');
  return _glLoadIdentityDeformationMapSGIX(mask);
}

/// ```c
/// GLAPI void APIENTRY glReferencePlaneSGIX (const GLdouble *equation)
/// ```
void glReferencePlaneSGIX(Pointer<Double>? equation) {
  final _glReferencePlaneSGIX = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? equation),
      void Function(Pointer<Double>? equation)>('glReferencePlaneSGIX');
  return _glReferencePlaneSGIX(equation);
}

/// ```c
/// GLAPI void APIENTRY glFlushRasterSGIX (void)
/// ```
void glFlushRasterSGIX() {
  final _glFlushRasterSGIX = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glFlushRasterSGIX');
  return _glFlushRasterSGIX();
}

/// ```c
/// GLAPI void APIENTRY glFogFuncSGIS (GLsizei n, const GLfloat *points)
/// ```
void glFogFuncSGIS(int n, Pointer<Float>? points) {
  final _glFogFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Float>? points),
      void Function(int n, Pointer<Float>? points)>('glFogFuncSGIS');
  return _glFogFuncSGIS(n, points);
}

/// ```c
/// GLAPI void APIENTRY glGetFogFuncSGIS (GLfloat *points)
/// ```
void glGetFogFuncSGIS(Pointer<Float>? points) {
  final _glGetFogFuncSGIS = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? points),
      void Function(Pointer<Float>? points)>('glGetFogFuncSGIS');
  return _glGetFogFuncSGIS(points);
}

/// ```c
/// GLAPI void APIENTRY glImageTransformParameteriHP (GLenum target, GLenum pname, GLint param)
/// ```
void glImageTransformParameteriHP(int target, int pname, int param) {
  final _glImageTransformParameteriHP = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Int32 param),
      void Function(int target, int pname, int param)>('glImageTransformParameteriHP');
  return _glImageTransformParameteriHP(target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glImageTransformParameterfHP (GLenum target, GLenum pname, GLfloat param)
/// ```
void glImageTransformParameterfHP(int target, int pname, double param) {
  final _glImageTransformParameterfHP = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Float param),
      void Function(int target, int pname, double param)>('glImageTransformParameterfHP');
  return _glImageTransformParameterfHP(target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glImageTransformParameterivHP (GLenum target, GLenum pname, const GLint *params)
/// ```
void glImageTransformParameterivHP(int target, int pname, Pointer<Int32>? params) {
  final _glImageTransformParameterivHP = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glImageTransformParameterivHP');
  return _glImageTransformParameterivHP(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glImageTransformParameterfvHP (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glImageTransformParameterfvHP(int target, int pname, Pointer<Float>? params) {
  final _glImageTransformParameterfvHP = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glImageTransformParameterfvHP');
  return _glImageTransformParameterfvHP(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetImageTransformParameterivHP (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetImageTransformParameterivHP(int target, int pname, Pointer<Int32>? params) {
  final _glGetImageTransformParameterivHP = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetImageTransformParameterivHP');
  return _glGetImageTransformParameterivHP(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetImageTransformParameterfvHP (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetImageTransformParameterfvHP(int target, int pname, Pointer<Float>? params) {
  final _glGetImageTransformParameterfvHP = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetImageTransformParameterfvHP');
  return _glGetImageTransformParameterfvHP(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glColorSubTableEXT (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data)
/// ```
void glColorSubTableEXT(int target, int start, int count, int format, int type, Pointer<Void>? data) {
  final _glColorSubTableEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 start, Uint32 count, Uint32 format, Uint32 type, Pointer<Void>? data),
      void Function(int target, int start, int count, int format, int type, Pointer<Void>? data)>('glColorSubTableEXT');
  return _glColorSubTableEXT(target, start, count, format, type, data);
}

/// ```c
/// GLAPI void APIENTRY glCopyColorSubTableEXT (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)
/// ```
void glCopyColorSubTableEXT(int target, int start, int x, int y, int width) {
  final _glCopyColorSubTableEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 start, Int32 x, Int32 y, Uint32 width),
      void Function(int target, int start, int x, int y, int width)>('glCopyColorSubTableEXT');
  return _glCopyColorSubTableEXT(target, start, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glHintPGI (GLenum target, GLint mode)
/// ```
void glHintPGI(int target, int mode) {
  final _glHintPGI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 mode),
      void Function(int target, int mode)>('glHintPGI');
  return _glHintPGI(target, mode);
}

/// ```c
/// GLAPI void APIENTRY glColorTableEXT (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid *table)
/// ```
void glColorTableEXT(int target, int internalFormat, int width, int format, int type, Pointer<Void>? table) {
  final _glColorTableEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalFormat, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? table),
      void Function(int target, int internalFormat, int width, int format, int type, Pointer<Void>? table)>('glColorTableEXT');
  return _glColorTableEXT(target, internalFormat, width, format, type, table);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableEXT (GLenum target, GLenum format, GLenum type, GLvoid *data)
/// ```
void glGetColorTableEXT(int target, int format, int type, Pointer<Void>? data) {
  final _glGetColorTableEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 format, Uint32 type, Pointer<Void>? data),
      void Function(int target, int format, int type, Pointer<Void>? data)>('glGetColorTableEXT');
  return _glGetColorTableEXT(target, format, type, data);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableParameterivEXT (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetColorTableParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glGetColorTableParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetColorTableParameterivEXT');
  return _glGetColorTableParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetColorTableParameterfvEXT (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetColorTableParameterfvEXT(int target, int pname, Pointer<Float>? params) {
  final _glGetColorTableParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetColorTableParameterfvEXT');
  return _glGetColorTableParameterfvEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetListParameterfvSGIX (GLuint list, GLenum pname, GLfloat *params)
/// ```
void glGetListParameterfvSGIX(int list, int pname, Pointer<Float>? params) {
  final _glGetListParameterfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 list, Uint32 pname, Pointer<Float>? params),
      void Function(int list, int pname, Pointer<Float>? params)>('glGetListParameterfvSGIX');
  return _glGetListParameterfvSGIX(list, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetListParameterivSGIX (GLuint list, GLenum pname, GLint *params)
/// ```
void glGetListParameterivSGIX(int list, int pname, Pointer<Int32>? params) {
  final _glGetListParameterivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 list, Uint32 pname, Pointer<Int32>? params),
      void Function(int list, int pname, Pointer<Int32>? params)>('glGetListParameterivSGIX');
  return _glGetListParameterivSGIX(list, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glListParameterfSGIX (GLuint list, GLenum pname, GLfloat param)
/// ```
void glListParameterfSGIX(int list, int pname, double param) {
  final _glListParameterfSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 list, Uint32 pname, Float param),
      void Function(int list, int pname, double param)>('glListParameterfSGIX');
  return _glListParameterfSGIX(list, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glListParameterfvSGIX (GLuint list, GLenum pname, const GLfloat *params)
/// ```
void glListParameterfvSGIX(int list, int pname, Pointer<Float>? params) {
  final _glListParameterfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 list, Uint32 pname, Pointer<Float>? params),
      void Function(int list, int pname, Pointer<Float>? params)>('glListParameterfvSGIX');
  return _glListParameterfvSGIX(list, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glListParameteriSGIX (GLuint list, GLenum pname, GLint param)
/// ```
void glListParameteriSGIX(int list, int pname, int param) {
  final _glListParameteriSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 list, Uint32 pname, Int32 param),
      void Function(int list, int pname, int param)>('glListParameteriSGIX');
  return _glListParameteriSGIX(list, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glListParameterivSGIX (GLuint list, GLenum pname, const GLint *params)
/// ```
void glListParameterivSGIX(int list, int pname, Pointer<Int32>? params) {
  final _glListParameterivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 list, Uint32 pname, Pointer<Int32>? params),
      void Function(int list, int pname, Pointer<Int32>? params)>('glListParameterivSGIX');
  return _glListParameterivSGIX(list, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glIndexMaterialEXT (GLenum face, GLenum mode)
/// ```
void glIndexMaterialEXT(int face, int mode) {
  final _glIndexMaterialEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 mode),
      void Function(int face, int mode)>('glIndexMaterialEXT');
  return _glIndexMaterialEXT(face, mode);
}

/// ```c
/// GLAPI void APIENTRY glIndexFuncEXT (GLenum func, GLclampf ref)
/// ```
void glIndexFuncEXT(int func, double ref) {
  final _glIndexFuncEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 func, Float ref),
      void Function(int func, double ref)>('glIndexFuncEXT');
  return _glIndexFuncEXT(func, ref);
}

/// ```c
/// GLAPI void APIENTRY glLockArraysEXT (GLint first, GLsizei count)
/// ```
void glLockArraysEXT(int first, int count) {
  final _glLockArraysEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 first, Uint32 count),
      void Function(int first, int count)>('glLockArraysEXT');
  return _glLockArraysEXT(first, count);
}

/// ```c
/// GLAPI void APIENTRY glUnlockArraysEXT (void)
/// ```
void glUnlockArraysEXT() {
  final _glUnlockArraysEXT = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glUnlockArraysEXT');
  return _glUnlockArraysEXT();
}

/// ```c
/// GLAPI void APIENTRY glCullParameterdvEXT (GLenum pname, GLdouble *params)
/// ```
void glCullParameterdvEXT(int pname, Pointer<Double>? params) {
  final _glCullParameterdvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Double>? params),
      void Function(int pname, Pointer<Double>? params)>('glCullParameterdvEXT');
  return _glCullParameterdvEXT(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCullParameterfvEXT (GLenum pname, GLfloat *params)
/// ```
void glCullParameterfvEXT(int pname, Pointer<Float>? params) {
  final _glCullParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glCullParameterfvEXT');
  return _glCullParameterfvEXT(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFragmentColorMaterialSGIX (GLenum face, GLenum mode)
/// ```
void glFragmentColorMaterialSGIX(int face, int mode) {
  final _glFragmentColorMaterialSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 mode),
      void Function(int face, int mode)>('glFragmentColorMaterialSGIX');
  return _glFragmentColorMaterialSGIX(face, mode);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightfSGIX (GLenum light, GLenum pname, GLfloat param)
/// ```
void glFragmentLightfSGIX(int light, int pname, double param) {
  final _glFragmentLightfSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 light, Uint32 pname, Float param),
      void Function(int light, int pname, double param)>('glFragmentLightfSGIX');
  return _glFragmentLightfSGIX(light, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightfvSGIX (GLenum light, GLenum pname, const GLfloat *params)
/// ```
void glFragmentLightfvSGIX(int light, int pname, Pointer<Float>? params) {
  final _glFragmentLightfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 light, Uint32 pname, Pointer<Float>? params),
      void Function(int light, int pname, Pointer<Float>? params)>('glFragmentLightfvSGIX');
  return _glFragmentLightfvSGIX(light, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightiSGIX (GLenum light, GLenum pname, GLint param)
/// ```
void glFragmentLightiSGIX(int light, int pname, int param) {
  final _glFragmentLightiSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 light, Uint32 pname, Int32 param),
      void Function(int light, int pname, int param)>('glFragmentLightiSGIX');
  return _glFragmentLightiSGIX(light, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightivSGIX (GLenum light, GLenum pname, const GLint *params)
/// ```
void glFragmentLightivSGIX(int light, int pname, Pointer<Int32>? params) {
  final _glFragmentLightivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 light, Uint32 pname, Pointer<Int32>? params),
      void Function(int light, int pname, Pointer<Int32>? params)>('glFragmentLightivSGIX');
  return _glFragmentLightivSGIX(light, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightModelfSGIX (GLenum pname, GLfloat param)
/// ```
void glFragmentLightModelfSGIX(int pname, double param) {
  final _glFragmentLightModelfSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glFragmentLightModelfSGIX');
  return _glFragmentLightModelfSGIX(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightModelfvSGIX (GLenum pname, const GLfloat *params)
/// ```
void glFragmentLightModelfvSGIX(int pname, Pointer<Float>? params) {
  final _glFragmentLightModelfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glFragmentLightModelfvSGIX');
  return _glFragmentLightModelfvSGIX(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightModeliSGIX (GLenum pname, GLint param)
/// ```
void glFragmentLightModeliSGIX(int pname, int param) {
  final _glFragmentLightModeliSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glFragmentLightModeliSGIX');
  return _glFragmentLightModeliSGIX(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFragmentLightModelivSGIX (GLenum pname, const GLint *params)
/// ```
void glFragmentLightModelivSGIX(int pname, Pointer<Int32>? params) {
  final _glFragmentLightModelivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glFragmentLightModelivSGIX');
  return _glFragmentLightModelivSGIX(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFragmentMaterialfSGIX (GLenum face, GLenum pname, GLfloat param)
/// ```
void glFragmentMaterialfSGIX(int face, int pname, double param) {
  final _glFragmentMaterialfSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 pname, Float param),
      void Function(int face, int pname, double param)>('glFragmentMaterialfSGIX');
  return _glFragmentMaterialfSGIX(face, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFragmentMaterialfvSGIX (GLenum face, GLenum pname, const GLfloat *params)
/// ```
void glFragmentMaterialfvSGIX(int face, int pname, Pointer<Float>? params) {
  final _glFragmentMaterialfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 pname, Pointer<Float>? params),
      void Function(int face, int pname, Pointer<Float>? params)>('glFragmentMaterialfvSGIX');
  return _glFragmentMaterialfvSGIX(face, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFragmentMaterialiSGIX (GLenum face, GLenum pname, GLint param)
/// ```
void glFragmentMaterialiSGIX(int face, int pname, int param) {
  final _glFragmentMaterialiSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 pname, Int32 param),
      void Function(int face, int pname, int param)>('glFragmentMaterialiSGIX');
  return _glFragmentMaterialiSGIX(face, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFragmentMaterialivSGIX (GLenum face, GLenum pname, const GLint *params)
/// ```
void glFragmentMaterialivSGIX(int face, int pname, Pointer<Int32>? params) {
  final _glFragmentMaterialivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 pname, Pointer<Int32>? params),
      void Function(int face, int pname, Pointer<Int32>? params)>('glFragmentMaterialivSGIX');
  return _glFragmentMaterialivSGIX(face, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFragmentLightfvSGIX (GLenum light, GLenum pname, GLfloat *params)
/// ```
void glGetFragmentLightfvSGIX(int light, int pname, Pointer<Float>? params) {
  final _glGetFragmentLightfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 light, Uint32 pname, Pointer<Float>? params),
      void Function(int light, int pname, Pointer<Float>? params)>('glGetFragmentLightfvSGIX');
  return _glGetFragmentLightfvSGIX(light, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFragmentLightivSGIX (GLenum light, GLenum pname, GLint *params)
/// ```
void glGetFragmentLightivSGIX(int light, int pname, Pointer<Int32>? params) {
  final _glGetFragmentLightivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 light, Uint32 pname, Pointer<Int32>? params),
      void Function(int light, int pname, Pointer<Int32>? params)>('glGetFragmentLightivSGIX');
  return _glGetFragmentLightivSGIX(light, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFragmentMaterialfvSGIX (GLenum face, GLenum pname, GLfloat *params)
/// ```
void glGetFragmentMaterialfvSGIX(int face, int pname, Pointer<Float>? params) {
  final _glGetFragmentMaterialfvSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 pname, Pointer<Float>? params),
      void Function(int face, int pname, Pointer<Float>? params)>('glGetFragmentMaterialfvSGIX');
  return _glGetFragmentMaterialfvSGIX(face, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFragmentMaterialivSGIX (GLenum face, GLenum pname, GLint *params)
/// ```
void glGetFragmentMaterialivSGIX(int face, int pname, Pointer<Int32>? params) {
  final _glGetFragmentMaterialivSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 pname, Pointer<Int32>? params),
      void Function(int face, int pname, Pointer<Int32>? params)>('glGetFragmentMaterialivSGIX');
  return _glGetFragmentMaterialivSGIX(face, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glLightEnviSGIX (GLenum pname, GLint param)
/// ```
void glLightEnviSGIX(int pname, int param) {
  final _glLightEnviSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glLightEnviSGIX');
  return _glLightEnviSGIX(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glDrawRangeElementsEXT (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices)
/// ```
void glDrawRangeElementsEXT(int mode, int start, int end, int count, int type, Pointer<Void>? indices) {
  final _glDrawRangeElementsEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 start, Uint32 end, Uint32 count, Uint32 type, Pointer<Void>? indices),
      void Function(int mode, int start, int end, int count, int type, Pointer<Void>? indices)>('glDrawRangeElementsEXT');
  return _glDrawRangeElementsEXT(mode, start, end, count, type, indices);
}

/// ```c
/// GLAPI void APIENTRY glApplyTextureEXT (GLenum mode)
/// ```
void glApplyTextureEXT(int mode) {
  final _glApplyTextureEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glApplyTextureEXT');
  return _glApplyTextureEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glTextureLightEXT (GLenum pname)
/// ```
void glTextureLightEXT(int pname) {
  final _glTextureLightEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname),
      void Function(int pname)>('glTextureLightEXT');
  return _glTextureLightEXT(pname);
}

/// ```c
/// GLAPI void APIENTRY glTextureMaterialEXT (GLenum face, GLenum mode)
/// ```
void glTextureMaterialEXT(int face, int mode) {
  final _glTextureMaterialEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 mode),
      void Function(int face, int mode)>('glTextureMaterialEXT');
  return _glTextureMaterialEXT(face, mode);
}

/// ```c
/// GLAPI void APIENTRY glAsyncMarkerSGIX (GLuint marker)
/// ```
void glAsyncMarkerSGIX(int marker) {
  final _glAsyncMarkerSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 marker),
      void Function(int marker)>('glAsyncMarkerSGIX');
  return _glAsyncMarkerSGIX(marker);
}

/// ```c
/// GLAPI GLint APIENTRY glFinishAsyncSGIX (GLuint *markerp)
/// ```
int glFinishAsyncSGIX(Pointer<Uint32>? markerp) {
  final _glFinishAsyncSGIX = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Uint32>? markerp),
      int Function(Pointer<Uint32>? markerp)>('glFinishAsyncSGIX');
  return _glFinishAsyncSGIX(markerp);
}

/// ```c
/// GLAPI GLint APIENTRY glPollAsyncSGIX (GLuint *markerp)
/// ```
int glPollAsyncSGIX(Pointer<Uint32>? markerp) {
  final _glPollAsyncSGIX = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Uint32>? markerp),
      int Function(Pointer<Uint32>? markerp)>('glPollAsyncSGIX');
  return _glPollAsyncSGIX(markerp);
}

/// ```c
/// GLAPI GLuint APIENTRY glGenAsyncMarkersSGIX (GLsizei range)
/// ```
int glGenAsyncMarkersSGIX(int range) {
  final _glGenAsyncMarkersSGIX = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 range),
      int Function(int range)>('glGenAsyncMarkersSGIX');
  return _glGenAsyncMarkersSGIX(range);
}

/// ```c
/// GLAPI void APIENTRY glDeleteAsyncMarkersSGIX (GLuint marker, GLsizei range)
/// ```
void glDeleteAsyncMarkersSGIX(int marker, int range) {
  final _glDeleteAsyncMarkersSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 marker, Uint32 range),
      void Function(int marker, int range)>('glDeleteAsyncMarkersSGIX');
  return _glDeleteAsyncMarkersSGIX(marker, range);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsAsyncMarkerSGIX (GLuint marker)
/// ```
int glIsAsyncMarkerSGIX(int marker) {
  final _glIsAsyncMarkerSGIX = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 marker),
      int Function(int marker)>('glIsAsyncMarkerSGIX');
  return _glIsAsyncMarkerSGIX(marker);
}

/// ```c
/// GLAPI void APIENTRY glVertexPointervINTEL (GLint size, GLenum type, const GLvoid* *pointer)
/// ```
void glVertexPointervINTEL(int size, int type, Pointer<Pointer<Void>>? pointer) {
  final _glVertexPointervINTEL = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Pointer<Pointer<Void>>? pointer),
      void Function(int size, int type, Pointer<Pointer<Void>>? pointer)>('glVertexPointervINTEL');
  return _glVertexPointervINTEL(size, type, pointer);
}

/// ```c
/// GLAPI void APIENTRY glNormalPointervINTEL (GLenum type, const GLvoid* *pointer)
/// ```
void glNormalPointervINTEL(int type, Pointer<Pointer<Void>>? pointer) {
  final _glNormalPointervINTEL = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Pointer<Void>>? pointer),
      void Function(int type, Pointer<Pointer<Void>>? pointer)>('glNormalPointervINTEL');
  return _glNormalPointervINTEL(type, pointer);
}

/// ```c
/// GLAPI void APIENTRY glColorPointervINTEL (GLint size, GLenum type, const GLvoid* *pointer)
/// ```
void glColorPointervINTEL(int size, int type, Pointer<Pointer<Void>>? pointer) {
  final _glColorPointervINTEL = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Pointer<Pointer<Void>>? pointer),
      void Function(int size, int type, Pointer<Pointer<Void>>? pointer)>('glColorPointervINTEL');
  return _glColorPointervINTEL(size, type, pointer);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordPointervINTEL (GLint size, GLenum type, const GLvoid* *pointer)
/// ```
void glTexCoordPointervINTEL(int size, int type, Pointer<Pointer<Void>>? pointer) {
  final _glTexCoordPointervINTEL = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Pointer<Pointer<Void>>? pointer),
      void Function(int size, int type, Pointer<Pointer<Void>>? pointer)>('glTexCoordPointervINTEL');
  return _glTexCoordPointervINTEL(size, type, pointer);
}

/// ```c
/// GLAPI void APIENTRY glPixelTransformParameteriEXT (GLenum target, GLenum pname, GLint param)
/// ```
void glPixelTransformParameteriEXT(int target, int pname, int param) {
  final _glPixelTransformParameteriEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Int32 param),
      void Function(int target, int pname, int param)>('glPixelTransformParameteriEXT');
  return _glPixelTransformParameteriEXT(target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPixelTransformParameterfEXT (GLenum target, GLenum pname, GLfloat param)
/// ```
void glPixelTransformParameterfEXT(int target, int pname, double param) {
  final _glPixelTransformParameterfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Float param),
      void Function(int target, int pname, double param)>('glPixelTransformParameterfEXT');
  return _glPixelTransformParameterfEXT(target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPixelTransformParameterivEXT (GLenum target, GLenum pname, const GLint *params)
/// ```
void glPixelTransformParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glPixelTransformParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glPixelTransformParameterivEXT');
  return _glPixelTransformParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPixelTransformParameterfvEXT (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glPixelTransformParameterfvEXT(int target, int pname, Pointer<Float>? params) {
  final _glPixelTransformParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glPixelTransformParameterfvEXT');
  return _glPixelTransformParameterfvEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3bEXT (GLbyte red, GLbyte green, GLbyte blue)
/// ```
void glSecondaryColor3bEXT(int red, int green, int blue) {
  final _glSecondaryColor3bEXT = DLL_SDL2.lookupFunction<
      Void Function(Int8 red, Int8 green, Int8 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3bEXT');
  return _glSecondaryColor3bEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3bvEXT (const GLbyte *v)
/// ```
void glSecondaryColor3bvEXT(String v) {
  final _glSecondaryColor3bvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? v),
      void Function(Pointer<Utf8>? v)>('glSecondaryColor3bvEXT');
  final _vPointer = v.toNativeUtf8();
  final _result = _glSecondaryColor3bvEXT(_vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3dEXT (GLdouble red, GLdouble green, GLdouble blue)
/// ```
void glSecondaryColor3dEXT(double red, double green, double blue) {
  final _glSecondaryColor3dEXT = DLL_SDL2.lookupFunction<
      Void Function(Double red, Double green, Double blue),
      void Function(double red, double green, double blue)>('glSecondaryColor3dEXT');
  return _glSecondaryColor3dEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3dvEXT (const GLdouble *v)
/// ```
void glSecondaryColor3dvEXT(Pointer<Double>? v) {
  final _glSecondaryColor3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glSecondaryColor3dvEXT');
  return _glSecondaryColor3dvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3fEXT (GLfloat red, GLfloat green, GLfloat blue)
/// ```
void glSecondaryColor3fEXT(double red, double green, double blue) {
  final _glSecondaryColor3fEXT = DLL_SDL2.lookupFunction<
      Void Function(Float red, Float green, Float blue),
      void Function(double red, double green, double blue)>('glSecondaryColor3fEXT');
  return _glSecondaryColor3fEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3fvEXT (const GLfloat *v)
/// ```
void glSecondaryColor3fvEXT(Pointer<Float>? v) {
  final _glSecondaryColor3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glSecondaryColor3fvEXT');
  return _glSecondaryColor3fvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3iEXT (GLint red, GLint green, GLint blue)
/// ```
void glSecondaryColor3iEXT(int red, int green, int blue) {
  final _glSecondaryColor3iEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 red, Int32 green, Int32 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3iEXT');
  return _glSecondaryColor3iEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3ivEXT (const GLint *v)
/// ```
void glSecondaryColor3ivEXT(Pointer<Int32>? v) {
  final _glSecondaryColor3ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glSecondaryColor3ivEXT');
  return _glSecondaryColor3ivEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3sEXT (GLshort red, GLshort green, GLshort blue)
/// ```
void glSecondaryColor3sEXT(int red, int green, int blue) {
  final _glSecondaryColor3sEXT = DLL_SDL2.lookupFunction<
      Void Function(Int16 red, Int16 green, Int16 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3sEXT');
  return _glSecondaryColor3sEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3svEXT (const GLshort *v)
/// ```
void glSecondaryColor3svEXT(Pointer<Int16>? v) {
  final _glSecondaryColor3svEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glSecondaryColor3svEXT');
  return _glSecondaryColor3svEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3ubEXT (GLubyte red, GLubyte green, GLubyte blue)
/// ```
void glSecondaryColor3ubEXT(int red, int green, int blue) {
  final _glSecondaryColor3ubEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint8 red, Uint8 green, Uint8 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3ubEXT');
  return _glSecondaryColor3ubEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3ubvEXT (const GLubyte *v)
/// ```
void glSecondaryColor3ubvEXT(Pointer<Uint8>? v) {
  final _glSecondaryColor3ubvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? v),
      void Function(Pointer<Uint8>? v)>('glSecondaryColor3ubvEXT');
  return _glSecondaryColor3ubvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3uiEXT (GLuint red, GLuint green, GLuint blue)
/// ```
void glSecondaryColor3uiEXT(int red, int green, int blue) {
  final _glSecondaryColor3uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 red, Uint32 green, Uint32 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3uiEXT');
  return _glSecondaryColor3uiEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3uivEXT (const GLuint *v)
/// ```
void glSecondaryColor3uivEXT(Pointer<Uint32>? v) {
  final _glSecondaryColor3uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? v),
      void Function(Pointer<Uint32>? v)>('glSecondaryColor3uivEXT');
  return _glSecondaryColor3uivEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3usEXT (GLushort red, GLushort green, GLushort blue)
/// ```
void glSecondaryColor3usEXT(int red, int green, int blue) {
  final _glSecondaryColor3usEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint16 red, Uint16 green, Uint16 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3usEXT');
  return _glSecondaryColor3usEXT(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3usvEXT (const GLushort *v)
/// ```
void glSecondaryColor3usvEXT(Pointer<Uint16>? v) {
  final _glSecondaryColor3usvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glSecondaryColor3usvEXT');
  return _glSecondaryColor3usvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColorPointerEXT (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glSecondaryColorPointerEXT(int size, int type, int stride, Pointer<Void>? pointer) {
  final _glSecondaryColorPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, Pointer<Void>? pointer)>('glSecondaryColorPointerEXT');
  return _glSecondaryColorPointerEXT(size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glTextureNormalEXT (GLenum mode)
/// ```
void glTextureNormalEXT(int mode) {
  final _glTextureNormalEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glTextureNormalEXT');
  return _glTextureNormalEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawArraysEXT (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount)
/// ```
void glMultiDrawArraysEXT(int mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount) {
  final _glMultiDrawArraysEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Int32>? first, Pointer<Uint32>? count, Uint32 primcount),
      void Function(int mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount)>('glMultiDrawArraysEXT');
  return _glMultiDrawArraysEXT(mode, first, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawElementsEXT (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount)
/// ```
void glMultiDrawElementsEXT(int mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount) {
  final _glMultiDrawElementsEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Uint32>? count, Uint32 type, Pointer<Pointer<Void>>? indices, Uint32 primcount),
      void Function(int mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount)>('glMultiDrawElementsEXT');
  return _glMultiDrawElementsEXT(mode, count, type, indices, primcount);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordfEXT (GLfloat coord)
/// ```
void glFogCoordfEXT(double coord) {
  final _glFogCoordfEXT = DLL_SDL2.lookupFunction<
      Void Function(Float coord),
      void Function(double coord)>('glFogCoordfEXT');
  return _glFogCoordfEXT(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordfvEXT (const GLfloat *coord)
/// ```
void glFogCoordfvEXT(Pointer<Float>? coord) {
  final _glFogCoordfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? coord),
      void Function(Pointer<Float>? coord)>('glFogCoordfvEXT');
  return _glFogCoordfvEXT(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoorddEXT (GLdouble coord)
/// ```
void glFogCoorddEXT(double coord) {
  final _glFogCoorddEXT = DLL_SDL2.lookupFunction<
      Void Function(Double coord),
      void Function(double coord)>('glFogCoorddEXT');
  return _glFogCoorddEXT(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoorddvEXT (const GLdouble *coord)
/// ```
void glFogCoorddvEXT(Pointer<Double>? coord) {
  final _glFogCoorddvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? coord),
      void Function(Pointer<Double>? coord)>('glFogCoorddvEXT');
  return _glFogCoorddvEXT(coord);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordPointerEXT (GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glFogCoordPointerEXT(int type, int stride, Pointer<Void>? pointer) {
  final _glFogCoordPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int type, int stride, Pointer<Void>? pointer)>('glFogCoordPointerEXT');
  return _glFogCoordPointerEXT(type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glTangent3bEXT (GLbyte tx, GLbyte ty, GLbyte tz)
/// ```
void glTangent3bEXT(int tx, int ty, int tz) {
  final _glTangent3bEXT = DLL_SDL2.lookupFunction<
      Void Function(Int8 tx, Int8 ty, Int8 tz),
      void Function(int tx, int ty, int tz)>('glTangent3bEXT');
  return _glTangent3bEXT(tx, ty, tz);
}

/// ```c
/// GLAPI void APIENTRY glTangent3bvEXT (const GLbyte *v)
/// ```
void glTangent3bvEXT(String v) {
  final _glTangent3bvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? v),
      void Function(Pointer<Utf8>? v)>('glTangent3bvEXT');
  final _vPointer = v.toNativeUtf8();
  final _result = _glTangent3bvEXT(_vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glTangent3dEXT (GLdouble tx, GLdouble ty, GLdouble tz)
/// ```
void glTangent3dEXT(double tx, double ty, double tz) {
  final _glTangent3dEXT = DLL_SDL2.lookupFunction<
      Void Function(Double tx, Double ty, Double tz),
      void Function(double tx, double ty, double tz)>('glTangent3dEXT');
  return _glTangent3dEXT(tx, ty, tz);
}

/// ```c
/// GLAPI void APIENTRY glTangent3dvEXT (const GLdouble *v)
/// ```
void glTangent3dvEXT(Pointer<Double>? v) {
  final _glTangent3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glTangent3dvEXT');
  return _glTangent3dvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glTangent3fEXT (GLfloat tx, GLfloat ty, GLfloat tz)
/// ```
void glTangent3fEXT(double tx, double ty, double tz) {
  final _glTangent3fEXT = DLL_SDL2.lookupFunction<
      Void Function(Float tx, Float ty, Float tz),
      void Function(double tx, double ty, double tz)>('glTangent3fEXT');
  return _glTangent3fEXT(tx, ty, tz);
}

/// ```c
/// GLAPI void APIENTRY glTangent3fvEXT (const GLfloat *v)
/// ```
void glTangent3fvEXT(Pointer<Float>? v) {
  final _glTangent3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glTangent3fvEXT');
  return _glTangent3fvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glTangent3iEXT (GLint tx, GLint ty, GLint tz)
/// ```
void glTangent3iEXT(int tx, int ty, int tz) {
  final _glTangent3iEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 tx, Int32 ty, Int32 tz),
      void Function(int tx, int ty, int tz)>('glTangent3iEXT');
  return _glTangent3iEXT(tx, ty, tz);
}

/// ```c
/// GLAPI void APIENTRY glTangent3ivEXT (const GLint *v)
/// ```
void glTangent3ivEXT(Pointer<Int32>? v) {
  final _glTangent3ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glTangent3ivEXT');
  return _glTangent3ivEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glTangent3sEXT (GLshort tx, GLshort ty, GLshort tz)
/// ```
void glTangent3sEXT(int tx, int ty, int tz) {
  final _glTangent3sEXT = DLL_SDL2.lookupFunction<
      Void Function(Int16 tx, Int16 ty, Int16 tz),
      void Function(int tx, int ty, int tz)>('glTangent3sEXT');
  return _glTangent3sEXT(tx, ty, tz);
}

/// ```c
/// GLAPI void APIENTRY glTangent3svEXT (const GLshort *v)
/// ```
void glTangent3svEXT(Pointer<Int16>? v) {
  final _glTangent3svEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glTangent3svEXT');
  return _glTangent3svEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3bEXT (GLbyte bx, GLbyte by, GLbyte bz)
/// ```
void glBinormal3bEXT(int bx, int by, int bz) {
  final _glBinormal3bEXT = DLL_SDL2.lookupFunction<
      Void Function(Int8 bx, Int8 by, Int8 bz),
      void Function(int bx, int by, int bz)>('glBinormal3bEXT');
  return _glBinormal3bEXT(bx, by, bz);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3bvEXT (const GLbyte *v)
/// ```
void glBinormal3bvEXT(String v) {
  final _glBinormal3bvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Utf8>? v),
      void Function(Pointer<Utf8>? v)>('glBinormal3bvEXT');
  final _vPointer = v.toNativeUtf8();
  final _result = _glBinormal3bvEXT(_vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glBinormal3dEXT (GLdouble bx, GLdouble by, GLdouble bz)
/// ```
void glBinormal3dEXT(double bx, double by, double bz) {
  final _glBinormal3dEXT = DLL_SDL2.lookupFunction<
      Void Function(Double bx, Double by, Double bz),
      void Function(double bx, double by, double bz)>('glBinormal3dEXT');
  return _glBinormal3dEXT(bx, by, bz);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3dvEXT (const GLdouble *v)
/// ```
void glBinormal3dvEXT(Pointer<Double>? v) {
  final _glBinormal3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glBinormal3dvEXT');
  return _glBinormal3dvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3fEXT (GLfloat bx, GLfloat by, GLfloat bz)
/// ```
void glBinormal3fEXT(double bx, double by, double bz) {
  final _glBinormal3fEXT = DLL_SDL2.lookupFunction<
      Void Function(Float bx, Float by, Float bz),
      void Function(double bx, double by, double bz)>('glBinormal3fEXT');
  return _glBinormal3fEXT(bx, by, bz);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3fvEXT (const GLfloat *v)
/// ```
void glBinormal3fvEXT(Pointer<Float>? v) {
  final _glBinormal3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glBinormal3fvEXT');
  return _glBinormal3fvEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3iEXT (GLint bx, GLint by, GLint bz)
/// ```
void glBinormal3iEXT(int bx, int by, int bz) {
  final _glBinormal3iEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 bx, Int32 by, Int32 bz),
      void Function(int bx, int by, int bz)>('glBinormal3iEXT');
  return _glBinormal3iEXT(bx, by, bz);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3ivEXT (const GLint *v)
/// ```
void glBinormal3ivEXT(Pointer<Int32>? v) {
  final _glBinormal3ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glBinormal3ivEXT');
  return _glBinormal3ivEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3sEXT (GLshort bx, GLshort by, GLshort bz)
/// ```
void glBinormal3sEXT(int bx, int by, int bz) {
  final _glBinormal3sEXT = DLL_SDL2.lookupFunction<
      Void Function(Int16 bx, Int16 by, Int16 bz),
      void Function(int bx, int by, int bz)>('glBinormal3sEXT');
  return _glBinormal3sEXT(bx, by, bz);
}

/// ```c
/// GLAPI void APIENTRY glBinormal3svEXT (const GLshort *v)
/// ```
void glBinormal3svEXT(Pointer<Int16>? v) {
  final _glBinormal3svEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glBinormal3svEXT');
  return _glBinormal3svEXT(v);
}

/// ```c
/// GLAPI void APIENTRY glTangentPointerEXT (GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glTangentPointerEXT(int type, int stride, Pointer<Void>? pointer) {
  final _glTangentPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int type, int stride, Pointer<Void>? pointer)>('glTangentPointerEXT');
  return _glTangentPointerEXT(type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glBinormalPointerEXT (GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glBinormalPointerEXT(int type, int stride, Pointer<Void>? pointer) {
  final _glBinormalPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int type, int stride, Pointer<Void>? pointer)>('glBinormalPointerEXT');
  return _glBinormalPointerEXT(type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glFinishTextureSUNX (void)
/// ```
void glFinishTextureSUNX() {
  final _glFinishTextureSUNX = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glFinishTextureSUNX');
  return _glFinishTextureSUNX();
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactorbSUN (GLbyte factor)
/// ```
void glGlobalAlphaFactorbSUN(int factor) {
  final _glGlobalAlphaFactorbSUN = DLL_SDL2.lookupFunction<
      Void Function(Int8 factor),
      void Function(int factor)>('glGlobalAlphaFactorbSUN');
  return _glGlobalAlphaFactorbSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactorsSUN (GLshort factor)
/// ```
void glGlobalAlphaFactorsSUN(int factor) {
  final _glGlobalAlphaFactorsSUN = DLL_SDL2.lookupFunction<
      Void Function(Int16 factor),
      void Function(int factor)>('glGlobalAlphaFactorsSUN');
  return _glGlobalAlphaFactorsSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactoriSUN (GLint factor)
/// ```
void glGlobalAlphaFactoriSUN(int factor) {
  final _glGlobalAlphaFactoriSUN = DLL_SDL2.lookupFunction<
      Void Function(Int32 factor),
      void Function(int factor)>('glGlobalAlphaFactoriSUN');
  return _glGlobalAlphaFactoriSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactorfSUN (GLfloat factor)
/// ```
void glGlobalAlphaFactorfSUN(double factor) {
  final _glGlobalAlphaFactorfSUN = DLL_SDL2.lookupFunction<
      Void Function(Float factor),
      void Function(double factor)>('glGlobalAlphaFactorfSUN');
  return _glGlobalAlphaFactorfSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactordSUN (GLdouble factor)
/// ```
void glGlobalAlphaFactordSUN(double factor) {
  final _glGlobalAlphaFactordSUN = DLL_SDL2.lookupFunction<
      Void Function(Double factor),
      void Function(double factor)>('glGlobalAlphaFactordSUN');
  return _glGlobalAlphaFactordSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactorubSUN (GLubyte factor)
/// ```
void glGlobalAlphaFactorubSUN(int factor) {
  final _glGlobalAlphaFactorubSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint8 factor),
      void Function(int factor)>('glGlobalAlphaFactorubSUN');
  return _glGlobalAlphaFactorubSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactorusSUN (GLushort factor)
/// ```
void glGlobalAlphaFactorusSUN(int factor) {
  final _glGlobalAlphaFactorusSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint16 factor),
      void Function(int factor)>('glGlobalAlphaFactorusSUN');
  return _glGlobalAlphaFactorusSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glGlobalAlphaFactoruiSUN (GLuint factor)
/// ```
void glGlobalAlphaFactoruiSUN(int factor) {
  final _glGlobalAlphaFactoruiSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 factor),
      void Function(int factor)>('glGlobalAlphaFactoruiSUN');
  return _glGlobalAlphaFactoruiSUN(factor);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiSUN (GLuint code)
/// ```
void glReplacementCodeuiSUN(int code) {
  final _glReplacementCodeuiSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 code),
      void Function(int code)>('glReplacementCodeuiSUN');
  return _glReplacementCodeuiSUN(code);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeusSUN (GLushort code)
/// ```
void glReplacementCodeusSUN(int code) {
  final _glReplacementCodeusSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint16 code),
      void Function(int code)>('glReplacementCodeusSUN');
  return _glReplacementCodeusSUN(code);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeubSUN (GLubyte code)
/// ```
void glReplacementCodeubSUN(int code) {
  final _glReplacementCodeubSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint8 code),
      void Function(int code)>('glReplacementCodeubSUN');
  return _glReplacementCodeubSUN(code);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuivSUN (const GLuint *code)
/// ```
void glReplacementCodeuivSUN(Pointer<Uint32>? code) {
  final _glReplacementCodeuivSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? code),
      void Function(Pointer<Uint32>? code)>('glReplacementCodeuivSUN');
  return _glReplacementCodeuivSUN(code);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeusvSUN (const GLushort *code)
/// ```
void glReplacementCodeusvSUN(Pointer<Uint16>? code) {
  final _glReplacementCodeusvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? code),
      void Function(Pointer<Uint16>? code)>('glReplacementCodeusvSUN');
  return _glReplacementCodeusvSUN(code);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeubvSUN (const GLubyte *code)
/// ```
void glReplacementCodeubvSUN(Pointer<Uint8>? code) {
  final _glReplacementCodeubvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? code),
      void Function(Pointer<Uint8>? code)>('glReplacementCodeubvSUN');
  return _glReplacementCodeubvSUN(code);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodePointerSUN (GLenum type, GLsizei stride, const GLvoid* *pointer)
/// ```
void glReplacementCodePointerSUN(int type, int stride, Pointer<Pointer<Void>>? pointer) {
  final _glReplacementCodePointerSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride, Pointer<Pointer<Void>>? pointer),
      void Function(int type, int stride, Pointer<Pointer<Void>>? pointer)>('glReplacementCodePointerSUN');
  return _glReplacementCodePointerSUN(type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glColor4ubVertex2fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y)
/// ```
void glColor4ubVertex2fSUN(int r, int g, int b, int a, double x, double y) {
  final _glColor4ubVertex2fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint8 r, Uint8 g, Uint8 b, Uint8 a, Float x, Float y),
      void Function(int r, int g, int b, int a, double x, double y)>('glColor4ubVertex2fSUN');
  return _glColor4ubVertex2fSUN(r, g, b, a, x, y);
}

/// ```c
/// GLAPI void APIENTRY glColor4ubVertex2fvSUN (const GLubyte *c, const GLfloat *v)
/// ```
void glColor4ubVertex2fvSUN(Pointer<Uint8>? c, Pointer<Float>? v) {
  final _glColor4ubVertex2fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? c, Pointer<Float>? v),
      void Function(Pointer<Uint8>? c, Pointer<Float>? v)>('glColor4ubVertex2fvSUN');
  return _glColor4ubVertex2fvSUN(c, v);
}

/// ```c
/// GLAPI void APIENTRY glColor4ubVertex3fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glColor4ubVertex3fSUN(int r, int g, int b, int a, double x, double y, double z) {
  final _glColor4ubVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint8 r, Uint8 g, Uint8 b, Uint8 a, Float x, Float y, Float z),
      void Function(int r, int g, int b, int a, double x, double y, double z)>('glColor4ubVertex3fSUN');
  return _glColor4ubVertex3fSUN(r, g, b, a, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glColor4ubVertex3fvSUN (const GLubyte *c, const GLfloat *v)
/// ```
void glColor4ubVertex3fvSUN(Pointer<Uint8>? c, Pointer<Float>? v) {
  final _glColor4ubVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint8>? c, Pointer<Float>? v),
      void Function(Pointer<Uint8>? c, Pointer<Float>? v)>('glColor4ubVertex3fvSUN');
  return _glColor4ubVertex3fvSUN(c, v);
}

/// ```c
/// GLAPI void APIENTRY glColor3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glColor3fVertex3fSUN(double r, double g, double b, double x, double y, double z) {
  final _glColor3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float r, Float g, Float b, Float x, Float y, Float z),
      void Function(double r, double g, double b, double x, double y, double z)>('glColor3fVertex3fSUN');
  return _glColor3fVertex3fSUN(r, g, b, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glColor3fVertex3fvSUN (const GLfloat *c, const GLfloat *v)
/// ```
void glColor3fVertex3fvSUN(Pointer<Float>? c, Pointer<Float>? v) {
  final _glColor3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? c, Pointer<Float>? v),
      void Function(Pointer<Float>? c, Pointer<Float>? v)>('glColor3fVertex3fvSUN');
  return _glColor3fVertex3fvSUN(c, v);
}

/// ```c
/// GLAPI void APIENTRY glNormal3fVertex3fSUN (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glNormal3fVertex3fSUN(double nx, double ny, double nz, double x, double y, double z) {
  final _glNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(double nx, double ny, double nz, double x, double y, double z)>('glNormal3fVertex3fSUN');
  return _glNormal3fVertex3fSUN(nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glNormal3fVertex3fvSUN (const GLfloat *n, const GLfloat *v)
/// ```
void glNormal3fVertex3fvSUN(Pointer<Float>? n, Pointer<Float>? v) {
  final _glNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Float>? n, Pointer<Float>? v)>('glNormal3fVertex3fvSUN');
  return _glNormal3fVertex3fvSUN(n, v);
}

/// ```c
/// GLAPI void APIENTRY glColor4fNormal3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glColor4fNormal3fVertex3fSUN(double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z) {
  final _glColor4fNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float r, Float g, Float b, Float a, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z)>('glColor4fNormal3fVertex3fSUN');
  return _glColor4fNormal3fVertex3fSUN(r, g, b, a, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glColor4fNormal3fVertex3fvSUN (const GLfloat *c, const GLfloat *n, const GLfloat *v)
/// ```
void glColor4fNormal3fVertex3fvSUN(Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v) {
  final _glColor4fNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v)>('glColor4fNormal3fVertex3fvSUN');
  return _glColor4fNormal3fVertex3fvSUN(c, n, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fVertex3fSUN (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glTexCoord2fVertex3fSUN(double s, double t, double x, double y, double z) {
  final _glTexCoord2fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Float x, Float y, Float z),
      void Function(double s, double t, double x, double y, double z)>('glTexCoord2fVertex3fSUN');
  return _glTexCoord2fVertex3fSUN(s, t, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fVertex3fvSUN (const GLfloat *tc, const GLfloat *v)
/// ```
void glTexCoord2fVertex3fvSUN(Pointer<Float>? tc, Pointer<Float>? v) {
  final _glTexCoord2fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Float>? v)>('glTexCoord2fVertex3fvSUN');
  return _glTexCoord2fVertex3fvSUN(tc, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord4fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glTexCoord4fVertex4fSUN(double s, double t, double p, double q, double x, double y, double z, double w) {
  final _glTexCoord4fVertex4fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Float p, Float q, Float x, Float y, Float z, Float w),
      void Function(double s, double t, double p, double q, double x, double y, double z, double w)>('glTexCoord4fVertex4fSUN');
  return _glTexCoord4fVertex4fSUN(s, t, p, q, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord4fVertex4fvSUN (const GLfloat *tc, const GLfloat *v)
/// ```
void glTexCoord4fVertex4fvSUN(Pointer<Float>? tc, Pointer<Float>? v) {
  final _glTexCoord4fVertex4fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Float>? v)>('glTexCoord4fVertex4fvSUN');
  return _glTexCoord4fVertex4fvSUN(tc, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fColor4ubVertex3fSUN (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glTexCoord2fColor4ubVertex3fSUN(double s, double t, int r, int g, int b, int a, double x, double y, double z) {
  final _glTexCoord2fColor4ubVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Uint8 r, Uint8 g, Uint8 b, Uint8 a, Float x, Float y, Float z),
      void Function(double s, double t, int r, int g, int b, int a, double x, double y, double z)>('glTexCoord2fColor4ubVertex3fSUN');
  return _glTexCoord2fColor4ubVertex3fSUN(s, t, r, g, b, a, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fColor4ubVertex3fvSUN (const GLfloat *tc, const GLubyte *c, const GLfloat *v)
/// ```
void glTexCoord2fColor4ubVertex3fvSUN(Pointer<Float>? tc, Pointer<Uint8>? c, Pointer<Float>? v) {
  final _glTexCoord2fColor4ubVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Uint8>? c, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Uint8>? c, Pointer<Float>? v)>('glTexCoord2fColor4ubVertex3fvSUN');
  return _glTexCoord2fColor4ubVertex3fvSUN(tc, c, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fColor3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glTexCoord2fColor3fVertex3fSUN(double s, double t, double r, double g, double b, double x, double y, double z) {
  final _glTexCoord2fColor3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Float r, Float g, Float b, Float x, Float y, Float z),
      void Function(double s, double t, double r, double g, double b, double x, double y, double z)>('glTexCoord2fColor3fVertex3fSUN');
  return _glTexCoord2fColor3fVertex3fSUN(s, t, r, g, b, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fColor3fVertex3fvSUN (const GLfloat *tc, const GLfloat *c, const GLfloat *v)
/// ```
void glTexCoord2fColor3fVertex3fvSUN(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? v) {
  final _glTexCoord2fColor3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? v)>('glTexCoord2fColor3fVertex3fvSUN');
  return _glTexCoord2fColor3fVertex3fvSUN(tc, c, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glTexCoord2fNormal3fVertex3fSUN(double s, double t, double nx, double ny, double nz, double x, double y, double z) {
  final _glTexCoord2fNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(double s, double t, double nx, double ny, double nz, double x, double y, double z)>('glTexCoord2fNormal3fVertex3fSUN');
  return _glTexCoord2fNormal3fVertex3fSUN(s, t, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fNormal3fVertex3fvSUN (const GLfloat *tc, const GLfloat *n, const GLfloat *v)
/// ```
void glTexCoord2fNormal3fVertex3fvSUN(Pointer<Float>? tc, Pointer<Float>? n, Pointer<Float>? v) {
  final _glTexCoord2fNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Float>? n, Pointer<Float>? v)>('glTexCoord2fNormal3fVertex3fvSUN');
  return _glTexCoord2fNormal3fVertex3fvSUN(tc, n, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glTexCoord2fColor4fNormal3fVertex3fSUN(double s, double t, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z) {
  final _glTexCoord2fColor4fNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Float r, Float g, Float b, Float a, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(double s, double t, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z)>('glTexCoord2fColor4fNormal3fVertex3fSUN');
  return _glTexCoord2fColor4fNormal3fVertex3fSUN(s, t, r, g, b, a, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2fColor4fNormal3fVertex3fvSUN (const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v)
/// ```
void glTexCoord2fColor4fNormal3fVertex3fvSUN(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v) {
  final _glTexCoord2fColor4fNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v)>('glTexCoord2fColor4fNormal3fVertex3fvSUN');
  return _glTexCoord2fColor4fNormal3fVertex3fvSUN(tc, c, n, v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glTexCoord4fColor4fNormal3fVertex4fSUN(double s, double t, double p, double q, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z, double w) {
  final _glTexCoord4fColor4fNormal3fVertex4fSUN = DLL_SDL2.lookupFunction<
      Void Function(Float s, Float t, Float p, Float q, Float r, Float g, Float b, Float a, Float nx, Float ny, Float nz, Float x, Float y, Float z, Float w),
      void Function(double s, double t, double p, double q, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z, double w)>('glTexCoord4fColor4fNormal3fVertex4fSUN');
  return _glTexCoord4fColor4fNormal3fVertex4fSUN(s, t, p, q, r, g, b, a, nx, ny, nz, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord4fColor4fNormal3fVertex4fvSUN (const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v)
/// ```
void glTexCoord4fColor4fNormal3fVertex4fvSUN(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v) {
  final _glTexCoord4fColor4fNormal3fVertex4fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v)>('glTexCoord4fColor4fNormal3fVertex4fvSUN');
  return _glTexCoord4fColor4fNormal3fVertex4fvSUN(tc, c, n, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiVertex3fSUN (GLuint rc, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiVertex3fSUN(int rc, double x, double y, double z) {
  final _glReplacementCodeuiVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float x, Float y, Float z),
      void Function(int rc, double x, double y, double z)>('glReplacementCodeuiVertex3fSUN');
  return _glReplacementCodeuiVertex3fSUN(rc, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiVertex3fvSUN (const GLuint *rc, const GLfloat *v)
/// ```
void glReplacementCodeuiVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? v) {
  final _glReplacementCodeuiVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? v)>('glReplacementCodeuiVertex3fvSUN');
  return _glReplacementCodeuiVertex3fvSUN(rc, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiColor4ubVertex3fSUN (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiColor4ubVertex3fSUN(int rc, int r, int g, int b, int a, double x, double y, double z) {
  final _glReplacementCodeuiColor4ubVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Uint8 r, Uint8 g, Uint8 b, Uint8 a, Float x, Float y, Float z),
      void Function(int rc, int r, int g, int b, int a, double x, double y, double z)>('glReplacementCodeuiColor4ubVertex3fSUN');
  return _glReplacementCodeuiColor4ubVertex3fSUN(rc, r, g, b, a, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiColor4ubVertex3fvSUN (const GLuint *rc, const GLubyte *c, const GLfloat *v)
/// ```
void glReplacementCodeuiColor4ubVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Uint8>? c, Pointer<Float>? v) {
  final _glReplacementCodeuiColor4ubVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Uint8>? c, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Uint8>? c, Pointer<Float>? v)>('glReplacementCodeuiColor4ubVertex3fvSUN');
  return _glReplacementCodeuiColor4ubVertex3fvSUN(rc, c, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiColor3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiColor3fVertex3fSUN(int rc, double r, double g, double b, double x, double y, double z) {
  final _glReplacementCodeuiColor3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float r, Float g, Float b, Float x, Float y, Float z),
      void Function(int rc, double r, double g, double b, double x, double y, double z)>('glReplacementCodeuiColor3fVertex3fSUN');
  return _glReplacementCodeuiColor3fVertex3fSUN(rc, r, g, b, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiColor3fVertex3fvSUN (const GLuint *rc, const GLfloat *c, const GLfloat *v)
/// ```
void glReplacementCodeuiColor3fVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? c, Pointer<Float>? v) {
  final _glReplacementCodeuiColor3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? c, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? c, Pointer<Float>? v)>('glReplacementCodeuiColor3fVertex3fvSUN');
  return _glReplacementCodeuiColor3fVertex3fvSUN(rc, c, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiNormal3fVertex3fSUN (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiNormal3fVertex3fSUN(int rc, double nx, double ny, double nz, double x, double y, double z) {
  final _glReplacementCodeuiNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(int rc, double nx, double ny, double nz, double x, double y, double z)>('glReplacementCodeuiNormal3fVertex3fSUN');
  return _glReplacementCodeuiNormal3fVertex3fSUN(rc, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *n, const GLfloat *v)
/// ```
void glReplacementCodeuiNormal3fVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? n, Pointer<Float>? v) {
  final _glReplacementCodeuiNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? n, Pointer<Float>? v)>('glReplacementCodeuiNormal3fVertex3fvSUN');
  return _glReplacementCodeuiNormal3fVertex3fvSUN(rc, n, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiColor4fNormal3fVertex3fSUN(int rc, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z) {
  final _glReplacementCodeuiColor4fNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float r, Float g, Float b, Float a, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(int rc, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z)>('glReplacementCodeuiColor4fNormal3fVertex3fSUN');
  return _glReplacementCodeuiColor4fNormal3fVertex3fSUN(rc, r, g, b, a, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiColor4fNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *c, const GLfloat *n, const GLfloat *v)
/// ```
void glReplacementCodeuiColor4fNormal3fVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v) {
  final _glReplacementCodeuiColor4fNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v)>('glReplacementCodeuiColor4fNormal3fVertex3fvSUN');
  return _glReplacementCodeuiColor4fNormal3fVertex3fvSUN(rc, c, n, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiTexCoord2fVertex3fSUN(int rc, double s, double t, double x, double y, double z) {
  final _glReplacementCodeuiTexCoord2fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float s, Float t, Float x, Float y, Float z),
      void Function(int rc, double s, double t, double x, double y, double z)>('glReplacementCodeuiTexCoord2fVertex3fSUN');
  return _glReplacementCodeuiTexCoord2fVertex3fSUN(rc, s, t, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiTexCoord2fVertex3fvSUN (const GLuint *rc, const GLfloat *tc, const GLfloat *v)
/// ```
void glReplacementCodeuiTexCoord2fVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? v) {
  final _glReplacementCodeuiTexCoord2fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? v)>('glReplacementCodeuiTexCoord2fVertex3fvSUN');
  return _glReplacementCodeuiTexCoord2fVertex3fvSUN(rc, tc, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(int rc, double s, double t, double nx, double ny, double nz, double x, double y, double z) {
  final _glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float s, Float t, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(int rc, double s, double t, double nx, double ny, double nz, double x, double y, double z)>('glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN');
  return _glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(rc, s, t, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *tc, const GLfloat *n, const GLfloat *v)
/// ```
void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? n, Pointer<Float>? v) {
  final _glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? n, Pointer<Float>? v)>('glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN');
  return _glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(rc, tc, n, v);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(int rc, double s, double t, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z) {
  final _glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 rc, Float s, Float t, Float r, Float g, Float b, Float a, Float nx, Float ny, Float nz, Float x, Float y, Float z),
      void Function(int rc, double s, double t, double r, double g, double b, double a, double nx, double ny, double nz, double x, double y, double z)>('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN');
  return _glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(rc, s, t, r, g, b, a, nx, ny, nz, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v)
/// ```
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v) {
  final _glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v),
      void Function(Pointer<Uint32>? rc, Pointer<Float>? tc, Pointer<Float>? c, Pointer<Float>? n, Pointer<Float>? v)>('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN');
  return _glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(rc, tc, c, n, v);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncSeparateEXT (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)
/// ```
void glBlendFuncSeparateEXT(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
  final _glBlendFuncSeparateEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sfactorRGB, Uint32 dfactorRGB, Uint32 sfactorAlpha, Uint32 dfactorAlpha),
      void Function(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha)>('glBlendFuncSeparateEXT');
  return _glBlendFuncSeparateEXT(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncSeparateINGR (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)
/// ```
void glBlendFuncSeparateINGR(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
  final _glBlendFuncSeparateINGR = DLL_SDL2.lookupFunction<
      Void Function(Uint32 sfactorRGB, Uint32 dfactorRGB, Uint32 sfactorAlpha, Uint32 dfactorAlpha),
      void Function(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha)>('glBlendFuncSeparateINGR');
  return _glBlendFuncSeparateINGR(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}

/// ```c
/// GLAPI void APIENTRY glVertexWeightfEXT (GLfloat weight)
/// ```
void glVertexWeightfEXT(double weight) {
  final _glVertexWeightfEXT = DLL_SDL2.lookupFunction<
      Void Function(Float weight),
      void Function(double weight)>('glVertexWeightfEXT');
  return _glVertexWeightfEXT(weight);
}

/// ```c
/// GLAPI void APIENTRY glVertexWeightfvEXT (const GLfloat *weight)
/// ```
void glVertexWeightfvEXT(Pointer<Float>? weight) {
  final _glVertexWeightfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? weight),
      void Function(Pointer<Float>? weight)>('glVertexWeightfvEXT');
  return _glVertexWeightfvEXT(weight);
}

/// ```c
/// GLAPI void APIENTRY glVertexWeightPointerEXT (GLsizei size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexWeightPointerEXT(int size, int type, int stride, Pointer<Void>? pointer) {
  final _glVertexWeightPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int size, int type, int stride, Pointer<Void>? pointer)>('glVertexWeightPointerEXT');
  return _glVertexWeightPointerEXT(size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glFlushVertexArrayRangeNV (void)
/// ```
void glFlushVertexArrayRangeNV() {
  final _glFlushVertexArrayRangeNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glFlushVertexArrayRangeNV');
  return _glFlushVertexArrayRangeNV();
}

/// ```c
/// GLAPI void APIENTRY glVertexArrayRangeNV (GLsizei length, const GLvoid *pointer)
/// ```
void glVertexArrayRangeNV(int length, Pointer<Void>? pointer) {
  final _glVertexArrayRangeNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 length, Pointer<Void>? pointer),
      void Function(int length, Pointer<Void>? pointer)>('glVertexArrayRangeNV');
  return _glVertexArrayRangeNV(length, pointer);
}

/// ```c
/// GLAPI void APIENTRY glCombinerParameterfvNV (GLenum pname, const GLfloat *params)
/// ```
void glCombinerParameterfvNV(int pname, Pointer<Float>? params) {
  final _glCombinerParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? params),
      void Function(int pname, Pointer<Float>? params)>('glCombinerParameterfvNV');
  return _glCombinerParameterfvNV(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCombinerParameterfNV (GLenum pname, GLfloat param)
/// ```
void glCombinerParameterfNV(int pname, double param) {
  final _glCombinerParameterfNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glCombinerParameterfNV');
  return _glCombinerParameterfNV(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glCombinerParameterivNV (GLenum pname, const GLint *params)
/// ```
void glCombinerParameterivNV(int pname, Pointer<Int32>? params) {
  final _glCombinerParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glCombinerParameterivNV');
  return _glCombinerParameterivNV(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCombinerParameteriNV (GLenum pname, GLint param)
/// ```
void glCombinerParameteriNV(int pname, int param) {
  final _glCombinerParameteriNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glCombinerParameteriNV');
  return _glCombinerParameteriNV(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glCombinerInputNV (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)
/// ```
void glCombinerInputNV(int stage, int portion, int variable, int input, int mapping, int componentUsage) {
  final _glCombinerInputNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 portion, Uint32 variable, Uint32 input, Uint32 mapping, Uint32 componentUsage),
      void Function(int stage, int portion, int variable, int input, int mapping, int componentUsage)>('glCombinerInputNV');
  return _glCombinerInputNV(stage, portion, variable, input, mapping, componentUsage);
}

/// ```c
/// GLAPI void APIENTRY glCombinerOutputNV (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum)
/// ```
void glCombinerOutputNV(int stage, int portion, int abOutput, int cdOutput, int sumOutput, int scale, int bias, int abDotProduct, int cdDotProduct, int muxSum) {
  final _glCombinerOutputNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 portion, Uint32 abOutput, Uint32 cdOutput, Uint32 sumOutput, Uint32 scale, Uint32 bias, Int32 abDotProduct, Int32 cdDotProduct, Int32 muxSum),
      void Function(int stage, int portion, int abOutput, int cdOutput, int sumOutput, int scale, int bias, int abDotProduct, int cdDotProduct, int muxSum)>('glCombinerOutputNV');
  return _glCombinerOutputNV(stage, portion, abOutput, cdOutput, sumOutput, scale, bias, abDotProduct, cdDotProduct, muxSum);
}

/// ```c
/// GLAPI void APIENTRY glFinalCombinerInputNV (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)
/// ```
void glFinalCombinerInputNV(int variable, int input, int mapping, int componentUsage) {
  final _glFinalCombinerInputNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 variable, Uint32 input, Uint32 mapping, Uint32 componentUsage),
      void Function(int variable, int input, int mapping, int componentUsage)>('glFinalCombinerInputNV');
  return _glFinalCombinerInputNV(variable, input, mapping, componentUsage);
}

/// ```c
/// GLAPI void APIENTRY glGetCombinerInputParameterfvNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat *params)
/// ```
void glGetCombinerInputParameterfvNV(int stage, int portion, int variable, int pname, Pointer<Float>? params) {
  final _glGetCombinerInputParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 portion, Uint32 variable, Uint32 pname, Pointer<Float>? params),
      void Function(int stage, int portion, int variable, int pname, Pointer<Float>? params)>('glGetCombinerInputParameterfvNV');
  return _glGetCombinerInputParameterfvNV(stage, portion, variable, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetCombinerInputParameterivNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint *params)
/// ```
void glGetCombinerInputParameterivNV(int stage, int portion, int variable, int pname, Pointer<Int32>? params) {
  final _glGetCombinerInputParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 portion, Uint32 variable, Uint32 pname, Pointer<Int32>? params),
      void Function(int stage, int portion, int variable, int pname, Pointer<Int32>? params)>('glGetCombinerInputParameterivNV');
  return _glGetCombinerInputParameterivNV(stage, portion, variable, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetCombinerOutputParameterfvNV (GLenum stage, GLenum portion, GLenum pname, GLfloat *params)
/// ```
void glGetCombinerOutputParameterfvNV(int stage, int portion, int pname, Pointer<Float>? params) {
  final _glGetCombinerOutputParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 portion, Uint32 pname, Pointer<Float>? params),
      void Function(int stage, int portion, int pname, Pointer<Float>? params)>('glGetCombinerOutputParameterfvNV');
  return _glGetCombinerOutputParameterfvNV(stage, portion, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetCombinerOutputParameterivNV (GLenum stage, GLenum portion, GLenum pname, GLint *params)
/// ```
void glGetCombinerOutputParameterivNV(int stage, int portion, int pname, Pointer<Int32>? params) {
  final _glGetCombinerOutputParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 portion, Uint32 pname, Pointer<Int32>? params),
      void Function(int stage, int portion, int pname, Pointer<Int32>? params)>('glGetCombinerOutputParameterivNV');
  return _glGetCombinerOutputParameterivNV(stage, portion, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFinalCombinerInputParameterfvNV (GLenum variable, GLenum pname, GLfloat *params)
/// ```
void glGetFinalCombinerInputParameterfvNV(int variable, int pname, Pointer<Float>? params) {
  final _glGetFinalCombinerInputParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 variable, Uint32 pname, Pointer<Float>? params),
      void Function(int variable, int pname, Pointer<Float>? params)>('glGetFinalCombinerInputParameterfvNV');
  return _glGetFinalCombinerInputParameterfvNV(variable, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFinalCombinerInputParameterivNV (GLenum variable, GLenum pname, GLint *params)
/// ```
void glGetFinalCombinerInputParameterivNV(int variable, int pname, Pointer<Int32>? params) {
  final _glGetFinalCombinerInputParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 variable, Uint32 pname, Pointer<Int32>? params),
      void Function(int variable, int pname, Pointer<Int32>? params)>('glGetFinalCombinerInputParameterivNV');
  return _glGetFinalCombinerInputParameterivNV(variable, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glResizeBuffersMESA (void)
/// ```
void glResizeBuffersMESA() {
  final _glResizeBuffersMESA = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glResizeBuffersMESA');
  return _glResizeBuffersMESA();
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2dMESA (GLdouble x, GLdouble y)
/// ```
void glWindowPos2dMESA(double x, double y) {
  final _glWindowPos2dMESA = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y),
      void Function(double x, double y)>('glWindowPos2dMESA');
  return _glWindowPos2dMESA(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2dvMESA (const GLdouble *v)
/// ```
void glWindowPos2dvMESA(Pointer<Double>? v) {
  final _glWindowPos2dvMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos2dvMESA');
  return _glWindowPos2dvMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2fMESA (GLfloat x, GLfloat y)
/// ```
void glWindowPos2fMESA(double x, double y) {
  final _glWindowPos2fMESA = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y),
      void Function(double x, double y)>('glWindowPos2fMESA');
  return _glWindowPos2fMESA(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2fvMESA (const GLfloat *v)
/// ```
void glWindowPos2fvMESA(Pointer<Float>? v) {
  final _glWindowPos2fvMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos2fvMESA');
  return _glWindowPos2fvMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2iMESA (GLint x, GLint y)
/// ```
void glWindowPos2iMESA(int x, int y) {
  final _glWindowPos2iMESA = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y),
      void Function(int x, int y)>('glWindowPos2iMESA');
  return _glWindowPos2iMESA(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2ivMESA (const GLint *v)
/// ```
void glWindowPos2ivMESA(Pointer<Int32>? v) {
  final _glWindowPos2ivMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos2ivMESA');
  return _glWindowPos2ivMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2sMESA (GLshort x, GLshort y)
/// ```
void glWindowPos2sMESA(int x, int y) {
  final _glWindowPos2sMESA = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y),
      void Function(int x, int y)>('glWindowPos2sMESA');
  return _glWindowPos2sMESA(x, y);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos2svMESA (const GLshort *v)
/// ```
void glWindowPos2svMESA(Pointer<Int16>? v) {
  final _glWindowPos2svMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos2svMESA');
  return _glWindowPos2svMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3dMESA (GLdouble x, GLdouble y, GLdouble z)
/// ```
void glWindowPos3dMESA(double x, double y, double z) {
  final _glWindowPos3dMESA = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y, Double z),
      void Function(double x, double y, double z)>('glWindowPos3dMESA');
  return _glWindowPos3dMESA(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3dvMESA (const GLdouble *v)
/// ```
void glWindowPos3dvMESA(Pointer<Double>? v) {
  final _glWindowPos3dvMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos3dvMESA');
  return _glWindowPos3dvMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3fMESA (GLfloat x, GLfloat y, GLfloat z)
/// ```
void glWindowPos3fMESA(double x, double y, double z) {
  final _glWindowPos3fMESA = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y, Float z),
      void Function(double x, double y, double z)>('glWindowPos3fMESA');
  return _glWindowPos3fMESA(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3fvMESA (const GLfloat *v)
/// ```
void glWindowPos3fvMESA(Pointer<Float>? v) {
  final _glWindowPos3fvMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos3fvMESA');
  return _glWindowPos3fvMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3iMESA (GLint x, GLint y, GLint z)
/// ```
void glWindowPos3iMESA(int x, int y, int z) {
  final _glWindowPos3iMESA = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y, Int32 z),
      void Function(int x, int y, int z)>('glWindowPos3iMESA');
  return _glWindowPos3iMESA(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3ivMESA (const GLint *v)
/// ```
void glWindowPos3ivMESA(Pointer<Int32>? v) {
  final _glWindowPos3ivMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos3ivMESA');
  return _glWindowPos3ivMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3sMESA (GLshort x, GLshort y, GLshort z)
/// ```
void glWindowPos3sMESA(int x, int y, int z) {
  final _glWindowPos3sMESA = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y, Int16 z),
      void Function(int x, int y, int z)>('glWindowPos3sMESA');
  return _glWindowPos3sMESA(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos3svMESA (const GLshort *v)
/// ```
void glWindowPos3svMESA(Pointer<Int16>? v) {
  final _glWindowPos3svMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos3svMESA');
  return _glWindowPos3svMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4dMESA (GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glWindowPos4dMESA(double x, double y, double z, double w) {
  final _glWindowPos4dMESA = DLL_SDL2.lookupFunction<
      Void Function(Double x, Double y, Double z, Double w),
      void Function(double x, double y, double z, double w)>('glWindowPos4dMESA');
  return _glWindowPos4dMESA(x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4dvMESA (const GLdouble *v)
/// ```
void glWindowPos4dvMESA(Pointer<Double>? v) {
  final _glWindowPos4dvMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Double>? v),
      void Function(Pointer<Double>? v)>('glWindowPos4dvMESA');
  return _glWindowPos4dvMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4fMESA (GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glWindowPos4fMESA(double x, double y, double z, double w) {
  final _glWindowPos4fMESA = DLL_SDL2.lookupFunction<
      Void Function(Float x, Float y, Float z, Float w),
      void Function(double x, double y, double z, double w)>('glWindowPos4fMESA');
  return _glWindowPos4fMESA(x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4fvMESA (const GLfloat *v)
/// ```
void glWindowPos4fvMESA(Pointer<Float>? v) {
  final _glWindowPos4fvMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Float>? v),
      void Function(Pointer<Float>? v)>('glWindowPos4fvMESA');
  return _glWindowPos4fvMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4iMESA (GLint x, GLint y, GLint z, GLint w)
/// ```
void glWindowPos4iMESA(int x, int y, int z, int w) {
  final _glWindowPos4iMESA = DLL_SDL2.lookupFunction<
      Void Function(Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int x, int y, int z, int w)>('glWindowPos4iMESA');
  return _glWindowPos4iMESA(x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4ivMESA (const GLint *v)
/// ```
void glWindowPos4ivMESA(Pointer<Int32>? v) {
  final _glWindowPos4ivMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? v),
      void Function(Pointer<Int32>? v)>('glWindowPos4ivMESA');
  return _glWindowPos4ivMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4sMESA (GLshort x, GLshort y, GLshort z, GLshort w)
/// ```
void glWindowPos4sMESA(int x, int y, int z, int w) {
  final _glWindowPos4sMESA = DLL_SDL2.lookupFunction<
      Void Function(Int16 x, Int16 y, Int16 z, Int16 w),
      void Function(int x, int y, int z, int w)>('glWindowPos4sMESA');
  return _glWindowPos4sMESA(x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glWindowPos4svMESA (const GLshort *v)
/// ```
void glWindowPos4svMESA(Pointer<Int16>? v) {
  final _glWindowPos4svMESA = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int16>? v),
      void Function(Pointer<Int16>? v)>('glWindowPos4svMESA');
  return _glWindowPos4svMESA(v);
}

/// ```c
/// GLAPI void APIENTRY glMultiModeDrawArraysIBM (const GLenum *mode, const GLint *first, const GLsizei *count, GLsizei primcount, GLint modestride)
/// ```
void glMultiModeDrawArraysIBM(Pointer<Uint32>? mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount, int modestride) {
  final _glMultiModeDrawArraysIBM = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? mode, Pointer<Int32>? first, Pointer<Uint32>? count, Uint32 primcount, Int32 modestride),
      void Function(Pointer<Uint32>? mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount, int modestride)>('glMultiModeDrawArraysIBM');
  return _glMultiModeDrawArraysIBM(mode, first, count, primcount, modestride);
}

/// ```c
/// GLAPI void APIENTRY glMultiModeDrawElementsIBM (const GLenum *mode, const GLsizei *count, GLenum type, const GLvoid* const *indices, GLsizei primcount, GLint modestride)
/// ```
void glMultiModeDrawElementsIBM(Pointer<Uint32>? mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount, int modestride) {
  final _glMultiModeDrawElementsIBM = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint32>? mode, Pointer<Uint32>? count, Uint32 type, Pointer<Pointer<Void>>? indices, Uint32 primcount, Int32 modestride),
      void Function(Pointer<Uint32>? mode, Pointer<Uint32>? count, int type, Pointer<Pointer<Void>>? indices, int primcount, int modestride)>('glMultiModeDrawElementsIBM');
  return _glMultiModeDrawElementsIBM(mode, count, type, indices, primcount, modestride);
}

/// ```c
/// GLAPI void APIENTRY glColorPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glColorPointerListIBM(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glColorPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glColorPointerListIBM');
  return _glColorPointerListIBM(size, type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColorPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glSecondaryColorPointerListIBM(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glSecondaryColorPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glSecondaryColorPointerListIBM');
  return _glSecondaryColorPointerListIBM(size, type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glEdgeFlagPointerListIBM (GLint stride, const GLboolean* *pointer, GLint ptrstride)
/// ```
void glEdgeFlagPointerListIBM(int stride, Pointer<Pointer<Int32>>? pointer, int ptrstride) {
  final _glEdgeFlagPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Int32 stride, Pointer<Pointer<Int32>>? pointer, Int32 ptrstride),
      void Function(int stride, Pointer<Pointer<Int32>>? pointer, int ptrstride)>('glEdgeFlagPointerListIBM');
  return _glEdgeFlagPointerListIBM(stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordPointerListIBM (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glFogCoordPointerListIBM(int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glFogCoordPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glFogCoordPointerListIBM');
  return _glFogCoordPointerListIBM(type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glIndexPointerListIBM (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glIndexPointerListIBM(int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glIndexPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glIndexPointerListIBM');
  return _glIndexPointerListIBM(type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glNormalPointerListIBM (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glNormalPointerListIBM(int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glNormalPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glNormalPointerListIBM');
  return _glNormalPointerListIBM(type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glTexCoordPointerListIBM(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glTexCoordPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glTexCoordPointerListIBM');
  return _glTexCoordPointerListIBM(size, type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glVertexPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride)
/// ```
void glVertexPointerListIBM(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride) {
  final _glVertexPointerListIBM = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Int32 stride, Pointer<Pointer<Void>>? pointer, Int32 ptrstride),
      void Function(int size, int type, int stride, Pointer<Pointer<Void>>? pointer, int ptrstride)>('glVertexPointerListIBM');
  return _glVertexPointerListIBM(size, type, stride, pointer, ptrstride);
}

/// ```c
/// GLAPI void APIENTRY glTbufferMask3DFX (GLuint mask)
/// ```
void glTbufferMask3DFX(int mask) {
  final _glTbufferMask3DFX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mask),
      void Function(int mask)>('glTbufferMask3DFX');
  return _glTbufferMask3DFX(mask);
}

/// ```c
/// GLAPI void APIENTRY glSampleMaskEXT (GLclampf value, GLboolean invert)
/// ```
void glSampleMaskEXT(double value, int invert) {
  final _glSampleMaskEXT = DLL_SDL2.lookupFunction<
      Void Function(Float value, Int32 invert),
      void Function(double value, int invert)>('glSampleMaskEXT');
  return _glSampleMaskEXT(value, invert);
}

/// ```c
/// GLAPI void APIENTRY glSamplePatternEXT (GLenum pattern)
/// ```
void glSamplePatternEXT(int pattern) {
  final _glSamplePatternEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pattern),
      void Function(int pattern)>('glSamplePatternEXT');
  return _glSamplePatternEXT(pattern);
}

/// ```c
/// GLAPI void APIENTRY glTextureColorMaskSGIS (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)
/// ```
void glTextureColorMaskSGIS(int red, int green, int blue, int alpha) {
  final _glTextureColorMaskSGIS = DLL_SDL2.lookupFunction<
      Void Function(Int32 red, Int32 green, Int32 blue, Int32 alpha),
      void Function(int red, int green, int blue, int alpha)>('glTextureColorMaskSGIS');
  return _glTextureColorMaskSGIS(red, green, blue, alpha);
}

/// ```c
/// GLAPI void APIENTRY glIglooInterfaceSGIX (GLenum pname, const GLvoid *params)
/// ```
void glIglooInterfaceSGIX(int pname, Pointer<Void>? params) {
  final _glIglooInterfaceSGIX = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Void>? params),
      void Function(int pname, Pointer<Void>? params)>('glIglooInterfaceSGIX');
  return _glIglooInterfaceSGIX(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glDeleteFencesNV (GLsizei n, const GLuint *fences)
/// ```
void glDeleteFencesNV(int n, Pointer<Uint32>? fences) {
  final _glDeleteFencesNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? fences),
      void Function(int n, Pointer<Uint32>? fences)>('glDeleteFencesNV');
  return _glDeleteFencesNV(n, fences);
}

/// ```c
/// GLAPI void APIENTRY glGenFencesNV (GLsizei n, GLuint *fences)
/// ```
void glGenFencesNV(int n, Pointer<Uint32>? fences) {
  final _glGenFencesNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? fences),
      void Function(int n, Pointer<Uint32>? fences)>('glGenFencesNV');
  return _glGenFencesNV(n, fences);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsFenceNV (GLuint fence)
/// ```
int glIsFenceNV(int fence) {
  final _glIsFenceNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 fence),
      int Function(int fence)>('glIsFenceNV');
  return _glIsFenceNV(fence);
}

/// ```c
/// GLAPI GLboolean APIENTRY glTestFenceNV (GLuint fence)
/// ```
int glTestFenceNV(int fence) {
  final _glTestFenceNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 fence),
      int Function(int fence)>('glTestFenceNV');
  return _glTestFenceNV(fence);
}

/// ```c
/// GLAPI void APIENTRY glGetFenceivNV (GLuint fence, GLenum pname, GLint *params)
/// ```
void glGetFenceivNV(int fence, int pname, Pointer<Int32>? params) {
  final _glGetFenceivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 fence, Uint32 pname, Pointer<Int32>? params),
      void Function(int fence, int pname, Pointer<Int32>? params)>('glGetFenceivNV');
  return _glGetFenceivNV(fence, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFinishFenceNV (GLuint fence)
/// ```
void glFinishFenceNV(int fence) {
  final _glFinishFenceNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 fence),
      void Function(int fence)>('glFinishFenceNV');
  return _glFinishFenceNV(fence);
}

/// ```c
/// GLAPI void APIENTRY glSetFenceNV (GLuint fence, GLenum condition)
/// ```
void glSetFenceNV(int fence, int condition) {
  final _glSetFenceNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 fence, Uint32 condition),
      void Function(int fence, int condition)>('glSetFenceNV');
  return _glSetFenceNV(fence, condition);
}

/// ```c
/// GLAPI void APIENTRY glMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid *points)
/// ```
void glMapControlPointsNV(int target, int index, int type, int ustride, int vstride, int uorder, int vorder, int packed, Pointer<Void>? points) {
  final _glMapControlPointsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 type, Uint32 ustride, Uint32 vstride, Int32 uorder, Int32 vorder, Int32 packed, Pointer<Void>? points),
      void Function(int target, int index, int type, int ustride, int vstride, int uorder, int vorder, int packed, Pointer<Void>? points)>('glMapControlPointsNV');
  return _glMapControlPointsNV(target, index, type, ustride, vstride, uorder, vorder, packed, points);
}

/// ```c
/// GLAPI void APIENTRY glMapParameterivNV (GLenum target, GLenum pname, const GLint *params)
/// ```
void glMapParameterivNV(int target, int pname, Pointer<Int32>? params) {
  final _glMapParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glMapParameterivNV');
  return _glMapParameterivNV(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMapParameterfvNV (GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glMapParameterfvNV(int target, int pname, Pointer<Float>? params) {
  final _glMapParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glMapParameterfvNV');
  return _glMapParameterfvNV(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid *points)
/// ```
void glGetMapControlPointsNV(int target, int index, int type, int ustride, int vstride, int packed, Pointer<Void>? points) {
  final _glGetMapControlPointsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 type, Uint32 ustride, Uint32 vstride, Int32 packed, Pointer<Void>? points),
      void Function(int target, int index, int type, int ustride, int vstride, int packed, Pointer<Void>? points)>('glGetMapControlPointsNV');
  return _glGetMapControlPointsNV(target, index, type, ustride, vstride, packed, points);
}

/// ```c
/// GLAPI void APIENTRY glGetMapParameterivNV (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetMapParameterivNV(int target, int pname, Pointer<Int32>? params) {
  final _glGetMapParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetMapParameterivNV');
  return _glGetMapParameterivNV(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMapParameterfvNV (GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetMapParameterfvNV(int target, int pname, Pointer<Float>? params) {
  final _glGetMapParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int pname, Pointer<Float>? params)>('glGetMapParameterfvNV');
  return _glGetMapParameterfvNV(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMapAttribParameterivNV (GLenum target, GLuint index, GLenum pname, GLint *params)
/// ```
void glGetMapAttribParameterivNV(int target, int index, int pname, Pointer<Int32>? params) {
  final _glGetMapAttribParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int index, int pname, Pointer<Int32>? params)>('glGetMapAttribParameterivNV');
  return _glGetMapAttribParameterivNV(target, index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMapAttribParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat *params)
/// ```
void glGetMapAttribParameterfvNV(int target, int index, int pname, Pointer<Float>? params) {
  final _glGetMapAttribParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int index, int pname, Pointer<Float>? params)>('glGetMapAttribParameterfvNV');
  return _glGetMapAttribParameterfvNV(target, index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glEvalMapsNV (GLenum target, GLenum mode)
/// ```
void glEvalMapsNV(int target, int mode) {
  final _glEvalMapsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 mode),
      void Function(int target, int mode)>('glEvalMapsNV');
  return _glEvalMapsNV(target, mode);
}

/// ```c
/// GLAPI void APIENTRY glCombinerStageParameterfvNV (GLenum stage, GLenum pname, const GLfloat *params)
/// ```
void glCombinerStageParameterfvNV(int stage, int pname, Pointer<Float>? params) {
  final _glCombinerStageParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 pname, Pointer<Float>? params),
      void Function(int stage, int pname, Pointer<Float>? params)>('glCombinerStageParameterfvNV');
  return _glCombinerStageParameterfvNV(stage, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetCombinerStageParameterfvNV (GLenum stage, GLenum pname, GLfloat *params)
/// ```
void glGetCombinerStageParameterfvNV(int stage, int pname, Pointer<Float>? params) {
  final _glGetCombinerStageParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stage, Uint32 pname, Pointer<Float>? params),
      void Function(int stage, int pname, Pointer<Float>? params)>('glGetCombinerStageParameterfvNV');
  return _glGetCombinerStageParameterfvNV(stage, pname, params);
}

/// ```c
/// GLAPI GLboolean APIENTRY glAreProgramsResidentNV (GLsizei n, const GLuint *programs, GLboolean *residences)
/// ```
int glAreProgramsResidentNV(int n, Pointer<Uint32>? programs, Pointer<Int32>? residences) {
  final _glAreProgramsResidentNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 n, Pointer<Uint32>? programs, Pointer<Int32>? residences),
      int Function(int n, Pointer<Uint32>? programs, Pointer<Int32>? residences)>('glAreProgramsResidentNV');
  return _glAreProgramsResidentNV(n, programs, residences);
}

/// ```c
/// GLAPI void APIENTRY glBindProgramNV (GLenum target, GLuint id)
/// ```
void glBindProgramNV(int target, int id) {
  final _glBindProgramNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id),
      void Function(int target, int id)>('glBindProgramNV');
  return _glBindProgramNV(target, id);
}

/// ```c
/// GLAPI void APIENTRY glDeleteProgramsNV (GLsizei n, const GLuint *programs)
/// ```
void glDeleteProgramsNV(int n, Pointer<Uint32>? programs) {
  final _glDeleteProgramsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? programs),
      void Function(int n, Pointer<Uint32>? programs)>('glDeleteProgramsNV');
  return _glDeleteProgramsNV(n, programs);
}

/// ```c
/// GLAPI void APIENTRY glExecuteProgramNV (GLenum target, GLuint id, const GLfloat *params)
/// ```
void glExecuteProgramNV(int target, int id, Pointer<Float>? params) {
  final _glExecuteProgramNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id, Pointer<Float>? params),
      void Function(int target, int id, Pointer<Float>? params)>('glExecuteProgramNV');
  return _glExecuteProgramNV(target, id, params);
}

/// ```c
/// GLAPI void APIENTRY glGenProgramsNV (GLsizei n, GLuint *programs)
/// ```
void glGenProgramsNV(int n, Pointer<Uint32>? programs) {
  final _glGenProgramsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? programs),
      void Function(int n, Pointer<Uint32>? programs)>('glGenProgramsNV');
  return _glGenProgramsNV(n, programs);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramParameterdvNV (GLenum target, GLuint index, GLenum pname, GLdouble *params)
/// ```
void glGetProgramParameterdvNV(int target, int index, int pname, Pointer<Double>? params) {
  final _glGetProgramParameterdvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 pname, Pointer<Double>? params),
      void Function(int target, int index, int pname, Pointer<Double>? params)>('glGetProgramParameterdvNV');
  return _glGetProgramParameterdvNV(target, index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat *params)
/// ```
void glGetProgramParameterfvNV(int target, int index, int pname, Pointer<Float>? params) {
  final _glGetProgramParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 pname, Pointer<Float>? params),
      void Function(int target, int index, int pname, Pointer<Float>? params)>('glGetProgramParameterfvNV');
  return _glGetProgramParameterfvNV(target, index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramivNV (GLuint id, GLenum pname, GLint *params)
/// ```
void glGetProgramivNV(int id, int pname, Pointer<Int32>? params) {
  final _glGetProgramivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int32>? params),
      void Function(int id, int pname, Pointer<Int32>? params)>('glGetProgramivNV');
  return _glGetProgramivNV(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramStringNV (GLuint id, GLenum pname, GLubyte *program)
/// ```
void glGetProgramStringNV(int id, int pname, Pointer<Uint8>? program) {
  final _glGetProgramStringNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Uint8>? program),
      void Function(int id, int pname, Pointer<Uint8>? program)>('glGetProgramStringNV');
  return _glGetProgramStringNV(id, pname, program);
}

/// ```c
/// GLAPI void APIENTRY glGetTrackMatrixivNV (GLenum target, GLuint address, GLenum pname, GLint *params)
/// ```
void glGetTrackMatrixivNV(int target, int address, int pname, Pointer<Int32>? params) {
  final _glGetTrackMatrixivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 address, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int address, int pname, Pointer<Int32>? params)>('glGetTrackMatrixivNV');
  return _glGetTrackMatrixivNV(target, address, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribdvNV (GLuint index, GLenum pname, GLdouble *params)
/// ```
void glGetVertexAttribdvNV(int index, int pname, Pointer<Double>? params) {
  final _glGetVertexAttribdvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Double>? params),
      void Function(int index, int pname, Pointer<Double>? params)>('glGetVertexAttribdvNV');
  return _glGetVertexAttribdvNV(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribfvNV (GLuint index, GLenum pname, GLfloat *params)
/// ```
void glGetVertexAttribfvNV(int index, int pname, Pointer<Float>? params) {
  final _glGetVertexAttribfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Float>? params),
      void Function(int index, int pname, Pointer<Float>? params)>('glGetVertexAttribfvNV');
  return _glGetVertexAttribfvNV(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribivNV (GLuint index, GLenum pname, GLint *params)
/// ```
void glGetVertexAttribivNV(int index, int pname, Pointer<Int32>? params) {
  final _glGetVertexAttribivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int index, int pname, Pointer<Int32>? params)>('glGetVertexAttribivNV');
  return _glGetVertexAttribivNV(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribPointervNV (GLuint index, GLenum pname, GLvoid* *pointer)
/// ```
void glGetVertexAttribPointervNV(int index, int pname, Pointer<Pointer<Void>>? pointer) {
  final _glGetVertexAttribPointervNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Pointer<Void>>? pointer),
      void Function(int index, int pname, Pointer<Pointer<Void>>? pointer)>('glGetVertexAttribPointervNV');
  return _glGetVertexAttribPointervNV(index, pname, pointer);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsProgramNV (GLuint id)
/// ```
int glIsProgramNV(int id) {
  final _glIsProgramNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id),
      int Function(int id)>('glIsProgramNV');
  return _glIsProgramNV(id);
}

/// ```c
/// GLAPI void APIENTRY glLoadProgramNV (GLenum target, GLuint id, GLsizei len, const GLubyte *program)
/// ```
void glLoadProgramNV(int target, int id, int len, Pointer<Uint8>? program) {
  final _glLoadProgramNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id, Uint32 len, Pointer<Uint8>? program),
      void Function(int target, int id, int len, Pointer<Uint8>? program)>('glLoadProgramNV');
  return _glLoadProgramNV(target, id, len, program);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameter4dNV (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glProgramParameter4dNV(int target, int index, double x, double y, double z, double w) {
  final _glProgramParameter4dNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int target, int index, double x, double y, double z, double w)>('glProgramParameter4dNV');
  return _glProgramParameter4dNV(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameter4dvNV (GLenum target, GLuint index, const GLdouble *v)
/// ```
void glProgramParameter4dvNV(int target, int index, Pointer<Double>? v) {
  final _glProgramParameter4dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? v),
      void Function(int target, int index, Pointer<Double>? v)>('glProgramParameter4dvNV');
  return _glProgramParameter4dvNV(target, index, v);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameter4fNV (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glProgramParameter4fNV(int target, int index, double x, double y, double z, double w) {
  final _glProgramParameter4fNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int target, int index, double x, double y, double z, double w)>('glProgramParameter4fNV');
  return _glProgramParameter4fNV(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameter4fvNV (GLenum target, GLuint index, const GLfloat *v)
/// ```
void glProgramParameter4fvNV(int target, int index, Pointer<Float>? v) {
  final _glProgramParameter4fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? v),
      void Function(int target, int index, Pointer<Float>? v)>('glProgramParameter4fvNV');
  return _glProgramParameter4fvNV(target, index, v);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameters4dvNV (GLenum target, GLuint index, GLuint count, const GLdouble *v)
/// ```
void glProgramParameters4dvNV(int target, int index, int count, Pointer<Double>? v) {
  final _glProgramParameters4dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Double>? v),
      void Function(int target, int index, int count, Pointer<Double>? v)>('glProgramParameters4dvNV');
  return _glProgramParameters4dvNV(target, index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameters4fvNV (GLenum target, GLuint index, GLuint count, const GLfloat *v)
/// ```
void glProgramParameters4fvNV(int target, int index, int count, Pointer<Float>? v) {
  final _glProgramParameters4fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Float>? v),
      void Function(int target, int index, int count, Pointer<Float>? v)>('glProgramParameters4fvNV');
  return _glProgramParameters4fvNV(target, index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glRequestResidentProgramsNV (GLsizei n, const GLuint *programs)
/// ```
void glRequestResidentProgramsNV(int n, Pointer<Uint32>? programs) {
  final _glRequestResidentProgramsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? programs),
      void Function(int n, Pointer<Uint32>? programs)>('glRequestResidentProgramsNV');
  return _glRequestResidentProgramsNV(n, programs);
}

/// ```c
/// GLAPI void APIENTRY glTrackMatrixNV (GLenum target, GLuint address, GLenum matrix, GLenum transform)
/// ```
void glTrackMatrixNV(int target, int address, int matrix, int transform) {
  final _glTrackMatrixNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 address, Uint32 matrix, Uint32 transform),
      void Function(int target, int address, int matrix, int transform)>('glTrackMatrixNV');
  return _glTrackMatrixNV(target, address, matrix, transform);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribPointerNV (GLuint index, GLint fsize, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribPointerNV(int index, int fsize, int type, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribPointerNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 fsize, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int fsize, int type, int stride, Pointer<Void>? pointer)>('glVertexAttribPointerNV');
  return _glVertexAttribPointerNV(index, fsize, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1dNV (GLuint index, GLdouble x)
/// ```
void glVertexAttrib1dNV(int index, double x) {
  final _glVertexAttrib1dNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x),
      void Function(int index, double x)>('glVertexAttrib1dNV');
  return _glVertexAttrib1dNV(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1dvNV (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib1dvNV(int index, Pointer<Double>? v) {
  final _glVertexAttrib1dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib1dvNV');
  return _glVertexAttrib1dvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1fNV (GLuint index, GLfloat x)
/// ```
void glVertexAttrib1fNV(int index, double x) {
  final _glVertexAttrib1fNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x),
      void Function(int index, double x)>('glVertexAttrib1fNV');
  return _glVertexAttrib1fNV(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1fvNV (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib1fvNV(int index, Pointer<Float>? v) {
  final _glVertexAttrib1fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib1fvNV');
  return _glVertexAttrib1fvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1sNV (GLuint index, GLshort x)
/// ```
void glVertexAttrib1sNV(int index, int x) {
  final _glVertexAttrib1sNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x),
      void Function(int index, int x)>('glVertexAttrib1sNV');
  return _glVertexAttrib1sNV(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1svNV (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib1svNV(int index, Pointer<Int16>? v) {
  final _glVertexAttrib1svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib1svNV');
  return _glVertexAttrib1svNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2dNV (GLuint index, GLdouble x, GLdouble y)
/// ```
void glVertexAttrib2dNV(int index, double x, double y) {
  final _glVertexAttrib2dNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y),
      void Function(int index, double x, double y)>('glVertexAttrib2dNV');
  return _glVertexAttrib2dNV(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2dvNV (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib2dvNV(int index, Pointer<Double>? v) {
  final _glVertexAttrib2dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib2dvNV');
  return _glVertexAttrib2dvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2fNV (GLuint index, GLfloat x, GLfloat y)
/// ```
void glVertexAttrib2fNV(int index, double x, double y) {
  final _glVertexAttrib2fNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y),
      void Function(int index, double x, double y)>('glVertexAttrib2fNV');
  return _glVertexAttrib2fNV(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2fvNV (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib2fvNV(int index, Pointer<Float>? v) {
  final _glVertexAttrib2fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib2fvNV');
  return _glVertexAttrib2fvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2sNV (GLuint index, GLshort x, GLshort y)
/// ```
void glVertexAttrib2sNV(int index, int x, int y) {
  final _glVertexAttrib2sNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y),
      void Function(int index, int x, int y)>('glVertexAttrib2sNV');
  return _glVertexAttrib2sNV(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2svNV (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib2svNV(int index, Pointer<Int16>? v) {
  final _glVertexAttrib2svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib2svNV');
  return _glVertexAttrib2svNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glVertexAttrib3dNV(int index, double x, double y, double z) {
  final _glVertexAttrib3dNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z),
      void Function(int index, double x, double y, double z)>('glVertexAttrib3dNV');
  return _glVertexAttrib3dNV(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3dvNV (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib3dvNV(int index, Pointer<Double>? v) {
  final _glVertexAttrib3dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib3dvNV');
  return _glVertexAttrib3dvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glVertexAttrib3fNV(int index, double x, double y, double z) {
  final _glVertexAttrib3fNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float z),
      void Function(int index, double x, double y, double z)>('glVertexAttrib3fNV');
  return _glVertexAttrib3fNV(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3fvNV (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib3fvNV(int index, Pointer<Float>? v) {
  final _glVertexAttrib3fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib3fvNV');
  return _glVertexAttrib3fvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3sNV (GLuint index, GLshort x, GLshort y, GLshort z)
/// ```
void glVertexAttrib3sNV(int index, int x, int y, int z) {
  final _glVertexAttrib3sNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y, Int16 z),
      void Function(int index, int x, int y, int z)>('glVertexAttrib3sNV');
  return _glVertexAttrib3sNV(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3svNV (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib3svNV(int index, Pointer<Int16>? v) {
  final _glVertexAttrib3svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib3svNV');
  return _glVertexAttrib3svNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glVertexAttrib4dNV(int index, double x, double y, double z, double w) {
  final _glVertexAttrib4dNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttrib4dNV');
  return _glVertexAttrib4dNV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4dvNV (GLuint index, const GLdouble *v)
/// ```
void glVertexAttrib4dvNV(int index, Pointer<Double>? v) {
  final _glVertexAttrib4dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttrib4dvNV');
  return _glVertexAttrib4dvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glVertexAttrib4fNV(int index, double x, double y, double z, double w) {
  final _glVertexAttrib4fNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttrib4fNV');
  return _glVertexAttrib4fNV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4fvNV (GLuint index, const GLfloat *v)
/// ```
void glVertexAttrib4fvNV(int index, Pointer<Float>? v) {
  final _glVertexAttrib4fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Float>? v),
      void Function(int index, Pointer<Float>? v)>('glVertexAttrib4fvNV');
  return _glVertexAttrib4fvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4sNV (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
/// ```
void glVertexAttrib4sNV(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4sNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int16 x, Int16 y, Int16 z, Int16 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4sNV');
  return _glVertexAttrib4sNV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4svNV (GLuint index, const GLshort *v)
/// ```
void glVertexAttrib4svNV(int index, Pointer<Int16>? v) {
  final _glVertexAttrib4svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttrib4svNV');
  return _glVertexAttrib4svNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4ubNV (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
/// ```
void glVertexAttrib4ubNV(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4ubNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint8 x, Uint8 y, Uint8 z, Uint8 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4ubNV');
  return _glVertexAttrib4ubNV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4ubvNV (GLuint index, const GLubyte *v)
/// ```
void glVertexAttrib4ubvNV(int index, Pointer<Uint8>? v) {
  final _glVertexAttrib4ubvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttrib4ubvNV');
  return _glVertexAttrib4ubvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs1dvNV (GLuint index, GLsizei count, const GLdouble *v)
/// ```
void glVertexAttribs1dvNV(int index, int count, Pointer<Double>? v) {
  final _glVertexAttribs1dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Double>? v),
      void Function(int index, int count, Pointer<Double>? v)>('glVertexAttribs1dvNV');
  return _glVertexAttribs1dvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs1fvNV (GLuint index, GLsizei count, const GLfloat *v)
/// ```
void glVertexAttribs1fvNV(int index, int count, Pointer<Float>? v) {
  final _glVertexAttribs1fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Float>? v),
      void Function(int index, int count, Pointer<Float>? v)>('glVertexAttribs1fvNV');
  return _glVertexAttribs1fvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs1svNV (GLuint index, GLsizei count, const GLshort *v)
/// ```
void glVertexAttribs1svNV(int index, int count, Pointer<Int16>? v) {
  final _glVertexAttribs1svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Int16>? v),
      void Function(int index, int count, Pointer<Int16>? v)>('glVertexAttribs1svNV');
  return _glVertexAttribs1svNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs2dvNV (GLuint index, GLsizei count, const GLdouble *v)
/// ```
void glVertexAttribs2dvNV(int index, int count, Pointer<Double>? v) {
  final _glVertexAttribs2dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Double>? v),
      void Function(int index, int count, Pointer<Double>? v)>('glVertexAttribs2dvNV');
  return _glVertexAttribs2dvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs2fvNV (GLuint index, GLsizei count, const GLfloat *v)
/// ```
void glVertexAttribs2fvNV(int index, int count, Pointer<Float>? v) {
  final _glVertexAttribs2fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Float>? v),
      void Function(int index, int count, Pointer<Float>? v)>('glVertexAttribs2fvNV');
  return _glVertexAttribs2fvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs2svNV (GLuint index, GLsizei count, const GLshort *v)
/// ```
void glVertexAttribs2svNV(int index, int count, Pointer<Int16>? v) {
  final _glVertexAttribs2svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Int16>? v),
      void Function(int index, int count, Pointer<Int16>? v)>('glVertexAttribs2svNV');
  return _glVertexAttribs2svNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs3dvNV (GLuint index, GLsizei count, const GLdouble *v)
/// ```
void glVertexAttribs3dvNV(int index, int count, Pointer<Double>? v) {
  final _glVertexAttribs3dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Double>? v),
      void Function(int index, int count, Pointer<Double>? v)>('glVertexAttribs3dvNV');
  return _glVertexAttribs3dvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs3fvNV (GLuint index, GLsizei count, const GLfloat *v)
/// ```
void glVertexAttribs3fvNV(int index, int count, Pointer<Float>? v) {
  final _glVertexAttribs3fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Float>? v),
      void Function(int index, int count, Pointer<Float>? v)>('glVertexAttribs3fvNV');
  return _glVertexAttribs3fvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs3svNV (GLuint index, GLsizei count, const GLshort *v)
/// ```
void glVertexAttribs3svNV(int index, int count, Pointer<Int16>? v) {
  final _glVertexAttribs3svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Int16>? v),
      void Function(int index, int count, Pointer<Int16>? v)>('glVertexAttribs3svNV');
  return _glVertexAttribs3svNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs4dvNV (GLuint index, GLsizei count, const GLdouble *v)
/// ```
void glVertexAttribs4dvNV(int index, int count, Pointer<Double>? v) {
  final _glVertexAttribs4dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Double>? v),
      void Function(int index, int count, Pointer<Double>? v)>('glVertexAttribs4dvNV');
  return _glVertexAttribs4dvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs4fvNV (GLuint index, GLsizei count, const GLfloat *v)
/// ```
void glVertexAttribs4fvNV(int index, int count, Pointer<Float>? v) {
  final _glVertexAttribs4fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Float>? v),
      void Function(int index, int count, Pointer<Float>? v)>('glVertexAttribs4fvNV');
  return _glVertexAttribs4fvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs4svNV (GLuint index, GLsizei count, const GLshort *v)
/// ```
void glVertexAttribs4svNV(int index, int count, Pointer<Int16>? v) {
  final _glVertexAttribs4svNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Int16>? v),
      void Function(int index, int count, Pointer<Int16>? v)>('glVertexAttribs4svNV');
  return _glVertexAttribs4svNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs4ubvNV (GLuint index, GLsizei count, const GLubyte *v)
/// ```
void glVertexAttribs4ubvNV(int index, int count, Pointer<Uint8>? v) {
  final _glVertexAttribs4ubvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 count, Pointer<Uint8>? v),
      void Function(int index, int count, Pointer<Uint8>? v)>('glVertexAttribs4ubvNV');
  return _glVertexAttribs4ubvNV(index, count, v);
}

/// ```c
/// GLAPI void APIENTRY glTexBumpParameterivATI (GLenum pname, const GLint *param)
/// ```
void glTexBumpParameterivATI(int pname, Pointer<Int32>? param) {
  final _glTexBumpParameterivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? param),
      void Function(int pname, Pointer<Int32>? param)>('glTexBumpParameterivATI');
  return _glTexBumpParameterivATI(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glTexBumpParameterfvATI (GLenum pname, const GLfloat *param)
/// ```
void glTexBumpParameterfvATI(int pname, Pointer<Float>? param) {
  final _glTexBumpParameterfvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? param),
      void Function(int pname, Pointer<Float>? param)>('glTexBumpParameterfvATI');
  return _glTexBumpParameterfvATI(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glGetTexBumpParameterivATI (GLenum pname, GLint *param)
/// ```
void glGetTexBumpParameterivATI(int pname, Pointer<Int32>? param) {
  final _glGetTexBumpParameterivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? param),
      void Function(int pname, Pointer<Int32>? param)>('glGetTexBumpParameterivATI');
  return _glGetTexBumpParameterivATI(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glGetTexBumpParameterfvATI (GLenum pname, GLfloat *param)
/// ```
void glGetTexBumpParameterfvATI(int pname, Pointer<Float>? param) {
  final _glGetTexBumpParameterfvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Float>? param),
      void Function(int pname, Pointer<Float>? param)>('glGetTexBumpParameterfvATI');
  return _glGetTexBumpParameterfvATI(pname, param);
}

/// ```c
/// GLAPI GLuint APIENTRY glGenFragmentShadersATI (GLuint range)
/// ```
int glGenFragmentShadersATI(int range) {
  final _glGenFragmentShadersATI = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 range),
      int Function(int range)>('glGenFragmentShadersATI');
  return _glGenFragmentShadersATI(range);
}

/// ```c
/// GLAPI void APIENTRY glBindFragmentShaderATI (GLuint id)
/// ```
void glBindFragmentShaderATI(int id) {
  final _glBindFragmentShaderATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glBindFragmentShaderATI');
  return _glBindFragmentShaderATI(id);
}

/// ```c
/// GLAPI void APIENTRY glDeleteFragmentShaderATI (GLuint id)
/// ```
void glDeleteFragmentShaderATI(int id) {
  final _glDeleteFragmentShaderATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glDeleteFragmentShaderATI');
  return _glDeleteFragmentShaderATI(id);
}

/// ```c
/// GLAPI void APIENTRY glBeginFragmentShaderATI (void)
/// ```
void glBeginFragmentShaderATI() {
  final _glBeginFragmentShaderATI = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glBeginFragmentShaderATI');
  return _glBeginFragmentShaderATI();
}

/// ```c
/// GLAPI void APIENTRY glEndFragmentShaderATI (void)
/// ```
void glEndFragmentShaderATI() {
  final _glEndFragmentShaderATI = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndFragmentShaderATI');
  return _glEndFragmentShaderATI();
}

/// ```c
/// GLAPI void APIENTRY glPassTexCoordATI (GLuint dst, GLuint coord, GLenum swizzle)
/// ```
void glPassTexCoordATI(int dst, int coord, int swizzle) {
  final _glPassTexCoordATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dst, Uint32 coord, Uint32 swizzle),
      void Function(int dst, int coord, int swizzle)>('glPassTexCoordATI');
  return _glPassTexCoordATI(dst, coord, swizzle);
}

/// ```c
/// GLAPI void APIENTRY glSampleMapATI (GLuint dst, GLuint interp, GLenum swizzle)
/// ```
void glSampleMapATI(int dst, int interp, int swizzle) {
  final _glSampleMapATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dst, Uint32 interp, Uint32 swizzle),
      void Function(int dst, int interp, int swizzle)>('glSampleMapATI');
  return _glSampleMapATI(dst, interp, swizzle);
}

/// ```c
/// GLAPI void APIENTRY glColorFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)
/// ```
void glColorFragmentOp1ATI(int op, int dst, int dstMask, int dstMod, int arg1, int arg1Rep, int arg1Mod) {
  final _glColorFragmentOp1ATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 dst, Uint32 dstMask, Uint32 dstMod, Uint32 arg1, Uint32 arg1Rep, Uint32 arg1Mod),
      void Function(int op, int dst, int dstMask, int dstMod, int arg1, int arg1Rep, int arg1Mod)>('glColorFragmentOp1ATI');
  return _glColorFragmentOp1ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod);
}

/// ```c
/// GLAPI void APIENTRY glColorFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)
/// ```
void glColorFragmentOp2ATI(int op, int dst, int dstMask, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod) {
  final _glColorFragmentOp2ATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 dst, Uint32 dstMask, Uint32 dstMod, Uint32 arg1, Uint32 arg1Rep, Uint32 arg1Mod, Uint32 arg2, Uint32 arg2Rep, Uint32 arg2Mod),
      void Function(int op, int dst, int dstMask, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod)>('glColorFragmentOp2ATI');
  return _glColorFragmentOp2ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod);
}

/// ```c
/// GLAPI void APIENTRY glColorFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)
/// ```
void glColorFragmentOp3ATI(int op, int dst, int dstMask, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod, int arg3, int arg3Rep, int arg3Mod) {
  final _glColorFragmentOp3ATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 dst, Uint32 dstMask, Uint32 dstMod, Uint32 arg1, Uint32 arg1Rep, Uint32 arg1Mod, Uint32 arg2, Uint32 arg2Rep, Uint32 arg2Mod, Uint32 arg3, Uint32 arg3Rep, Uint32 arg3Mod),
      void Function(int op, int dst, int dstMask, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod, int arg3, int arg3Rep, int arg3Mod)>('glColorFragmentOp3ATI');
  return _glColorFragmentOp3ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod, arg3, arg3Rep, arg3Mod);
}

/// ```c
/// GLAPI void APIENTRY glAlphaFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)
/// ```
void glAlphaFragmentOp1ATI(int op, int dst, int dstMod, int arg1, int arg1Rep, int arg1Mod) {
  final _glAlphaFragmentOp1ATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 dst, Uint32 dstMod, Uint32 arg1, Uint32 arg1Rep, Uint32 arg1Mod),
      void Function(int op, int dst, int dstMod, int arg1, int arg1Rep, int arg1Mod)>('glAlphaFragmentOp1ATI');
  return _glAlphaFragmentOp1ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod);
}

/// ```c
/// GLAPI void APIENTRY glAlphaFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)
/// ```
void glAlphaFragmentOp2ATI(int op, int dst, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod) {
  final _glAlphaFragmentOp2ATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 dst, Uint32 dstMod, Uint32 arg1, Uint32 arg1Rep, Uint32 arg1Mod, Uint32 arg2, Uint32 arg2Rep, Uint32 arg2Mod),
      void Function(int op, int dst, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod)>('glAlphaFragmentOp2ATI');
  return _glAlphaFragmentOp2ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod);
}

/// ```c
/// GLAPI void APIENTRY glAlphaFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)
/// ```
void glAlphaFragmentOp3ATI(int op, int dst, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod, int arg3, int arg3Rep, int arg3Mod) {
  final _glAlphaFragmentOp3ATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 dst, Uint32 dstMod, Uint32 arg1, Uint32 arg1Rep, Uint32 arg1Mod, Uint32 arg2, Uint32 arg2Rep, Uint32 arg2Mod, Uint32 arg3, Uint32 arg3Rep, Uint32 arg3Mod),
      void Function(int op, int dst, int dstMod, int arg1, int arg1Rep, int arg1Mod, int arg2, int arg2Rep, int arg2Mod, int arg3, int arg3Rep, int arg3Mod)>('glAlphaFragmentOp3ATI');
  return _glAlphaFragmentOp3ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod, arg3, arg3Rep, arg3Mod);
}

/// ```c
/// GLAPI void APIENTRY glSetFragmentShaderConstantATI (GLuint dst, const GLfloat *value)
/// ```
void glSetFragmentShaderConstantATI(int dst, Pointer<Float>? value) {
  final _glSetFragmentShaderConstantATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 dst, Pointer<Float>? value),
      void Function(int dst, Pointer<Float>? value)>('glSetFragmentShaderConstantATI');
  return _glSetFragmentShaderConstantATI(dst, value);
}

/// ```c
/// GLAPI void APIENTRY glPNTrianglesiATI (GLenum pname, GLint param)
/// ```
void glPNTrianglesiATI(int pname, int param) {
  final _glPNTrianglesiATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glPNTrianglesiATI');
  return _glPNTrianglesiATI(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPNTrianglesfATI (GLenum pname, GLfloat param)
/// ```
void glPNTrianglesfATI(int pname, double param) {
  final _glPNTrianglesfATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glPNTrianglesfATI');
  return _glPNTrianglesfATI(pname, param);
}

/// ```c
/// GLAPI GLuint APIENTRY glNewObjectBufferATI (GLsizei size, const GLvoid *pointer, GLenum usage)
/// ```
int glNewObjectBufferATI(int size, Pointer<Void>? pointer, int usage) {
  final _glNewObjectBufferATI = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 size, Pointer<Void>? pointer, Uint32 usage),
      int Function(int size, Pointer<Void>? pointer, int usage)>('glNewObjectBufferATI');
  return _glNewObjectBufferATI(size, pointer, usage);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsObjectBufferATI (GLuint buffer)
/// ```
int glIsObjectBufferATI(int buffer) {
  final _glIsObjectBufferATI = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 buffer),
      int Function(int buffer)>('glIsObjectBufferATI');
  return _glIsObjectBufferATI(buffer);
}

/// ```c
/// GLAPI void APIENTRY glUpdateObjectBufferATI (GLuint buffer, GLuint offset, GLsizei size, const GLvoid *pointer, GLenum preserve)
/// ```
void glUpdateObjectBufferATI(int buffer, int offset, int size, Pointer<Void>? pointer, int preserve) {
  final _glUpdateObjectBufferATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 offset, Uint32 size, Pointer<Void>? pointer, Uint32 preserve),
      void Function(int buffer, int offset, int size, Pointer<Void>? pointer, int preserve)>('glUpdateObjectBufferATI');
  return _glUpdateObjectBufferATI(buffer, offset, size, pointer, preserve);
}

/// ```c
/// GLAPI void APIENTRY glGetObjectBufferfvATI (GLuint buffer, GLenum pname, GLfloat *params)
/// ```
void glGetObjectBufferfvATI(int buffer, int pname, Pointer<Float>? params) {
  final _glGetObjectBufferfvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 pname, Pointer<Float>? params),
      void Function(int buffer, int pname, Pointer<Float>? params)>('glGetObjectBufferfvATI');
  return _glGetObjectBufferfvATI(buffer, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetObjectBufferivATI (GLuint buffer, GLenum pname, GLint *params)
/// ```
void glGetObjectBufferivATI(int buffer, int pname, Pointer<Int32>? params) {
  final _glGetObjectBufferivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 pname, Pointer<Int32>? params),
      void Function(int buffer, int pname, Pointer<Int32>? params)>('glGetObjectBufferivATI');
  return _glGetObjectBufferivATI(buffer, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glFreeObjectBufferATI (GLuint buffer)
/// ```
void glFreeObjectBufferATI(int buffer) {
  final _glFreeObjectBufferATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer),
      void Function(int buffer)>('glFreeObjectBufferATI');
  return _glFreeObjectBufferATI(buffer);
}

/// ```c
/// GLAPI void APIENTRY glArrayObjectATI (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)
/// ```
void glArrayObjectATI(int array, int size, int type, int stride, int buffer, int offset) {
  final _glArrayObjectATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array, Int32 size, Uint32 type, Uint32 stride, Uint32 buffer, Uint32 offset),
      void Function(int array, int size, int type, int stride, int buffer, int offset)>('glArrayObjectATI');
  return _glArrayObjectATI(array, size, type, stride, buffer, offset);
}

/// ```c
/// GLAPI void APIENTRY glGetArrayObjectfvATI (GLenum array, GLenum pname, GLfloat *params)
/// ```
void glGetArrayObjectfvATI(int array, int pname, Pointer<Float>? params) {
  final _glGetArrayObjectfvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array, Uint32 pname, Pointer<Float>? params),
      void Function(int array, int pname, Pointer<Float>? params)>('glGetArrayObjectfvATI');
  return _glGetArrayObjectfvATI(array, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetArrayObjectivATI (GLenum array, GLenum pname, GLint *params)
/// ```
void glGetArrayObjectivATI(int array, int pname, Pointer<Int32>? params) {
  final _glGetArrayObjectivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array, Uint32 pname, Pointer<Int32>? params),
      void Function(int array, int pname, Pointer<Int32>? params)>('glGetArrayObjectivATI');
  return _glGetArrayObjectivATI(array, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVariantArrayObjectATI (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)
/// ```
void glVariantArrayObjectATI(int id, int type, int stride, int buffer, int offset) {
  final _glVariantArrayObjectATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 type, Uint32 stride, Uint32 buffer, Uint32 offset),
      void Function(int id, int type, int stride, int buffer, int offset)>('glVariantArrayObjectATI');
  return _glVariantArrayObjectATI(id, type, stride, buffer, offset);
}

/// ```c
/// GLAPI void APIENTRY glGetVariantArrayObjectfvATI (GLuint id, GLenum pname, GLfloat *params)
/// ```
void glGetVariantArrayObjectfvATI(int id, int pname, Pointer<Float>? params) {
  final _glGetVariantArrayObjectfvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Float>? params),
      void Function(int id, int pname, Pointer<Float>? params)>('glGetVariantArrayObjectfvATI');
  return _glGetVariantArrayObjectfvATI(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVariantArrayObjectivATI (GLuint id, GLenum pname, GLint *params)
/// ```
void glGetVariantArrayObjectivATI(int id, int pname, Pointer<Int32>? params) {
  final _glGetVariantArrayObjectivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int32>? params),
      void Function(int id, int pname, Pointer<Int32>? params)>('glGetVariantArrayObjectivATI');
  return _glGetVariantArrayObjectivATI(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glBeginVertexShaderEXT (void)
/// ```
void glBeginVertexShaderEXT() {
  final _glBeginVertexShaderEXT = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glBeginVertexShaderEXT');
  return _glBeginVertexShaderEXT();
}

/// ```c
/// GLAPI void APIENTRY glEndVertexShaderEXT (void)
/// ```
void glEndVertexShaderEXT() {
  final _glEndVertexShaderEXT = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndVertexShaderEXT');
  return _glEndVertexShaderEXT();
}

/// ```c
/// GLAPI void APIENTRY glBindVertexShaderEXT (GLuint id)
/// ```
void glBindVertexShaderEXT(int id) {
  final _glBindVertexShaderEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glBindVertexShaderEXT');
  return _glBindVertexShaderEXT(id);
}

/// ```c
/// GLAPI GLuint APIENTRY glGenVertexShadersEXT (GLuint range)
/// ```
int glGenVertexShadersEXT(int range) {
  final _glGenVertexShadersEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 range),
      int Function(int range)>('glGenVertexShadersEXT');
  return _glGenVertexShadersEXT(range);
}

/// ```c
/// GLAPI void APIENTRY glDeleteVertexShaderEXT (GLuint id)
/// ```
void glDeleteVertexShaderEXT(int id) {
  final _glDeleteVertexShaderEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glDeleteVertexShaderEXT');
  return _glDeleteVertexShaderEXT(id);
}

/// ```c
/// GLAPI void APIENTRY glShaderOp1EXT (GLenum op, GLuint res, GLuint arg1)
/// ```
void glShaderOp1EXT(int op, int res, int arg1) {
  final _glShaderOp1EXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 res, Uint32 arg1),
      void Function(int op, int res, int arg1)>('glShaderOp1EXT');
  return _glShaderOp1EXT(op, res, arg1);
}

/// ```c
/// GLAPI void APIENTRY glShaderOp2EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2)
/// ```
void glShaderOp2EXT(int op, int res, int arg1, int arg2) {
  final _glShaderOp2EXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 res, Uint32 arg1, Uint32 arg2),
      void Function(int op, int res, int arg1, int arg2)>('glShaderOp2EXT');
  return _glShaderOp2EXT(op, res, arg1, arg2);
}

/// ```c
/// GLAPI void APIENTRY glShaderOp3EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3)
/// ```
void glShaderOp3EXT(int op, int res, int arg1, int arg2, int arg3) {
  final _glShaderOp3EXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 op, Uint32 res, Uint32 arg1, Uint32 arg2, Uint32 arg3),
      void Function(int op, int res, int arg1, int arg2, int arg3)>('glShaderOp3EXT');
  return _glShaderOp3EXT(op, res, arg1, arg2, arg3);
}

/// ```c
/// GLAPI void APIENTRY glSwizzleEXT (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)
/// ```
void glSwizzleEXT(int res, int in_, int outX, int outY, int outZ, int outW) {
  final _glSwizzleEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 res, Uint32 in_, Uint32 outX, Uint32 outY, Uint32 outZ, Uint32 outW),
      void Function(int res, int in_, int outX, int outY, int outZ, int outW)>('glSwizzleEXT');
  return _glSwizzleEXT(res, in_, outX, outY, outZ, outW);
}

/// ```c
/// GLAPI void APIENTRY glWriteMaskEXT (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)
/// ```
void glWriteMaskEXT(int res, int in_, int outX, int outY, int outZ, int outW) {
  final _glWriteMaskEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 res, Uint32 in_, Uint32 outX, Uint32 outY, Uint32 outZ, Uint32 outW),
      void Function(int res, int in_, int outX, int outY, int outZ, int outW)>('glWriteMaskEXT');
  return _glWriteMaskEXT(res, in_, outX, outY, outZ, outW);
}

/// ```c
/// GLAPI void APIENTRY glInsertComponentEXT (GLuint res, GLuint src, GLuint num)
/// ```
void glInsertComponentEXT(int res, int src, int num) {
  final _glInsertComponentEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 res, Uint32 src, Uint32 num),
      void Function(int res, int src, int num)>('glInsertComponentEXT');
  return _glInsertComponentEXT(res, src, num);
}

/// ```c
/// GLAPI void APIENTRY glExtractComponentEXT (GLuint res, GLuint src, GLuint num)
/// ```
void glExtractComponentEXT(int res, int src, int num) {
  final _glExtractComponentEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 res, Uint32 src, Uint32 num),
      void Function(int res, int src, int num)>('glExtractComponentEXT');
  return _glExtractComponentEXT(res, src, num);
}

/// ```c
/// GLAPI GLuint APIENTRY glGenSymbolsEXT (GLenum datatype, GLenum storagetype, GLenum range, GLuint components)
/// ```
int glGenSymbolsEXT(int datatype, int storagetype, int range, int components) {
  final _glGenSymbolsEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 datatype, Uint32 storagetype, Uint32 range, Uint32 components),
      int Function(int datatype, int storagetype, int range, int components)>('glGenSymbolsEXT');
  return _glGenSymbolsEXT(datatype, storagetype, range, components);
}

/// ```c
/// GLAPI void APIENTRY glSetInvariantEXT (GLuint id, GLenum type, const GLvoid *addr)
/// ```
void glSetInvariantEXT(int id, int type, Pointer<Void>? addr) {
  final _glSetInvariantEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 type, Pointer<Void>? addr),
      void Function(int id, int type, Pointer<Void>? addr)>('glSetInvariantEXT');
  return _glSetInvariantEXT(id, type, addr);
}

/// ```c
/// GLAPI void APIENTRY glSetLocalConstantEXT (GLuint id, GLenum type, const GLvoid *addr)
/// ```
void glSetLocalConstantEXT(int id, int type, Pointer<Void>? addr) {
  final _glSetLocalConstantEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 type, Pointer<Void>? addr),
      void Function(int id, int type, Pointer<Void>? addr)>('glSetLocalConstantEXT');
  return _glSetLocalConstantEXT(id, type, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantbvEXT (GLuint id, const GLbyte *addr)
/// ```
void glVariantbvEXT(int id, String addr) {
  final _glVariantbvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Utf8>? addr),
      void Function(int id, Pointer<Utf8>? addr)>('glVariantbvEXT');
  final _addrPointer = addr.toNativeUtf8();
  final _result = _glVariantbvEXT(id, _addrPointer);
  calloc.free(_addrPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVariantsvEXT (GLuint id, const GLshort *addr)
/// ```
void glVariantsvEXT(int id, Pointer<Int16>? addr) {
  final _glVariantsvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Int16>? addr),
      void Function(int id, Pointer<Int16>? addr)>('glVariantsvEXT');
  return _glVariantsvEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantivEXT (GLuint id, const GLint *addr)
/// ```
void glVariantivEXT(int id, Pointer<Int32>? addr) {
  final _glVariantivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Int32>? addr),
      void Function(int id, Pointer<Int32>? addr)>('glVariantivEXT');
  return _glVariantivEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantfvEXT (GLuint id, const GLfloat *addr)
/// ```
void glVariantfvEXT(int id, Pointer<Float>? addr) {
  final _glVariantfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Float>? addr),
      void Function(int id, Pointer<Float>? addr)>('glVariantfvEXT');
  return _glVariantfvEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantdvEXT (GLuint id, const GLdouble *addr)
/// ```
void glVariantdvEXT(int id, Pointer<Double>? addr) {
  final _glVariantdvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Double>? addr),
      void Function(int id, Pointer<Double>? addr)>('glVariantdvEXT');
  return _glVariantdvEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantubvEXT (GLuint id, const GLubyte *addr)
/// ```
void glVariantubvEXT(int id, Pointer<Uint8>? addr) {
  final _glVariantubvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Uint8>? addr),
      void Function(int id, Pointer<Uint8>? addr)>('glVariantubvEXT');
  return _glVariantubvEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantusvEXT (GLuint id, const GLushort *addr)
/// ```
void glVariantusvEXT(int id, Pointer<Uint16>? addr) {
  final _glVariantusvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Uint16>? addr),
      void Function(int id, Pointer<Uint16>? addr)>('glVariantusvEXT');
  return _glVariantusvEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantuivEXT (GLuint id, const GLuint *addr)
/// ```
void glVariantuivEXT(int id, Pointer<Uint32>? addr) {
  final _glVariantuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Pointer<Uint32>? addr),
      void Function(int id, Pointer<Uint32>? addr)>('glVariantuivEXT');
  return _glVariantuivEXT(id, addr);
}

/// ```c
/// GLAPI void APIENTRY glVariantPointerEXT (GLuint id, GLenum type, GLuint stride, const GLvoid *addr)
/// ```
void glVariantPointerEXT(int id, int type, int stride, Pointer<Void>? addr) {
  final _glVariantPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 type, Uint32 stride, Pointer<Void>? addr),
      void Function(int id, int type, int stride, Pointer<Void>? addr)>('glVariantPointerEXT');
  return _glVariantPointerEXT(id, type, stride, addr);
}

/// ```c
/// GLAPI void APIENTRY glEnableVariantClientStateEXT (GLuint id)
/// ```
void glEnableVariantClientStateEXT(int id) {
  final _glEnableVariantClientStateEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glEnableVariantClientStateEXT');
  return _glEnableVariantClientStateEXT(id);
}

/// ```c
/// GLAPI void APIENTRY glDisableVariantClientStateEXT (GLuint id)
/// ```
void glDisableVariantClientStateEXT(int id) {
  final _glDisableVariantClientStateEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glDisableVariantClientStateEXT');
  return _glDisableVariantClientStateEXT(id);
}

/// ```c
/// GLAPI GLuint APIENTRY glBindLightParameterEXT (GLenum light, GLenum value)
/// ```
int glBindLightParameterEXT(int light, int value) {
  final _glBindLightParameterEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 light, Uint32 value),
      int Function(int light, int value)>('glBindLightParameterEXT');
  return _glBindLightParameterEXT(light, value);
}

/// ```c
/// GLAPI GLuint APIENTRY glBindMaterialParameterEXT (GLenum face, GLenum value)
/// ```
int glBindMaterialParameterEXT(int face, int value) {
  final _glBindMaterialParameterEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 face, Uint32 value),
      int Function(int face, int value)>('glBindMaterialParameterEXT');
  return _glBindMaterialParameterEXT(face, value);
}

/// ```c
/// GLAPI GLuint APIENTRY glBindTexGenParameterEXT (GLenum unit, GLenum coord, GLenum value)
/// ```
int glBindTexGenParameterEXT(int unit, int coord, int value) {
  final _glBindTexGenParameterEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 unit, Uint32 coord, Uint32 value),
      int Function(int unit, int coord, int value)>('glBindTexGenParameterEXT');
  return _glBindTexGenParameterEXT(unit, coord, value);
}

/// ```c
/// GLAPI GLuint APIENTRY glBindTextureUnitParameterEXT (GLenum unit, GLenum value)
/// ```
int glBindTextureUnitParameterEXT(int unit, int value) {
  final _glBindTextureUnitParameterEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 unit, Uint32 value),
      int Function(int unit, int value)>('glBindTextureUnitParameterEXT');
  return _glBindTextureUnitParameterEXT(unit, value);
}

/// ```c
/// GLAPI GLuint APIENTRY glBindParameterEXT (GLenum value)
/// ```
int glBindParameterEXT(int value) {
  final _glBindParameterEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 value),
      int Function(int value)>('glBindParameterEXT');
  return _glBindParameterEXT(value);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsVariantEnabledEXT (GLuint id, GLenum cap)
/// ```
int glIsVariantEnabledEXT(int id, int cap) {
  final _glIsVariantEnabledEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id, Uint32 cap),
      int Function(int id, int cap)>('glIsVariantEnabledEXT');
  return _glIsVariantEnabledEXT(id, cap);
}

/// ```c
/// GLAPI void APIENTRY glGetVariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data)
/// ```
void glGetVariantBooleanvEXT(int id, int value, Pointer<Int32>? data) {
  final _glGetVariantBooleanvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Int32>? data),
      void Function(int id, int value, Pointer<Int32>? data)>('glGetVariantBooleanvEXT');
  return _glGetVariantBooleanvEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetVariantIntegervEXT (GLuint id, GLenum value, GLint *data)
/// ```
void glGetVariantIntegervEXT(int id, int value, Pointer<Int32>? data) {
  final _glGetVariantIntegervEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Int32>? data),
      void Function(int id, int value, Pointer<Int32>? data)>('glGetVariantIntegervEXT');
  return _glGetVariantIntegervEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetVariantFloatvEXT (GLuint id, GLenum value, GLfloat *data)
/// ```
void glGetVariantFloatvEXT(int id, int value, Pointer<Float>? data) {
  final _glGetVariantFloatvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Float>? data),
      void Function(int id, int value, Pointer<Float>? data)>('glGetVariantFloatvEXT');
  return _glGetVariantFloatvEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetVariantPointervEXT (GLuint id, GLenum value, GLvoid* *data)
/// ```
void glGetVariantPointervEXT(int id, int value, Pointer<Pointer<Void>>? data) {
  final _glGetVariantPointervEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Pointer<Void>>? data),
      void Function(int id, int value, Pointer<Pointer<Void>>? data)>('glGetVariantPointervEXT');
  return _glGetVariantPointervEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetInvariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data)
/// ```
void glGetInvariantBooleanvEXT(int id, int value, Pointer<Int32>? data) {
  final _glGetInvariantBooleanvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Int32>? data),
      void Function(int id, int value, Pointer<Int32>? data)>('glGetInvariantBooleanvEXT');
  return _glGetInvariantBooleanvEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetInvariantIntegervEXT (GLuint id, GLenum value, GLint *data)
/// ```
void glGetInvariantIntegervEXT(int id, int value, Pointer<Int32>? data) {
  final _glGetInvariantIntegervEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Int32>? data),
      void Function(int id, int value, Pointer<Int32>? data)>('glGetInvariantIntegervEXT');
  return _glGetInvariantIntegervEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetInvariantFloatvEXT (GLuint id, GLenum value, GLfloat *data)
/// ```
void glGetInvariantFloatvEXT(int id, int value, Pointer<Float>? data) {
  final _glGetInvariantFloatvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Float>? data),
      void Function(int id, int value, Pointer<Float>? data)>('glGetInvariantFloatvEXT');
  return _glGetInvariantFloatvEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetLocalConstantBooleanvEXT (GLuint id, GLenum value, GLboolean *data)
/// ```
void glGetLocalConstantBooleanvEXT(int id, int value, Pointer<Int32>? data) {
  final _glGetLocalConstantBooleanvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Int32>? data),
      void Function(int id, int value, Pointer<Int32>? data)>('glGetLocalConstantBooleanvEXT');
  return _glGetLocalConstantBooleanvEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetLocalConstantIntegervEXT (GLuint id, GLenum value, GLint *data)
/// ```
void glGetLocalConstantIntegervEXT(int id, int value, Pointer<Int32>? data) {
  final _glGetLocalConstantIntegervEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Int32>? data),
      void Function(int id, int value, Pointer<Int32>? data)>('glGetLocalConstantIntegervEXT');
  return _glGetLocalConstantIntegervEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glGetLocalConstantFloatvEXT (GLuint id, GLenum value, GLfloat *data)
/// ```
void glGetLocalConstantFloatvEXT(int id, int value, Pointer<Float>? data) {
  final _glGetLocalConstantFloatvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 value, Pointer<Float>? data),
      void Function(int id, int value, Pointer<Float>? data)>('glGetLocalConstantFloatvEXT');
  return _glGetLocalConstantFloatvEXT(id, value, data);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1sATI (GLenum stream, GLshort x)
/// ```
void glVertexStream1sATI(int stream, int x) {
  final _glVertexStream1sATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int16 x),
      void Function(int stream, int x)>('glVertexStream1sATI');
  return _glVertexStream1sATI(stream, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1svATI (GLenum stream, const GLshort *coords)
/// ```
void glVertexStream1svATI(int stream, Pointer<Int16>? coords) {
  final _glVertexStream1svATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int16>? coords),
      void Function(int stream, Pointer<Int16>? coords)>('glVertexStream1svATI');
  return _glVertexStream1svATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1iATI (GLenum stream, GLint x)
/// ```
void glVertexStream1iATI(int stream, int x) {
  final _glVertexStream1iATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int32 x),
      void Function(int stream, int x)>('glVertexStream1iATI');
  return _glVertexStream1iATI(stream, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1ivATI (GLenum stream, const GLint *coords)
/// ```
void glVertexStream1ivATI(int stream, Pointer<Int32>? coords) {
  final _glVertexStream1ivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int32>? coords),
      void Function(int stream, Pointer<Int32>? coords)>('glVertexStream1ivATI');
  return _glVertexStream1ivATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1fATI (GLenum stream, GLfloat x)
/// ```
void glVertexStream1fATI(int stream, double x) {
  final _glVertexStream1fATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Float x),
      void Function(int stream, double x)>('glVertexStream1fATI');
  return _glVertexStream1fATI(stream, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1fvATI (GLenum stream, const GLfloat *coords)
/// ```
void glVertexStream1fvATI(int stream, Pointer<Float>? coords) {
  final _glVertexStream1fvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Float>? coords),
      void Function(int stream, Pointer<Float>? coords)>('glVertexStream1fvATI');
  return _glVertexStream1fvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1dATI (GLenum stream, GLdouble x)
/// ```
void glVertexStream1dATI(int stream, double x) {
  final _glVertexStream1dATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Double x),
      void Function(int stream, double x)>('glVertexStream1dATI');
  return _glVertexStream1dATI(stream, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream1dvATI (GLenum stream, const GLdouble *coords)
/// ```
void glVertexStream1dvATI(int stream, Pointer<Double>? coords) {
  final _glVertexStream1dvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Double>? coords),
      void Function(int stream, Pointer<Double>? coords)>('glVertexStream1dvATI');
  return _glVertexStream1dvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2sATI (GLenum stream, GLshort x, GLshort y)
/// ```
void glVertexStream2sATI(int stream, int x, int y) {
  final _glVertexStream2sATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int16 x, Int16 y),
      void Function(int stream, int x, int y)>('glVertexStream2sATI');
  return _glVertexStream2sATI(stream, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2svATI (GLenum stream, const GLshort *coords)
/// ```
void glVertexStream2svATI(int stream, Pointer<Int16>? coords) {
  final _glVertexStream2svATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int16>? coords),
      void Function(int stream, Pointer<Int16>? coords)>('glVertexStream2svATI');
  return _glVertexStream2svATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2iATI (GLenum stream, GLint x, GLint y)
/// ```
void glVertexStream2iATI(int stream, int x, int y) {
  final _glVertexStream2iATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int32 x, Int32 y),
      void Function(int stream, int x, int y)>('glVertexStream2iATI');
  return _glVertexStream2iATI(stream, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2ivATI (GLenum stream, const GLint *coords)
/// ```
void glVertexStream2ivATI(int stream, Pointer<Int32>? coords) {
  final _glVertexStream2ivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int32>? coords),
      void Function(int stream, Pointer<Int32>? coords)>('glVertexStream2ivATI');
  return _glVertexStream2ivATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2fATI (GLenum stream, GLfloat x, GLfloat y)
/// ```
void glVertexStream2fATI(int stream, double x, double y) {
  final _glVertexStream2fATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Float x, Float y),
      void Function(int stream, double x, double y)>('glVertexStream2fATI');
  return _glVertexStream2fATI(stream, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2fvATI (GLenum stream, const GLfloat *coords)
/// ```
void glVertexStream2fvATI(int stream, Pointer<Float>? coords) {
  final _glVertexStream2fvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Float>? coords),
      void Function(int stream, Pointer<Float>? coords)>('glVertexStream2fvATI');
  return _glVertexStream2fvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2dATI (GLenum stream, GLdouble x, GLdouble y)
/// ```
void glVertexStream2dATI(int stream, double x, double y) {
  final _glVertexStream2dATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Double x, Double y),
      void Function(int stream, double x, double y)>('glVertexStream2dATI');
  return _glVertexStream2dATI(stream, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream2dvATI (GLenum stream, const GLdouble *coords)
/// ```
void glVertexStream2dvATI(int stream, Pointer<Double>? coords) {
  final _glVertexStream2dvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Double>? coords),
      void Function(int stream, Pointer<Double>? coords)>('glVertexStream2dvATI');
  return _glVertexStream2dvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z)
/// ```
void glVertexStream3sATI(int stream, int x, int y, int z) {
  final _glVertexStream3sATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int16 x, Int16 y, Int16 z),
      void Function(int stream, int x, int y, int z)>('glVertexStream3sATI');
  return _glVertexStream3sATI(stream, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3svATI (GLenum stream, const GLshort *coords)
/// ```
void glVertexStream3svATI(int stream, Pointer<Int16>? coords) {
  final _glVertexStream3svATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int16>? coords),
      void Function(int stream, Pointer<Int16>? coords)>('glVertexStream3svATI');
  return _glVertexStream3svATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3iATI (GLenum stream, GLint x, GLint y, GLint z)
/// ```
void glVertexStream3iATI(int stream, int x, int y, int z) {
  final _glVertexStream3iATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int32 x, Int32 y, Int32 z),
      void Function(int stream, int x, int y, int z)>('glVertexStream3iATI');
  return _glVertexStream3iATI(stream, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3ivATI (GLenum stream, const GLint *coords)
/// ```
void glVertexStream3ivATI(int stream, Pointer<Int32>? coords) {
  final _glVertexStream3ivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int32>? coords),
      void Function(int stream, Pointer<Int32>? coords)>('glVertexStream3ivATI');
  return _glVertexStream3ivATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glVertexStream3fATI(int stream, double x, double y, double z) {
  final _glVertexStream3fATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Float x, Float y, Float z),
      void Function(int stream, double x, double y, double z)>('glVertexStream3fATI');
  return _glVertexStream3fATI(stream, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3fvATI (GLenum stream, const GLfloat *coords)
/// ```
void glVertexStream3fvATI(int stream, Pointer<Float>? coords) {
  final _glVertexStream3fvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Float>? coords),
      void Function(int stream, Pointer<Float>? coords)>('glVertexStream3fvATI');
  return _glVertexStream3fvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glVertexStream3dATI(int stream, double x, double y, double z) {
  final _glVertexStream3dATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Double x, Double y, Double z),
      void Function(int stream, double x, double y, double z)>('glVertexStream3dATI');
  return _glVertexStream3dATI(stream, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream3dvATI (GLenum stream, const GLdouble *coords)
/// ```
void glVertexStream3dvATI(int stream, Pointer<Double>? coords) {
  final _glVertexStream3dvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Double>? coords),
      void Function(int stream, Pointer<Double>? coords)>('glVertexStream3dvATI');
  return _glVertexStream3dvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4sATI (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w)
/// ```
void glVertexStream4sATI(int stream, int x, int y, int z, int w) {
  final _glVertexStream4sATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int16 x, Int16 y, Int16 z, Int16 w),
      void Function(int stream, int x, int y, int z, int w)>('glVertexStream4sATI');
  return _glVertexStream4sATI(stream, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4svATI (GLenum stream, const GLshort *coords)
/// ```
void glVertexStream4svATI(int stream, Pointer<Int16>? coords) {
  final _glVertexStream4svATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int16>? coords),
      void Function(int stream, Pointer<Int16>? coords)>('glVertexStream4svATI');
  return _glVertexStream4svATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4iATI (GLenum stream, GLint x, GLint y, GLint z, GLint w)
/// ```
void glVertexStream4iATI(int stream, int x, int y, int z, int w) {
  final _glVertexStream4iATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int stream, int x, int y, int z, int w)>('glVertexStream4iATI');
  return _glVertexStream4iATI(stream, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4ivATI (GLenum stream, const GLint *coords)
/// ```
void glVertexStream4ivATI(int stream, Pointer<Int32>? coords) {
  final _glVertexStream4ivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int32>? coords),
      void Function(int stream, Pointer<Int32>? coords)>('glVertexStream4ivATI');
  return _glVertexStream4ivATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glVertexStream4fATI(int stream, double x, double y, double z, double w) {
  final _glVertexStream4fATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Float x, Float y, Float z, Float w),
      void Function(int stream, double x, double y, double z, double w)>('glVertexStream4fATI');
  return _glVertexStream4fATI(stream, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4fvATI (GLenum stream, const GLfloat *coords)
/// ```
void glVertexStream4fvATI(int stream, Pointer<Float>? coords) {
  final _glVertexStream4fvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Float>? coords),
      void Function(int stream, Pointer<Float>? coords)>('glVertexStream4fvATI');
  return _glVertexStream4fvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glVertexStream4dATI(int stream, double x, double y, double z, double w) {
  final _glVertexStream4dATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Double x, Double y, Double z, Double w),
      void Function(int stream, double x, double y, double z, double w)>('glVertexStream4dATI');
  return _glVertexStream4dATI(stream, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexStream4dvATI (GLenum stream, const GLdouble *coords)
/// ```
void glVertexStream4dvATI(int stream, Pointer<Double>? coords) {
  final _glVertexStream4dvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Double>? coords),
      void Function(int stream, Pointer<Double>? coords)>('glVertexStream4dvATI');
  return _glVertexStream4dvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3bATI (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz)
/// ```
void glNormalStream3bATI(int stream, int nx, int ny, int nz) {
  final _glNormalStream3bATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int8 nx, Int8 ny, Int8 nz),
      void Function(int stream, int nx, int ny, int nz)>('glNormalStream3bATI');
  return _glNormalStream3bATI(stream, nx, ny, nz);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3bvATI (GLenum stream, const GLbyte *coords)
/// ```
void glNormalStream3bvATI(int stream, String coords) {
  final _glNormalStream3bvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Utf8>? coords),
      void Function(int stream, Pointer<Utf8>? coords)>('glNormalStream3bvATI');
  final _coordsPointer = coords.toNativeUtf8();
  final _result = _glNormalStream3bvATI(stream, _coordsPointer);
  calloc.free(_coordsPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3sATI (GLenum stream, GLshort nx, GLshort ny, GLshort nz)
/// ```
void glNormalStream3sATI(int stream, int nx, int ny, int nz) {
  final _glNormalStream3sATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int16 nx, Int16 ny, Int16 nz),
      void Function(int stream, int nx, int ny, int nz)>('glNormalStream3sATI');
  return _glNormalStream3sATI(stream, nx, ny, nz);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3svATI (GLenum stream, const GLshort *coords)
/// ```
void glNormalStream3svATI(int stream, Pointer<Int16>? coords) {
  final _glNormalStream3svATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int16>? coords),
      void Function(int stream, Pointer<Int16>? coords)>('glNormalStream3svATI');
  return _glNormalStream3svATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3iATI (GLenum stream, GLint nx, GLint ny, GLint nz)
/// ```
void glNormalStream3iATI(int stream, int nx, int ny, int nz) {
  final _glNormalStream3iATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Int32 nx, Int32 ny, Int32 nz),
      void Function(int stream, int nx, int ny, int nz)>('glNormalStream3iATI');
  return _glNormalStream3iATI(stream, nx, ny, nz);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3ivATI (GLenum stream, const GLint *coords)
/// ```
void glNormalStream3ivATI(int stream, Pointer<Int32>? coords) {
  final _glNormalStream3ivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Int32>? coords),
      void Function(int stream, Pointer<Int32>? coords)>('glNormalStream3ivATI');
  return _glNormalStream3ivATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3fATI (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz)
/// ```
void glNormalStream3fATI(int stream, double nx, double ny, double nz) {
  final _glNormalStream3fATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Float nx, Float ny, Float nz),
      void Function(int stream, double nx, double ny, double nz)>('glNormalStream3fATI');
  return _glNormalStream3fATI(stream, nx, ny, nz);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3fvATI (GLenum stream, const GLfloat *coords)
/// ```
void glNormalStream3fvATI(int stream, Pointer<Float>? coords) {
  final _glNormalStream3fvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Float>? coords),
      void Function(int stream, Pointer<Float>? coords)>('glNormalStream3fvATI');
  return _glNormalStream3fvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3dATI (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz)
/// ```
void glNormalStream3dATI(int stream, double nx, double ny, double nz) {
  final _glNormalStream3dATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Double nx, Double ny, Double nz),
      void Function(int stream, double nx, double ny, double nz)>('glNormalStream3dATI');
  return _glNormalStream3dATI(stream, nx, ny, nz);
}

/// ```c
/// GLAPI void APIENTRY glNormalStream3dvATI (GLenum stream, const GLdouble *coords)
/// ```
void glNormalStream3dvATI(int stream, Pointer<Double>? coords) {
  final _glNormalStream3dvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream, Pointer<Double>? coords),
      void Function(int stream, Pointer<Double>? coords)>('glNormalStream3dvATI');
  return _glNormalStream3dvATI(stream, coords);
}

/// ```c
/// GLAPI void APIENTRY glClientActiveVertexStreamATI (GLenum stream)
/// ```
void glClientActiveVertexStreamATI(int stream) {
  final _glClientActiveVertexStreamATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stream),
      void Function(int stream)>('glClientActiveVertexStreamATI');
  return _glClientActiveVertexStreamATI(stream);
}

/// ```c
/// GLAPI void APIENTRY glVertexBlendEnviATI (GLenum pname, GLint param)
/// ```
void glVertexBlendEnviATI(int pname, int param) {
  final _glVertexBlendEnviATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glVertexBlendEnviATI');
  return _glVertexBlendEnviATI(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glVertexBlendEnvfATI (GLenum pname, GLfloat param)
/// ```
void glVertexBlendEnvfATI(int pname, double param) {
  final _glVertexBlendEnvfATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Float param),
      void Function(int pname, double param)>('glVertexBlendEnvfATI');
  return _glVertexBlendEnvfATI(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glElementPointerATI (GLenum type, const GLvoid *pointer)
/// ```
void glElementPointerATI(int type, Pointer<Void>? pointer) {
  final _glElementPointerATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Void>? pointer),
      void Function(int type, Pointer<Void>? pointer)>('glElementPointerATI');
  return _glElementPointerATI(type, pointer);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementArrayATI (GLenum mode, GLsizei count)
/// ```
void glDrawElementArrayATI(int mode, int count) {
  final _glDrawElementArrayATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 count),
      void Function(int mode, int count)>('glDrawElementArrayATI');
  return _glDrawElementArrayATI(mode, count);
}

/// ```c
/// GLAPI void APIENTRY glDrawRangeElementArrayATI (GLenum mode, GLuint start, GLuint end, GLsizei count)
/// ```
void glDrawRangeElementArrayATI(int mode, int start, int end, int count) {
  final _glDrawRangeElementArrayATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 start, Uint32 end, Uint32 count),
      void Function(int mode, int start, int end, int count)>('glDrawRangeElementArrayATI');
  return _glDrawRangeElementArrayATI(mode, start, end, count);
}

/// ```c
/// GLAPI void APIENTRY glDrawMeshArraysSUN (GLenum mode, GLint first, GLsizei count, GLsizei width)
/// ```
void glDrawMeshArraysSUN(int mode, int first, int count, int width) {
  final _glDrawMeshArraysSUN = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Int32 first, Uint32 count, Uint32 width),
      void Function(int mode, int first, int count, int width)>('glDrawMeshArraysSUN');
  return _glDrawMeshArraysSUN(mode, first, count, width);
}

/// ```c
/// GLAPI void APIENTRY glGenOcclusionQueriesNV (GLsizei n, GLuint *ids)
/// ```
void glGenOcclusionQueriesNV(int n, Pointer<Uint32>? ids) {
  final _glGenOcclusionQueriesNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glGenOcclusionQueriesNV');
  return _glGenOcclusionQueriesNV(n, ids);
}

/// ```c
/// GLAPI void APIENTRY glDeleteOcclusionQueriesNV (GLsizei n, const GLuint *ids)
/// ```
void glDeleteOcclusionQueriesNV(int n, Pointer<Uint32>? ids) {
  final _glDeleteOcclusionQueriesNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glDeleteOcclusionQueriesNV');
  return _glDeleteOcclusionQueriesNV(n, ids);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsOcclusionQueryNV (GLuint id)
/// ```
int glIsOcclusionQueryNV(int id) {
  final _glIsOcclusionQueryNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id),
      int Function(int id)>('glIsOcclusionQueryNV');
  return _glIsOcclusionQueryNV(id);
}

/// ```c
/// GLAPI void APIENTRY glBeginOcclusionQueryNV (GLuint id)
/// ```
void glBeginOcclusionQueryNV(int id) {
  final _glBeginOcclusionQueryNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id),
      void Function(int id)>('glBeginOcclusionQueryNV');
  return _glBeginOcclusionQueryNV(id);
}

/// ```c
/// GLAPI void APIENTRY glEndOcclusionQueryNV (void)
/// ```
void glEndOcclusionQueryNV() {
  final _glEndOcclusionQueryNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndOcclusionQueryNV');
  return _glEndOcclusionQueryNV();
}

/// ```c
/// GLAPI void APIENTRY glGetOcclusionQueryivNV (GLuint id, GLenum pname, GLint *params)
/// ```
void glGetOcclusionQueryivNV(int id, int pname, Pointer<Int32>? params) {
  final _glGetOcclusionQueryivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int32>? params),
      void Function(int id, int pname, Pointer<Int32>? params)>('glGetOcclusionQueryivNV');
  return _glGetOcclusionQueryivNV(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetOcclusionQueryuivNV (GLuint id, GLenum pname, GLuint *params)
/// ```
void glGetOcclusionQueryuivNV(int id, int pname, Pointer<Uint32>? params) {
  final _glGetOcclusionQueryuivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Uint32>? params),
      void Function(int id, int pname, Pointer<Uint32>? params)>('glGetOcclusionQueryuivNV');
  return _glGetOcclusionQueryuivNV(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glPointParameteriNV (GLenum pname, GLint param)
/// ```
void glPointParameteriNV(int pname, int param) {
  final _glPointParameteriNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glPointParameteriNV');
  return _glPointParameteriNV(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glPointParameterivNV (GLenum pname, const GLint *params)
/// ```
void glPointParameterivNV(int pname, Pointer<Int32>? params) {
  final _glPointParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Pointer<Int32>? params),
      void Function(int pname, Pointer<Int32>? params)>('glPointParameterivNV');
  return _glPointParameterivNV(pname, params);
}

/// ```c
/// GLAPI void APIENTRY glActiveStencilFaceEXT (GLenum face)
/// ```
void glActiveStencilFaceEXT(int face) {
  final _glActiveStencilFaceEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face),
      void Function(int face)>('glActiveStencilFaceEXT');
  return _glActiveStencilFaceEXT(face);
}

/// ```c
/// GLAPI void APIENTRY glElementPointerAPPLE (GLenum type, const GLvoid *pointer)
/// ```
void glElementPointerAPPLE(int type, Pointer<Void>? pointer) {
  final _glElementPointerAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Pointer<Void>? pointer),
      void Function(int type, Pointer<Void>? pointer)>('glElementPointerAPPLE');
  return _glElementPointerAPPLE(type, pointer);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementArrayAPPLE (GLenum mode, GLint first, GLsizei count)
/// ```
void glDrawElementArrayAPPLE(int mode, int first, int count) {
  final _glDrawElementArrayAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Int32 first, Uint32 count),
      void Function(int mode, int first, int count)>('glDrawElementArrayAPPLE');
  return _glDrawElementArrayAPPLE(mode, first, count);
}

/// ```c
/// GLAPI void APIENTRY glDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count)
/// ```
void glDrawRangeElementArrayAPPLE(int mode, int start, int end, int first, int count) {
  final _glDrawRangeElementArrayAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 start, Uint32 end, Int32 first, Uint32 count),
      void Function(int mode, int start, int end, int first, int count)>('glDrawRangeElementArrayAPPLE');
  return _glDrawRangeElementArrayAPPLE(mode, start, end, first, count);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawElementArrayAPPLE (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount)
/// ```
void glMultiDrawElementArrayAPPLE(int mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount) {
  final _glMultiDrawElementArrayAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Int32>? first, Pointer<Uint32>? count, Uint32 primcount),
      void Function(int mode, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount)>('glMultiDrawElementArrayAPPLE');
  return _glMultiDrawElementArrayAPPLE(mode, first, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glMultiDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, const GLint *first, const GLsizei *count, GLsizei primcount)
/// ```
void glMultiDrawRangeElementArrayAPPLE(int mode, int start, int end, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount) {
  final _glMultiDrawRangeElementArrayAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 start, Uint32 end, Pointer<Int32>? first, Pointer<Uint32>? count, Uint32 primcount),
      void Function(int mode, int start, int end, Pointer<Int32>? first, Pointer<Uint32>? count, int primcount)>('glMultiDrawRangeElementArrayAPPLE');
  return _glMultiDrawRangeElementArrayAPPLE(mode, start, end, first, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glGenFencesAPPLE (GLsizei n, GLuint *fences)
/// ```
void glGenFencesAPPLE(int n, Pointer<Uint32>? fences) {
  final _glGenFencesAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? fences),
      void Function(int n, Pointer<Uint32>? fences)>('glGenFencesAPPLE');
  return _glGenFencesAPPLE(n, fences);
}

/// ```c
/// GLAPI void APIENTRY glDeleteFencesAPPLE (GLsizei n, const GLuint *fences)
/// ```
void glDeleteFencesAPPLE(int n, Pointer<Uint32>? fences) {
  final _glDeleteFencesAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? fences),
      void Function(int n, Pointer<Uint32>? fences)>('glDeleteFencesAPPLE');
  return _glDeleteFencesAPPLE(n, fences);
}

/// ```c
/// GLAPI void APIENTRY glSetFenceAPPLE (GLuint fence)
/// ```
void glSetFenceAPPLE(int fence) {
  final _glSetFenceAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 fence),
      void Function(int fence)>('glSetFenceAPPLE');
  return _glSetFenceAPPLE(fence);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsFenceAPPLE (GLuint fence)
/// ```
int glIsFenceAPPLE(int fence) {
  final _glIsFenceAPPLE = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 fence),
      int Function(int fence)>('glIsFenceAPPLE');
  return _glIsFenceAPPLE(fence);
}

/// ```c
/// GLAPI GLboolean APIENTRY glTestFenceAPPLE (GLuint fence)
/// ```
int glTestFenceAPPLE(int fence) {
  final _glTestFenceAPPLE = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 fence),
      int Function(int fence)>('glTestFenceAPPLE');
  return _glTestFenceAPPLE(fence);
}

/// ```c
/// GLAPI void APIENTRY glFinishFenceAPPLE (GLuint fence)
/// ```
void glFinishFenceAPPLE(int fence) {
  final _glFinishFenceAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 fence),
      void Function(int fence)>('glFinishFenceAPPLE');
  return _glFinishFenceAPPLE(fence);
}

/// ```c
/// GLAPI GLboolean APIENTRY glTestObjectAPPLE (GLenum object, GLuint name)
/// ```
int glTestObjectAPPLE(int object, int name) {
  final _glTestObjectAPPLE = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 object, Uint32 name),
      int Function(int object, int name)>('glTestObjectAPPLE');
  return _glTestObjectAPPLE(object, name);
}

/// ```c
/// GLAPI void APIENTRY glFinishObjectAPPLE (GLenum object, GLint name)
/// ```
void glFinishObjectAPPLE(int object, int name) {
  final _glFinishObjectAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 object, Int32 name),
      void Function(int object, int name)>('glFinishObjectAPPLE');
  return _glFinishObjectAPPLE(object, name);
}

/// ```c
/// GLAPI void APIENTRY glBindVertexArrayAPPLE (GLuint array)
/// ```
void glBindVertexArrayAPPLE(int array) {
  final _glBindVertexArrayAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array),
      void Function(int array)>('glBindVertexArrayAPPLE');
  return _glBindVertexArrayAPPLE(array);
}

/// ```c
/// GLAPI void APIENTRY glDeleteVertexArraysAPPLE (GLsizei n, const GLuint *arrays)
/// ```
void glDeleteVertexArraysAPPLE(int n, Pointer<Uint32>? arrays) {
  final _glDeleteVertexArraysAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? arrays),
      void Function(int n, Pointer<Uint32>? arrays)>('glDeleteVertexArraysAPPLE');
  return _glDeleteVertexArraysAPPLE(n, arrays);
}

/// ```c
/// GLAPI void APIENTRY glGenVertexArraysAPPLE (GLsizei n, GLuint *arrays)
/// ```
void glGenVertexArraysAPPLE(int n, Pointer<Uint32>? arrays) {
  final _glGenVertexArraysAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? arrays),
      void Function(int n, Pointer<Uint32>? arrays)>('glGenVertexArraysAPPLE');
  return _glGenVertexArraysAPPLE(n, arrays);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsVertexArrayAPPLE (GLuint array)
/// ```
int glIsVertexArrayAPPLE(int array) {
  final _glIsVertexArrayAPPLE = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 array),
      int Function(int array)>('glIsVertexArrayAPPLE');
  return _glIsVertexArrayAPPLE(array);
}

/// ```c
/// GLAPI void APIENTRY glVertexArrayRangeAPPLE (GLsizei length, GLvoid *pointer)
/// ```
void glVertexArrayRangeAPPLE(int length, Pointer<Void>? pointer) {
  final _glVertexArrayRangeAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 length, Pointer<Void>? pointer),
      void Function(int length, Pointer<Void>? pointer)>('glVertexArrayRangeAPPLE');
  return _glVertexArrayRangeAPPLE(length, pointer);
}

/// ```c
/// GLAPI void APIENTRY glFlushVertexArrayRangeAPPLE (GLsizei length, GLvoid *pointer)
/// ```
void glFlushVertexArrayRangeAPPLE(int length, Pointer<Void>? pointer) {
  final _glFlushVertexArrayRangeAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 length, Pointer<Void>? pointer),
      void Function(int length, Pointer<Void>? pointer)>('glFlushVertexArrayRangeAPPLE');
  return _glFlushVertexArrayRangeAPPLE(length, pointer);
}

/// ```c
/// GLAPI void APIENTRY glVertexArrayParameteriAPPLE (GLenum pname, GLint param)
/// ```
void glVertexArrayParameteriAPPLE(int pname, int param) {
  final _glVertexArrayParameteriAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Int32 param),
      void Function(int pname, int param)>('glVertexArrayParameteriAPPLE');
  return _glVertexArrayParameteriAPPLE(pname, param);
}

/// ```c
/// GLAPI void APIENTRY glDrawBuffersATI (GLsizei n, const GLenum *bufs)
/// ```
void glDrawBuffersATI(int n, Pointer<Uint32>? bufs) {
  final _glDrawBuffersATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? bufs),
      void Function(int n, Pointer<Uint32>? bufs)>('glDrawBuffersATI');
  return _glDrawBuffersATI(n, bufs);
}

/// Some NV_fragment_program entry points are shared with ARB_vertex_program.
/// ```c
/// GLAPI void APIENTRY glProgramNamedParameter4fNV (GLuint id, GLsizei len, const GLubyte *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glProgramNamedParameter4fNV(int id, int len, Pointer<Uint8>? name, double x, double y, double z, double w) {
  final _glProgramNamedParameter4fNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 len, Pointer<Uint8>? name, Float x, Float y, Float z, Float w),
      void Function(int id, int len, Pointer<Uint8>? name, double x, double y, double z, double w)>('glProgramNamedParameter4fNV');
  return _glProgramNamedParameter4fNV(id, len, name, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramNamedParameter4dNV (GLuint id, GLsizei len, const GLubyte *name, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glProgramNamedParameter4dNV(int id, int len, Pointer<Uint8>? name, double x, double y, double z, double w) {
  final _glProgramNamedParameter4dNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 len, Pointer<Uint8>? name, Double x, Double y, Double z, Double w),
      void Function(int id, int len, Pointer<Uint8>? name, double x, double y, double z, double w)>('glProgramNamedParameter4dNV');
  return _glProgramNamedParameter4dNV(id, len, name, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramNamedParameter4fvNV (GLuint id, GLsizei len, const GLubyte *name, const GLfloat *v)
/// ```
void glProgramNamedParameter4fvNV(int id, int len, Pointer<Uint8>? name, Pointer<Float>? v) {
  final _glProgramNamedParameter4fvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 len, Pointer<Uint8>? name, Pointer<Float>? v),
      void Function(int id, int len, Pointer<Uint8>? name, Pointer<Float>? v)>('glProgramNamedParameter4fvNV');
  return _glProgramNamedParameter4fvNV(id, len, name, v);
}

/// ```c
/// GLAPI void APIENTRY glProgramNamedParameter4dvNV (GLuint id, GLsizei len, const GLubyte *name, const GLdouble *v)
/// ```
void glProgramNamedParameter4dvNV(int id, int len, Pointer<Uint8>? name, Pointer<Double>? v) {
  final _glProgramNamedParameter4dvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 len, Pointer<Uint8>? name, Pointer<Double>? v),
      void Function(int id, int len, Pointer<Uint8>? name, Pointer<Double>? v)>('glProgramNamedParameter4dvNV');
  return _glProgramNamedParameter4dvNV(id, len, name, v);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramNamedParameterfvNV (GLuint id, GLsizei len, const GLubyte *name, GLfloat *params)
/// ```
void glGetProgramNamedParameterfvNV(int id, int len, Pointer<Uint8>? name, Pointer<Float>? params) {
  final _glGetProgramNamedParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 len, Pointer<Uint8>? name, Pointer<Float>? params),
      void Function(int id, int len, Pointer<Uint8>? name, Pointer<Float>? params)>('glGetProgramNamedParameterfvNV');
  return _glGetProgramNamedParameterfvNV(id, len, name, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramNamedParameterdvNV (GLuint id, GLsizei len, const GLubyte *name, GLdouble *params)
/// ```
void glGetProgramNamedParameterdvNV(int id, int len, Pointer<Uint8>? name, Pointer<Double>? params) {
  final _glGetProgramNamedParameterdvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 len, Pointer<Uint8>? name, Pointer<Double>? params),
      void Function(int id, int len, Pointer<Uint8>? name, Pointer<Double>? params)>('glGetProgramNamedParameterdvNV');
  return _glGetProgramNamedParameterdvNV(id, len, name, params);
}

/// ```c
/// GLAPI void APIENTRY glVertex2hNV (GLhalfNV x, GLhalfNV y)
/// ```
void glVertex2hNV(int x, int y) {
  final _glVertex2hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 x, Uint16 y),
      void Function(int x, int y)>('glVertex2hNV');
  return _glVertex2hNV(x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertex2hvNV (const GLhalfNV *v)
/// ```
void glVertex2hvNV(Pointer<Uint16>? v) {
  final _glVertex2hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glVertex2hvNV');
  return _glVertex2hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glVertex3hNV (GLhalfNV x, GLhalfNV y, GLhalfNV z)
/// ```
void glVertex3hNV(int x, int y, int z) {
  final _glVertex3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 x, Uint16 y, Uint16 z),
      void Function(int x, int y, int z)>('glVertex3hNV');
  return _glVertex3hNV(x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertex3hvNV (const GLhalfNV *v)
/// ```
void glVertex3hvNV(Pointer<Uint16>? v) {
  final _glVertex3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glVertex3hvNV');
  return _glVertex3hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glVertex4hNV (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w)
/// ```
void glVertex4hNV(int x, int y, int z, int w) {
  final _glVertex4hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 x, Uint16 y, Uint16 z, Uint16 w),
      void Function(int x, int y, int z, int w)>('glVertex4hNV');
  return _glVertex4hNV(x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertex4hvNV (const GLhalfNV *v)
/// ```
void glVertex4hvNV(Pointer<Uint16>? v) {
  final _glVertex4hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glVertex4hvNV');
  return _glVertex4hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glNormal3hNV (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz)
/// ```
void glNormal3hNV(int nx, int ny, int nz) {
  final _glNormal3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 nx, Uint16 ny, Uint16 nz),
      void Function(int nx, int ny, int nz)>('glNormal3hNV');
  return _glNormal3hNV(nx, ny, nz);
}

/// ```c
/// GLAPI void APIENTRY glNormal3hvNV (const GLhalfNV *v)
/// ```
void glNormal3hvNV(Pointer<Uint16>? v) {
  final _glNormal3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glNormal3hvNV');
  return _glNormal3hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glColor3hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue)
/// ```
void glColor3hNV(int red, int green, int blue) {
  final _glColor3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 red, Uint16 green, Uint16 blue),
      void Function(int red, int green, int blue)>('glColor3hNV');
  return _glColor3hNV(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glColor3hvNV (const GLhalfNV *v)
/// ```
void glColor3hvNV(Pointer<Uint16>? v) {
  final _glColor3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glColor3hvNV');
  return _glColor3hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glColor4hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha)
/// ```
void glColor4hNV(int red, int green, int blue, int alpha) {
  final _glColor4hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 red, Uint16 green, Uint16 blue, Uint16 alpha),
      void Function(int red, int green, int blue, int alpha)>('glColor4hNV');
  return _glColor4hNV(red, green, blue, alpha);
}

/// ```c
/// GLAPI void APIENTRY glColor4hvNV (const GLhalfNV *v)
/// ```
void glColor4hvNV(Pointer<Uint16>? v) {
  final _glColor4hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glColor4hvNV');
  return _glColor4hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord1hNV (GLhalfNV s)
/// ```
void glTexCoord1hNV(int s) {
  final _glTexCoord1hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 s),
      void Function(int s)>('glTexCoord1hNV');
  return _glTexCoord1hNV(s);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord1hvNV (const GLhalfNV *v)
/// ```
void glTexCoord1hvNV(Pointer<Uint16>? v) {
  final _glTexCoord1hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glTexCoord1hvNV');
  return _glTexCoord1hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2hNV (GLhalfNV s, GLhalfNV t)
/// ```
void glTexCoord2hNV(int s, int t) {
  final _glTexCoord2hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 s, Uint16 t),
      void Function(int s, int t)>('glTexCoord2hNV');
  return _glTexCoord2hNV(s, t);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord2hvNV (const GLhalfNV *v)
/// ```
void glTexCoord2hvNV(Pointer<Uint16>? v) {
  final _glTexCoord2hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glTexCoord2hvNV');
  return _glTexCoord2hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord3hNV (GLhalfNV s, GLhalfNV t, GLhalfNV r)
/// ```
void glTexCoord3hNV(int s, int t, int r) {
  final _glTexCoord3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 s, Uint16 t, Uint16 r),
      void Function(int s, int t, int r)>('glTexCoord3hNV');
  return _glTexCoord3hNV(s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord3hvNV (const GLhalfNV *v)
/// ```
void glTexCoord3hvNV(Pointer<Uint16>? v) {
  final _glTexCoord3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glTexCoord3hvNV');
  return _glTexCoord3hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord4hNV (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q)
/// ```
void glTexCoord4hNV(int s, int t, int r, int q) {
  final _glTexCoord4hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 s, Uint16 t, Uint16 r, Uint16 q),
      void Function(int s, int t, int r, int q)>('glTexCoord4hNV');
  return _glTexCoord4hNV(s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glTexCoord4hvNV (const GLhalfNV *v)
/// ```
void glTexCoord4hvNV(Pointer<Uint16>? v) {
  final _glTexCoord4hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glTexCoord4hvNV');
  return _glTexCoord4hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1hNV (GLenum target, GLhalfNV s)
/// ```
void glMultiTexCoord1hNV(int target, int s) {
  final _glMultiTexCoord1hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint16 s),
      void Function(int target, int s)>('glMultiTexCoord1hNV');
  return _glMultiTexCoord1hNV(target, s);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord1hvNV (GLenum target, const GLhalfNV *v)
/// ```
void glMultiTexCoord1hvNV(int target, Pointer<Uint16>? v) {
  final _glMultiTexCoord1hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Uint16>? v),
      void Function(int target, Pointer<Uint16>? v)>('glMultiTexCoord1hvNV');
  return _glMultiTexCoord1hvNV(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2hNV (GLenum target, GLhalfNV s, GLhalfNV t)
/// ```
void glMultiTexCoord2hNV(int target, int s, int t) {
  final _glMultiTexCoord2hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint16 s, Uint16 t),
      void Function(int target, int s, int t)>('glMultiTexCoord2hNV');
  return _glMultiTexCoord2hNV(target, s, t);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord2hvNV (GLenum target, const GLhalfNV *v)
/// ```
void glMultiTexCoord2hvNV(int target, Pointer<Uint16>? v) {
  final _glMultiTexCoord2hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Uint16>? v),
      void Function(int target, Pointer<Uint16>? v)>('glMultiTexCoord2hvNV');
  return _glMultiTexCoord2hvNV(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3hNV (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r)
/// ```
void glMultiTexCoord3hNV(int target, int s, int t, int r) {
  final _glMultiTexCoord3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint16 s, Uint16 t, Uint16 r),
      void Function(int target, int s, int t, int r)>('glMultiTexCoord3hNV');
  return _glMultiTexCoord3hNV(target, s, t, r);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord3hvNV (GLenum target, const GLhalfNV *v)
/// ```
void glMultiTexCoord3hvNV(int target, Pointer<Uint16>? v) {
  final _glMultiTexCoord3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Uint16>? v),
      void Function(int target, Pointer<Uint16>? v)>('glMultiTexCoord3hvNV');
  return _glMultiTexCoord3hvNV(target, v);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4hNV (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q)
/// ```
void glMultiTexCoord4hNV(int target, int s, int t, int r, int q) {
  final _glMultiTexCoord4hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint16 s, Uint16 t, Uint16 r, Uint16 q),
      void Function(int target, int s, int t, int r, int q)>('glMultiTexCoord4hNV');
  return _glMultiTexCoord4hNV(target, s, t, r, q);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoord4hvNV (GLenum target, const GLhalfNV *v)
/// ```
void glMultiTexCoord4hvNV(int target, Pointer<Uint16>? v) {
  final _glMultiTexCoord4hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Uint16>? v),
      void Function(int target, Pointer<Uint16>? v)>('glMultiTexCoord4hvNV');
  return _glMultiTexCoord4hvNV(target, v);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordhNV (GLhalfNV fog)
/// ```
void glFogCoordhNV(int fog) {
  final _glFogCoordhNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 fog),
      void Function(int fog)>('glFogCoordhNV');
  return _glFogCoordhNV(fog);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordhvNV (const GLhalfNV *fog)
/// ```
void glFogCoordhvNV(Pointer<Uint16>? fog) {
  final _glFogCoordhvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? fog),
      void Function(Pointer<Uint16>? fog)>('glFogCoordhvNV');
  return _glFogCoordhvNV(fog);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue)
/// ```
void glSecondaryColor3hNV(int red, int green, int blue) {
  final _glSecondaryColor3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 red, Uint16 green, Uint16 blue),
      void Function(int red, int green, int blue)>('glSecondaryColor3hNV');
  return _glSecondaryColor3hNV(red, green, blue);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColor3hvNV (const GLhalfNV *v)
/// ```
void glSecondaryColor3hvNV(Pointer<Uint16>? v) {
  final _glSecondaryColor3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? v),
      void Function(Pointer<Uint16>? v)>('glSecondaryColor3hvNV');
  return _glSecondaryColor3hvNV(v);
}

/// ```c
/// GLAPI void APIENTRY glVertexWeighthNV (GLhalfNV weight)
/// ```
void glVertexWeighthNV(int weight) {
  final _glVertexWeighthNV = DLL_SDL2.lookupFunction<
      Void Function(Uint16 weight),
      void Function(int weight)>('glVertexWeighthNV');
  return _glVertexWeighthNV(weight);
}

/// ```c
/// GLAPI void APIENTRY glVertexWeighthvNV (const GLhalfNV *weight)
/// ```
void glVertexWeighthvNV(Pointer<Uint16>? weight) {
  final _glVertexWeighthvNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Uint16>? weight),
      void Function(Pointer<Uint16>? weight)>('glVertexWeighthvNV');
  return _glVertexWeighthvNV(weight);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1hNV (GLuint index, GLhalfNV x)
/// ```
void glVertexAttrib1hNV(int index, int x) {
  final _glVertexAttrib1hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint16 x),
      void Function(int index, int x)>('glVertexAttrib1hNV');
  return _glVertexAttrib1hNV(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib1hvNV (GLuint index, const GLhalfNV *v)
/// ```
void glVertexAttrib1hvNV(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib1hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib1hvNV');
  return _glVertexAttrib1hvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2hNV (GLuint index, GLhalfNV x, GLhalfNV y)
/// ```
void glVertexAttrib2hNV(int index, int x, int y) {
  final _glVertexAttrib2hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint16 x, Uint16 y),
      void Function(int index, int x, int y)>('glVertexAttrib2hNV');
  return _glVertexAttrib2hNV(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib2hvNV (GLuint index, const GLhalfNV *v)
/// ```
void glVertexAttrib2hvNV(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib2hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib2hvNV');
  return _glVertexAttrib2hvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3hNV (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z)
/// ```
void glVertexAttrib3hNV(int index, int x, int y, int z) {
  final _glVertexAttrib3hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint16 x, Uint16 y, Uint16 z),
      void Function(int index, int x, int y, int z)>('glVertexAttrib3hNV');
  return _glVertexAttrib3hNV(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib3hvNV (GLuint index, const GLhalfNV *v)
/// ```
void glVertexAttrib3hvNV(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib3hvNV');
  return _glVertexAttrib3hvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4hNV (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w)
/// ```
void glVertexAttrib4hNV(int index, int x, int y, int z, int w) {
  final _glVertexAttrib4hNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint16 x, Uint16 y, Uint16 z, Uint16 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttrib4hNV');
  return _glVertexAttrib4hNV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttrib4hvNV (GLuint index, const GLhalfNV *v)
/// ```
void glVertexAttrib4hvNV(int index, Pointer<Uint16>? v) {
  final _glVertexAttrib4hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttrib4hvNV');
  return _glVertexAttrib4hvNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs1hvNV (GLuint index, GLsizei n, const GLhalfNV *v)
/// ```
void glVertexAttribs1hvNV(int index, int n, Pointer<Uint16>? v) {
  final _glVertexAttribs1hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 n, Pointer<Uint16>? v),
      void Function(int index, int n, Pointer<Uint16>? v)>('glVertexAttribs1hvNV');
  return _glVertexAttribs1hvNV(index, n, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs2hvNV (GLuint index, GLsizei n, const GLhalfNV *v)
/// ```
void glVertexAttribs2hvNV(int index, int n, Pointer<Uint16>? v) {
  final _glVertexAttribs2hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 n, Pointer<Uint16>? v),
      void Function(int index, int n, Pointer<Uint16>? v)>('glVertexAttribs2hvNV');
  return _glVertexAttribs2hvNV(index, n, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs3hvNV (GLuint index, GLsizei n, const GLhalfNV *v)
/// ```
void glVertexAttribs3hvNV(int index, int n, Pointer<Uint16>? v) {
  final _glVertexAttribs3hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 n, Pointer<Uint16>? v),
      void Function(int index, int n, Pointer<Uint16>? v)>('glVertexAttribs3hvNV');
  return _glVertexAttribs3hvNV(index, n, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribs4hvNV (GLuint index, GLsizei n, const GLhalfNV *v)
/// ```
void glVertexAttribs4hvNV(int index, int n, Pointer<Uint16>? v) {
  final _glVertexAttribs4hvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 n, Pointer<Uint16>? v),
      void Function(int index, int n, Pointer<Uint16>? v)>('glVertexAttribs4hvNV');
  return _glVertexAttribs4hvNV(index, n, v);
}

/// ```c
/// GLAPI void APIENTRY glPixelDataRangeNV (GLenum target, GLsizei length, GLvoid *pointer)
/// ```
void glPixelDataRangeNV(int target, int length, Pointer<Void>? pointer) {
  final _glPixelDataRangeNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 length, Pointer<Void>? pointer),
      void Function(int target, int length, Pointer<Void>? pointer)>('glPixelDataRangeNV');
  return _glPixelDataRangeNV(target, length, pointer);
}

/// ```c
/// GLAPI void APIENTRY glFlushPixelDataRangeNV (GLenum target)
/// ```
void glFlushPixelDataRangeNV(int target) {
  final _glFlushPixelDataRangeNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glFlushPixelDataRangeNV');
  return _glFlushPixelDataRangeNV(target);
}

/// ```c
/// GLAPI void APIENTRY glPrimitiveRestartNV (void)
/// ```
void glPrimitiveRestartNV() {
  final _glPrimitiveRestartNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glPrimitiveRestartNV');
  return _glPrimitiveRestartNV();
}

/// ```c
/// GLAPI void APIENTRY glPrimitiveRestartIndexNV (GLuint index)
/// ```
void glPrimitiveRestartIndexNV(int index) {
  final _glPrimitiveRestartIndexNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index),
      void Function(int index)>('glPrimitiveRestartIndexNV');
  return _glPrimitiveRestartIndexNV(index);
}

/// ```c
/// GLAPI GLvoid* APIENTRY glMapObjectBufferATI (GLuint buffer)
/// ```
Pointer<Void>? glMapObjectBufferATI(int buffer) {
  final _glMapObjectBufferATI = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 buffer),
      Pointer<Void>? Function(int buffer)>('glMapObjectBufferATI');
  return _glMapObjectBufferATI(buffer);
}

/// ```c
/// GLAPI void APIENTRY glUnmapObjectBufferATI (GLuint buffer)
/// ```
void glUnmapObjectBufferATI(int buffer) {
  final _glUnmapObjectBufferATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer),
      void Function(int buffer)>('glUnmapObjectBufferATI');
  return _glUnmapObjectBufferATI(buffer);
}

/// ```c
/// GLAPI void APIENTRY glStencilOpSeparateATI (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)
/// ```
void glStencilOpSeparateATI(int face, int sfail, int dpfail, int dppass) {
  final _glStencilOpSeparateATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 face, Uint32 sfail, Uint32 dpfail, Uint32 dppass),
      void Function(int face, int sfail, int dpfail, int dppass)>('glStencilOpSeparateATI');
  return _glStencilOpSeparateATI(face, sfail, dpfail, dppass);
}

/// ```c
/// GLAPI void APIENTRY glStencilFuncSeparateATI (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)
/// ```
void glStencilFuncSeparateATI(int frontfunc, int backfunc, int ref, int mask) {
  final _glStencilFuncSeparateATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 frontfunc, Uint32 backfunc, Int32 ref, Uint32 mask),
      void Function(int frontfunc, int backfunc, int ref, int mask)>('glStencilFuncSeparateATI');
  return _glStencilFuncSeparateATI(frontfunc, backfunc, ref, mask);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribArrayObjectATI (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset)
/// ```
void glVertexAttribArrayObjectATI(int index, int size, int type, int normalized, int stride, int buffer, int offset) {
  final _glVertexAttribArrayObjectATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Int32 normalized, Uint32 stride, Uint32 buffer, Uint32 offset),
      void Function(int index, int size, int type, int normalized, int stride, int buffer, int offset)>('glVertexAttribArrayObjectATI');
  return _glVertexAttribArrayObjectATI(index, size, type, normalized, stride, buffer, offset);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribArrayObjectfvATI (GLuint index, GLenum pname, GLfloat *params)
/// ```
void glGetVertexAttribArrayObjectfvATI(int index, int pname, Pointer<Float>? params) {
  final _glGetVertexAttribArrayObjectfvATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Float>? params),
      void Function(int index, int pname, Pointer<Float>? params)>('glGetVertexAttribArrayObjectfvATI');
  return _glGetVertexAttribArrayObjectfvATI(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribArrayObjectivATI (GLuint index, GLenum pname, GLint *params)
/// ```
void glGetVertexAttribArrayObjectivATI(int index, int pname, Pointer<Int32>? params) {
  final _glGetVertexAttribArrayObjectivATI = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int index, int pname, Pointer<Int32>? params)>('glGetVertexAttribArrayObjectivATI');
  return _glGetVertexAttribArrayObjectivATI(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glDepthBoundsEXT (GLclampd zmin, GLclampd zmax)
/// ```
void glDepthBoundsEXT(double zmin, double zmax) {
  final _glDepthBoundsEXT = DLL_SDL2.lookupFunction<
      Void Function(Double zmin, Double zmax),
      void Function(double zmin, double zmax)>('glDepthBoundsEXT');
  return _glDepthBoundsEXT(zmin, zmax);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationSeparateEXT (GLenum modeRGB, GLenum modeAlpha)
/// ```
void glBlendEquationSeparateEXT(int modeRGB, int modeAlpha) {
  final _glBlendEquationSeparateEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 modeRGB, Uint32 modeAlpha),
      void Function(int modeRGB, int modeAlpha)>('glBlendEquationSeparateEXT');
  return _glBlendEquationSeparateEXT(modeRGB, modeAlpha);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsRenderbufferEXT (GLuint renderbuffer)
/// ```
int glIsRenderbufferEXT(int renderbuffer) {
  final _glIsRenderbufferEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 renderbuffer),
      int Function(int renderbuffer)>('glIsRenderbufferEXT');
  return _glIsRenderbufferEXT(renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glBindRenderbufferEXT (GLenum target, GLuint renderbuffer)
/// ```
void glBindRenderbufferEXT(int target, int renderbuffer) {
  final _glBindRenderbufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 renderbuffer),
      void Function(int target, int renderbuffer)>('glBindRenderbufferEXT');
  return _glBindRenderbufferEXT(target, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glDeleteRenderbuffersEXT (GLsizei n, const GLuint *renderbuffers)
/// ```
void glDeleteRenderbuffersEXT(int n, Pointer<Uint32>? renderbuffers) {
  final _glDeleteRenderbuffersEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? renderbuffers),
      void Function(int n, Pointer<Uint32>? renderbuffers)>('glDeleteRenderbuffersEXT');
  return _glDeleteRenderbuffersEXT(n, renderbuffers);
}

/// ```c
/// GLAPI void APIENTRY glGenRenderbuffersEXT (GLsizei n, GLuint *renderbuffers)
/// ```
void glGenRenderbuffersEXT(int n, Pointer<Uint32>? renderbuffers) {
  final _glGenRenderbuffersEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? renderbuffers),
      void Function(int n, Pointer<Uint32>? renderbuffers)>('glGenRenderbuffersEXT');
  return _glGenRenderbuffersEXT(n, renderbuffers);
}

/// ```c
/// GLAPI void APIENTRY glRenderbufferStorageEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glRenderbufferStorageEXT(int target, int internalformat, int width, int height) {
  final _glRenderbufferStorageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int target, int internalformat, int width, int height)>('glRenderbufferStorageEXT');
  return _glRenderbufferStorageEXT(target, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetRenderbufferParameterivEXT (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetRenderbufferParameterivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glGetRenderbufferParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetRenderbufferParameterivEXT');
  return _glGetRenderbufferParameterivEXT(target, pname, params);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsFramebufferEXT (GLuint framebuffer)
/// ```
int glIsFramebufferEXT(int framebuffer) {
  final _glIsFramebufferEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 framebuffer),
      int Function(int framebuffer)>('glIsFramebufferEXT');
  return _glIsFramebufferEXT(framebuffer);
}

/// ```c
/// GLAPI void APIENTRY glBindFramebufferEXT (GLenum target, GLuint framebuffer)
/// ```
void glBindFramebufferEXT(int target, int framebuffer) {
  final _glBindFramebufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 framebuffer),
      void Function(int target, int framebuffer)>('glBindFramebufferEXT');
  return _glBindFramebufferEXT(target, framebuffer);
}

/// ```c
/// GLAPI void APIENTRY glDeleteFramebuffersEXT (GLsizei n, const GLuint *framebuffers)
/// ```
void glDeleteFramebuffersEXT(int n, Pointer<Uint32>? framebuffers) {
  final _glDeleteFramebuffersEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? framebuffers),
      void Function(int n, Pointer<Uint32>? framebuffers)>('glDeleteFramebuffersEXT');
  return _glDeleteFramebuffersEXT(n, framebuffers);
}

/// ```c
/// GLAPI void APIENTRY glGenFramebuffersEXT (GLsizei n, GLuint *framebuffers)
/// ```
void glGenFramebuffersEXT(int n, Pointer<Uint32>? framebuffers) {
  final _glGenFramebuffersEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? framebuffers),
      void Function(int n, Pointer<Uint32>? framebuffers)>('glGenFramebuffersEXT');
  return _glGenFramebuffersEXT(n, framebuffers);
}

/// ```c
/// GLAPI GLenum APIENTRY glCheckFramebufferStatusEXT (GLenum target)
/// ```
int glCheckFramebufferStatusEXT(int target) {
  final _glCheckFramebufferStatusEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 target),
      int Function(int target)>('glCheckFramebufferStatusEXT');
  return _glCheckFramebufferStatusEXT(target);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture1DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
/// ```
void glFramebufferTexture1DEXT(int target, int attachment, int textarget, int texture, int level) {
  final _glFramebufferTexture1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int textarget, int texture, int level)>('glFramebufferTexture1DEXT');
  return _glFramebufferTexture1DEXT(target, attachment, textarget, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture2DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
/// ```
void glFramebufferTexture2DEXT(int target, int attachment, int textarget, int texture, int level) {
  final _glFramebufferTexture2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int textarget, int texture, int level)>('glFramebufferTexture2DEXT');
  return _glFramebufferTexture2DEXT(target, attachment, textarget, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTexture3DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)
/// ```
void glFramebufferTexture3DEXT(int target, int attachment, int textarget, int texture, int level, int zoffset) {
  final _glFramebufferTexture3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level, Int32 zoffset),
      void Function(int target, int attachment, int textarget, int texture, int level, int zoffset)>('glFramebufferTexture3DEXT');
  return _glFramebufferTexture3DEXT(target, attachment, textarget, texture, level, zoffset);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferRenderbufferEXT (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
/// ```
void glFramebufferRenderbufferEXT(int target, int attachment, int renderbuffertarget, int renderbuffer) {
  final _glFramebufferRenderbufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 renderbuffertarget, Uint32 renderbuffer),
      void Function(int target, int attachment, int renderbuffertarget, int renderbuffer)>('glFramebufferRenderbufferEXT');
  return _glFramebufferRenderbufferEXT(target, attachment, renderbuffertarget, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glGetFramebufferAttachmentParameterivEXT (GLenum target, GLenum attachment, GLenum pname, GLint *params)
/// ```
void glGetFramebufferAttachmentParameterivEXT(int target, int attachment, int pname, Pointer<Int32>? params) {
  final _glGetFramebufferAttachmentParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int attachment, int pname, Pointer<Int32>? params)>('glGetFramebufferAttachmentParameterivEXT');
  return _glGetFramebufferAttachmentParameterivEXT(target, attachment, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGenerateMipmapEXT (GLenum target)
/// ```
void glGenerateMipmapEXT(int target) {
  final _glGenerateMipmapEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glGenerateMipmapEXT');
  return _glGenerateMipmapEXT(target);
}

/// ```c
/// GLAPI void APIENTRY glStringMarkerGREMEDY (GLsizei len, const GLvoid *string)
/// ```
void glStringMarkerGREMEDY(int len, Pointer<Void>? string) {
  final _glStringMarkerGREMEDY = DLL_SDL2.lookupFunction<
      Void Function(Uint32 len, Pointer<Void>? string),
      void Function(int len, Pointer<Void>? string)>('glStringMarkerGREMEDY');
  return _glStringMarkerGREMEDY(len, string);
}

/// ```c
/// GLAPI void APIENTRY glStencilClearTagEXT (GLsizei stencilTagBits, GLuint stencilClearTag)
/// ```
void glStencilClearTagEXT(int stencilTagBits, int stencilClearTag) {
  final _glStencilClearTagEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stencilTagBits, Uint32 stencilClearTag),
      void Function(int stencilTagBits, int stencilClearTag)>('glStencilClearTagEXT');
  return _glStencilClearTagEXT(stencilTagBits, stencilClearTag);
}

/// ```c
/// GLAPI void APIENTRY glBlitFramebufferEXT (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
/// ```
void glBlitFramebufferEXT(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter) {
  final _glBlitFramebufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 srcX0, Int32 srcY0, Int32 srcX1, Int32 srcY1, Int32 dstX0, Int32 dstY0, Int32 dstX1, Int32 dstY1, Uint32 mask, Uint32 filter),
      void Function(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter)>('glBlitFramebufferEXT');
  return _glBlitFramebufferEXT(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
}

/// ```c
/// GLAPI void APIENTRY glRenderbufferStorageMultisampleEXT (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glRenderbufferStorageMultisampleEXT(int target, int samples, int internalformat, int width, int height) {
  final _glRenderbufferStorageMultisampleEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 samples, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int target, int samples, int internalformat, int width, int height)>('glRenderbufferStorageMultisampleEXT');
  return _glRenderbufferStorageMultisampleEXT(target, samples, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjecti64vEXT (GLuint id, GLenum pname, GLint64EXT *params)
/// ```
void glGetQueryObjecti64vEXT(int id, int pname, Pointer<Int64>? params) {
  final _glGetQueryObjecti64vEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Int64>? params),
      void Function(int id, int pname, Pointer<Int64>? params)>('glGetQueryObjecti64vEXT');
  return _glGetQueryObjecti64vEXT(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetQueryObjectui64vEXT (GLuint id, GLenum pname, GLuint64EXT *params)
/// ```
void glGetQueryObjectui64vEXT(int id, int pname, Pointer<Uint64>? params) {
  final _glGetQueryObjectui64vEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 pname, Pointer<Uint64>? params),
      void Function(int id, int pname, Pointer<Uint64>? params)>('glGetQueryObjectui64vEXT');
  return _glGetQueryObjectui64vEXT(id, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const GLfloat *params)
/// ```
void glProgramEnvParameters4fvEXT(int target, int index, int count, Pointer<Float>? params) {
  final _glProgramEnvParameters4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Float>? params),
      void Function(int target, int index, int count, Pointer<Float>? params)>('glProgramEnvParameters4fvEXT');
  return _glProgramEnvParameters4fvEXT(target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const GLfloat *params)
/// ```
void glProgramLocalParameters4fvEXT(int target, int index, int count, Pointer<Float>? params) {
  final _glProgramLocalParameters4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Float>? params),
      void Function(int target, int index, int count, Pointer<Float>? params)>('glProgramLocalParameters4fvEXT');
  return _glProgramLocalParameters4fvEXT(target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glBufferParameteriAPPLE (GLenum target, GLenum pname, GLint param)
/// ```
void glBufferParameteriAPPLE(int target, int pname, int param) {
  final _glBufferParameteriAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Int32 param),
      void Function(int target, int pname, int param)>('glBufferParameteriAPPLE');
  return _glBufferParameteriAPPLE(target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glFlushMappedBufferRangeAPPLE (GLenum target, GLintptr offset, GLsizeiptr size)
/// ```
void glFlushMappedBufferRangeAPPLE(int target, Pointer<Void>? offset, Pointer<Void>? size) {
  final _glFlushMappedBufferRangeAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Pointer<Void>? offset, Pointer<Void>? size),
      void Function(int target, Pointer<Void>? offset, Pointer<Void>? size)>('glFlushMappedBufferRangeAPPLE');
  return _glFlushMappedBufferRangeAPPLE(target, offset, size);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)
/// ```
void glProgramLocalParameterI4iNV(int target, int index, int x, int y, int z, int w) {
  final _glProgramLocalParameterI4iNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int target, int index, int x, int y, int z, int w)>('glProgramLocalParameterI4iNV');
  return _glProgramLocalParameterI4iNV(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameterI4ivNV (GLenum target, GLuint index, const GLint *params)
/// ```
void glProgramLocalParameterI4ivNV(int target, int index, Pointer<Int32>? params) {
  final _glProgramLocalParameterI4ivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? params),
      void Function(int target, int index, Pointer<Int32>? params)>('glProgramLocalParameterI4ivNV');
  return _glProgramLocalParameterI4ivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const GLint *params)
/// ```
void glProgramLocalParametersI4ivNV(int target, int index, int count, Pointer<Int32>? params) {
  final _glProgramLocalParametersI4ivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Int32>? params),
      void Function(int target, int index, int count, Pointer<Int32>? params)>('glProgramLocalParametersI4ivNV');
  return _glProgramLocalParametersI4ivNV(target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
/// ```
void glProgramLocalParameterI4uiNV(int target, int index, int x, int y, int z, int w) {
  final _glProgramLocalParameterI4uiNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w),
      void Function(int target, int index, int x, int y, int z, int w)>('glProgramLocalParameterI4uiNV');
  return _glProgramLocalParameterI4uiNV(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParameterI4uivNV (GLenum target, GLuint index, const GLuint *params)
/// ```
void glProgramLocalParameterI4uivNV(int target, int index, Pointer<Uint32>? params) {
  final _glProgramLocalParameterI4uivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Uint32>? params),
      void Function(int target, int index, Pointer<Uint32>? params)>('glProgramLocalParameterI4uivNV');
  return _glProgramLocalParameterI4uivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramLocalParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const GLuint *params)
/// ```
void glProgramLocalParametersI4uivNV(int target, int index, int count, Pointer<Uint32>? params) {
  final _glProgramLocalParametersI4uivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Uint32>? params),
      void Function(int target, int index, int count, Pointer<Uint32>? params)>('glProgramLocalParametersI4uivNV');
  return _glProgramLocalParametersI4uivNV(target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)
/// ```
void glProgramEnvParameterI4iNV(int target, int index, int x, int y, int z, int w) {
  final _glProgramEnvParameterI4iNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int target, int index, int x, int y, int z, int w)>('glProgramEnvParameterI4iNV');
  return _glProgramEnvParameterI4iNV(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameterI4ivNV (GLenum target, GLuint index, const GLint *params)
/// ```
void glProgramEnvParameterI4ivNV(int target, int index, Pointer<Int32>? params) {
  final _glProgramEnvParameterI4ivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? params),
      void Function(int target, int index, Pointer<Int32>? params)>('glProgramEnvParameterI4ivNV');
  return _glProgramEnvParameterI4ivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const GLint *params)
/// ```
void glProgramEnvParametersI4ivNV(int target, int index, int count, Pointer<Int32>? params) {
  final _glProgramEnvParametersI4ivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Int32>? params),
      void Function(int target, int index, int count, Pointer<Int32>? params)>('glProgramEnvParametersI4ivNV');
  return _glProgramEnvParametersI4ivNV(target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
/// ```
void glProgramEnvParameterI4uiNV(int target, int index, int x, int y, int z, int w) {
  final _glProgramEnvParameterI4uiNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w),
      void Function(int target, int index, int x, int y, int z, int w)>('glProgramEnvParameterI4uiNV');
  return _glProgramEnvParameterI4uiNV(target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParameterI4uivNV (GLenum target, GLuint index, const GLuint *params)
/// ```
void glProgramEnvParameterI4uivNV(int target, int index, Pointer<Uint32>? params) {
  final _glProgramEnvParameterI4uivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Uint32>? params),
      void Function(int target, int index, Pointer<Uint32>? params)>('glProgramEnvParameterI4uivNV');
  return _glProgramEnvParameterI4uivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramEnvParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const GLuint *params)
/// ```
void glProgramEnvParametersI4uivNV(int target, int index, int count, Pointer<Uint32>? params) {
  final _glProgramEnvParametersI4uivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 count, Pointer<Uint32>? params),
      void Function(int target, int index, int count, Pointer<Uint32>? params)>('glProgramEnvParametersI4uivNV');
  return _glProgramEnvParametersI4uivNV(target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramLocalParameterIivNV (GLenum target, GLuint index, GLint *params)
/// ```
void glGetProgramLocalParameterIivNV(int target, int index, Pointer<Int32>? params) {
  final _glGetProgramLocalParameterIivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? params),
      void Function(int target, int index, Pointer<Int32>? params)>('glGetProgramLocalParameterIivNV');
  return _glGetProgramLocalParameterIivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramLocalParameterIuivNV (GLenum target, GLuint index, GLuint *params)
/// ```
void glGetProgramLocalParameterIuivNV(int target, int index, Pointer<Uint32>? params) {
  final _glGetProgramLocalParameterIuivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Uint32>? params),
      void Function(int target, int index, Pointer<Uint32>? params)>('glGetProgramLocalParameterIuivNV');
  return _glGetProgramLocalParameterIuivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramEnvParameterIivNV (GLenum target, GLuint index, GLint *params)
/// ```
void glGetProgramEnvParameterIivNV(int target, int index, Pointer<Int32>? params) {
  final _glGetProgramEnvParameterIivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? params),
      void Function(int target, int index, Pointer<Int32>? params)>('glGetProgramEnvParameterIivNV');
  return _glGetProgramEnvParameterIivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramEnvParameterIuivNV (GLenum target, GLuint index, GLuint *params)
/// ```
void glGetProgramEnvParameterIuivNV(int target, int index, Pointer<Uint32>? params) {
  final _glGetProgramEnvParameterIuivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Uint32>? params),
      void Function(int target, int index, Pointer<Uint32>? params)>('glGetProgramEnvParameterIuivNV');
  return _glGetProgramEnvParameterIuivNV(target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramVertexLimitNV (GLenum target, GLint limit)
/// ```
void glProgramVertexLimitNV(int target, int limit) {
  final _glProgramVertexLimitNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Int32 limit),
      void Function(int target, int limit)>('glProgramVertexLimitNV');
  return _glProgramVertexLimitNV(target, limit);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureEXT (GLenum target, GLenum attachment, GLuint texture, GLint level)
/// ```
void glFramebufferTextureEXT(int target, int attachment, int texture, int level) {
  final _glFramebufferTextureEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level),
      void Function(int target, int attachment, int texture, int level)>('glFramebufferTextureEXT');
  return _glFramebufferTextureEXT(target, attachment, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureLayerEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)
/// ```
void glFramebufferTextureLayerEXT(int target, int attachment, int texture, int level, int layer) {
  final _glFramebufferTextureLayerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Int32 layer),
      void Function(int target, int attachment, int texture, int level, int layer)>('glFramebufferTextureLayerEXT');
  return _glFramebufferTextureLayerEXT(target, attachment, texture, level, layer);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferTextureFaceEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)
/// ```
void glFramebufferTextureFaceEXT(int target, int attachment, int texture, int level, int face) {
  final _glFramebufferTextureFaceEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Uint32 face),
      void Function(int target, int attachment, int texture, int level, int face)>('glFramebufferTextureFaceEXT');
  return _glFramebufferTextureFaceEXT(target, attachment, texture, level, face);
}

/// ```c
/// GLAPI void APIENTRY glProgramParameteriEXT (GLuint program, GLenum pname, GLint value)
/// ```
void glProgramParameteriEXT(int program, int pname, int value) {
  final _glProgramParameteriEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 pname, Int32 value),
      void Function(int program, int pname, int value)>('glProgramParameteriEXT');
  return _glProgramParameteriEXT(program, pname, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1iEXT (GLuint index, GLint x)
/// ```
void glVertexAttribI1iEXT(int index, int x) {
  final _glVertexAttribI1iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x),
      void Function(int index, int x)>('glVertexAttribI1iEXT');
  return _glVertexAttribI1iEXT(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2iEXT (GLuint index, GLint x, GLint y)
/// ```
void glVertexAttribI2iEXT(int index, int x, int y) {
  final _glVertexAttribI2iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x, Int32 y),
      void Function(int index, int x, int y)>('glVertexAttribI2iEXT');
  return _glVertexAttribI2iEXT(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3iEXT (GLuint index, GLint x, GLint y, GLint z)
/// ```
void glVertexAttribI3iEXT(int index, int x, int y, int z) {
  final _glVertexAttribI3iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x, Int32 y, Int32 z),
      void Function(int index, int x, int y, int z)>('glVertexAttribI3iEXT');
  return _glVertexAttribI3iEXT(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4iEXT (GLuint index, GLint x, GLint y, GLint z, GLint w)
/// ```
void glVertexAttribI4iEXT(int index, int x, int y, int z, int w) {
  final _glVertexAttribI4iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttribI4iEXT');
  return _glVertexAttribI4iEXT(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1uiEXT (GLuint index, GLuint x)
/// ```
void glVertexAttribI1uiEXT(int index, int x) {
  final _glVertexAttribI1uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x),
      void Function(int index, int x)>('glVertexAttribI1uiEXT');
  return _glVertexAttribI1uiEXT(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2uiEXT (GLuint index, GLuint x, GLuint y)
/// ```
void glVertexAttribI2uiEXT(int index, int x, int y) {
  final _glVertexAttribI2uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x, Uint32 y),
      void Function(int index, int x, int y)>('glVertexAttribI2uiEXT');
  return _glVertexAttribI2uiEXT(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3uiEXT (GLuint index, GLuint x, GLuint y, GLuint z)
/// ```
void glVertexAttribI3uiEXT(int index, int x, int y, int z) {
  final _glVertexAttribI3uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x, Uint32 y, Uint32 z),
      void Function(int index, int x, int y, int z)>('glVertexAttribI3uiEXT');
  return _glVertexAttribI3uiEXT(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4uiEXT (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
/// ```
void glVertexAttribI4uiEXT(int index, int x, int y, int z, int w) {
  final _glVertexAttribI4uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttribI4uiEXT');
  return _glVertexAttribI4uiEXT(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1ivEXT (GLuint index, const GLint *v)
/// ```
void glVertexAttribI1ivEXT(int index, Pointer<Int32>? v) {
  final _glVertexAttribI1ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI1ivEXT');
  return _glVertexAttribI1ivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2ivEXT (GLuint index, const GLint *v)
/// ```
void glVertexAttribI2ivEXT(int index, Pointer<Int32>? v) {
  final _glVertexAttribI2ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI2ivEXT');
  return _glVertexAttribI2ivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3ivEXT (GLuint index, const GLint *v)
/// ```
void glVertexAttribI3ivEXT(int index, Pointer<Int32>? v) {
  final _glVertexAttribI3ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI3ivEXT');
  return _glVertexAttribI3ivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4ivEXT (GLuint index, const GLint *v)
/// ```
void glVertexAttribI4ivEXT(int index, Pointer<Int32>? v) {
  final _glVertexAttribI4ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int32>? v),
      void Function(int index, Pointer<Int32>? v)>('glVertexAttribI4ivEXT');
  return _glVertexAttribI4ivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI1uivEXT (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI1uivEXT(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI1uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI1uivEXT');
  return _glVertexAttribI1uivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI2uivEXT (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI2uivEXT(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI2uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI2uivEXT');
  return _glVertexAttribI2uivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI3uivEXT (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI3uivEXT(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI3uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI3uivEXT');
  return _glVertexAttribI3uivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4uivEXT (GLuint index, const GLuint *v)
/// ```
void glVertexAttribI4uivEXT(int index, Pointer<Uint32>? v) {
  final _glVertexAttribI4uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint32>? v),
      void Function(int index, Pointer<Uint32>? v)>('glVertexAttribI4uivEXT');
  return _glVertexAttribI4uivEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4bvEXT (GLuint index, const GLbyte *v)
/// ```
void glVertexAttribI4bvEXT(int index, String v) {
  final _glVertexAttribI4bvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Utf8>? v),
      void Function(int index, Pointer<Utf8>? v)>('glVertexAttribI4bvEXT');
  final _vPointer = v.toNativeUtf8();
  final _result = _glVertexAttribI4bvEXT(index, _vPointer);
  calloc.free(_vPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4svEXT (GLuint index, const GLshort *v)
/// ```
void glVertexAttribI4svEXT(int index, Pointer<Int16>? v) {
  final _glVertexAttribI4svEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int16>? v),
      void Function(int index, Pointer<Int16>? v)>('glVertexAttribI4svEXT');
  return _glVertexAttribI4svEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4ubvEXT (GLuint index, const GLubyte *v)
/// ```
void glVertexAttribI4ubvEXT(int index, Pointer<Uint8>? v) {
  final _glVertexAttribI4ubvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint8>? v),
      void Function(int index, Pointer<Uint8>? v)>('glVertexAttribI4ubvEXT');
  return _glVertexAttribI4ubvEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribI4usvEXT (GLuint index, const GLushort *v)
/// ```
void glVertexAttribI4usvEXT(int index, Pointer<Uint16>? v) {
  final _glVertexAttribI4usvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint16>? v),
      void Function(int index, Pointer<Uint16>? v)>('glVertexAttribI4usvEXT');
  return _glVertexAttribI4usvEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribIPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribIPointerEXT(int index, int size, int type, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribIPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int size, int type, int stride, Pointer<Void>? pointer)>('glVertexAttribIPointerEXT');
  return _glVertexAttribIPointerEXT(index, size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribIivEXT (GLuint index, GLenum pname, GLint *params)
/// ```
void glGetVertexAttribIivEXT(int index, int pname, Pointer<Int32>? params) {
  final _glGetVertexAttribIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int32>? params),
      void Function(int index, int pname, Pointer<Int32>? params)>('glGetVertexAttribIivEXT');
  return _glGetVertexAttribIivEXT(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribIuivEXT (GLuint index, GLenum pname, GLuint *params)
/// ```
void glGetVertexAttribIuivEXT(int index, int pname, Pointer<Uint32>? params) {
  final _glGetVertexAttribIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Uint32>? params),
      void Function(int index, int pname, Pointer<Uint32>? params)>('glGetVertexAttribIuivEXT');
  return _glGetVertexAttribIuivEXT(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformuivEXT (GLuint program, GLint location, GLuint *params)
/// ```
void glGetUniformuivEXT(int program, int location, Pointer<Uint32>? params) {
  final _glGetUniformuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Uint32>? params),
      void Function(int program, int location, Pointer<Uint32>? params)>('glGetUniformuivEXT');
  return _glGetUniformuivEXT(program, location, params);
}

/// ```c
/// GLAPI void APIENTRY glBindFragDataLocationEXT (GLuint program, GLuint color, const GLchar *name)
/// ```
void glBindFragDataLocationEXT(int program, int color, String name) {
  final _glBindFragDataLocationEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 color, Pointer<Utf8>? name),
      void Function(int program, int color, Pointer<Utf8>? name)>('glBindFragDataLocationEXT');
  final _namePointer = name.toNativeUtf8();
  final _result = _glBindFragDataLocationEXT(program, color, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI GLint APIENTRY glGetFragDataLocationEXT (GLuint program, const GLchar *name)
/// ```
int glGetFragDataLocationEXT(int program, String name) {
  final _glGetFragDataLocationEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Pointer<Utf8>? name),
      int Function(int program, Pointer<Utf8>? name)>('glGetFragDataLocationEXT');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetFragDataLocationEXT(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glUniform1uiEXT (GLint location, GLuint v0)
/// ```
void glUniform1uiEXT(int location, int v0) {
  final _glUniform1uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0),
      void Function(int location, int v0)>('glUniform1uiEXT');
  return _glUniform1uiEXT(location, v0);
}

/// ```c
/// GLAPI void APIENTRY glUniform2uiEXT (GLint location, GLuint v0, GLuint v1)
/// ```
void glUniform2uiEXT(int location, int v0, int v1) {
  final _glUniform2uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0, Uint32 v1),
      void Function(int location, int v0, int v1)>('glUniform2uiEXT');
  return _glUniform2uiEXT(location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glUniform3uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2)
/// ```
void glUniform3uiEXT(int location, int v0, int v1, int v2) {
  final _glUniform3uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0, Uint32 v1, Uint32 v2),
      void Function(int location, int v0, int v1, int v2)>('glUniform3uiEXT');
  return _glUniform3uiEXT(location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glUniform4uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
/// ```
void glUniform4uiEXT(int location, int v0, int v1, int v2, int v3) {
  final _glUniform4uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3),
      void Function(int location, int v0, int v1, int v2, int v3)>('glUniform4uiEXT');
  return _glUniform4uiEXT(location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glUniform1uivEXT (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform1uivEXT(int location, int count, Pointer<Uint32>? value) {
  final _glUniform1uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform1uivEXT');
  return _glUniform1uivEXT(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2uivEXT (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform2uivEXT(int location, int count, Pointer<Uint32>? value) {
  final _glUniform2uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform2uivEXT');
  return _glUniform2uivEXT(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3uivEXT (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform3uivEXT(int location, int count, Pointer<Uint32>? value) {
  final _glUniform3uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform3uivEXT');
  return _glUniform3uivEXT(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4uivEXT (GLint location, GLsizei count, const GLuint *value)
/// ```
void glUniform4uivEXT(int location, int count, Pointer<Uint32>? value) {
  final _glUniform4uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int location, int count, Pointer<Uint32>? value)>('glUniform4uivEXT');
  return _glUniform4uivEXT(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glDrawArraysInstancedEXT (GLenum mode, GLint start, GLsizei count, GLsizei primcount)
/// ```
void glDrawArraysInstancedEXT(int mode, int start, int count, int primcount) {
  final _glDrawArraysInstancedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Int32 start, Uint32 count, Uint32 primcount),
      void Function(int mode, int start, int count, int primcount)>('glDrawArraysInstancedEXT');
  return _glDrawArraysInstancedEXT(mode, start, count, primcount);
}

/// ```c
/// GLAPI void APIENTRY glDrawElementsInstancedEXT (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount)
/// ```
void glDrawElementsInstancedEXT(int mode, int count, int type, Pointer<Void>? indices, int primcount) {
  final _glDrawElementsInstancedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 count, Uint32 type, Pointer<Void>? indices, Uint32 primcount),
      void Function(int mode, int count, int type, Pointer<Void>? indices, int primcount)>('glDrawElementsInstancedEXT');
  return _glDrawElementsInstancedEXT(mode, count, type, indices, primcount);
}

/// ```c
/// GLAPI void APIENTRY glTexBufferEXT (GLenum target, GLenum internalformat, GLuint buffer)
/// ```
void glTexBufferEXT(int target, int internalformat, int buffer) {
  final _glTexBufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 internalformat, Uint32 buffer),
      void Function(int target, int internalformat, int buffer)>('glTexBufferEXT');
  return _glTexBufferEXT(target, internalformat, buffer);
}

/// ```c
/// GLAPI void APIENTRY glDepthRangedNV (GLdouble zNear, GLdouble zFar)
/// ```
void glDepthRangedNV(double zNear, double zFar) {
  final _glDepthRangedNV = DLL_SDL2.lookupFunction<
      Void Function(Double zNear, Double zFar),
      void Function(double zNear, double zFar)>('glDepthRangedNV');
  return _glDepthRangedNV(zNear, zFar);
}

/// ```c
/// GLAPI void APIENTRY glClearDepthdNV (GLdouble depth)
/// ```
void glClearDepthdNV(double depth) {
  final _glClearDepthdNV = DLL_SDL2.lookupFunction<
      Void Function(Double depth),
      void Function(double depth)>('glClearDepthdNV');
  return _glClearDepthdNV(depth);
}

/// ```c
/// GLAPI void APIENTRY glDepthBoundsdNV (GLdouble zmin, GLdouble zmax)
/// ```
void glDepthBoundsdNV(double zmin, double zmax) {
  final _glDepthBoundsdNV = DLL_SDL2.lookupFunction<
      Void Function(Double zmin, Double zmax),
      void Function(double zmin, double zmax)>('glDepthBoundsdNV');
  return _glDepthBoundsdNV(zmin, zmax);
}

/// ```c
/// GLAPI void APIENTRY glRenderbufferStorageMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glRenderbufferStorageMultisampleCoverageNV(int target, int coverageSamples, int colorSamples, int internalformat, int width, int height) {
  final _glRenderbufferStorageMultisampleCoverageNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 coverageSamples, Uint32 colorSamples, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int target, int coverageSamples, int colorSamples, int internalformat, int width, int height)>('glRenderbufferStorageMultisampleCoverageNV');
  return _glRenderbufferStorageMultisampleCoverageNV(target, coverageSamples, colorSamples, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glProgramBufferParametersfvNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat *params)
/// ```
void glProgramBufferParametersfvNV(int target, int buffer, int index, int count, Pointer<Float>? params) {
  final _glProgramBufferParametersfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 buffer, Uint32 index, Uint32 count, Pointer<Float>? params),
      void Function(int target, int buffer, int index, int count, Pointer<Float>? params)>('glProgramBufferParametersfvNV');
  return _glProgramBufferParametersfvNV(target, buffer, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramBufferParametersIivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint *params)
/// ```
void glProgramBufferParametersIivNV(int target, int buffer, int index, int count, Pointer<Int32>? params) {
  final _glProgramBufferParametersIivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 buffer, Uint32 index, Uint32 count, Pointer<Int32>? params),
      void Function(int target, int buffer, int index, int count, Pointer<Int32>? params)>('glProgramBufferParametersIivNV');
  return _glProgramBufferParametersIivNV(target, buffer, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramBufferParametersIuivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint *params)
/// ```
void glProgramBufferParametersIuivNV(int target, int buffer, int index, int count, Pointer<Uint32>? params) {
  final _glProgramBufferParametersIuivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 buffer, Uint32 index, Uint32 count, Pointer<Uint32>? params),
      void Function(int target, int buffer, int index, int count, Pointer<Uint32>? params)>('glProgramBufferParametersIuivNV');
  return _glProgramBufferParametersIuivNV(target, buffer, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glColorMaskIndexedEXT (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)
/// ```
void glColorMaskIndexedEXT(int index, int r, int g, int b, int a) {
  final _glColorMaskIndexedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 r, Int32 g, Int32 b, Int32 a),
      void Function(int index, int r, int g, int b, int a)>('glColorMaskIndexedEXT');
  return _glColorMaskIndexedEXT(index, r, g, b, a);
}

/// ```c
/// GLAPI void APIENTRY glGetBooleanIndexedvEXT (GLenum target, GLuint index, GLboolean *data)
/// ```
void glGetBooleanIndexedvEXT(int target, int index, Pointer<Int32>? data) {
  final _glGetBooleanIndexedvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? data),
      void Function(int target, int index, Pointer<Int32>? data)>('glGetBooleanIndexedvEXT');
  return _glGetBooleanIndexedvEXT(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glGetIntegerIndexedvEXT (GLenum target, GLuint index, GLint *data)
/// ```
void glGetIntegerIndexedvEXT(int target, int index, Pointer<Int32>? data) {
  final _glGetIntegerIndexedvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Int32>? data),
      void Function(int target, int index, Pointer<Int32>? data)>('glGetIntegerIndexedvEXT');
  return _glGetIntegerIndexedvEXT(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glEnableIndexedEXT (GLenum target, GLuint index)
/// ```
void glEnableIndexedEXT(int target, int index) {
  final _glEnableIndexedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index),
      void Function(int target, int index)>('glEnableIndexedEXT');
  return _glEnableIndexedEXT(target, index);
}

/// ```c
/// GLAPI void APIENTRY glDisableIndexedEXT (GLenum target, GLuint index)
/// ```
void glDisableIndexedEXT(int target, int index) {
  final _glDisableIndexedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index),
      void Function(int target, int index)>('glDisableIndexedEXT');
  return _glDisableIndexedEXT(target, index);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsEnabledIndexedEXT (GLenum target, GLuint index)
/// ```
int glIsEnabledIndexedEXT(int target, int index) {
  final _glIsEnabledIndexedEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 target, Uint32 index),
      int Function(int target, int index)>('glIsEnabledIndexedEXT');
  return _glIsEnabledIndexedEXT(target, index);
}

/// ```c
/// GLAPI void APIENTRY glBeginTransformFeedbackNV (GLenum primitiveMode)
/// ```
void glBeginTransformFeedbackNV(int primitiveMode) {
  final _glBeginTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 primitiveMode),
      void Function(int primitiveMode)>('glBeginTransformFeedbackNV');
  return _glBeginTransformFeedbackNV(primitiveMode);
}

/// ```c
/// GLAPI void APIENTRY glEndTransformFeedbackNV (void)
/// ```
void glEndTransformFeedbackNV() {
  final _glEndTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndTransformFeedbackNV');
  return _glEndTransformFeedbackNV();
}

/// ```c
/// GLAPI void APIENTRY glTransformFeedbackAttribsNV (GLuint count, const GLint *attribs, GLenum bufferMode)
/// ```
void glTransformFeedbackAttribsNV(int count, Pointer<Int32>? attribs, int bufferMode) {
  final _glTransformFeedbackAttribsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 count, Pointer<Int32>? attribs, Uint32 bufferMode),
      void Function(int count, Pointer<Int32>? attribs, int bufferMode)>('glTransformFeedbackAttribsNV');
  return _glTransformFeedbackAttribsNV(count, attribs, bufferMode);
}

/// ```c
/// GLAPI void APIENTRY glBindBufferRangeNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
/// ```
void glBindBufferRangeNV(int target, int index, int buffer, Pointer<Void>? offset, Pointer<Void>? size) {
  final _glBindBufferRangeNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? size),
      void Function(int target, int index, int buffer, Pointer<Void>? offset, Pointer<Void>? size)>('glBindBufferRangeNV');
  return _glBindBufferRangeNV(target, index, buffer, offset, size);
}

/// ```c
/// GLAPI void APIENTRY glBindBufferOffsetNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset)
/// ```
void glBindBufferOffsetNV(int target, int index, int buffer, Pointer<Void>? offset) {
  final _glBindBufferOffsetNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer, Pointer<Void>? offset),
      void Function(int target, int index, int buffer, Pointer<Void>? offset)>('glBindBufferOffsetNV');
  return _glBindBufferOffsetNV(target, index, buffer, offset);
}

/// ```c
/// GLAPI void APIENTRY glBindBufferBaseNV (GLenum target, GLuint index, GLuint buffer)
/// ```
void glBindBufferBaseNV(int target, int index, int buffer) {
  final _glBindBufferBaseNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer),
      void Function(int target, int index, int buffer)>('glBindBufferBaseNV');
  return _glBindBufferBaseNV(target, index, buffer);
}

/// ```c
/// GLAPI void APIENTRY glTransformFeedbackVaryingsNV (GLuint program, GLsizei count, const GLint *locations, GLenum bufferMode)
/// ```
void glTransformFeedbackVaryingsNV(int program, int count, Pointer<Int32>? locations, int bufferMode) {
  final _glTransformFeedbackVaryingsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 count, Pointer<Int32>? locations, Uint32 bufferMode),
      void Function(int program, int count, Pointer<Int32>? locations, int bufferMode)>('glTransformFeedbackVaryingsNV');
  return _glTransformFeedbackVaryingsNV(program, count, locations, bufferMode);
}

/// ```c
/// GLAPI void APIENTRY glActiveVaryingNV (GLuint program, const GLchar *name)
/// ```
void glActiveVaryingNV(int program, String name) {
  final _glActiveVaryingNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Pointer<Utf8>? name),
      void Function(int program, Pointer<Utf8>? name)>('glActiveVaryingNV');
  final _namePointer = name.toNativeUtf8();
  final _result = _glActiveVaryingNV(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI GLint APIENTRY glGetVaryingLocationNV (GLuint program, const GLchar *name)
/// ```
int glGetVaryingLocationNV(int program, String name) {
  final _glGetVaryingLocationNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Pointer<Utf8>? name),
      int Function(int program, Pointer<Utf8>? name)>('glGetVaryingLocationNV');
  final _namePointer = name.toNativeUtf8();
  final _result = _glGetVaryingLocationNV(program, _namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glGetActiveVaryingNV (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name)
/// ```
void glGetActiveVaryingNV(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetActiveVaryingNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetActiveVaryingNV');
  return _glGetActiveVaryingNV(program, index, bufSize, length, size, type, name);
}

/// ```c
/// GLAPI void APIENTRY glGetTransformFeedbackVaryingNV (GLuint program, GLuint index, GLint *location)
/// ```
void glGetTransformFeedbackVaryingNV(int program, int index, Pointer<Int32>? location) {
  final _glGetTransformFeedbackVaryingNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Pointer<Int32>? location),
      void Function(int program, int index, Pointer<Int32>? location)>('glGetTransformFeedbackVaryingNV');
  return _glGetTransformFeedbackVaryingNV(program, index, location);
}

/// ```c
/// GLAPI void APIENTRY glTransformFeedbackStreamAttribsNV (GLsizei count, const GLint *attribs, GLsizei nbuffers, const GLint *bufstreams, GLenum bufferMode)
/// ```
void glTransformFeedbackStreamAttribsNV(int count, Pointer<Int32>? attribs, int nbuffers, Pointer<Int32>? bufstreams, int bufferMode) {
  final _glTransformFeedbackStreamAttribsNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 count, Pointer<Int32>? attribs, Uint32 nbuffers, Pointer<Int32>? bufstreams, Uint32 bufferMode),
      void Function(int count, Pointer<Int32>? attribs, int nbuffers, Pointer<Int32>? bufstreams, int bufferMode)>('glTransformFeedbackStreamAttribsNV');
  return _glTransformFeedbackStreamAttribsNV(count, attribs, nbuffers, bufstreams, bufferMode);
}

/// ```c
/// GLAPI void APIENTRY glUniformBufferEXT (GLuint program, GLint location, GLuint buffer)
/// ```
void glUniformBufferEXT(int program, int location, int buffer) {
  final _glUniformBufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 buffer),
      void Function(int program, int location, int buffer)>('glUniformBufferEXT');
  return _glUniformBufferEXT(program, location, buffer);
}

/// ```c
/// GLAPI GLint APIENTRY glGetUniformBufferSizeEXT (GLuint program, GLint location)
/// ```
int glGetUniformBufferSizeEXT(int program, int location) {
  final _glGetUniformBufferSizeEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 program, Int32 location),
      int Function(int program, int location)>('glGetUniformBufferSizeEXT');
  return _glGetUniformBufferSizeEXT(program, location);
}

/// ```c
/// GLAPI GLintptr APIENTRY glGetUniformOffsetEXT (GLuint program, GLint location)
/// ```
Pointer<Void>? glGetUniformOffsetEXT(int program, int location) {
  final _glGetUniformOffsetEXT = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 program, Int32 location),
      Pointer<Void>? Function(int program, int location)>('glGetUniformOffsetEXT');
  return _glGetUniformOffsetEXT(program, location);
}

/// ```c
/// GLAPI void APIENTRY glTexParameterIivEXT (GLenum target, GLenum pname, const GLint *params)
/// ```
void glTexParameterIivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glTexParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glTexParameterIivEXT');
  return _glTexParameterIivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTexParameterIuivEXT (GLenum target, GLenum pname, const GLuint *params)
/// ```
void glTexParameterIuivEXT(int target, int pname, Pointer<Uint32>? params) {
  final _glTexParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int target, int pname, Pointer<Uint32>? params)>('glTexParameterIuivEXT');
  return _glTexParameterIuivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTexParameterIivEXT (GLenum target, GLenum pname, GLint *params)
/// ```
void glGetTexParameterIivEXT(int target, int pname, Pointer<Int32>? params) {
  final _glGetTexParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int target, int pname, Pointer<Int32>? params)>('glGetTexParameterIivEXT');
  return _glGetTexParameterIivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTexParameterIuivEXT (GLenum target, GLenum pname, GLuint *params)
/// ```
void glGetTexParameterIuivEXT(int target, int pname, Pointer<Uint32>? params) {
  final _glGetTexParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int target, int pname, Pointer<Uint32>? params)>('glGetTexParameterIuivEXT');
  return _glGetTexParameterIuivEXT(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glClearColorIiEXT (GLint red, GLint green, GLint blue, GLint alpha)
/// ```
void glClearColorIiEXT(int red, int green, int blue, int alpha) {
  final _glClearColorIiEXT = DLL_SDL2.lookupFunction<
      Void Function(Int32 red, Int32 green, Int32 blue, Int32 alpha),
      void Function(int red, int green, int blue, int alpha)>('glClearColorIiEXT');
  return _glClearColorIiEXT(red, green, blue, alpha);
}

/// ```c
/// GLAPI void APIENTRY glClearColorIuiEXT (GLuint red, GLuint green, GLuint blue, GLuint alpha)
/// ```
void glClearColorIuiEXT(int red, int green, int blue, int alpha) {
  final _glClearColorIuiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 red, Uint32 green, Uint32 blue, Uint32 alpha),
      void Function(int red, int green, int blue, int alpha)>('glClearColorIuiEXT');
  return _glClearColorIuiEXT(red, green, blue, alpha);
}

/// ```c
/// GLAPI void APIENTRY glFrameTerminatorGREMEDY (void)
/// ```
void glFrameTerminatorGREMEDY() {
  final _glFrameTerminatorGREMEDY = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glFrameTerminatorGREMEDY');
  return _glFrameTerminatorGREMEDY();
}

/// ```c
/// GLAPI void APIENTRY glBeginConditionalRenderNV (GLuint id, GLenum mode)
/// ```
void glBeginConditionalRenderNV(int id, int mode) {
  final _glBeginConditionalRenderNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 id, Uint32 mode),
      void Function(int id, int mode)>('glBeginConditionalRenderNV');
  return _glBeginConditionalRenderNV(id, mode);
}

/// ```c
/// GLAPI void APIENTRY glEndConditionalRenderNV (void)
/// ```
void glEndConditionalRenderNV() {
  final _glEndConditionalRenderNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndConditionalRenderNV');
  return _glEndConditionalRenderNV();
}

/// ```c
/// GLAPI void APIENTRY glPresentFrameKeyedNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1)
/// ```
void glPresentFrameKeyedNV(int video_slot, int minPresentTime, int beginPresentTimeId, int presentDurationId, int type, int target0, int fill0, int key0, int target1, int fill1, int key1) {
  final _glPresentFrameKeyedNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_slot, Uint64 minPresentTime, Uint32 beginPresentTimeId, Uint32 presentDurationId, Uint32 type, Uint32 target0, Uint32 fill0, Uint32 key0, Uint32 target1, Uint32 fill1, Uint32 key1),
      void Function(int video_slot, int minPresentTime, int beginPresentTimeId, int presentDurationId, int type, int target0, int fill0, int key0, int target1, int fill1, int key1)>('glPresentFrameKeyedNV');
  return _glPresentFrameKeyedNV(video_slot, minPresentTime, beginPresentTimeId, presentDurationId, type, target0, fill0, key0, target1, fill1, key1);
}

/// ```c
/// GLAPI void APIENTRY glPresentFrameDualFillNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3)
/// ```
void glPresentFrameDualFillNV(int video_slot, int minPresentTime, int beginPresentTimeId, int presentDurationId, int type, int target0, int fill0, int target1, int fill1, int target2, int fill2, int target3, int fill3) {
  final _glPresentFrameDualFillNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_slot, Uint64 minPresentTime, Uint32 beginPresentTimeId, Uint32 presentDurationId, Uint32 type, Uint32 target0, Uint32 fill0, Uint32 target1, Uint32 fill1, Uint32 target2, Uint32 fill2, Uint32 target3, Uint32 fill3),
      void Function(int video_slot, int minPresentTime, int beginPresentTimeId, int presentDurationId, int type, int target0, int fill0, int target1, int fill1, int target2, int fill2, int target3, int fill3)>('glPresentFrameDualFillNV');
  return _glPresentFrameDualFillNV(video_slot, minPresentTime, beginPresentTimeId, presentDurationId, type, target0, fill0, target1, fill1, target2, fill2, target3, fill3);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoivNV (GLuint video_slot, GLenum pname, GLint *params)
/// ```
void glGetVideoivNV(int video_slot, int pname, Pointer<Int32>? params) {
  final _glGetVideoivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_slot, Uint32 pname, Pointer<Int32>? params),
      void Function(int video_slot, int pname, Pointer<Int32>? params)>('glGetVideoivNV');
  return _glGetVideoivNV(video_slot, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVideouivNV (GLuint video_slot, GLenum pname, GLuint *params)
/// ```
void glGetVideouivNV(int video_slot, int pname, Pointer<Uint32>? params) {
  final _glGetVideouivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_slot, Uint32 pname, Pointer<Uint32>? params),
      void Function(int video_slot, int pname, Pointer<Uint32>? params)>('glGetVideouivNV');
  return _glGetVideouivNV(video_slot, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoi64vNV (GLuint video_slot, GLenum pname, GLint64EXT *params)
/// ```
void glGetVideoi64vNV(int video_slot, int pname, Pointer<Int64>? params) {
  final _glGetVideoi64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_slot, Uint32 pname, Pointer<Int64>? params),
      void Function(int video_slot, int pname, Pointer<Int64>? params)>('glGetVideoi64vNV');
  return _glGetVideoi64vNV(video_slot, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoui64vNV (GLuint video_slot, GLenum pname, GLuint64EXT *params)
/// ```
void glGetVideoui64vNV(int video_slot, int pname, Pointer<Uint64>? params) {
  final _glGetVideoui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_slot, Uint32 pname, Pointer<Uint64>? params),
      void Function(int video_slot, int pname, Pointer<Uint64>? params)>('glGetVideoui64vNV');
  return _glGetVideoui64vNV(video_slot, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glBeginTransformFeedbackEXT (GLenum primitiveMode)
/// ```
void glBeginTransformFeedbackEXT(int primitiveMode) {
  final _glBeginTransformFeedbackEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 primitiveMode),
      void Function(int primitiveMode)>('glBeginTransformFeedbackEXT');
  return _glBeginTransformFeedbackEXT(primitiveMode);
}

/// ```c
/// GLAPI void APIENTRY glEndTransformFeedbackEXT (void)
/// ```
void glEndTransformFeedbackEXT() {
  final _glEndTransformFeedbackEXT = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glEndTransformFeedbackEXT');
  return _glEndTransformFeedbackEXT();
}

/// ```c
/// GLAPI void APIENTRY glBindBufferRangeEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
/// ```
void glBindBufferRangeEXT(int target, int index, int buffer, Pointer<Void>? offset, Pointer<Void>? size) {
  final _glBindBufferRangeEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? size),
      void Function(int target, int index, int buffer, Pointer<Void>? offset, Pointer<Void>? size)>('glBindBufferRangeEXT');
  return _glBindBufferRangeEXT(target, index, buffer, offset, size);
}

/// ```c
/// GLAPI void APIENTRY glBindBufferOffsetEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset)
/// ```
void glBindBufferOffsetEXT(int target, int index, int buffer, Pointer<Void>? offset) {
  final _glBindBufferOffsetEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer, Pointer<Void>? offset),
      void Function(int target, int index, int buffer, Pointer<Void>? offset)>('glBindBufferOffsetEXT');
  return _glBindBufferOffsetEXT(target, index, buffer, offset);
}

/// ```c
/// GLAPI void APIENTRY glBindBufferBaseEXT (GLenum target, GLuint index, GLuint buffer)
/// ```
void glBindBufferBaseEXT(int target, int index, int buffer) {
  final _glBindBufferBaseEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Uint32 buffer),
      void Function(int target, int index, int buffer)>('glBindBufferBaseEXT');
  return _glBindBufferBaseEXT(target, index, buffer);
}

/// ```c
/// GLAPI void APIENTRY glTransformFeedbackVaryingsEXT (GLuint program, GLsizei count, const GLchar* *varyings, GLenum bufferMode)
/// ```
void glTransformFeedbackVaryingsEXT(int program, int count, Pointer<Pointer<Int8>>? varyings, int bufferMode) {
  final _glTransformFeedbackVaryingsEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 count, Pointer<Pointer<Int8>>? varyings, Uint32 bufferMode),
      void Function(int program, int count, Pointer<Pointer<Int8>>? varyings, int bufferMode)>('glTransformFeedbackVaryingsEXT');
  return _glTransformFeedbackVaryingsEXT(program, count, varyings, bufferMode);
}

/// ```c
/// GLAPI void APIENTRY glGetTransformFeedbackVaryingEXT (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name)
/// ```
void glGetTransformFeedbackVaryingEXT(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name) {
  final _glGetTransformFeedbackVaryingEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 index, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name),
      void Function(int program, int index, int bufSize, Pointer<Uint32>? length, Pointer<Uint32>? size, Pointer<Uint32>? type, Pointer<Int8>? name)>('glGetTransformFeedbackVaryingEXT');
  return _glGetTransformFeedbackVaryingEXT(program, index, bufSize, length, size, type, name);
}

/// ```c
/// GLAPI void APIENTRY glClientAttribDefaultEXT (GLbitfield mask)
/// ```
void glClientAttribDefaultEXT(int mask) {
  final _glClientAttribDefaultEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mask),
      void Function(int mask)>('glClientAttribDefaultEXT');
  return _glClientAttribDefaultEXT(mask);
}

/// ```c
/// GLAPI void APIENTRY glPushClientAttribDefaultEXT (GLbitfield mask)
/// ```
void glPushClientAttribDefaultEXT(int mask) {
  final _glPushClientAttribDefaultEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mask),
      void Function(int mask)>('glPushClientAttribDefaultEXT');
  return _glPushClientAttribDefaultEXT(mask);
}

/// ```c
/// GLAPI void APIENTRY glMatrixLoadfEXT (GLenum mode, const GLfloat *m)
/// ```
void glMatrixLoadfEXT(int mode, Pointer<Float>? m) {
  final _glMatrixLoadfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Float>? m),
      void Function(int mode, Pointer<Float>? m)>('glMatrixLoadfEXT');
  return _glMatrixLoadfEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixLoaddEXT (GLenum mode, const GLdouble *m)
/// ```
void glMatrixLoaddEXT(int mode, Pointer<Double>? m) {
  final _glMatrixLoaddEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Double>? m),
      void Function(int mode, Pointer<Double>? m)>('glMatrixLoaddEXT');
  return _glMatrixLoaddEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixMultfEXT (GLenum mode, const GLfloat *m)
/// ```
void glMatrixMultfEXT(int mode, Pointer<Float>? m) {
  final _glMatrixMultfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Float>? m),
      void Function(int mode, Pointer<Float>? m)>('glMatrixMultfEXT');
  return _glMatrixMultfEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixMultdEXT (GLenum mode, const GLdouble *m)
/// ```
void glMatrixMultdEXT(int mode, Pointer<Double>? m) {
  final _glMatrixMultdEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Double>? m),
      void Function(int mode, Pointer<Double>? m)>('glMatrixMultdEXT');
  return _glMatrixMultdEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixLoadIdentityEXT (GLenum mode)
/// ```
void glMatrixLoadIdentityEXT(int mode) {
  final _glMatrixLoadIdentityEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glMatrixLoadIdentityEXT');
  return _glMatrixLoadIdentityEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glMatrixRotatefEXT (GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glMatrixRotatefEXT(int mode, double angle, double x, double y, double z) {
  final _glMatrixRotatefEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Float angle, Float x, Float y, Float z),
      void Function(int mode, double angle, double x, double y, double z)>('glMatrixRotatefEXT');
  return _glMatrixRotatefEXT(mode, angle, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glMatrixRotatedEXT (GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glMatrixRotatedEXT(int mode, double angle, double x, double y, double z) {
  final _glMatrixRotatedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Double angle, Double x, Double y, Double z),
      void Function(int mode, double angle, double x, double y, double z)>('glMatrixRotatedEXT');
  return _glMatrixRotatedEXT(mode, angle, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glMatrixScalefEXT (GLenum mode, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glMatrixScalefEXT(int mode, double x, double y, double z) {
  final _glMatrixScalefEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Float x, Float y, Float z),
      void Function(int mode, double x, double y, double z)>('glMatrixScalefEXT');
  return _glMatrixScalefEXT(mode, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glMatrixScaledEXT (GLenum mode, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glMatrixScaledEXT(int mode, double x, double y, double z) {
  final _glMatrixScaledEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Double x, Double y, Double z),
      void Function(int mode, double x, double y, double z)>('glMatrixScaledEXT');
  return _glMatrixScaledEXT(mode, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glMatrixTranslatefEXT (GLenum mode, GLfloat x, GLfloat y, GLfloat z)
/// ```
void glMatrixTranslatefEXT(int mode, double x, double y, double z) {
  final _glMatrixTranslatefEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Float x, Float y, Float z),
      void Function(int mode, double x, double y, double z)>('glMatrixTranslatefEXT');
  return _glMatrixTranslatefEXT(mode, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glMatrixTranslatedEXT (GLenum mode, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glMatrixTranslatedEXT(int mode, double x, double y, double z) {
  final _glMatrixTranslatedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Double x, Double y, Double z),
      void Function(int mode, double x, double y, double z)>('glMatrixTranslatedEXT');
  return _glMatrixTranslatedEXT(mode, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glMatrixFrustumEXT (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)
/// ```
void glMatrixFrustumEXT(int mode, double left, double right, double bottom, double top, double zNear, double zFar) {
  final _glMatrixFrustumEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Double left, Double right, Double bottom, Double top, Double zNear, Double zFar),
      void Function(int mode, double left, double right, double bottom, double top, double zNear, double zFar)>('glMatrixFrustumEXT');
  return _glMatrixFrustumEXT(mode, left, right, bottom, top, zNear, zFar);
}

/// ```c
/// GLAPI void APIENTRY glMatrixOrthoEXT (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)
/// ```
void glMatrixOrthoEXT(int mode, double left, double right, double bottom, double top, double zNear, double zFar) {
  final _glMatrixOrthoEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Double left, Double right, Double bottom, Double top, Double zNear, Double zFar),
      void Function(int mode, double left, double right, double bottom, double top, double zNear, double zFar)>('glMatrixOrthoEXT');
  return _glMatrixOrthoEXT(mode, left, right, bottom, top, zNear, zFar);
}

/// ```c
/// GLAPI void APIENTRY glMatrixPopEXT (GLenum mode)
/// ```
void glMatrixPopEXT(int mode) {
  final _glMatrixPopEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glMatrixPopEXT');
  return _glMatrixPopEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glMatrixPushEXT (GLenum mode)
/// ```
void glMatrixPushEXT(int mode) {
  final _glMatrixPushEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glMatrixPushEXT');
  return _glMatrixPushEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glMatrixLoadTransposefEXT (GLenum mode, const GLfloat *m)
/// ```
void glMatrixLoadTransposefEXT(int mode, Pointer<Float>? m) {
  final _glMatrixLoadTransposefEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Float>? m),
      void Function(int mode, Pointer<Float>? m)>('glMatrixLoadTransposefEXT');
  return _glMatrixLoadTransposefEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixLoadTransposedEXT (GLenum mode, const GLdouble *m)
/// ```
void glMatrixLoadTransposedEXT(int mode, Pointer<Double>? m) {
  final _glMatrixLoadTransposedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Double>? m),
      void Function(int mode, Pointer<Double>? m)>('glMatrixLoadTransposedEXT');
  return _glMatrixLoadTransposedEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixMultTransposefEXT (GLenum mode, const GLfloat *m)
/// ```
void glMatrixMultTransposefEXT(int mode, Pointer<Float>? m) {
  final _glMatrixMultTransposefEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Float>? m),
      void Function(int mode, Pointer<Float>? m)>('glMatrixMultTransposefEXT');
  return _glMatrixMultTransposefEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glMatrixMultTransposedEXT (GLenum mode, const GLdouble *m)
/// ```
void glMatrixMultTransposedEXT(int mode, Pointer<Double>? m) {
  final _glMatrixMultTransposedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Pointer<Double>? m),
      void Function(int mode, Pointer<Double>? m)>('glMatrixMultTransposedEXT');
  return _glMatrixMultTransposedEXT(mode, m);
}

/// ```c
/// GLAPI void APIENTRY glTextureParameterfEXT (GLuint texture, GLenum target, GLenum pname, GLfloat param)
/// ```
void glTextureParameterfEXT(int texture, int target, int pname, double param) {
  final _glTextureParameterfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Float param),
      void Function(int texture, int target, int pname, double param)>('glTextureParameterfEXT');
  return _glTextureParameterfEXT(texture, target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glTextureParameterfvEXT(int texture, int target, int pname, Pointer<Float>? params) {
  final _glTextureParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int texture, int target, int pname, Pointer<Float>? params)>('glTextureParameterfvEXT');
  return _glTextureParameterfvEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTextureParameteriEXT (GLuint texture, GLenum target, GLenum pname, GLint param)
/// ```
void glTextureParameteriEXT(int texture, int target, int pname, int param) {
  final _glTextureParameteriEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Int32 param),
      void Function(int texture, int target, int pname, int param)>('glTextureParameteriEXT');
  return _glTextureParameteriEXT(texture, target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, const GLint *params)
/// ```
void glTextureParameterivEXT(int texture, int target, int pname, Pointer<Int32>? params) {
  final _glTextureParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texture, int target, int pname, Pointer<Int32>? params)>('glTextureParameterivEXT');
  return _glTextureParameterivEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTextureImage1DEXT(int texture, int target, int level, int internalformat, int width, int border, int format, int type, Pointer<Void>? pixels) {
  final _glTextureImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int internalformat, int width, int border, int format, int type, Pointer<Void>? pixels)>('glTextureImage1DEXT');
  return _glTextureImage1DEXT(texture, target, level, internalformat, width, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTextureImage2DEXT(int texture, int target, int level, int internalformat, int width, int height, int border, int format, int type, Pointer<Void>? pixels) {
  final _glTextureImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int internalformat, int width, int height, int border, int format, int type, Pointer<Void>? pixels)>('glTextureImage2DEXT');
  return _glTextureImage2DEXT(texture, target, level, internalformat, width, height, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTextureSubImage1DEXT(int texture, int target, int level, int xoffset, int width, int format, int type, Pointer<Void>? pixels) {
  final _glTextureSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int xoffset, int width, int format, int type, Pointer<Void>? pixels)>('glTextureSubImage1DEXT');
  return _glTextureSubImage1DEXT(texture, target, level, xoffset, width, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTextureSubImage2DEXT(int texture, int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Pointer<Void>? pixels) {
  final _glTextureSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Pointer<Void>? pixels)>('glTextureSubImage2DEXT');
  return _glTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, width, height, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glCopyTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
/// ```
void glCopyTextureImage1DEXT(int texture, int target, int level, int internalformat, int x, int y, int width, int border) {
  final _glCopyTextureImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Int32 border),
      void Function(int texture, int target, int level, int internalformat, int x, int y, int width, int border)>('glCopyTextureImage1DEXT');
  return _glCopyTextureImage1DEXT(texture, target, level, internalformat, x, y, width, border);
}

/// ```c
/// GLAPI void APIENTRY glCopyTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
/// ```
void glCopyTextureImage2DEXT(int texture, int target, int level, int internalformat, int x, int y, int width, int height, int border) {
  final _glCopyTextureImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Uint32 height, Int32 border),
      void Function(int texture, int target, int level, int internalformat, int x, int y, int width, int height, int border)>('glCopyTextureImage2DEXT');
  return _glCopyTextureImage2DEXT(texture, target, level, internalformat, x, y, width, height, border);
}

/// ```c
/// GLAPI void APIENTRY glCopyTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
/// ```
void glCopyTextureSubImage1DEXT(int texture, int target, int level, int xoffset, int x, int y, int width) {
  final _glCopyTextureSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 x, Int32 y, Uint32 width),
      void Function(int texture, int target, int level, int xoffset, int x, int y, int width)>('glCopyTextureSubImage1DEXT');
  return _glCopyTextureSubImage1DEXT(texture, target, level, xoffset, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glCopyTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyTextureSubImage2DEXT(int texture, int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
  final _glCopyTextureSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int texture, int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)>('glCopyTextureSubImage2DEXT');
  return _glCopyTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureImageEXT (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels)
/// ```
void glGetTextureImageEXT(int texture, int target, int level, int format, int type, Pointer<Void>? pixels) {
  final _glGetTextureImageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int format, int type, Pointer<Void>? pixels)>('glGetTextureImageEXT');
  return _glGetTextureImageEXT(texture, target, level, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetTextureParameterfvEXT(int texture, int target, int pname, Pointer<Float>? params) {
  final _glGetTextureParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int texture, int target, int pname, Pointer<Float>? params)>('glGetTextureParameterfvEXT');
  return _glGetTextureParameterfvEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, GLint *params)
/// ```
void glGetTextureParameterivEXT(int texture, int target, int pname, Pointer<Int32>? params) {
  final _glGetTextureParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texture, int target, int pname, Pointer<Int32>? params)>('glGetTextureParameterivEXT');
  return _glGetTextureParameterivEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureLevelParameterfvEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat *params)
/// ```
void glGetTextureLevelParameterfvEXT(int texture, int target, int level, int pname, Pointer<Float>? params) {
  final _glGetTextureLevelParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 pname, Pointer<Float>? params),
      void Function(int texture, int target, int level, int pname, Pointer<Float>? params)>('glGetTextureLevelParameterfvEXT');
  return _glGetTextureLevelParameterfvEXT(texture, target, level, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureLevelParameterivEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLint *params)
/// ```
void glGetTextureLevelParameterivEXT(int texture, int target, int level, int pname, Pointer<Int32>? params) {
  final _glGetTextureLevelParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 pname, Pointer<Int32>? params),
      void Function(int texture, int target, int level, int pname, Pointer<Int32>? params)>('glGetTextureLevelParameterivEXT');
  return _glGetTextureLevelParameterivEXT(texture, target, level, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTextureImage3DEXT(int texture, int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels) {
  final _glTextureImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels)>('glTextureImage3DEXT');
  return _glTextureImage3DEXT(texture, target, level, internalformat, width, height, depth, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glTextureSubImage3DEXT(int texture, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels) {
  final _glTextureSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texture, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels)>('glTextureSubImage3DEXT');
  return _glTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glCopyTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyTextureSubImage3DEXT(int texture, int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height) {
  final _glCopyTextureSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int texture, int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)>('glCopyTextureSubImage3DEXT');
  return _glCopyTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexParameterfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param)
/// ```
void glMultiTexParameterfEXT(int texunit, int target, int pname, double param) {
  final _glMultiTexParameterfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Float param),
      void Function(int texunit, int target, int pname, double param)>('glMultiTexParameterfEXT');
  return _glMultiTexParameterfEXT(texunit, target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glMultiTexParameterfvEXT(int texunit, int target, int pname, Pointer<Float>? params) {
  final _glMultiTexParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int target, int pname, Pointer<Float>? params)>('glMultiTexParameterfvEXT');
  return _glMultiTexParameterfvEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexParameteriEXT (GLenum texunit, GLenum target, GLenum pname, GLint param)
/// ```
void glMultiTexParameteriEXT(int texunit, int target, int pname, int param) {
  final _glMultiTexParameteriEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Int32 param),
      void Function(int texunit, int target, int pname, int param)>('glMultiTexParameteriEXT');
  return _glMultiTexParameteriEXT(texunit, target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint *params)
/// ```
void glMultiTexParameterivEXT(int texunit, int target, int pname, Pointer<Int32>? params) {
  final _glMultiTexParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int pname, Pointer<Int32>? params)>('glMultiTexParameterivEXT');
  return _glMultiTexParameterivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glMultiTexImage1DEXT(int texunit, int target, int level, int internalformat, int width, int border, int format, int type, Pointer<Void>? pixels) {
  final _glMultiTexImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int internalformat, int width, int border, int format, int type, Pointer<Void>? pixels)>('glMultiTexImage1DEXT');
  return _glMultiTexImage1DEXT(texunit, target, level, internalformat, width, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glMultiTexImage2DEXT(int texunit, int target, int level, int internalformat, int width, int height, int border, int format, int type, Pointer<Void>? pixels) {
  final _glMultiTexImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int internalformat, int width, int height, int border, int format, int type, Pointer<Void>? pixels)>('glMultiTexImage2DEXT');
  return _glMultiTexImage2DEXT(texunit, target, level, internalformat, width, height, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glMultiTexSubImage1DEXT(int texunit, int target, int level, int xoffset, int width, int format, int type, Pointer<Void>? pixels) {
  final _glMultiTexSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int xoffset, int width, int format, int type, Pointer<Void>? pixels)>('glMultiTexSubImage1DEXT');
  return _glMultiTexSubImage1DEXT(texunit, target, level, xoffset, width, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glMultiTexSubImage2DEXT(int texunit, int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Pointer<Void>? pixels) {
  final _glMultiTexSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Pointer<Void>? pixels)>('glMultiTexSubImage2DEXT');
  return _glMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, width, height, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glCopyMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
/// ```
void glCopyMultiTexImage1DEXT(int texunit, int target, int level, int internalformat, int x, int y, int width, int border) {
  final _glCopyMultiTexImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Int32 border),
      void Function(int texunit, int target, int level, int internalformat, int x, int y, int width, int border)>('glCopyMultiTexImage1DEXT');
  return _glCopyMultiTexImage1DEXT(texunit, target, level, internalformat, x, y, width, border);
}

/// ```c
/// GLAPI void APIENTRY glCopyMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
/// ```
void glCopyMultiTexImage2DEXT(int texunit, int target, int level, int internalformat, int x, int y, int width, int height, int border) {
  final _glCopyMultiTexImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Int32 x, Int32 y, Uint32 width, Uint32 height, Int32 border),
      void Function(int texunit, int target, int level, int internalformat, int x, int y, int width, int height, int border)>('glCopyMultiTexImage2DEXT');
  return _glCopyMultiTexImage2DEXT(texunit, target, level, internalformat, x, y, width, height, border);
}

/// ```c
/// GLAPI void APIENTRY glCopyMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
/// ```
void glCopyMultiTexSubImage1DEXT(int texunit, int target, int level, int xoffset, int x, int y, int width) {
  final _glCopyMultiTexSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 x, Int32 y, Uint32 width),
      void Function(int texunit, int target, int level, int xoffset, int x, int y, int width)>('glCopyMultiTexSubImage1DEXT');
  return _glCopyMultiTexSubImage1DEXT(texunit, target, level, xoffset, x, y, width);
}

/// ```c
/// GLAPI void APIENTRY glCopyMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyMultiTexSubImage2DEXT(int texunit, int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
  final _glCopyMultiTexSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int texunit, int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)>('glCopyMultiTexSubImage2DEXT');
  return _glCopyMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels)
/// ```
void glGetMultiTexImageEXT(int texunit, int target, int level, int format, int type, Pointer<Void>? pixels) {
  final _glGetMultiTexImageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int format, int type, Pointer<Void>? pixels)>('glGetMultiTexImageEXT');
  return _glGetMultiTexImageEXT(texunit, target, level, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetMultiTexParameterfvEXT(int texunit, int target, int pname, Pointer<Float>? params) {
  final _glGetMultiTexParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int target, int pname, Pointer<Float>? params)>('glGetMultiTexParameterfvEXT');
  return _glGetMultiTexParameterfvEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, GLint *params)
/// ```
void glGetMultiTexParameterivEXT(int texunit, int target, int pname, Pointer<Int32>? params) {
  final _glGetMultiTexParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int pname, Pointer<Int32>? params)>('glGetMultiTexParameterivEXT');
  return _glGetMultiTexParameterivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexLevelParameterfvEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat *params)
/// ```
void glGetMultiTexLevelParameterfvEXT(int texunit, int target, int level, int pname, Pointer<Float>? params) {
  final _glGetMultiTexLevelParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int target, int level, int pname, Pointer<Float>? params)>('glGetMultiTexLevelParameterfvEXT');
  return _glGetMultiTexLevelParameterfvEXT(texunit, target, level, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexLevelParameterivEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint *params)
/// ```
void glGetMultiTexLevelParameterivEXT(int texunit, int target, int level, int pname, Pointer<Int32>? params) {
  final _glGetMultiTexLevelParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int level, int pname, Pointer<Int32>? params)>('glGetMultiTexLevelParameterivEXT');
  return _glGetMultiTexLevelParameterivEXT(texunit, target, level, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glMultiTexImage3DEXT(int texunit, int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels) {
  final _glMultiTexImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int internalformat, int width, int height, int depth, int border, int format, int type, Pointer<Void>? pixels)>('glMultiTexImage3DEXT');
  return _glMultiTexImage3DEXT(texunit, target, level, internalformat, width, height, depth, border, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels)
/// ```
void glMultiTexSubImage3DEXT(int texunit, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels) {
  final _glMultiTexSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 type, Pointer<Void>? pixels),
      void Function(int texunit, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, Pointer<Void>? pixels)>('glMultiTexSubImage3DEXT');
  return _glMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
}

/// ```c
/// GLAPI void APIENTRY glCopyMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
/// ```
void glCopyMultiTexSubImage3DEXT(int texunit, int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height) {
  final _glCopyMultiTexSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Int32 x, Int32 y, Uint32 width, Uint32 height),
      void Function(int texunit, int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)>('glCopyMultiTexSubImage3DEXT');
  return _glCopyMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, x, y, width, height);
}

/// ```c
/// GLAPI void APIENTRY glBindMultiTextureEXT (GLenum texunit, GLenum target, GLuint texture)
/// ```
void glBindMultiTextureEXT(int texunit, int target, int texture) {
  final _glBindMultiTextureEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 texture),
      void Function(int texunit, int target, int texture)>('glBindMultiTextureEXT');
  return _glBindMultiTextureEXT(texunit, target, texture);
}

/// ```c
/// GLAPI void APIENTRY glEnableClientStateIndexedEXT (GLenum array, GLuint index)
/// ```
void glEnableClientStateIndexedEXT(int array, int index) {
  final _glEnableClientStateIndexedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array, Uint32 index),
      void Function(int array, int index)>('glEnableClientStateIndexedEXT');
  return _glEnableClientStateIndexedEXT(array, index);
}

/// ```c
/// GLAPI void APIENTRY glDisableClientStateIndexedEXT (GLenum array, GLuint index)
/// ```
void glDisableClientStateIndexedEXT(int array, int index) {
  final _glDisableClientStateIndexedEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 array, Uint32 index),
      void Function(int array, int index)>('glDisableClientStateIndexedEXT');
  return _glDisableClientStateIndexedEXT(array, index);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexCoordPointerEXT (GLenum texunit, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glMultiTexCoordPointerEXT(int texunit, int size, int type, int stride, Pointer<Void>? pointer) {
  final _glMultiTexCoordPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int texunit, int size, int type, int stride, Pointer<Void>? pointer)>('glMultiTexCoordPointerEXT');
  return _glMultiTexCoordPointerEXT(texunit, size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexEnvfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param)
/// ```
void glMultiTexEnvfEXT(int texunit, int target, int pname, double param) {
  final _glMultiTexEnvfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Float param),
      void Function(int texunit, int target, int pname, double param)>('glMultiTexEnvfEXT');
  return _glMultiTexEnvfEXT(texunit, target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, const GLfloat *params)
/// ```
void glMultiTexEnvfvEXT(int texunit, int target, int pname, Pointer<Float>? params) {
  final _glMultiTexEnvfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int target, int pname, Pointer<Float>? params)>('glMultiTexEnvfvEXT');
  return _glMultiTexEnvfvEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexEnviEXT (GLenum texunit, GLenum target, GLenum pname, GLint param)
/// ```
void glMultiTexEnviEXT(int texunit, int target, int pname, int param) {
  final _glMultiTexEnviEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Int32 param),
      void Function(int texunit, int target, int pname, int param)>('glMultiTexEnviEXT');
  return _glMultiTexEnviEXT(texunit, target, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint *params)
/// ```
void glMultiTexEnvivEXT(int texunit, int target, int pname, Pointer<Int32>? params) {
  final _glMultiTexEnvivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int pname, Pointer<Int32>? params)>('glMultiTexEnvivEXT');
  return _glMultiTexEnvivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexGendEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble param)
/// ```
void glMultiTexGendEXT(int texunit, int coord, int pname, double param) {
  final _glMultiTexGendEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Double param),
      void Function(int texunit, int coord, int pname, double param)>('glMultiTexGendEXT');
  return _glMultiTexGendEXT(texunit, coord, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, const GLdouble *params)
/// ```
void glMultiTexGendvEXT(int texunit, int coord, int pname, Pointer<Double>? params) {
  final _glMultiTexGendvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Pointer<Double>? params),
      void Function(int texunit, int coord, int pname, Pointer<Double>? params)>('glMultiTexGendvEXT');
  return _glMultiTexGendvEXT(texunit, coord, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexGenfEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat param)
/// ```
void glMultiTexGenfEXT(int texunit, int coord, int pname, double param) {
  final _glMultiTexGenfEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Float param),
      void Function(int texunit, int coord, int pname, double param)>('glMultiTexGenfEXT');
  return _glMultiTexGenfEXT(texunit, coord, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, const GLfloat *params)
/// ```
void glMultiTexGenfvEXT(int texunit, int coord, int pname, Pointer<Float>? params) {
  final _glMultiTexGenfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int coord, int pname, Pointer<Float>? params)>('glMultiTexGenfvEXT');
  return _glMultiTexGenfvEXT(texunit, coord, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexGeniEXT (GLenum texunit, GLenum coord, GLenum pname, GLint param)
/// ```
void glMultiTexGeniEXT(int texunit, int coord, int pname, int param) {
  final _glMultiTexGeniEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Int32 param),
      void Function(int texunit, int coord, int pname, int param)>('glMultiTexGeniEXT');
  return _glMultiTexGeniEXT(texunit, coord, pname, param);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, const GLint *params)
/// ```
void glMultiTexGenivEXT(int texunit, int coord, int pname, Pointer<Int32>? params) {
  final _glMultiTexGenivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int coord, int pname, Pointer<Int32>? params)>('glMultiTexGenivEXT');
  return _glMultiTexGenivEXT(texunit, coord, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat *params)
/// ```
void glGetMultiTexEnvfvEXT(int texunit, int target, int pname, Pointer<Float>? params) {
  final _glGetMultiTexEnvfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int target, int pname, Pointer<Float>? params)>('glGetMultiTexEnvfvEXT');
  return _glGetMultiTexEnvfvEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, GLint *params)
/// ```
void glGetMultiTexEnvivEXT(int texunit, int target, int pname, Pointer<Int32>? params) {
  final _glGetMultiTexEnvivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int pname, Pointer<Int32>? params)>('glGetMultiTexEnvivEXT');
  return _glGetMultiTexEnvivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble *params)
/// ```
void glGetMultiTexGendvEXT(int texunit, int coord, int pname, Pointer<Double>? params) {
  final _glGetMultiTexGendvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Pointer<Double>? params),
      void Function(int texunit, int coord, int pname, Pointer<Double>? params)>('glGetMultiTexGendvEXT');
  return _glGetMultiTexGendvEXT(texunit, coord, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat *params)
/// ```
void glGetMultiTexGenfvEXT(int texunit, int coord, int pname, Pointer<Float>? params) {
  final _glGetMultiTexGenfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Pointer<Float>? params),
      void Function(int texunit, int coord, int pname, Pointer<Float>? params)>('glGetMultiTexGenfvEXT');
  return _glGetMultiTexGenfvEXT(texunit, coord, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, GLint *params)
/// ```
void glGetMultiTexGenivEXT(int texunit, int coord, int pname, Pointer<Int32>? params) {
  final _glGetMultiTexGenivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 coord, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int coord, int pname, Pointer<Int32>? params)>('glGetMultiTexGenivEXT');
  return _glGetMultiTexGenivEXT(texunit, coord, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetFloatIndexedvEXT (GLenum target, GLuint index, GLfloat *data)
/// ```
void glGetFloatIndexedvEXT(int target, int index, Pointer<Float>? data) {
  final _glGetFloatIndexedvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Float>? data),
      void Function(int target, int index, Pointer<Float>? data)>('glGetFloatIndexedvEXT');
  return _glGetFloatIndexedvEXT(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glGetDoubleIndexedvEXT (GLenum target, GLuint index, GLdouble *data)
/// ```
void glGetDoubleIndexedvEXT(int target, int index, Pointer<Double>? data) {
  final _glGetDoubleIndexedvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Double>? data),
      void Function(int target, int index, Pointer<Double>? data)>('glGetDoubleIndexedvEXT');
  return _glGetDoubleIndexedvEXT(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glGetPointerIndexedvEXT (GLenum target, GLuint index, GLvoid* *data)
/// ```
void glGetPointerIndexedvEXT(int target, int index, Pointer<Pointer<Void>>? data) {
  final _glGetPointerIndexedvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Pointer<Void>>? data),
      void Function(int target, int index, Pointer<Pointer<Void>>? data)>('glGetPointerIndexedvEXT');
  return _glGetPointerIndexedvEXT(target, index, data);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedTextureImage3DEXT(int texture, int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? bits) {
  final _glCompressedTextureImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texture, int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? bits)>('glCompressedTextureImage3DEXT');
  return _glCompressedTextureImage3DEXT(texture, target, level, internalformat, width, height, depth, border, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedTextureImage2DEXT(int texture, int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? bits) {
  final _glCompressedTextureImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Int32 border, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texture, int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? bits)>('glCompressedTextureImage2DEXT');
  return _glCompressedTextureImage2DEXT(texture, target, level, internalformat, width, height, border, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedTextureImage1DEXT(int texture, int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? bits) {
  final _glCompressedTextureImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Int32 border, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texture, int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? bits)>('glCompressedTextureImage1DEXT');
  return _glCompressedTextureImage1DEXT(texture, target, level, internalformat, width, border, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedTextureSubImage3DEXT(int texture, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? bits) {
  final _glCompressedTextureSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texture, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? bits)>('glCompressedTextureSubImage3DEXT');
  return _glCompressedTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedTextureSubImage2DEXT(int texture, int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? bits) {
  final _glCompressedTextureSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texture, int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? bits)>('glCompressedTextureSubImage2DEXT');
  return _glCompressedTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, width, height, format, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedTextureSubImage1DEXT(int texture, int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? bits) {
  final _glCompressedTextureSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texture, int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? bits)>('glCompressedTextureSubImage1DEXT');
  return _glCompressedTextureSubImage1DEXT(texture, target, level, xoffset, width, format, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glGetCompressedTextureImageEXT (GLuint texture, GLenum target, GLint lod, GLvoid *img)
/// ```
void glGetCompressedTextureImageEXT(int texture, int target, int lod, Pointer<Void>? img) {
  final _glGetCompressedTextureImageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Int32 lod, Pointer<Void>? img),
      void Function(int texture, int target, int lod, Pointer<Void>? img)>('glGetCompressedTextureImageEXT');
  return _glGetCompressedTextureImageEXT(texture, target, lod, img);
}

/// ```c
/// GLAPI void APIENTRY glCompressedMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedMultiTexImage3DEXT(int texunit, int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? bits) {
  final _glCompressedMultiTexImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Uint32 depth, Int32 border, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texunit, int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize, Pointer<Void>? bits)>('glCompressedMultiTexImage3DEXT');
  return _glCompressedMultiTexImage3DEXT(texunit, target, level, internalformat, width, height, depth, border, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedMultiTexImage2DEXT(int texunit, int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? bits) {
  final _glCompressedMultiTexImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Uint32 height, Int32 border, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texunit, int target, int level, int internalformat, int width, int height, int border, int imageSize, Pointer<Void>? bits)>('glCompressedMultiTexImage2DEXT');
  return _glCompressedMultiTexImage2DEXT(texunit, target, level, internalformat, width, height, border, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedMultiTexImage1DEXT(int texunit, int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? bits) {
  final _glCompressedMultiTexImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Uint32 internalformat, Uint32 width, Int32 border, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texunit, int target, int level, int internalformat, int width, int border, int imageSize, Pointer<Void>? bits)>('glCompressedMultiTexImage1DEXT');
  return _glCompressedMultiTexImage1DEXT(texunit, target, level, internalformat, width, border, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedMultiTexSubImage3DEXT(int texunit, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? bits) {
  final _glCompressedMultiTexSubImage3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Int32 zoffset, Uint32 width, Uint32 height, Uint32 depth, Uint32 format, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texunit, int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int imageSize, Pointer<Void>? bits)>('glCompressedMultiTexSubImage3DEXT');
  return _glCompressedMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedMultiTexSubImage2DEXT(int texunit, int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? bits) {
  final _glCompressedMultiTexSubImage2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Int32 yoffset, Uint32 width, Uint32 height, Uint32 format, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texunit, int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Pointer<Void>? bits)>('glCompressedMultiTexSubImage2DEXT');
  return _glCompressedMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, width, height, format, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glCompressedMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *bits)
/// ```
void glCompressedMultiTexSubImage1DEXT(int texunit, int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? bits) {
  final _glCompressedMultiTexSubImage1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 level, Int32 xoffset, Uint32 width, Uint32 format, Uint32 imageSize, Pointer<Void>? bits),
      void Function(int texunit, int target, int level, int xoffset, int width, int format, int imageSize, Pointer<Void>? bits)>('glCompressedMultiTexSubImage1DEXT');
  return _glCompressedMultiTexSubImage1DEXT(texunit, target, level, xoffset, width, format, imageSize, bits);
}

/// ```c
/// GLAPI void APIENTRY glGetCompressedMultiTexImageEXT (GLenum texunit, GLenum target, GLint lod, GLvoid *img)
/// ```
void glGetCompressedMultiTexImageEXT(int texunit, int target, int lod, Pointer<Void>? img) {
  final _glGetCompressedMultiTexImageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Int32 lod, Pointer<Void>? img),
      void Function(int texunit, int target, int lod, Pointer<Void>? img)>('glGetCompressedMultiTexImageEXT');
  return _glGetCompressedMultiTexImageEXT(texunit, target, lod, img);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramStringEXT (GLuint program, GLenum target, GLenum format, GLsizei len, const GLvoid *string)
/// ```
void glNamedProgramStringEXT(int program, int target, int format, int len, Pointer<Void>? string) {
  final _glNamedProgramStringEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 format, Uint32 len, Pointer<Void>? string),
      void Function(int program, int target, int format, int len, Pointer<Void>? string)>('glNamedProgramStringEXT');
  return _glNamedProgramStringEXT(program, target, format, len, string);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameter4dEXT (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glNamedProgramLocalParameter4dEXT(int program, int target, int index, double x, double y, double z, double w) {
  final _glNamedProgramLocalParameter4dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int program, int target, int index, double x, double y, double z, double w)>('glNamedProgramLocalParameter4dEXT');
  return _glNamedProgramLocalParameter4dEXT(program, target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameter4dvEXT (GLuint program, GLenum target, GLuint index, const GLdouble *params)
/// ```
void glNamedProgramLocalParameter4dvEXT(int program, int target, int index, Pointer<Double>? params) {
  final _glNamedProgramLocalParameter4dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Double>? params),
      void Function(int program, int target, int index, Pointer<Double>? params)>('glNamedProgramLocalParameter4dvEXT');
  return _glNamedProgramLocalParameter4dvEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameter4fEXT (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
/// ```
void glNamedProgramLocalParameter4fEXT(int program, int target, int index, double x, double y, double z, double w) {
  final _glNamedProgramLocalParameter4fEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Float x, Float y, Float z, Float w),
      void Function(int program, int target, int index, double x, double y, double z, double w)>('glNamedProgramLocalParameter4fEXT');
  return _glNamedProgramLocalParameter4fEXT(program, target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameter4fvEXT (GLuint program, GLenum target, GLuint index, const GLfloat *params)
/// ```
void glNamedProgramLocalParameter4fvEXT(int program, int target, int index, Pointer<Float>? params) {
  final _glNamedProgramLocalParameter4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Float>? params),
      void Function(int program, int target, int index, Pointer<Float>? params)>('glNamedProgramLocalParameter4fvEXT');
  return _glNamedProgramLocalParameter4fvEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedProgramLocalParameterdvEXT (GLuint program, GLenum target, GLuint index, GLdouble *params)
/// ```
void glGetNamedProgramLocalParameterdvEXT(int program, int target, int index, Pointer<Double>? params) {
  final _glGetNamedProgramLocalParameterdvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Double>? params),
      void Function(int program, int target, int index, Pointer<Double>? params)>('glGetNamedProgramLocalParameterdvEXT');
  return _glGetNamedProgramLocalParameterdvEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedProgramLocalParameterfvEXT (GLuint program, GLenum target, GLuint index, GLfloat *params)
/// ```
void glGetNamedProgramLocalParameterfvEXT(int program, int target, int index, Pointer<Float>? params) {
  final _glGetNamedProgramLocalParameterfvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Float>? params),
      void Function(int program, int target, int index, Pointer<Float>? params)>('glGetNamedProgramLocalParameterfvEXT');
  return _glGetNamedProgramLocalParameterfvEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedProgramivEXT (GLuint program, GLenum target, GLenum pname, GLint *params)
/// ```
void glGetNamedProgramivEXT(int program, int target, int pname, Pointer<Int32>? params) {
  final _glGetNamedProgramivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int program, int target, int pname, Pointer<Int32>? params)>('glGetNamedProgramivEXT');
  return _glGetNamedProgramivEXT(program, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedProgramStringEXT (GLuint program, GLenum target, GLenum pname, GLvoid *string)
/// ```
void glGetNamedProgramStringEXT(int program, int target, int pname, Pointer<Void>? string) {
  final _glGetNamedProgramStringEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 pname, Pointer<Void>? string),
      void Function(int program, int target, int pname, Pointer<Void>? string)>('glGetNamedProgramStringEXT');
  return _glGetNamedProgramStringEXT(program, target, pname, string);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameters4fvEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLfloat *params)
/// ```
void glNamedProgramLocalParameters4fvEXT(int program, int target, int index, int count, Pointer<Float>? params) {
  final _glNamedProgramLocalParameters4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Uint32 count, Pointer<Float>? params),
      void Function(int program, int target, int index, int count, Pointer<Float>? params)>('glNamedProgramLocalParameters4fvEXT');
  return _glNamedProgramLocalParameters4fvEXT(program, target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameterI4iEXT (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)
/// ```
void glNamedProgramLocalParameterI4iEXT(int program, int target, int index, int x, int y, int z, int w) {
  final _glNamedProgramLocalParameterI4iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w),
      void Function(int program, int target, int index, int x, int y, int z, int w)>('glNamedProgramLocalParameterI4iEXT');
  return _glNamedProgramLocalParameterI4iEXT(program, target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameterI4ivEXT (GLuint program, GLenum target, GLuint index, const GLint *params)
/// ```
void glNamedProgramLocalParameterI4ivEXT(int program, int target, int index, Pointer<Int32>? params) {
  final _glNamedProgramLocalParameterI4ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Int32>? params),
      void Function(int program, int target, int index, Pointer<Int32>? params)>('glNamedProgramLocalParameterI4ivEXT');
  return _glNamedProgramLocalParameterI4ivEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParametersI4ivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLint *params)
/// ```
void glNamedProgramLocalParametersI4ivEXT(int program, int target, int index, int count, Pointer<Int32>? params) {
  final _glNamedProgramLocalParametersI4ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Uint32 count, Pointer<Int32>? params),
      void Function(int program, int target, int index, int count, Pointer<Int32>? params)>('glNamedProgramLocalParametersI4ivEXT');
  return _glNamedProgramLocalParametersI4ivEXT(program, target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameterI4uiEXT (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
/// ```
void glNamedProgramLocalParameterI4uiEXT(int program, int target, int index, int x, int y, int z, int w) {
  final _glNamedProgramLocalParameterI4uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w),
      void Function(int program, int target, int index, int x, int y, int z, int w)>('glNamedProgramLocalParameterI4uiEXT');
  return _glNamedProgramLocalParameterI4uiEXT(program, target, index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParameterI4uivEXT (GLuint program, GLenum target, GLuint index, const GLuint *params)
/// ```
void glNamedProgramLocalParameterI4uivEXT(int program, int target, int index, Pointer<Uint32>? params) {
  final _glNamedProgramLocalParameterI4uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Uint32>? params),
      void Function(int program, int target, int index, Pointer<Uint32>? params)>('glNamedProgramLocalParameterI4uivEXT');
  return _glNamedProgramLocalParameterI4uivEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glNamedProgramLocalParametersI4uivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLuint *params)
/// ```
void glNamedProgramLocalParametersI4uivEXT(int program, int target, int index, int count, Pointer<Uint32>? params) {
  final _glNamedProgramLocalParametersI4uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Uint32 count, Pointer<Uint32>? params),
      void Function(int program, int target, int index, int count, Pointer<Uint32>? params)>('glNamedProgramLocalParametersI4uivEXT');
  return _glNamedProgramLocalParametersI4uivEXT(program, target, index, count, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedProgramLocalParameterIivEXT (GLuint program, GLenum target, GLuint index, GLint *params)
/// ```
void glGetNamedProgramLocalParameterIivEXT(int program, int target, int index, Pointer<Int32>? params) {
  final _glGetNamedProgramLocalParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Int32>? params),
      void Function(int program, int target, int index, Pointer<Int32>? params)>('glGetNamedProgramLocalParameterIivEXT');
  return _glGetNamedProgramLocalParameterIivEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedProgramLocalParameterIuivEXT (GLuint program, GLenum target, GLuint index, GLuint *params)
/// ```
void glGetNamedProgramLocalParameterIuivEXT(int program, int target, int index, Pointer<Uint32>? params) {
  final _glGetNamedProgramLocalParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Uint32 target, Uint32 index, Pointer<Uint32>? params),
      void Function(int program, int target, int index, Pointer<Uint32>? params)>('glGetNamedProgramLocalParameterIuivEXT');
  return _glGetNamedProgramLocalParameterIuivEXT(program, target, index, params);
}

/// ```c
/// GLAPI void APIENTRY glTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, const GLint *params)
/// ```
void glTextureParameterIivEXT(int texture, int target, int pname, Pointer<Int32>? params) {
  final _glTextureParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texture, int target, int pname, Pointer<Int32>? params)>('glTextureParameterIivEXT');
  return _glTextureParameterIivEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, const GLuint *params)
/// ```
void glTextureParameterIuivEXT(int texture, int target, int pname, Pointer<Uint32>? params) {
  final _glTextureParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int texture, int target, int pname, Pointer<Uint32>? params)>('glTextureParameterIuivEXT');
  return _glTextureParameterIuivEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, GLint *params)
/// ```
void glGetTextureParameterIivEXT(int texture, int target, int pname, Pointer<Int32>? params) {
  final _glGetTextureParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texture, int target, int pname, Pointer<Int32>? params)>('glGetTextureParameterIivEXT');
  return _glGetTextureParameterIivEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, GLuint *params)
/// ```
void glGetTextureParameterIuivEXT(int texture, int target, int pname, Pointer<Uint32>? params) {
  final _glGetTextureParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int texture, int target, int pname, Pointer<Uint32>? params)>('glGetTextureParameterIuivEXT');
  return _glGetTextureParameterIuivEXT(texture, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint *params)
/// ```
void glMultiTexParameterIivEXT(int texunit, int target, int pname, Pointer<Int32>? params) {
  final _glMultiTexParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int pname, Pointer<Int32>? params)>('glMultiTexParameterIivEXT');
  return _glMultiTexParameterIivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, const GLuint *params)
/// ```
void glMultiTexParameterIuivEXT(int texunit, int target, int pname, Pointer<Uint32>? params) {
  final _glMultiTexParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int texunit, int target, int pname, Pointer<Uint32>? params)>('glMultiTexParameterIuivEXT');
  return _glMultiTexParameterIuivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, GLint *params)
/// ```
void glGetMultiTexParameterIivEXT(int texunit, int target, int pname, Pointer<Int32>? params) {
  final _glGetMultiTexParameterIivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Int32>? params),
      void Function(int texunit, int target, int pname, Pointer<Int32>? params)>('glGetMultiTexParameterIivEXT');
  return _glGetMultiTexParameterIivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, GLuint *params)
/// ```
void glGetMultiTexParameterIuivEXT(int texunit, int target, int pname, Pointer<Uint32>? params) {
  final _glGetMultiTexParameterIuivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 pname, Pointer<Uint32>? params),
      void Function(int texunit, int target, int pname, Pointer<Uint32>? params)>('glGetMultiTexParameterIuivEXT');
  return _glGetMultiTexParameterIuivEXT(texunit, target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1fEXT (GLuint program, GLint location, GLfloat v0)
/// ```
void glProgramUniform1fEXT(int program, int location, double v0) {
  final _glProgramUniform1fEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0),
      void Function(int program, int location, double v0)>('glProgramUniform1fEXT');
  return _glProgramUniform1fEXT(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1)
/// ```
void glProgramUniform2fEXT(int program, int location, double v0, double v1) {
  final _glProgramUniform2fEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0, Float v1),
      void Function(int program, int location, double v0, double v1)>('glProgramUniform2fEXT');
  return _glProgramUniform2fEXT(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
/// ```
void glProgramUniform3fEXT(int program, int location, double v0, double v1, double v2) {
  final _glProgramUniform3fEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0, Float v1, Float v2),
      void Function(int program, int location, double v0, double v1, double v2)>('glProgramUniform3fEXT');
  return _glProgramUniform3fEXT(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
/// ```
void glProgramUniform4fEXT(int program, int location, double v0, double v1, double v2, double v3) {
  final _glProgramUniform4fEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Float v0, Float v1, Float v2, Float v3),
      void Function(int program, int location, double v0, double v1, double v2, double v3)>('glProgramUniform4fEXT');
  return _glProgramUniform4fEXT(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1iEXT (GLuint program, GLint location, GLint v0)
/// ```
void glProgramUniform1iEXT(int program, int location, int v0) {
  final _glProgramUniform1iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0),
      void Function(int program, int location, int v0)>('glProgramUniform1iEXT');
  return _glProgramUniform1iEXT(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2iEXT (GLuint program, GLint location, GLint v0, GLint v1)
/// ```
void glProgramUniform2iEXT(int program, int location, int v0, int v1) {
  final _glProgramUniform2iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0, Int32 v1),
      void Function(int program, int location, int v0, int v1)>('glProgramUniform2iEXT');
  return _glProgramUniform2iEXT(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2)
/// ```
void glProgramUniform3iEXT(int program, int location, int v0, int v1, int v2) {
  final _glProgramUniform3iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2),
      void Function(int program, int location, int v0, int v1, int v2)>('glProgramUniform3iEXT');
  return _glProgramUniform3iEXT(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
/// ```
void glProgramUniform4iEXT(int program, int location, int v0, int v1, int v2, int v3) {
  final _glProgramUniform4iEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3),
      void Function(int program, int location, int v0, int v1, int v2, int v3)>('glProgramUniform4iEXT');
  return _glProgramUniform4iEXT(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform1fvEXT(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform1fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform1fvEXT');
  return _glProgramUniform1fvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform2fvEXT(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform2fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform2fvEXT');
  return _glProgramUniform2fvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform3fvEXT(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform3fvEXT');
  return _glProgramUniform3fvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value)
/// ```
void glProgramUniform4fvEXT(int program, int location, int count, Pointer<Float>? value) {
  final _glProgramUniform4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Float>? value),
      void Function(int program, int location, int count, Pointer<Float>? value)>('glProgramUniform4fvEXT');
  return _glProgramUniform4fvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform1ivEXT(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform1ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform1ivEXT');
  return _glProgramUniform1ivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform2ivEXT(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform2ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform2ivEXT');
  return _glProgramUniform2ivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform3ivEXT(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform3ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform3ivEXT');
  return _glProgramUniform3ivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value)
/// ```
void glProgramUniform4ivEXT(int program, int location, int count, Pointer<Int32>? value) {
  final _glProgramUniform4ivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int32>? value),
      void Function(int program, int location, int count, Pointer<Int32>? value)>('glProgramUniform4ivEXT');
  return _glProgramUniform4ivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix2fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix2fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix2fvEXT');
  return _glProgramUniformMatrix2fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix3fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix3fvEXT');
  return _glProgramUniformMatrix3fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix4fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix4fvEXT');
  return _glProgramUniformMatrix4fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix2x3fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix2x3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix2x3fvEXT');
  return _glProgramUniformMatrix2x3fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix3x2fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix3x2fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix3x2fvEXT');
  return _glProgramUniformMatrix3x2fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix2x4fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix2x4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix2x4fvEXT');
  return _glProgramUniformMatrix2x4fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix4x2fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix4x2fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix4x2fvEXT');
  return _glProgramUniformMatrix4x2fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix3x4fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix3x4fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix3x4fvEXT');
  return _glProgramUniformMatrix3x4fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
/// ```
void glProgramUniformMatrix4x3fvEXT(int program, int location, int count, int transpose, Pointer<Float>? value) {
  final _glProgramUniformMatrix4x3fvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Float>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Float>? value)>('glProgramUniformMatrix4x3fvEXT');
  return _glProgramUniformMatrix4x3fvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1uiEXT (GLuint program, GLint location, GLuint v0)
/// ```
void glProgramUniform1uiEXT(int program, int location, int v0) {
  final _glProgramUniform1uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0),
      void Function(int program, int location, int v0)>('glProgramUniform1uiEXT');
  return _glProgramUniform1uiEXT(program, location, v0);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1)
/// ```
void glProgramUniform2uiEXT(int program, int location, int v0, int v1) {
  final _glProgramUniform2uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0, Uint32 v1),
      void Function(int program, int location, int v0, int v1)>('glProgramUniform2uiEXT');
  return _glProgramUniform2uiEXT(program, location, v0, v1);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)
/// ```
void glProgramUniform3uiEXT(int program, int location, int v0, int v1, int v2) {
  final _glProgramUniform3uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2),
      void Function(int program, int location, int v0, int v1, int v2)>('glProgramUniform3uiEXT');
  return _glProgramUniform3uiEXT(program, location, v0, v1, v2);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
/// ```
void glProgramUniform4uiEXT(int program, int location, int v0, int v1, int v2, int v3) {
  final _glProgramUniform4uiEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3),
      void Function(int program, int location, int v0, int v1, int v2, int v3)>('glProgramUniform4uiEXT');
  return _glProgramUniform4uiEXT(program, location, v0, v1, v2, v3);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform1uivEXT(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform1uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform1uivEXT');
  return _glProgramUniform1uivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform2uivEXT(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform2uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform2uivEXT');
  return _glProgramUniform2uivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform3uivEXT(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform3uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform3uivEXT');
  return _glProgramUniform3uivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value)
/// ```
void glProgramUniform4uivEXT(int program, int location, int count, Pointer<Uint32>? value) {
  final _glProgramUniform4uivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint32>? value),
      void Function(int program, int location, int count, Pointer<Uint32>? value)>('glProgramUniform4uivEXT');
  return _glProgramUniform4uivEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glNamedBufferDataEXT (GLuint buffer, GLsizeiptr size, const GLvoid *data, GLenum usage)
/// ```
void glNamedBufferDataEXT(int buffer, Pointer<Void>? size, Pointer<Void>? data, int usage) {
  final _glNamedBufferDataEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Pointer<Void>? size, Pointer<Void>? data, Uint32 usage),
      void Function(int buffer, Pointer<Void>? size, Pointer<Void>? data, int usage)>('glNamedBufferDataEXT');
  return _glNamedBufferDataEXT(buffer, size, data, usage);
}

/// ```c
/// GLAPI void APIENTRY glNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, const GLvoid *data)
/// ```
void glNamedBufferSubDataEXT(int buffer, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data) {
  final _glNamedBufferSubDataEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data),
      void Function(int buffer, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data)>('glNamedBufferSubDataEXT');
  return _glNamedBufferSubDataEXT(buffer, offset, size, data);
}

/// ```c
/// GLAPI GLvoid* APIENTRY glMapNamedBufferEXT (GLuint buffer, GLenum access)
/// ```
Pointer<Void>? glMapNamedBufferEXT(int buffer, int access) {
  final _glMapNamedBufferEXT = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 buffer, Uint32 access),
      Pointer<Void>? Function(int buffer, int access)>('glMapNamedBufferEXT');
  return _glMapNamedBufferEXT(buffer, access);
}

/// ```c
/// GLAPI GLboolean APIENTRY glUnmapNamedBufferEXT (GLuint buffer)
/// ```
int glUnmapNamedBufferEXT(int buffer) {
  final _glUnmapNamedBufferEXT = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 buffer),
      int Function(int buffer)>('glUnmapNamedBufferEXT');
  return _glUnmapNamedBufferEXT(buffer);
}

/// ```c
/// GLAPI GLvoid* APIENTRY glMapNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)
/// ```
Pointer<Void>? glMapNamedBufferRangeEXT(int buffer, Pointer<Void>? offset, Pointer<Void>? length, int access) {
  final _glMapNamedBufferRangeEXT = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? length, Uint32 access),
      Pointer<Void>? Function(int buffer, Pointer<Void>? offset, Pointer<Void>? length, int access)>('glMapNamedBufferRangeEXT');
  return _glMapNamedBufferRangeEXT(buffer, offset, length, access);
}

/// ```c
/// GLAPI void APIENTRY glFlushMappedNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length)
/// ```
void glFlushMappedNamedBufferRangeEXT(int buffer, Pointer<Void>? offset, Pointer<Void>? length) {
  final _glFlushMappedNamedBufferRangeEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? length),
      void Function(int buffer, Pointer<Void>? offset, Pointer<Void>? length)>('glFlushMappedNamedBufferRangeEXT');
  return _glFlushMappedNamedBufferRangeEXT(buffer, offset, length);
}

/// ```c
/// GLAPI void APIENTRY glNamedCopyBufferSubDataEXT (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)
/// ```
void glNamedCopyBufferSubDataEXT(int readBuffer, int writeBuffer, Pointer<Void>? readOffset, Pointer<Void>? writeOffset, Pointer<Void>? size) {
  final _glNamedCopyBufferSubDataEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 readBuffer, Uint32 writeBuffer, Pointer<Void>? readOffset, Pointer<Void>? writeOffset, Pointer<Void>? size),
      void Function(int readBuffer, int writeBuffer, Pointer<Void>? readOffset, Pointer<Void>? writeOffset, Pointer<Void>? size)>('glNamedCopyBufferSubDataEXT');
  return _glNamedCopyBufferSubDataEXT(readBuffer, writeBuffer, readOffset, writeOffset, size);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedBufferParameterivEXT (GLuint buffer, GLenum pname, GLint *params)
/// ```
void glGetNamedBufferParameterivEXT(int buffer, int pname, Pointer<Int32>? params) {
  final _glGetNamedBufferParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 pname, Pointer<Int32>? params),
      void Function(int buffer, int pname, Pointer<Int32>? params)>('glGetNamedBufferParameterivEXT');
  return _glGetNamedBufferParameterivEXT(buffer, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedBufferPointervEXT (GLuint buffer, GLenum pname, GLvoid* *params)
/// ```
void glGetNamedBufferPointervEXT(int buffer, int pname, Pointer<Pointer<Void>>? params) {
  final _glGetNamedBufferPointervEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 pname, Pointer<Pointer<Void>>? params),
      void Function(int buffer, int pname, Pointer<Pointer<Void>>? params)>('glGetNamedBufferPointervEXT');
  return _glGetNamedBufferPointervEXT(buffer, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, GLvoid *data)
/// ```
void glGetNamedBufferSubDataEXT(int buffer, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data) {
  final _glGetNamedBufferSubDataEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data),
      void Function(int buffer, Pointer<Void>? offset, Pointer<Void>? size, Pointer<Void>? data)>('glGetNamedBufferSubDataEXT');
  return _glGetNamedBufferSubDataEXT(buffer, offset, size, data);
}

/// ```c
/// GLAPI void APIENTRY glTextureBufferEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer)
/// ```
void glTextureBufferEXT(int texture, int target, int internalformat, int buffer) {
  final _glTextureBufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 internalformat, Uint32 buffer),
      void Function(int texture, int target, int internalformat, int buffer)>('glTextureBufferEXT');
  return _glTextureBufferEXT(texture, target, internalformat, buffer);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexBufferEXT (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer)
/// ```
void glMultiTexBufferEXT(int texunit, int target, int internalformat, int buffer) {
  final _glMultiTexBufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 internalformat, Uint32 buffer),
      void Function(int texunit, int target, int internalformat, int buffer)>('glMultiTexBufferEXT');
  return _glMultiTexBufferEXT(texunit, target, internalformat, buffer);
}

/// ```c
/// GLAPI void APIENTRY glNamedRenderbufferStorageEXT (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glNamedRenderbufferStorageEXT(int renderbuffer, int internalformat, int width, int height) {
  final _glNamedRenderbufferStorageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 renderbuffer, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int renderbuffer, int internalformat, int width, int height)>('glNamedRenderbufferStorageEXT');
  return _glNamedRenderbufferStorageEXT(renderbuffer, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedRenderbufferParameterivEXT (GLuint renderbuffer, GLenum pname, GLint *params)
/// ```
void glGetNamedRenderbufferParameterivEXT(int renderbuffer, int pname, Pointer<Int32>? params) {
  final _glGetNamedRenderbufferParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 renderbuffer, Uint32 pname, Pointer<Int32>? params),
      void Function(int renderbuffer, int pname, Pointer<Int32>? params)>('glGetNamedRenderbufferParameterivEXT');
  return _glGetNamedRenderbufferParameterivEXT(renderbuffer, pname, params);
}

/// ```c
/// GLAPI GLenum APIENTRY glCheckNamedFramebufferStatusEXT (GLuint framebuffer, GLenum target)
/// ```
int glCheckNamedFramebufferStatusEXT(int framebuffer, int target) {
  final _glCheckNamedFramebufferStatusEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 framebuffer, Uint32 target),
      int Function(int framebuffer, int target)>('glCheckNamedFramebufferStatusEXT');
  return _glCheckNamedFramebufferStatusEXT(framebuffer, target);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferTexture1DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
/// ```
void glNamedFramebufferTexture1DEXT(int framebuffer, int attachment, int textarget, int texture, int level) {
  final _glNamedFramebufferTexture1DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level),
      void Function(int framebuffer, int attachment, int textarget, int texture, int level)>('glNamedFramebufferTexture1DEXT');
  return _glNamedFramebufferTexture1DEXT(framebuffer, attachment, textarget, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferTexture2DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
/// ```
void glNamedFramebufferTexture2DEXT(int framebuffer, int attachment, int textarget, int texture, int level) {
  final _glNamedFramebufferTexture2DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level),
      void Function(int framebuffer, int attachment, int textarget, int texture, int level)>('glNamedFramebufferTexture2DEXT');
  return _glNamedFramebufferTexture2DEXT(framebuffer, attachment, textarget, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferTexture3DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)
/// ```
void glNamedFramebufferTexture3DEXT(int framebuffer, int attachment, int textarget, int texture, int level, int zoffset) {
  final _glNamedFramebufferTexture3DEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level, Int32 zoffset),
      void Function(int framebuffer, int attachment, int textarget, int texture, int level, int zoffset)>('glNamedFramebufferTexture3DEXT');
  return _glNamedFramebufferTexture3DEXT(framebuffer, attachment, textarget, texture, level, zoffset);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferRenderbufferEXT (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
/// ```
void glNamedFramebufferRenderbufferEXT(int framebuffer, int attachment, int renderbuffertarget, int renderbuffer) {
  final _glNamedFramebufferRenderbufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 renderbuffertarget, Uint32 renderbuffer),
      void Function(int framebuffer, int attachment, int renderbuffertarget, int renderbuffer)>('glNamedFramebufferRenderbufferEXT');
  return _glNamedFramebufferRenderbufferEXT(framebuffer, attachment, renderbuffertarget, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedFramebufferAttachmentParameterivEXT (GLuint framebuffer, GLenum attachment, GLenum pname, GLint *params)
/// ```
void glGetNamedFramebufferAttachmentParameterivEXT(int framebuffer, int attachment, int pname, Pointer<Int32>? params) {
  final _glGetNamedFramebufferAttachmentParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 pname, Pointer<Int32>? params),
      void Function(int framebuffer, int attachment, int pname, Pointer<Int32>? params)>('glGetNamedFramebufferAttachmentParameterivEXT');
  return _glGetNamedFramebufferAttachmentParameterivEXT(framebuffer, attachment, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGenerateTextureMipmapEXT (GLuint texture, GLenum target)
/// ```
void glGenerateTextureMipmapEXT(int texture, int target) {
  final _glGenerateTextureMipmapEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target),
      void Function(int texture, int target)>('glGenerateTextureMipmapEXT');
  return _glGenerateTextureMipmapEXT(texture, target);
}

/// ```c
/// GLAPI void APIENTRY glGenerateMultiTexMipmapEXT (GLenum texunit, GLenum target)
/// ```
void glGenerateMultiTexMipmapEXT(int texunit, int target) {
  final _glGenerateMultiTexMipmapEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target),
      void Function(int texunit, int target)>('glGenerateMultiTexMipmapEXT');
  return _glGenerateMultiTexMipmapEXT(texunit, target);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferDrawBufferEXT (GLuint framebuffer, GLenum mode)
/// ```
void glFramebufferDrawBufferEXT(int framebuffer, int mode) {
  final _glFramebufferDrawBufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 mode),
      void Function(int framebuffer, int mode)>('glFramebufferDrawBufferEXT');
  return _glFramebufferDrawBufferEXT(framebuffer, mode);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferDrawBuffersEXT (GLuint framebuffer, GLsizei n, const GLenum *bufs)
/// ```
void glFramebufferDrawBuffersEXT(int framebuffer, int n, Pointer<Uint32>? bufs) {
  final _glFramebufferDrawBuffersEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 n, Pointer<Uint32>? bufs),
      void Function(int framebuffer, int n, Pointer<Uint32>? bufs)>('glFramebufferDrawBuffersEXT');
  return _glFramebufferDrawBuffersEXT(framebuffer, n, bufs);
}

/// ```c
/// GLAPI void APIENTRY glFramebufferReadBufferEXT (GLuint framebuffer, GLenum mode)
/// ```
void glFramebufferReadBufferEXT(int framebuffer, int mode) {
  final _glFramebufferReadBufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 mode),
      void Function(int framebuffer, int mode)>('glFramebufferReadBufferEXT');
  return _glFramebufferReadBufferEXT(framebuffer, mode);
}

/// ```c
/// GLAPI void APIENTRY glGetFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint *params)
/// ```
void glGetFramebufferParameterivEXT(int framebuffer, int pname, Pointer<Int32>? params) {
  final _glGetFramebufferParameterivEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 pname, Pointer<Int32>? params),
      void Function(int framebuffer, int pname, Pointer<Int32>? params)>('glGetFramebufferParameterivEXT');
  return _glGetFramebufferParameterivEXT(framebuffer, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glNamedRenderbufferStorageMultisampleEXT (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glNamedRenderbufferStorageMultisampleEXT(int renderbuffer, int samples, int internalformat, int width, int height) {
  final _glNamedRenderbufferStorageMultisampleEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 renderbuffer, Uint32 samples, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int renderbuffer, int samples, int internalformat, int width, int height)>('glNamedRenderbufferStorageMultisampleEXT');
  return _glNamedRenderbufferStorageMultisampleEXT(renderbuffer, samples, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glNamedRenderbufferStorageMultisampleCoverageEXT (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)
/// ```
void glNamedRenderbufferStorageMultisampleCoverageEXT(int renderbuffer, int coverageSamples, int colorSamples, int internalformat, int width, int height) {
  final _glNamedRenderbufferStorageMultisampleCoverageEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 renderbuffer, Uint32 coverageSamples, Uint32 colorSamples, Uint32 internalformat, Uint32 width, Uint32 height),
      void Function(int renderbuffer, int coverageSamples, int colorSamples, int internalformat, int width, int height)>('glNamedRenderbufferStorageMultisampleCoverageEXT');
  return _glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer, coverageSamples, colorSamples, internalformat, width, height);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferTextureEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)
/// ```
void glNamedFramebufferTextureEXT(int framebuffer, int attachment, int texture, int level) {
  final _glNamedFramebufferTextureEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 texture, Int32 level),
      void Function(int framebuffer, int attachment, int texture, int level)>('glNamedFramebufferTextureEXT');
  return _glNamedFramebufferTextureEXT(framebuffer, attachment, texture, level);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferTextureLayerEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)
/// ```
void glNamedFramebufferTextureLayerEXT(int framebuffer, int attachment, int texture, int level, int layer) {
  final _glNamedFramebufferTextureLayerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 texture, Int32 level, Int32 layer),
      void Function(int framebuffer, int attachment, int texture, int level, int layer)>('glNamedFramebufferTextureLayerEXT');
  return _glNamedFramebufferTextureLayerEXT(framebuffer, attachment, texture, level, layer);
}

/// ```c
/// GLAPI void APIENTRY glNamedFramebufferTextureFaceEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face)
/// ```
void glNamedFramebufferTextureFaceEXT(int framebuffer, int attachment, int texture, int level, int face) {
  final _glNamedFramebufferTextureFaceEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 framebuffer, Uint32 attachment, Uint32 texture, Int32 level, Uint32 face),
      void Function(int framebuffer, int attachment, int texture, int level, int face)>('glNamedFramebufferTextureFaceEXT');
  return _glNamedFramebufferTextureFaceEXT(framebuffer, attachment, texture, level, face);
}

/// ```c
/// GLAPI void APIENTRY glTextureRenderbufferEXT (GLuint texture, GLenum target, GLuint renderbuffer)
/// ```
void glTextureRenderbufferEXT(int texture, int target, int renderbuffer) {
  final _glTextureRenderbufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texture, Uint32 target, Uint32 renderbuffer),
      void Function(int texture, int target, int renderbuffer)>('glTextureRenderbufferEXT');
  return _glTextureRenderbufferEXT(texture, target, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glMultiTexRenderbufferEXT (GLenum texunit, GLenum target, GLuint renderbuffer)
/// ```
void glMultiTexRenderbufferEXT(int texunit, int target, int renderbuffer) {
  final _glMultiTexRenderbufferEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 texunit, Uint32 target, Uint32 renderbuffer),
      void Function(int texunit, int target, int renderbuffer)>('glMultiTexRenderbufferEXT');
  return _glMultiTexRenderbufferEXT(texunit, target, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1dEXT (GLuint program, GLint location, GLdouble x)
/// ```
void glProgramUniform1dEXT(int program, int location, double x) {
  final _glProgramUniform1dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double x),
      void Function(int program, int location, double x)>('glProgramUniform1dEXT');
  return _glProgramUniform1dEXT(program, location, x);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2dEXT (GLuint program, GLint location, GLdouble x, GLdouble y)
/// ```
void glProgramUniform2dEXT(int program, int location, double x, double y) {
  final _glProgramUniform2dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double x, Double y),
      void Function(int program, int location, double x, double y)>('glProgramUniform2dEXT');
  return _glProgramUniform2dEXT(program, location, x, y);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glProgramUniform3dEXT(int program, int location, double x, double y, double z) {
  final _glProgramUniform3dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double x, Double y, Double z),
      void Function(int program, int location, double x, double y, double z)>('glProgramUniform3dEXT');
  return _glProgramUniform3dEXT(program, location, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glProgramUniform4dEXT(int program, int location, double x, double y, double z, double w) {
  final _glProgramUniform4dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Double x, Double y, Double z, Double w),
      void Function(int program, int location, double x, double y, double z, double w)>('glProgramUniform4dEXT');
  return _glProgramUniform4dEXT(program, location, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform1dvEXT(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform1dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform1dvEXT');
  return _glProgramUniform1dvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform2dvEXT(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform2dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform2dvEXT');
  return _glProgramUniform2dvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform3dvEXT(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform3dvEXT');
  return _glProgramUniform3dvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value)
/// ```
void glProgramUniform4dvEXT(int program, int location, int count, Pointer<Double>? value) {
  final _glProgramUniform4dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Double>? value),
      void Function(int program, int location, int count, Pointer<Double>? value)>('glProgramUniform4dvEXT');
  return _glProgramUniform4dvEXT(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix2dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix2dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix2dvEXT');
  return _glProgramUniformMatrix2dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix3dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix3dvEXT');
  return _glProgramUniformMatrix3dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix4dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix4dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix4dvEXT');
  return _glProgramUniformMatrix4dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix2x3dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix2x3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix2x3dvEXT');
  return _glProgramUniformMatrix2x3dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix2x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix2x4dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix2x4dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix2x4dvEXT');
  return _glProgramUniformMatrix2x4dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix3x2dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix3x2dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix3x2dvEXT');
  return _glProgramUniformMatrix3x2dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix3x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix3x4dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix3x4dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix3x4dvEXT');
  return _glProgramUniformMatrix3x4dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix4x2dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix4x2dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix4x2dvEXT');
  return _glProgramUniformMatrix4x2dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformMatrix4x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value)
/// ```
void glProgramUniformMatrix4x3dvEXT(int program, int location, int count, int transpose, Pointer<Double>? value) {
  final _glProgramUniformMatrix4x3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Int32 transpose, Pointer<Double>? value),
      void Function(int program, int location, int count, int transpose, Pointer<Double>? value)>('glProgramUniformMatrix4x3dvEXT');
  return _glProgramUniformMatrix4x3dvEXT(program, location, count, transpose, value);
}

/// ```c
/// GLAPI void APIENTRY glGetMultisamplefvNV (GLenum pname, GLuint index, GLfloat *val)
/// ```
void glGetMultisamplefvNV(int pname, int index, Pointer<Float>? val) {
  final _glGetMultisamplefvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Uint32 index, Pointer<Float>? val),
      void Function(int pname, int index, Pointer<Float>? val)>('glGetMultisamplefvNV');
  return _glGetMultisamplefvNV(pname, index, val);
}

/// ```c
/// GLAPI void APIENTRY glSampleMaskIndexedNV (GLuint index, GLbitfield mask)
/// ```
void glSampleMaskIndexedNV(int index, int mask) {
  final _glSampleMaskIndexedNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 mask),
      void Function(int index, int mask)>('glSampleMaskIndexedNV');
  return _glSampleMaskIndexedNV(index, mask);
}

/// ```c
/// GLAPI void APIENTRY glTexRenderbufferNV (GLenum target, GLuint renderbuffer)
/// ```
void glTexRenderbufferNV(int target, int renderbuffer) {
  final _glTexRenderbufferNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 renderbuffer),
      void Function(int target, int renderbuffer)>('glTexRenderbufferNV');
  return _glTexRenderbufferNV(target, renderbuffer);
}

/// ```c
/// GLAPI void APIENTRY glBindTransformFeedbackNV (GLenum target, GLuint id)
/// ```
void glBindTransformFeedbackNV(int target, int id) {
  final _glBindTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 id),
      void Function(int target, int id)>('glBindTransformFeedbackNV');
  return _glBindTransformFeedbackNV(target, id);
}

/// ```c
/// GLAPI void APIENTRY glDeleteTransformFeedbacksNV (GLsizei n, const GLuint *ids)
/// ```
void glDeleteTransformFeedbacksNV(int n, Pointer<Uint32>? ids) {
  final _glDeleteTransformFeedbacksNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glDeleteTransformFeedbacksNV');
  return _glDeleteTransformFeedbacksNV(n, ids);
}

/// ```c
/// GLAPI void APIENTRY glGenTransformFeedbacksNV (GLsizei n, GLuint *ids)
/// ```
void glGenTransformFeedbacksNV(int n, Pointer<Uint32>? ids) {
  final _glGenTransformFeedbacksNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? ids),
      void Function(int n, Pointer<Uint32>? ids)>('glGenTransformFeedbacksNV');
  return _glGenTransformFeedbacksNV(n, ids);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsTransformFeedbackNV (GLuint id)
/// ```
int glIsTransformFeedbackNV(int id) {
  final _glIsTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 id),
      int Function(int id)>('glIsTransformFeedbackNV');
  return _glIsTransformFeedbackNV(id);
}

/// ```c
/// GLAPI void APIENTRY glPauseTransformFeedbackNV (void)
/// ```
void glPauseTransformFeedbackNV() {
  final _glPauseTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glPauseTransformFeedbackNV');
  return _glPauseTransformFeedbackNV();
}

/// ```c
/// GLAPI void APIENTRY glResumeTransformFeedbackNV (void)
/// ```
void glResumeTransformFeedbackNV() {
  final _glResumeTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glResumeTransformFeedbackNV');
  return _glResumeTransformFeedbackNV();
}

/// ```c
/// GLAPI void APIENTRY glDrawTransformFeedbackNV (GLenum mode, GLuint id)
/// ```
void glDrawTransformFeedbackNV(int mode, int id) {
  final _glDrawTransformFeedbackNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode, Uint32 id),
      void Function(int mode, int id)>('glDrawTransformFeedbackNV');
  return _glDrawTransformFeedbackNV(mode, id);
}

/// ```c
/// GLAPI void APIENTRY glGetPerfMonitorGroupsAMD (GLint *numGroups, GLsizei groupsSize, GLuint *groups)
/// ```
void glGetPerfMonitorGroupsAMD(Pointer<Int32>? numGroups, int groupsSize, Pointer<Uint32>? groups) {
  final _glGetPerfMonitorGroupsAMD = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Int32>? numGroups, Uint32 groupsSize, Pointer<Uint32>? groups),
      void Function(Pointer<Int32>? numGroups, int groupsSize, Pointer<Uint32>? groups)>('glGetPerfMonitorGroupsAMD');
  return _glGetPerfMonitorGroupsAMD(numGroups, groupsSize, groups);
}

/// ```c
/// GLAPI void APIENTRY glGetPerfMonitorCountersAMD (GLuint group, GLint *numCounters, GLint *maxActiveCounters, GLsizei counterSize, GLuint *counters)
/// ```
void glGetPerfMonitorCountersAMD(int group, Pointer<Int32>? numCounters, Pointer<Int32>? maxActiveCounters, int counterSize, Pointer<Uint32>? counters) {
  final _glGetPerfMonitorCountersAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 group, Pointer<Int32>? numCounters, Pointer<Int32>? maxActiveCounters, Uint32 counterSize, Pointer<Uint32>? counters),
      void Function(int group, Pointer<Int32>? numCounters, Pointer<Int32>? maxActiveCounters, int counterSize, Pointer<Uint32>? counters)>('glGetPerfMonitorCountersAMD');
  return _glGetPerfMonitorCountersAMD(group, numCounters, maxActiveCounters, counterSize, counters);
}

/// ```c
/// GLAPI void APIENTRY glGetPerfMonitorGroupStringAMD (GLuint group, GLsizei bufSize, GLsizei *length, GLchar *groupString)
/// ```
void glGetPerfMonitorGroupStringAMD(int group, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? groupString) {
  final _glGetPerfMonitorGroupStringAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 group, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? groupString),
      void Function(int group, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? groupString)>('glGetPerfMonitorGroupStringAMD');
  return _glGetPerfMonitorGroupStringAMD(group, bufSize, length, groupString);
}

/// ```c
/// GLAPI void APIENTRY glGetPerfMonitorCounterStringAMD (GLuint group, GLuint counter, GLsizei bufSize, GLsizei *length, GLchar *counterString)
/// ```
void glGetPerfMonitorCounterStringAMD(int group, int counter, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? counterString) {
  final _glGetPerfMonitorCounterStringAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 group, Uint32 counter, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int8>? counterString),
      void Function(int group, int counter, int bufSize, Pointer<Uint32>? length, Pointer<Int8>? counterString)>('glGetPerfMonitorCounterStringAMD');
  return _glGetPerfMonitorCounterStringAMD(group, counter, bufSize, length, counterString);
}

/// ```c
/// GLAPI void APIENTRY glGetPerfMonitorCounterInfoAMD (GLuint group, GLuint counter, GLenum pname, GLvoid *data)
/// ```
void glGetPerfMonitorCounterInfoAMD(int group, int counter, int pname, Pointer<Void>? data) {
  final _glGetPerfMonitorCounterInfoAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 group, Uint32 counter, Uint32 pname, Pointer<Void>? data),
      void Function(int group, int counter, int pname, Pointer<Void>? data)>('glGetPerfMonitorCounterInfoAMD');
  return _glGetPerfMonitorCounterInfoAMD(group, counter, pname, data);
}

/// ```c
/// GLAPI void APIENTRY glGenPerfMonitorsAMD (GLsizei n, GLuint *monitors)
/// ```
void glGenPerfMonitorsAMD(int n, Pointer<Uint32>? monitors) {
  final _glGenPerfMonitorsAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? monitors),
      void Function(int n, Pointer<Uint32>? monitors)>('glGenPerfMonitorsAMD');
  return _glGenPerfMonitorsAMD(n, monitors);
}

/// ```c
/// GLAPI void APIENTRY glDeletePerfMonitorsAMD (GLsizei n, GLuint *monitors)
/// ```
void glDeletePerfMonitorsAMD(int n, Pointer<Uint32>? monitors) {
  final _glDeletePerfMonitorsAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 n, Pointer<Uint32>? monitors),
      void Function(int n, Pointer<Uint32>? monitors)>('glDeletePerfMonitorsAMD');
  return _glDeletePerfMonitorsAMD(n, monitors);
}

/// ```c
/// GLAPI void APIENTRY glSelectPerfMonitorCountersAMD (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint *counterList)
/// ```
void glSelectPerfMonitorCountersAMD(int monitor, int enable, int group, int numCounters, Pointer<Uint32>? counterList) {
  final _glSelectPerfMonitorCountersAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 monitor, Int32 enable, Uint32 group, Int32 numCounters, Pointer<Uint32>? counterList),
      void Function(int monitor, int enable, int group, int numCounters, Pointer<Uint32>? counterList)>('glSelectPerfMonitorCountersAMD');
  return _glSelectPerfMonitorCountersAMD(monitor, enable, group, numCounters, counterList);
}

/// ```c
/// GLAPI void APIENTRY glBeginPerfMonitorAMD (GLuint monitor)
/// ```
void glBeginPerfMonitorAMD(int monitor) {
  final _glBeginPerfMonitorAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 monitor),
      void Function(int monitor)>('glBeginPerfMonitorAMD');
  return _glBeginPerfMonitorAMD(monitor);
}

/// ```c
/// GLAPI void APIENTRY glEndPerfMonitorAMD (GLuint monitor)
/// ```
void glEndPerfMonitorAMD(int monitor) {
  final _glEndPerfMonitorAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 monitor),
      void Function(int monitor)>('glEndPerfMonitorAMD');
  return _glEndPerfMonitorAMD(monitor);
}

/// ```c
/// GLAPI void APIENTRY glGetPerfMonitorCounterDataAMD (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint *data, GLint *bytesWritten)
/// ```
void glGetPerfMonitorCounterDataAMD(int monitor, int pname, int dataSize, Pointer<Uint32>? data, Pointer<Int32>? bytesWritten) {
  final _glGetPerfMonitorCounterDataAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 monitor, Uint32 pname, Uint32 dataSize, Pointer<Uint32>? data, Pointer<Int32>? bytesWritten),
      void Function(int monitor, int pname, int dataSize, Pointer<Uint32>? data, Pointer<Int32>? bytesWritten)>('glGetPerfMonitorCounterDataAMD');
  return _glGetPerfMonitorCounterDataAMD(monitor, pname, dataSize, data, bytesWritten);
}

/// ```c
/// GLAPI void APIENTRY glTessellationFactorAMD (GLfloat factor)
/// ```
void glTessellationFactorAMD(double factor) {
  final _glTessellationFactorAMD = DLL_SDL2.lookupFunction<
      Void Function(Float factor),
      void Function(double factor)>('glTessellationFactorAMD');
  return _glTessellationFactorAMD(factor);
}

/// ```c
/// GLAPI void APIENTRY glTessellationModeAMD (GLenum mode)
/// ```
void glTessellationModeAMD(int mode) {
  final _glTessellationModeAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glTessellationModeAMD');
  return _glTessellationModeAMD(mode);
}

/// ```c
/// GLAPI void APIENTRY glProvokingVertexEXT (GLenum mode)
/// ```
void glProvokingVertexEXT(int mode) {
  final _glProvokingVertexEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 mode),
      void Function(int mode)>('glProvokingVertexEXT');
  return _glProvokingVertexEXT(mode);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncIndexedAMD (GLuint buf, GLenum src, GLenum dst)
/// ```
void glBlendFuncIndexedAMD(int buf, int src, int dst) {
  final _glBlendFuncIndexedAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 src, Uint32 dst),
      void Function(int buf, int src, int dst)>('glBlendFuncIndexedAMD');
  return _glBlendFuncIndexedAMD(buf, src, dst);
}

/// ```c
/// GLAPI void APIENTRY glBlendFuncSeparateIndexedAMD (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
/// ```
void glBlendFuncSeparateIndexedAMD(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
  final _glBlendFuncSeparateIndexedAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 srcRGB, Uint32 dstRGB, Uint32 srcAlpha, Uint32 dstAlpha),
      void Function(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha)>('glBlendFuncSeparateIndexedAMD');
  return _glBlendFuncSeparateIndexedAMD(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationIndexedAMD (GLuint buf, GLenum mode)
/// ```
void glBlendEquationIndexedAMD(int buf, int mode) {
  final _glBlendEquationIndexedAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 mode),
      void Function(int buf, int mode)>('glBlendEquationIndexedAMD');
  return _glBlendEquationIndexedAMD(buf, mode);
}

/// ```c
/// GLAPI void APIENTRY glBlendEquationSeparateIndexedAMD (GLuint buf, GLenum modeRGB, GLenum modeAlpha)
/// ```
void glBlendEquationSeparateIndexedAMD(int buf, int modeRGB, int modeAlpha) {
  final _glBlendEquationSeparateIndexedAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buf, Uint32 modeRGB, Uint32 modeAlpha),
      void Function(int buf, int modeRGB, int modeAlpha)>('glBlendEquationSeparateIndexedAMD');
  return _glBlendEquationSeparateIndexedAMD(buf, modeRGB, modeAlpha);
}

/// ```c
/// GLAPI void APIENTRY glTextureRangeAPPLE (GLenum target, GLsizei length, const GLvoid *pointer)
/// ```
void glTextureRangeAPPLE(int target, int length, Pointer<Void>? pointer) {
  final _glTextureRangeAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 length, Pointer<Void>? pointer),
      void Function(int target, int length, Pointer<Void>? pointer)>('glTextureRangeAPPLE');
  return _glTextureRangeAPPLE(target, length, pointer);
}

/// ```c
/// GLAPI void APIENTRY glGetTexParameterPointervAPPLE (GLenum target, GLenum pname, GLvoid* *params)
/// ```
void glGetTexParameterPointervAPPLE(int target, int pname, Pointer<Pointer<Void>>? params) {
  final _glGetTexParameterPointervAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Pointer<Void>>? params),
      void Function(int target, int pname, Pointer<Pointer<Void>>? params)>('glGetTexParameterPointervAPPLE');
  return _glGetTexParameterPointervAPPLE(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glEnableVertexAttribAPPLE (GLuint index, GLenum pname)
/// ```
void glEnableVertexAttribAPPLE(int index, int pname) {
  final _glEnableVertexAttribAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname),
      void Function(int index, int pname)>('glEnableVertexAttribAPPLE');
  return _glEnableVertexAttribAPPLE(index, pname);
}

/// ```c
/// GLAPI void APIENTRY glDisableVertexAttribAPPLE (GLuint index, GLenum pname)
/// ```
void glDisableVertexAttribAPPLE(int index, int pname) {
  final _glDisableVertexAttribAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname),
      void Function(int index, int pname)>('glDisableVertexAttribAPPLE');
  return _glDisableVertexAttribAPPLE(index, pname);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsVertexAttribEnabledAPPLE (GLuint index, GLenum pname)
/// ```
int glIsVertexAttribEnabledAPPLE(int index, int pname) {
  final _glIsVertexAttribEnabledAPPLE = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 index, Uint32 pname),
      int Function(int index, int pname)>('glIsVertexAttribEnabledAPPLE');
  return _glIsVertexAttribEnabledAPPLE(index, pname);
}

/// ```c
/// GLAPI void APIENTRY glMapVertexAttrib1dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points)
/// ```
void glMapVertexAttrib1dAPPLE(int index, int size, double u1, double u2, int stride, int order, Pointer<Double>? points) {
  final _glMapVertexAttrib1dAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 size, Double u1, Double u2, Int32 stride, Int32 order, Pointer<Double>? points),
      void Function(int index, int size, double u1, double u2, int stride, int order, Pointer<Double>? points)>('glMapVertexAttrib1dAPPLE');
  return _glMapVertexAttrib1dAPPLE(index, size, u1, u2, stride, order, points);
}

/// ```c
/// GLAPI void APIENTRY glMapVertexAttrib1fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points)
/// ```
void glMapVertexAttrib1fAPPLE(int index, int size, double u1, double u2, int stride, int order, Pointer<Float>? points) {
  final _glMapVertexAttrib1fAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 size, Float u1, Float u2, Int32 stride, Int32 order, Pointer<Float>? points),
      void Function(int index, int size, double u1, double u2, int stride, int order, Pointer<Float>? points)>('glMapVertexAttrib1fAPPLE');
  return _glMapVertexAttrib1fAPPLE(index, size, u1, u2, stride, order, points);
}

/// ```c
/// GLAPI void APIENTRY glMapVertexAttrib2dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points)
/// ```
void glMapVertexAttrib2dAPPLE(int index, int size, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, Pointer<Double>? points) {
  final _glMapVertexAttrib2dAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 size, Double u1, Double u2, Int32 ustride, Int32 uorder, Double v1, Double v2, Int32 vstride, Int32 vorder, Pointer<Double>? points),
      void Function(int index, int size, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, Pointer<Double>? points)>('glMapVertexAttrib2dAPPLE');
  return _glMapVertexAttrib2dAPPLE(index, size, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
}

/// ```c
/// GLAPI void APIENTRY glMapVertexAttrib2fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points)
/// ```
void glMapVertexAttrib2fAPPLE(int index, int size, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, Pointer<Float>? points) {
  final _glMapVertexAttrib2fAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 size, Float u1, Float u2, Int32 ustride, Int32 uorder, Float v1, Float v2, Int32 vstride, Int32 vorder, Pointer<Float>? points),
      void Function(int index, int size, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, Pointer<Float>? points)>('glMapVertexAttrib2fAPPLE');
  return _glMapVertexAttrib2fAPPLE(index, size, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
}

/// ```c
/// GLAPI GLenum APIENTRY glObjectPurgeableAPPLE (GLenum objectType, GLuint name, GLenum option)
/// ```
int glObjectPurgeableAPPLE(int objectType, int name, int option) {
  final _glObjectPurgeableAPPLE = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 objectType, Uint32 name, Uint32 option),
      int Function(int objectType, int name, int option)>('glObjectPurgeableAPPLE');
  return _glObjectPurgeableAPPLE(objectType, name, option);
}

/// ```c
/// GLAPI GLenum APIENTRY glObjectUnpurgeableAPPLE (GLenum objectType, GLuint name, GLenum option)
/// ```
int glObjectUnpurgeableAPPLE(int objectType, int name, int option) {
  final _glObjectUnpurgeableAPPLE = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 objectType, Uint32 name, Uint32 option),
      int Function(int objectType, int name, int option)>('glObjectUnpurgeableAPPLE');
  return _glObjectUnpurgeableAPPLE(objectType, name, option);
}

/// ```c
/// GLAPI void APIENTRY glGetObjectParameterivAPPLE (GLenum objectType, GLuint name, GLenum pname, GLint *params)
/// ```
void glGetObjectParameterivAPPLE(int objectType, int name, int pname, Pointer<Int32>? params) {
  final _glGetObjectParameterivAPPLE = DLL_SDL2.lookupFunction<
      Void Function(Uint32 objectType, Uint32 name, Uint32 pname, Pointer<Int32>? params),
      void Function(int objectType, int name, int pname, Pointer<Int32>? params)>('glGetObjectParameterivAPPLE');
  return _glGetObjectParameterivAPPLE(objectType, name, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glBeginVideoCaptureNV (GLuint video_capture_slot)
/// ```
void glBeginVideoCaptureNV(int video_capture_slot) {
  final _glBeginVideoCaptureNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot),
      void Function(int video_capture_slot)>('glBeginVideoCaptureNV');
  return _glBeginVideoCaptureNV(video_capture_slot);
}

/// ```c
/// GLAPI void APIENTRY glBindVideoCaptureStreamBufferNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset)
/// ```
void glBindVideoCaptureStreamBufferNV(int video_capture_slot, int stream, int frame_region, int offset) {
  final _glBindVideoCaptureStreamBufferNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 frame_region, Int32 offset),
      void Function(int video_capture_slot, int stream, int frame_region, int offset)>('glBindVideoCaptureStreamBufferNV');
  return _glBindVideoCaptureStreamBufferNV(video_capture_slot, stream, frame_region, offset);
}

/// ```c
/// GLAPI void APIENTRY glBindVideoCaptureStreamTextureNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture)
/// ```
void glBindVideoCaptureStreamTextureNV(int video_capture_slot, int stream, int frame_region, int target, int texture) {
  final _glBindVideoCaptureStreamTextureNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 frame_region, Uint32 target, Uint32 texture),
      void Function(int video_capture_slot, int stream, int frame_region, int target, int texture)>('glBindVideoCaptureStreamTextureNV');
  return _glBindVideoCaptureStreamTextureNV(video_capture_slot, stream, frame_region, target, texture);
}

/// ```c
/// GLAPI void APIENTRY glEndVideoCaptureNV (GLuint video_capture_slot)
/// ```
void glEndVideoCaptureNV(int video_capture_slot) {
  final _glEndVideoCaptureNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot),
      void Function(int video_capture_slot)>('glEndVideoCaptureNV');
  return _glEndVideoCaptureNV(video_capture_slot);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoCaptureivNV (GLuint video_capture_slot, GLenum pname, GLint *params)
/// ```
void glGetVideoCaptureivNV(int video_capture_slot, int pname, Pointer<Int32>? params) {
  final _glGetVideoCaptureivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 pname, Pointer<Int32>? params),
      void Function(int video_capture_slot, int pname, Pointer<Int32>? params)>('glGetVideoCaptureivNV');
  return _glGetVideoCaptureivNV(video_capture_slot, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoCaptureStreamivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint *params)
/// ```
void glGetVideoCaptureStreamivNV(int video_capture_slot, int stream, int pname, Pointer<Int32>? params) {
  final _glGetVideoCaptureStreamivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 pname, Pointer<Int32>? params),
      void Function(int video_capture_slot, int stream, int pname, Pointer<Int32>? params)>('glGetVideoCaptureStreamivNV');
  return _glGetVideoCaptureStreamivNV(video_capture_slot, stream, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoCaptureStreamfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat *params)
/// ```
void glGetVideoCaptureStreamfvNV(int video_capture_slot, int stream, int pname, Pointer<Float>? params) {
  final _glGetVideoCaptureStreamfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 pname, Pointer<Float>? params),
      void Function(int video_capture_slot, int stream, int pname, Pointer<Float>? params)>('glGetVideoCaptureStreamfvNV');
  return _glGetVideoCaptureStreamfvNV(video_capture_slot, stream, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVideoCaptureStreamdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble *params)
/// ```
void glGetVideoCaptureStreamdvNV(int video_capture_slot, int stream, int pname, Pointer<Double>? params) {
  final _glGetVideoCaptureStreamdvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 pname, Pointer<Double>? params),
      void Function(int video_capture_slot, int stream, int pname, Pointer<Double>? params)>('glGetVideoCaptureStreamdvNV');
  return _glGetVideoCaptureStreamdvNV(video_capture_slot, stream, pname, params);
}

/// ```c
/// GLAPI GLenum APIENTRY glVideoCaptureNV (GLuint video_capture_slot, GLuint *sequence_num, GLuint64EXT *capture_time)
/// ```
int glVideoCaptureNV(int video_capture_slot, Pointer<Uint32>? sequence_num, Pointer<Uint64>? capture_time) {
  final _glVideoCaptureNV = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 video_capture_slot, Pointer<Uint32>? sequence_num, Pointer<Uint64>? capture_time),
      int Function(int video_capture_slot, Pointer<Uint32>? sequence_num, Pointer<Uint64>? capture_time)>('glVideoCaptureNV');
  return _glVideoCaptureNV(video_capture_slot, sequence_num, capture_time);
}

/// ```c
/// GLAPI void APIENTRY glVideoCaptureStreamParameterivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLint *params)
/// ```
void glVideoCaptureStreamParameterivNV(int video_capture_slot, int stream, int pname, Pointer<Int32>? params) {
  final _glVideoCaptureStreamParameterivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 pname, Pointer<Int32>? params),
      void Function(int video_capture_slot, int stream, int pname, Pointer<Int32>? params)>('glVideoCaptureStreamParameterivNV');
  return _glVideoCaptureStreamParameterivNV(video_capture_slot, stream, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVideoCaptureStreamParameterfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLfloat *params)
/// ```
void glVideoCaptureStreamParameterfvNV(int video_capture_slot, int stream, int pname, Pointer<Float>? params) {
  final _glVideoCaptureStreamParameterfvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 pname, Pointer<Float>? params),
      void Function(int video_capture_slot, int stream, int pname, Pointer<Float>? params)>('glVideoCaptureStreamParameterfvNV');
  return _glVideoCaptureStreamParameterfvNV(video_capture_slot, stream, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVideoCaptureStreamParameterdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLdouble *params)
/// ```
void glVideoCaptureStreamParameterdvNV(int video_capture_slot, int stream, int pname, Pointer<Double>? params) {
  final _glVideoCaptureStreamParameterdvNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 video_capture_slot, Uint32 stream, Uint32 pname, Pointer<Double>? params),
      void Function(int video_capture_slot, int stream, int pname, Pointer<Double>? params)>('glVideoCaptureStreamParameterdvNV');
  return _glVideoCaptureStreamParameterdvNV(video_capture_slot, stream, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glCopyImageSubDataNV (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)
/// ```
void glCopyImageSubDataNV(int srcName, int srcTarget, int srcLevel, int srcX, int srcY, int srcZ, int dstName, int dstTarget, int dstLevel, int dstX, int dstY, int dstZ, int width, int height, int depth) {
  final _glCopyImageSubDataNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 srcName, Uint32 srcTarget, Int32 srcLevel, Int32 srcX, Int32 srcY, Int32 srcZ, Uint32 dstName, Uint32 dstTarget, Int32 dstLevel, Int32 dstX, Int32 dstY, Int32 dstZ, Uint32 width, Uint32 height, Uint32 depth),
      void Function(int srcName, int srcTarget, int srcLevel, int srcX, int srcY, int srcZ, int dstName, int dstTarget, int dstLevel, int dstX, int dstY, int dstZ, int width, int height, int depth)>('glCopyImageSubDataNV');
  return _glCopyImageSubDataNV(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, width, height, depth);
}

/// ```c
/// GLAPI void APIENTRY glUseShaderProgramEXT (GLenum type, GLuint program)
/// ```
void glUseShaderProgramEXT(int type, int program) {
  final _glUseShaderProgramEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 program),
      void Function(int type, int program)>('glUseShaderProgramEXT');
  return _glUseShaderProgramEXT(type, program);
}

/// ```c
/// GLAPI void APIENTRY glActiveProgramEXT (GLuint program)
/// ```
void glActiveProgramEXT(int program) {
  final _glActiveProgramEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program),
      void Function(int program)>('glActiveProgramEXT');
  return _glActiveProgramEXT(program);
}

/// ```c
/// GLAPI GLuint APIENTRY glCreateShaderProgramEXT (GLenum type, const GLchar *string)
/// ```
int glCreateShaderProgramEXT(int type, String string) {
  final _glCreateShaderProgramEXT = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 type, Pointer<Utf8>? string),
      int Function(int type, Pointer<Utf8>? string)>('glCreateShaderProgramEXT');
  final _stringPointer = string.toNativeUtf8();
  final _result = _glCreateShaderProgramEXT(type, _stringPointer);
  calloc.free(_stringPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glMakeBufferResidentNV (GLenum target, GLenum access)
/// ```
void glMakeBufferResidentNV(int target, int access) {
  final _glMakeBufferResidentNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 access),
      void Function(int target, int access)>('glMakeBufferResidentNV');
  return _glMakeBufferResidentNV(target, access);
}

/// ```c
/// GLAPI void APIENTRY glMakeBufferNonResidentNV (GLenum target)
/// ```
void glMakeBufferNonResidentNV(int target) {
  final _glMakeBufferNonResidentNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target),
      void Function(int target)>('glMakeBufferNonResidentNV');
  return _glMakeBufferNonResidentNV(target);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsBufferResidentNV (GLenum target)
/// ```
int glIsBufferResidentNV(int target) {
  final _glIsBufferResidentNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 target),
      int Function(int target)>('glIsBufferResidentNV');
  return _glIsBufferResidentNV(target);
}

/// ```c
/// GLAPI void APIENTRY glMakeNamedBufferResidentNV (GLuint buffer, GLenum access)
/// ```
void glMakeNamedBufferResidentNV(int buffer, int access) {
  final _glMakeNamedBufferResidentNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 access),
      void Function(int buffer, int access)>('glMakeNamedBufferResidentNV');
  return _glMakeNamedBufferResidentNV(buffer, access);
}

/// ```c
/// GLAPI void APIENTRY glMakeNamedBufferNonResidentNV (GLuint buffer)
/// ```
void glMakeNamedBufferNonResidentNV(int buffer) {
  final _glMakeNamedBufferNonResidentNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer),
      void Function(int buffer)>('glMakeNamedBufferNonResidentNV');
  return _glMakeNamedBufferNonResidentNV(buffer);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsNamedBufferResidentNV (GLuint buffer)
/// ```
int glIsNamedBufferResidentNV(int buffer) {
  final _glIsNamedBufferResidentNV = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 buffer),
      int Function(int buffer)>('glIsNamedBufferResidentNV');
  return _glIsNamedBufferResidentNV(buffer);
}

/// ```c
/// GLAPI void APIENTRY glGetBufferParameterui64vNV (GLenum target, GLenum pname, GLuint64EXT *params)
/// ```
void glGetBufferParameterui64vNV(int target, int pname, Pointer<Uint64>? params) {
  final _glGetBufferParameterui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 pname, Pointer<Uint64>? params),
      void Function(int target, int pname, Pointer<Uint64>? params)>('glGetBufferParameterui64vNV');
  return _glGetBufferParameterui64vNV(target, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetNamedBufferParameterui64vNV (GLuint buffer, GLenum pname, GLuint64EXT *params)
/// ```
void glGetNamedBufferParameterui64vNV(int buffer, int pname, Pointer<Uint64>? params) {
  final _glGetNamedBufferParameterui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 buffer, Uint32 pname, Pointer<Uint64>? params),
      void Function(int buffer, int pname, Pointer<Uint64>? params)>('glGetNamedBufferParameterui64vNV');
  return _glGetNamedBufferParameterui64vNV(buffer, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetIntegerui64vNV (GLenum value, GLuint64EXT *result)
/// ```
void glGetIntegerui64vNV(int value, Pointer<Uint64>? result) {
  final _glGetIntegerui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 value, Pointer<Uint64>? result),
      void Function(int value, Pointer<Uint64>? result)>('glGetIntegerui64vNV');
  return _glGetIntegerui64vNV(value, result);
}

/// ```c
/// GLAPI void APIENTRY glUniformui64NV (GLint location, GLuint64EXT value)
/// ```
void glUniformui64NV(int location, int value) {
  final _glUniformui64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint64 value),
      void Function(int location, int value)>('glUniformui64NV');
  return _glUniformui64NV(location, value);
}

/// ```c
/// GLAPI void APIENTRY glUniformui64vNV (GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glUniformui64vNV(int location, int count, Pointer<Uint64>? value) {
  final _glUniformui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int location, int count, Pointer<Uint64>? value)>('glUniformui64vNV');
  return _glUniformui64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformui64vNV (GLuint program, GLint location, GLuint64EXT *params)
/// ```
void glGetUniformui64vNV(int program, int location, Pointer<Uint64>? params) {
  final _glGetUniformui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Uint64>? params),
      void Function(int program, int location, Pointer<Uint64>? params)>('glGetUniformui64vNV');
  return _glGetUniformui64vNV(program, location, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformui64NV (GLuint program, GLint location, GLuint64EXT value)
/// ```
void glProgramUniformui64NV(int program, int location, int value) {
  final _glProgramUniformui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint64 value),
      void Function(int program, int location, int value)>('glProgramUniformui64NV');
  return _glProgramUniformui64NV(program, location, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniformui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glProgramUniformui64vNV(int program, int location, int count, Pointer<Uint64>? value) {
  final _glProgramUniformui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int program, int location, int count, Pointer<Uint64>? value)>('glProgramUniformui64vNV');
  return _glProgramUniformui64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glBufferAddressRangeNV (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length)
/// ```
void glBufferAddressRangeNV(int pname, int index, int address, Pointer<Void>? length) {
  final _glBufferAddressRangeNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 pname, Uint32 index, Uint64 address, Pointer<Void>? length),
      void Function(int pname, int index, int address, Pointer<Void>? length)>('glBufferAddressRangeNV');
  return _glBufferAddressRangeNV(pname, index, address, length);
}

/// ```c
/// GLAPI void APIENTRY glVertexFormatNV (GLint size, GLenum type, GLsizei stride)
/// ```
void glVertexFormatNV(int size, int type, int stride) {
  final _glVertexFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride),
      void Function(int size, int type, int stride)>('glVertexFormatNV');
  return _glVertexFormatNV(size, type, stride);
}

/// ```c
/// GLAPI void APIENTRY glNormalFormatNV (GLenum type, GLsizei stride)
/// ```
void glNormalFormatNV(int type, int stride) {
  final _glNormalFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride),
      void Function(int type, int stride)>('glNormalFormatNV');
  return _glNormalFormatNV(type, stride);
}

/// ```c
/// GLAPI void APIENTRY glColorFormatNV (GLint size, GLenum type, GLsizei stride)
/// ```
void glColorFormatNV(int size, int type, int stride) {
  final _glColorFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride),
      void Function(int size, int type, int stride)>('glColorFormatNV');
  return _glColorFormatNV(size, type, stride);
}

/// ```c
/// GLAPI void APIENTRY glIndexFormatNV (GLenum type, GLsizei stride)
/// ```
void glIndexFormatNV(int type, int stride) {
  final _glIndexFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride),
      void Function(int type, int stride)>('glIndexFormatNV');
  return _glIndexFormatNV(type, stride);
}

/// ```c
/// GLAPI void APIENTRY glTexCoordFormatNV (GLint size, GLenum type, GLsizei stride)
/// ```
void glTexCoordFormatNV(int size, int type, int stride) {
  final _glTexCoordFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride),
      void Function(int size, int type, int stride)>('glTexCoordFormatNV');
  return _glTexCoordFormatNV(size, type, stride);
}

/// ```c
/// GLAPI void APIENTRY glEdgeFlagFormatNV (GLsizei stride)
/// ```
void glEdgeFlagFormatNV(int stride) {
  final _glEdgeFlagFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 stride),
      void Function(int stride)>('glEdgeFlagFormatNV');
  return _glEdgeFlagFormatNV(stride);
}

/// ```c
/// GLAPI void APIENTRY glSecondaryColorFormatNV (GLint size, GLenum type, GLsizei stride)
/// ```
void glSecondaryColorFormatNV(int size, int type, int stride) {
  final _glSecondaryColorFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 size, Uint32 type, Uint32 stride),
      void Function(int size, int type, int stride)>('glSecondaryColorFormatNV');
  return _glSecondaryColorFormatNV(size, type, stride);
}

/// ```c
/// GLAPI void APIENTRY glFogCoordFormatNV (GLenum type, GLsizei stride)
/// ```
void glFogCoordFormatNV(int type, int stride) {
  final _glFogCoordFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type, Uint32 stride),
      void Function(int type, int stride)>('glFogCoordFormatNV');
  return _glFogCoordFormatNV(type, stride);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribFormatNV (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride)
/// ```
void glVertexAttribFormatNV(int index, int size, int type, int normalized, int stride) {
  final _glVertexAttribFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Int32 normalized, Uint32 stride),
      void Function(int index, int size, int type, int normalized, int stride)>('glVertexAttribFormatNV');
  return _glVertexAttribFormatNV(index, size, type, normalized, stride);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribIFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride)
/// ```
void glVertexAttribIFormatNV(int index, int size, int type, int stride) {
  final _glVertexAttribIFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Uint32 stride),
      void Function(int index, int size, int type, int stride)>('glVertexAttribIFormatNV');
  return _glVertexAttribIFormatNV(index, size, type, stride);
}

/// ```c
/// GLAPI void APIENTRY glGetIntegerui64i_vNV (GLenum value, GLuint index, GLuint64EXT *result)
/// ```
void glGetIntegerui64i_vNV(int value, int index, Pointer<Uint64>? result) {
  final _glGetIntegerui64i_vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 value, Uint32 index, Pointer<Uint64>? result),
      void Function(int value, int index, Pointer<Uint64>? result)>('glGetIntegerui64i_vNV');
  return _glGetIntegerui64i_vNV(value, index, result);
}

/// ```c
/// GLAPI void APIENTRY glTextureBarrierNV (void)
/// ```
void glTextureBarrierNV() {
  final _glTextureBarrierNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glTextureBarrierNV');
  return _glTextureBarrierNV();
}

/// ```c
/// GLAPI void APIENTRY glBindImageTextureEXT (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format)
/// ```
void glBindImageTextureEXT(int index, int texture, int level, int layered, int layer, int access, int format) {
  final _glBindImageTextureEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 texture, Int32 level, Int32 layered, Int32 layer, Uint32 access, Int32 format),
      void Function(int index, int texture, int level, int layered, int layer, int access, int format)>('glBindImageTextureEXT');
  return _glBindImageTextureEXT(index, texture, level, layered, layer, access, format);
}

/// ```c
/// GLAPI void APIENTRY glMemoryBarrierEXT (GLbitfield barriers)
/// ```
void glMemoryBarrierEXT(int barriers) {
  final _glMemoryBarrierEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 barriers),
      void Function(int barriers)>('glMemoryBarrierEXT');
  return _glMemoryBarrierEXT(barriers);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1dEXT (GLuint index, GLdouble x)
/// ```
void glVertexAttribL1dEXT(int index, double x) {
  final _glVertexAttribL1dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x),
      void Function(int index, double x)>('glVertexAttribL1dEXT');
  return _glVertexAttribL1dEXT(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2dEXT (GLuint index, GLdouble x, GLdouble y)
/// ```
void glVertexAttribL2dEXT(int index, double x, double y) {
  final _glVertexAttribL2dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y),
      void Function(int index, double x, double y)>('glVertexAttribL2dEXT');
  return _glVertexAttribL2dEXT(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z)
/// ```
void glVertexAttribL3dEXT(int index, double x, double y, double z) {
  final _glVertexAttribL3dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z),
      void Function(int index, double x, double y, double z)>('glVertexAttribL3dEXT');
  return _glVertexAttribL3dEXT(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
/// ```
void glVertexAttribL4dEXT(int index, double x, double y, double z, double w) {
  final _glVertexAttribL4dEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Double x, Double y, Double z, Double w),
      void Function(int index, double x, double y, double z, double w)>('glVertexAttribL4dEXT');
  return _glVertexAttribL4dEXT(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1dvEXT (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL1dvEXT(int index, Pointer<Double>? v) {
  final _glVertexAttribL1dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL1dvEXT');
  return _glVertexAttribL1dvEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2dvEXT (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL2dvEXT(int index, Pointer<Double>? v) {
  final _glVertexAttribL2dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL2dvEXT');
  return _glVertexAttribL2dvEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3dvEXT (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL3dvEXT(int index, Pointer<Double>? v) {
  final _glVertexAttribL3dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL3dvEXT');
  return _glVertexAttribL3dvEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4dvEXT (GLuint index, const GLdouble *v)
/// ```
void glVertexAttribL4dvEXT(int index, Pointer<Double>? v) {
  final _glVertexAttribL4dvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Double>? v),
      void Function(int index, Pointer<Double>? v)>('glVertexAttribL4dvEXT');
  return _glVertexAttribL4dvEXT(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribLPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)
/// ```
void glVertexAttribLPointerEXT(int index, int size, int type, int stride, Pointer<Void>? pointer) {
  final _glVertexAttribLPointerEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? pointer),
      void Function(int index, int size, int type, int stride, Pointer<Void>? pointer)>('glVertexAttribLPointerEXT');
  return _glVertexAttribLPointerEXT(index, size, type, stride, pointer);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribLdvEXT (GLuint index, GLenum pname, GLdouble *params)
/// ```
void glGetVertexAttribLdvEXT(int index, int pname, Pointer<Double>? params) {
  final _glGetVertexAttribLdvEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Double>? params),
      void Function(int index, int pname, Pointer<Double>? params)>('glGetVertexAttribLdvEXT');
  return _glGetVertexAttribLdvEXT(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVertexArrayVertexAttribLOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)
/// ```
void glVertexArrayVertexAttribLOffsetEXT(int vaobj, int buffer, int index, int size, int type, int stride, Pointer<Void>? offset) {
  final _glVertexArrayVertexAttribLOffsetEXT = DLL_SDL2.lookupFunction<
      Void Function(Uint32 vaobj, Uint32 buffer, Uint32 index, Int32 size, Uint32 type, Uint32 stride, Pointer<Void>? offset),
      void Function(int vaobj, int buffer, int index, int size, int type, int stride, Pointer<Void>? offset)>('glVertexArrayVertexAttribLOffsetEXT');
  return _glVertexArrayVertexAttribLOffsetEXT(vaobj, buffer, index, size, type, stride, offset);
}

/// ```c
/// GLAPI void APIENTRY glProgramSubroutineParametersuivNV (GLenum target, GLsizei count, const GLuint *params)
/// ```
void glProgramSubroutineParametersuivNV(int target, int count, Pointer<Uint32>? params) {
  final _glProgramSubroutineParametersuivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 count, Pointer<Uint32>? params),
      void Function(int target, int count, Pointer<Uint32>? params)>('glProgramSubroutineParametersuivNV');
  return _glProgramSubroutineParametersuivNV(target, count, params);
}

/// ```c
/// GLAPI void APIENTRY glGetProgramSubroutineParameteruivNV (GLenum target, GLuint index, GLuint *param)
/// ```
void glGetProgramSubroutineParameteruivNV(int target, int index, Pointer<Uint32>? param) {
  final _glGetProgramSubroutineParameteruivNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 target, Uint32 index, Pointer<Uint32>? param),
      void Function(int target, int index, Pointer<Uint32>? param)>('glGetProgramSubroutineParameteruivNV');
  return _glGetProgramSubroutineParameteruivNV(target, index, param);
}

/// ```c
/// GLAPI void APIENTRY glUniform1i64NV (GLint location, GLint64EXT x)
/// ```
void glUniform1i64NV(int location, int x) {
  final _glUniform1i64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int64 x),
      void Function(int location, int x)>('glUniform1i64NV');
  return _glUniform1i64NV(location, x);
}

/// ```c
/// GLAPI void APIENTRY glUniform2i64NV (GLint location, GLint64EXT x, GLint64EXT y)
/// ```
void glUniform2i64NV(int location, int x, int y) {
  final _glUniform2i64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int64 x, Int64 y),
      void Function(int location, int x, int y)>('glUniform2i64NV');
  return _glUniform2i64NV(location, x, y);
}

/// ```c
/// GLAPI void APIENTRY glUniform3i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)
/// ```
void glUniform3i64NV(int location, int x, int y, int z) {
  final _glUniform3i64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int64 x, Int64 y, Int64 z),
      void Function(int location, int x, int y, int z)>('glUniform3i64NV');
  return _glUniform3i64NV(location, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glUniform4i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)
/// ```
void glUniform4i64NV(int location, int x, int y, int z, int w) {
  final _glUniform4i64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Int64 x, Int64 y, Int64 z, Int64 w),
      void Function(int location, int x, int y, int z, int w)>('glUniform4i64NV');
  return _glUniform4i64NV(location, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glUniform1i64vNV (GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glUniform1i64vNV(int location, int count, Pointer<Int64>? value) {
  final _glUniform1i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int location, int count, Pointer<Int64>? value)>('glUniform1i64vNV');
  return _glUniform1i64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2i64vNV (GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glUniform2i64vNV(int location, int count, Pointer<Int64>? value) {
  final _glUniform2i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int location, int count, Pointer<Int64>? value)>('glUniform2i64vNV');
  return _glUniform2i64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3i64vNV (GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glUniform3i64vNV(int location, int count, Pointer<Int64>? value) {
  final _glUniform3i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int location, int count, Pointer<Int64>? value)>('glUniform3i64vNV');
  return _glUniform3i64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4i64vNV (GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glUniform4i64vNV(int location, int count, Pointer<Int64>? value) {
  final _glUniform4i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int location, int count, Pointer<Int64>? value)>('glUniform4i64vNV');
  return _glUniform4i64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform1ui64NV (GLint location, GLuint64EXT x)
/// ```
void glUniform1ui64NV(int location, int x) {
  final _glUniform1ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint64 x),
      void Function(int location, int x)>('glUniform1ui64NV');
  return _glUniform1ui64NV(location, x);
}

/// ```c
/// GLAPI void APIENTRY glUniform2ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y)
/// ```
void glUniform2ui64NV(int location, int x, int y) {
  final _glUniform2ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint64 x, Uint64 y),
      void Function(int location, int x, int y)>('glUniform2ui64NV');
  return _glUniform2ui64NV(location, x, y);
}

/// ```c
/// GLAPI void APIENTRY glUniform3ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)
/// ```
void glUniform3ui64NV(int location, int x, int y, int z) {
  final _glUniform3ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint64 x, Uint64 y, Uint64 z),
      void Function(int location, int x, int y, int z)>('glUniform3ui64NV');
  return _glUniform3ui64NV(location, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glUniform4ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)
/// ```
void glUniform4ui64NV(int location, int x, int y, int z, int w) {
  final _glUniform4ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint64 x, Uint64 y, Uint64 z, Uint64 w),
      void Function(int location, int x, int y, int z, int w)>('glUniform4ui64NV');
  return _glUniform4ui64NV(location, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glUniform1ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glUniform1ui64vNV(int location, int count, Pointer<Uint64>? value) {
  final _glUniform1ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int location, int count, Pointer<Uint64>? value)>('glUniform1ui64vNV');
  return _glUniform1ui64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform2ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glUniform2ui64vNV(int location, int count, Pointer<Uint64>? value) {
  final _glUniform2ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int location, int count, Pointer<Uint64>? value)>('glUniform2ui64vNV');
  return _glUniform2ui64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform3ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glUniform3ui64vNV(int location, int count, Pointer<Uint64>? value) {
  final _glUniform3ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int location, int count, Pointer<Uint64>? value)>('glUniform3ui64vNV');
  return _glUniform3ui64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glUniform4ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glUniform4ui64vNV(int location, int count, Pointer<Uint64>? value) {
  final _glUniform4ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int location, int count, Pointer<Uint64>? value)>('glUniform4ui64vNV');
  return _glUniform4ui64vNV(location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glGetUniformi64vNV (GLuint program, GLint location, GLint64EXT *params)
/// ```
void glGetUniformi64vNV(int program, int location, Pointer<Int64>? params) {
  final _glGetUniformi64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Pointer<Int64>? params),
      void Function(int program, int location, Pointer<Int64>? params)>('glGetUniformi64vNV');
  return _glGetUniformi64vNV(program, location, params);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1i64NV (GLuint program, GLint location, GLint64EXT x)
/// ```
void glProgramUniform1i64NV(int program, int location, int x) {
  final _glProgramUniform1i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int64 x),
      void Function(int program, int location, int x)>('glProgramUniform1i64NV');
  return _glProgramUniform1i64NV(program, location, x);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y)
/// ```
void glProgramUniform2i64NV(int program, int location, int x, int y) {
  final _glProgramUniform2i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int64 x, Int64 y),
      void Function(int program, int location, int x, int y)>('glProgramUniform2i64NV');
  return _glProgramUniform2i64NV(program, location, x, y);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)
/// ```
void glProgramUniform3i64NV(int program, int location, int x, int y, int z) {
  final _glProgramUniform3i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int64 x, Int64 y, Int64 z),
      void Function(int program, int location, int x, int y, int z)>('glProgramUniform3i64NV');
  return _glProgramUniform3i64NV(program, location, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)
/// ```
void glProgramUniform4i64NV(int program, int location, int x, int y, int z, int w) {
  final _glProgramUniform4i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Int64 x, Int64 y, Int64 z, Int64 w),
      void Function(int program, int location, int x, int y, int z, int w)>('glProgramUniform4i64NV');
  return _glProgramUniform4i64NV(program, location, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glProgramUniform1i64vNV(int program, int location, int count, Pointer<Int64>? value) {
  final _glProgramUniform1i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int program, int location, int count, Pointer<Int64>? value)>('glProgramUniform1i64vNV');
  return _glProgramUniform1i64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glProgramUniform2i64vNV(int program, int location, int count, Pointer<Int64>? value) {
  final _glProgramUniform2i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int program, int location, int count, Pointer<Int64>? value)>('glProgramUniform2i64vNV');
  return _glProgramUniform2i64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glProgramUniform3i64vNV(int program, int location, int count, Pointer<Int64>? value) {
  final _glProgramUniform3i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int program, int location, int count, Pointer<Int64>? value)>('glProgramUniform3i64vNV');
  return _glProgramUniform3i64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value)
/// ```
void glProgramUniform4i64vNV(int program, int location, int count, Pointer<Int64>? value) {
  final _glProgramUniform4i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Int64>? value),
      void Function(int program, int location, int count, Pointer<Int64>? value)>('glProgramUniform4i64vNV');
  return _glProgramUniform4i64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1ui64NV (GLuint program, GLint location, GLuint64EXT x)
/// ```
void glProgramUniform1ui64NV(int program, int location, int x) {
  final _glProgramUniform1ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint64 x),
      void Function(int program, int location, int x)>('glProgramUniform1ui64NV');
  return _glProgramUniform1ui64NV(program, location, x);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y)
/// ```
void glProgramUniform2ui64NV(int program, int location, int x, int y) {
  final _glProgramUniform2ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint64 x, Uint64 y),
      void Function(int program, int location, int x, int y)>('glProgramUniform2ui64NV');
  return _glProgramUniform2ui64NV(program, location, x, y);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)
/// ```
void glProgramUniform3ui64NV(int program, int location, int x, int y, int z) {
  final _glProgramUniform3ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint64 x, Uint64 y, Uint64 z),
      void Function(int program, int location, int x, int y, int z)>('glProgramUniform3ui64NV');
  return _glProgramUniform3ui64NV(program, location, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)
/// ```
void glProgramUniform4ui64NV(int program, int location, int x, int y, int z, int w) {
  final _glProgramUniform4ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint64 x, Uint64 y, Uint64 z, Uint64 w),
      void Function(int program, int location, int x, int y, int z, int w)>('glProgramUniform4ui64NV');
  return _glProgramUniform4ui64NV(program, location, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform1ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glProgramUniform1ui64vNV(int program, int location, int count, Pointer<Uint64>? value) {
  final _glProgramUniform1ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int program, int location, int count, Pointer<Uint64>? value)>('glProgramUniform1ui64vNV');
  return _glProgramUniform1ui64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform2ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glProgramUniform2ui64vNV(int program, int location, int count, Pointer<Uint64>? value) {
  final _glProgramUniform2ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int program, int location, int count, Pointer<Uint64>? value)>('glProgramUniform2ui64vNV');
  return _glProgramUniform2ui64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform3ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glProgramUniform3ui64vNV(int program, int location, int count, Pointer<Uint64>? value) {
  final _glProgramUniform3ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int program, int location, int count, Pointer<Uint64>? value)>('glProgramUniform3ui64vNV');
  return _glProgramUniform3ui64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glProgramUniform4ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value)
/// ```
void glProgramUniform4ui64vNV(int program, int location, int count, Pointer<Uint64>? value) {
  final _glProgramUniform4ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 program, Int32 location, Uint32 count, Pointer<Uint64>? value),
      void Function(int program, int location, int count, Pointer<Uint64>? value)>('glProgramUniform4ui64vNV');
  return _glProgramUniform4ui64vNV(program, location, count, value);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1i64NV (GLuint index, GLint64EXT x)
/// ```
void glVertexAttribL1i64NV(int index, int x) {
  final _glVertexAttribL1i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int64 x),
      void Function(int index, int x)>('glVertexAttribL1i64NV');
  return _glVertexAttribL1i64NV(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2i64NV (GLuint index, GLint64EXT x, GLint64EXT y)
/// ```
void glVertexAttribL2i64NV(int index, int x, int y) {
  final _glVertexAttribL2i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int64 x, Int64 y),
      void Function(int index, int x, int y)>('glVertexAttribL2i64NV');
  return _glVertexAttribL2i64NV(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z)
/// ```
void glVertexAttribL3i64NV(int index, int x, int y, int z) {
  final _glVertexAttribL3i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int64 x, Int64 y, Int64 z),
      void Function(int index, int x, int y, int z)>('glVertexAttribL3i64NV');
  return _glVertexAttribL3i64NV(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)
/// ```
void glVertexAttribL4i64NV(int index, int x, int y, int z, int w) {
  final _glVertexAttribL4i64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int64 x, Int64 y, Int64 z, Int64 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttribL4i64NV');
  return _glVertexAttribL4i64NV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1i64vNV (GLuint index, const GLint64EXT *v)
/// ```
void glVertexAttribL1i64vNV(int index, Pointer<Int64>? v) {
  final _glVertexAttribL1i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int64>? v),
      void Function(int index, Pointer<Int64>? v)>('glVertexAttribL1i64vNV');
  return _glVertexAttribL1i64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2i64vNV (GLuint index, const GLint64EXT *v)
/// ```
void glVertexAttribL2i64vNV(int index, Pointer<Int64>? v) {
  final _glVertexAttribL2i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int64>? v),
      void Function(int index, Pointer<Int64>? v)>('glVertexAttribL2i64vNV');
  return _glVertexAttribL2i64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3i64vNV (GLuint index, const GLint64EXT *v)
/// ```
void glVertexAttribL3i64vNV(int index, Pointer<Int64>? v) {
  final _glVertexAttribL3i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int64>? v),
      void Function(int index, Pointer<Int64>? v)>('glVertexAttribL3i64vNV');
  return _glVertexAttribL3i64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4i64vNV (GLuint index, const GLint64EXT *v)
/// ```
void glVertexAttribL4i64vNV(int index, Pointer<Int64>? v) {
  final _glVertexAttribL4i64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Int64>? v),
      void Function(int index, Pointer<Int64>? v)>('glVertexAttribL4i64vNV');
  return _glVertexAttribL4i64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1ui64NV (GLuint index, GLuint64EXT x)
/// ```
void glVertexAttribL1ui64NV(int index, int x) {
  final _glVertexAttribL1ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint64 x),
      void Function(int index, int x)>('glVertexAttribL1ui64NV');
  return _glVertexAttribL1ui64NV(index, x);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y)
/// ```
void glVertexAttribL2ui64NV(int index, int x, int y) {
  final _glVertexAttribL2ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint64 x, Uint64 y),
      void Function(int index, int x, int y)>('glVertexAttribL2ui64NV');
  return _glVertexAttribL2ui64NV(index, x, y);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)
/// ```
void glVertexAttribL3ui64NV(int index, int x, int y, int z) {
  final _glVertexAttribL3ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint64 x, Uint64 y, Uint64 z),
      void Function(int index, int x, int y, int z)>('glVertexAttribL3ui64NV');
  return _glVertexAttribL3ui64NV(index, x, y, z);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)
/// ```
void glVertexAttribL4ui64NV(int index, int x, int y, int z, int w) {
  final _glVertexAttribL4ui64NV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint64 x, Uint64 y, Uint64 z, Uint64 w),
      void Function(int index, int x, int y, int z, int w)>('glVertexAttribL4ui64NV');
  return _glVertexAttribL4ui64NV(index, x, y, z, w);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL1ui64vNV (GLuint index, const GLuint64EXT *v)
/// ```
void glVertexAttribL1ui64vNV(int index, Pointer<Uint64>? v) {
  final _glVertexAttribL1ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint64>? v),
      void Function(int index, Pointer<Uint64>? v)>('glVertexAttribL1ui64vNV');
  return _glVertexAttribL1ui64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL2ui64vNV (GLuint index, const GLuint64EXT *v)
/// ```
void glVertexAttribL2ui64vNV(int index, Pointer<Uint64>? v) {
  final _glVertexAttribL2ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint64>? v),
      void Function(int index, Pointer<Uint64>? v)>('glVertexAttribL2ui64vNV');
  return _glVertexAttribL2ui64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL3ui64vNV (GLuint index, const GLuint64EXT *v)
/// ```
void glVertexAttribL3ui64vNV(int index, Pointer<Uint64>? v) {
  final _glVertexAttribL3ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint64>? v),
      void Function(int index, Pointer<Uint64>? v)>('glVertexAttribL3ui64vNV');
  return _glVertexAttribL3ui64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribL4ui64vNV (GLuint index, const GLuint64EXT *v)
/// ```
void glVertexAttribL4ui64vNV(int index, Pointer<Uint64>? v) {
  final _glVertexAttribL4ui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Pointer<Uint64>? v),
      void Function(int index, Pointer<Uint64>? v)>('glVertexAttribL4ui64vNV');
  return _glVertexAttribL4ui64vNV(index, v);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribLi64vNV (GLuint index, GLenum pname, GLint64EXT *params)
/// ```
void glGetVertexAttribLi64vNV(int index, int pname, Pointer<Int64>? params) {
  final _glGetVertexAttribLi64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Int64>? params),
      void Function(int index, int pname, Pointer<Int64>? params)>('glGetVertexAttribLi64vNV');
  return _glGetVertexAttribLi64vNV(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glGetVertexAttribLui64vNV (GLuint index, GLenum pname, GLuint64EXT *params)
/// ```
void glGetVertexAttribLui64vNV(int index, int pname, Pointer<Uint64>? params) {
  final _glGetVertexAttribLui64vNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Uint32 pname, Pointer<Uint64>? params),
      void Function(int index, int pname, Pointer<Uint64>? params)>('glGetVertexAttribLui64vNV');
  return _glGetVertexAttribLui64vNV(index, pname, params);
}

/// ```c
/// GLAPI void APIENTRY glVertexAttribLFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride)
/// ```
void glVertexAttribLFormatNV(int index, int size, int type, int stride) {
  final _glVertexAttribLFormatNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 index, Int32 size, Uint32 type, Uint32 stride),
      void Function(int index, int size, int type, int stride)>('glVertexAttribLFormatNV');
  return _glVertexAttribLFormatNV(index, size, type, stride);
}

/// ```c
/// GLAPI void APIENTRY glGenNamesAMD (GLenum identifier, GLuint num, GLuint *names)
/// ```
void glGenNamesAMD(int identifier, int num, Pointer<Uint32>? names) {
  final _glGenNamesAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 identifier, Uint32 num, Pointer<Uint32>? names),
      void Function(int identifier, int num, Pointer<Uint32>? names)>('glGenNamesAMD');
  return _glGenNamesAMD(identifier, num, names);
}

/// ```c
/// GLAPI void APIENTRY glDeleteNamesAMD (GLenum identifier, GLuint num, const GLuint *names)
/// ```
void glDeleteNamesAMD(int identifier, int num, Pointer<Uint32>? names) {
  final _glDeleteNamesAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 identifier, Uint32 num, Pointer<Uint32>? names),
      void Function(int identifier, int num, Pointer<Uint32>? names)>('glDeleteNamesAMD');
  return _glDeleteNamesAMD(identifier, num, names);
}

/// ```c
/// GLAPI GLboolean APIENTRY glIsNameAMD (GLenum identifier, GLuint name)
/// ```
int glIsNameAMD(int identifier, int name) {
  final _glIsNameAMD = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 identifier, Uint32 name),
      int Function(int identifier, int name)>('glIsNameAMD');
  return _glIsNameAMD(identifier, name);
}

/// ```c
/// GLAPI void APIENTRY glDebugMessageEnableAMD (GLenum category, GLenum severity, GLsizei count, const GLuint *ids, GLboolean enabled)
/// ```
void glDebugMessageEnableAMD(int category, int severity, int count, Pointer<Uint32>? ids, int enabled) {
  final _glDebugMessageEnableAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 category, Uint32 severity, Uint32 count, Pointer<Uint32>? ids, Int32 enabled),
      void Function(int category, int severity, int count, Pointer<Uint32>? ids, int enabled)>('glDebugMessageEnableAMD');
  return _glDebugMessageEnableAMD(category, severity, count, ids, enabled);
}

/// ```c
/// GLAPI void APIENTRY glDebugMessageInsertAMD (GLenum category, GLenum severity, GLuint id, GLsizei length, const GLchar *buf)
/// ```
void glDebugMessageInsertAMD(int category, int severity, int id, int length, String buf) {
  final _glDebugMessageInsertAMD = DLL_SDL2.lookupFunction<
      Void Function(Uint32 category, Uint32 severity, Uint32 id, Uint32 length, Pointer<Utf8>? buf),
      void Function(int category, int severity, int id, int length, Pointer<Utf8>? buf)>('glDebugMessageInsertAMD');
  final _bufPointer = buf.toNativeUtf8();
  final _result = _glDebugMessageInsertAMD(category, severity, id, length, _bufPointer);
  calloc.free(_bufPointer);
  return _result;
}

/// ```c
/// GLAPI void APIENTRY glDebugMessageCallbackAMD (GLDEBUGPROCAMD callback, GLvoid *userParam)
/// ```
void glDebugMessageCallbackAMD(Pointer<Void>? callback, Pointer<Void>? userParam) {
  final _glDebugMessageCallbackAMD = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? callback, Pointer<Void>? userParam),
      void Function(Pointer<Void>? callback, Pointer<Void>? userParam)>('glDebugMessageCallbackAMD');
  return _glDebugMessageCallbackAMD(callback, userParam);
}

/// ```c
/// GLAPI GLuint APIENTRY glGetDebugMessageLogAMD (GLuint count, GLsizei bufsize, GLenum *categories, GLuint *severities, GLuint *ids, GLsizei *lengths, GLchar *message)
/// ```
int glGetDebugMessageLogAMD(int count, int bufsize, Pointer<Uint32>? categories, Pointer<Uint32>? severities, Pointer<Uint32>? ids, Pointer<Uint32>? lengths, Pointer<Int8>? message) {
  final _glGetDebugMessageLogAMD = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 count, Uint32 bufsize, Pointer<Uint32>? categories, Pointer<Uint32>? severities, Pointer<Uint32>? ids, Pointer<Uint32>? lengths, Pointer<Int8>? message),
      int Function(int count, int bufsize, Pointer<Uint32>? categories, Pointer<Uint32>? severities, Pointer<Uint32>? ids, Pointer<Uint32>? lengths, Pointer<Int8>? message)>('glGetDebugMessageLogAMD');
  return _glGetDebugMessageLogAMD(count, bufsize, categories, severities, ids, lengths, message);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUInitNV (const GLvoid *vdpDevice, const GLvoid *getProcAddress)
/// ```
void glVDPAUInitNV(Pointer<Void>? vdpDevice, Pointer<Void>? getProcAddress) {
  final _glVDPAUInitNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? vdpDevice, Pointer<Void>? getProcAddress),
      void Function(Pointer<Void>? vdpDevice, Pointer<Void>? getProcAddress)>('glVDPAUInitNV');
  return _glVDPAUInitNV(vdpDevice, getProcAddress);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUFiniNV (void)
/// ```
void glVDPAUFiniNV() {
  final _glVDPAUFiniNV = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('glVDPAUFiniNV');
  return _glVDPAUFiniNV();
}

/// ```c
/// GLAPI GLvdpauSurfaceNV APIENTRY glVDPAURegisterVideoSurfaceNV (GLvoid *vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames)
/// ```
Pointer<Void>? glVDPAURegisterVideoSurfaceNV(Pointer<Void>? vdpSurface, int target, int numTextureNames, Pointer<Uint32>? textureNames) {
  final _glVDPAURegisterVideoSurfaceNV = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? vdpSurface, Uint32 target, Uint32 numTextureNames, Pointer<Uint32>? textureNames),
      Pointer<Void>? Function(Pointer<Void>? vdpSurface, int target, int numTextureNames, Pointer<Uint32>? textureNames)>('glVDPAURegisterVideoSurfaceNV');
  return _glVDPAURegisterVideoSurfaceNV(vdpSurface, target, numTextureNames, textureNames);
}

/// ```c
/// GLAPI GLvdpauSurfaceNV APIENTRY glVDPAURegisterOutputSurfaceNV (GLvoid *vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames)
/// ```
Pointer<Void>? glVDPAURegisterOutputSurfaceNV(Pointer<Void>? vdpSurface, int target, int numTextureNames, Pointer<Uint32>? textureNames) {
  final _glVDPAURegisterOutputSurfaceNV = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? vdpSurface, Uint32 target, Uint32 numTextureNames, Pointer<Uint32>? textureNames),
      Pointer<Void>? Function(Pointer<Void>? vdpSurface, int target, int numTextureNames, Pointer<Uint32>? textureNames)>('glVDPAURegisterOutputSurfaceNV');
  return _glVDPAURegisterOutputSurfaceNV(vdpSurface, target, numTextureNames, textureNames);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUIsSurfaceNV (GLvdpauSurfaceNV surface)
/// ```
void glVDPAUIsSurfaceNV(Pointer<Void>? surface) {
  final _glVDPAUIsSurfaceNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? surface),
      void Function(Pointer<Void>? surface)>('glVDPAUIsSurfaceNV');
  return _glVDPAUIsSurfaceNV(surface);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUUnregisterSurfaceNV (GLvdpauSurfaceNV surface)
/// ```
void glVDPAUUnregisterSurfaceNV(Pointer<Void>? surface) {
  final _glVDPAUUnregisterSurfaceNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? surface),
      void Function(Pointer<Void>? surface)>('glVDPAUUnregisterSurfaceNV');
  return _glVDPAUUnregisterSurfaceNV(surface);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUGetSurfaceivNV (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei *length, GLint *values)
/// ```
void glVDPAUGetSurfaceivNV(Pointer<Void>? surface, int pname, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? values) {
  final _glVDPAUGetSurfaceivNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? surface, Uint32 pname, Uint32 bufSize, Pointer<Uint32>? length, Pointer<Int32>? values),
      void Function(Pointer<Void>? surface, int pname, int bufSize, Pointer<Uint32>? length, Pointer<Int32>? values)>('glVDPAUGetSurfaceivNV');
  return _glVDPAUGetSurfaceivNV(surface, pname, bufSize, length, values);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUSurfaceAccessNV (GLvdpauSurfaceNV surface, GLenum access)
/// ```
void glVDPAUSurfaceAccessNV(Pointer<Void>? surface, int access) {
  final _glVDPAUSurfaceAccessNV = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? surface, Uint32 access),
      void Function(Pointer<Void>? surface, int access)>('glVDPAUSurfaceAccessNV');
  return _glVDPAUSurfaceAccessNV(surface, access);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUMapSurfacesNV (GLsizei numSurfaces, const GLvdpauSurfaceNV *surfaces)
/// ```
void glVDPAUMapSurfacesNV(int numSurfaces, Pointer<Pointer<Void>>? surfaces) {
  final _glVDPAUMapSurfacesNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 numSurfaces, Pointer<Pointer<Void>>? surfaces),
      void Function(int numSurfaces, Pointer<Pointer<Void>>? surfaces)>('glVDPAUMapSurfacesNV');
  return _glVDPAUMapSurfacesNV(numSurfaces, surfaces);
}

/// ```c
/// GLAPI void APIENTRY glVDPAUUnmapSurfacesNV (GLsizei numSurface, const GLvdpauSurfaceNV *surfaces)
/// ```
void glVDPAUUnmapSurfacesNV(int numSurface, Pointer<Pointer<Void>>? surfaces) {
  final _glVDPAUUnmapSurfacesNV = DLL_SDL2.lookupFunction<
      Void Function(Uint32 numSurface, Pointer<Pointer<Void>>? surfaces),
      void Function(int numSurface, Pointer<Pointer<Void>>? surfaces)>('glVDPAUUnmapSurfacesNV');
  return _glVDPAUUnmapSurfacesNV(numSurface, surfaces);
}

