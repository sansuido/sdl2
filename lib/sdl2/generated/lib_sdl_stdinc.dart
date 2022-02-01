// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_malloc(size_t size)
/// ```
Pointer<Void>? SDL_malloc(int size) {
  final _SDL_malloc = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 size),
      Pointer<Void>? Function(int size)>('SDL_malloc');
  return _SDL_malloc(size);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_calloc(size_t nmemb, size_t size)
/// ```
Pointer<Void>? SDL_calloc(int nmemb, int size) {
  final _SDL_calloc = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Uint32 nmemb, Uint32 size),
      Pointer<Void>? Function(int nmemb, int size)>('SDL_calloc');
  return _SDL_calloc(nmemb, size);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_realloc(void *mem, size_t size)
/// ```
Pointer<Void>? SDL_realloc(Pointer<Void>? mem, int size) {
  final _SDL_realloc = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? mem, Uint32 size),
      Pointer<Void>? Function(Pointer<Void>? mem, int size)>('SDL_realloc');
  return _SDL_realloc(mem, size);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_free(void *mem)
/// ```
void SDL_free(Pointer<Void>? mem) {
  final _SDL_free = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? mem),
      void Function(Pointer<Void>? mem)>('SDL_free');
  return _SDL_free(mem);
}

/// 
/// Get the current set of SDL memory functions
/// 
/// \since This function is available since SDL 2.0.7.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_GetMemoryFunctions(SDL_malloc_func *malloc_func, SDL_calloc_func *calloc_func, SDL_realloc_func *realloc_func, SDL_free_func *free_func)
/// ```
void SDL_GetMemoryFunctions(Pointer<Pointer<Void>>? malloc_func, Pointer<Pointer<Void>>? calloc_func, Pointer<Pointer<Void>>? realloc_func, Pointer<Pointer<Void>>? free_func) {
  final _SDL_GetMemoryFunctions = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Pointer<Void>>? malloc_func, Pointer<Pointer<Void>>? calloc_func, Pointer<Pointer<Void>>? realloc_func, Pointer<Pointer<Void>>? free_func),
      void Function(Pointer<Pointer<Void>>? malloc_func, Pointer<Pointer<Void>>? calloc_func, Pointer<Pointer<Void>>? realloc_func, Pointer<Pointer<Void>>? free_func)>('SDL_GetMemoryFunctions');
  return _SDL_GetMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func);
}

/// 
/// Replace SDL's memory allocation functions with a custom set
/// 
/// \since This function is available since SDL 2.0.7.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SetMemoryFunctions(SDL_malloc_func malloc_func, SDL_calloc_func calloc_func, SDL_realloc_func realloc_func, SDL_free_func free_func)
/// ```
int SDL_SetMemoryFunctions(Pointer<Void>? malloc_func, Pointer<Void>? calloc_func, Pointer<Void>? realloc_func, Pointer<Void>? free_func) {
  final _SDL_SetMemoryFunctions = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? malloc_func, Pointer<Void>? calloc_func, Pointer<Void>? realloc_func, Pointer<Void>? free_func),
      int Function(Pointer<Void>? malloc_func, Pointer<Void>? calloc_func, Pointer<Void>? realloc_func, Pointer<Void>? free_func)>('SDL_SetMemoryFunctions');
  return _SDL_SetMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func);
}

/// 
/// Get the number of outstanding (unfreed) allocations
/// 
/// \since This function is available since SDL 2.0.7.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_GetNumAllocations(void)
/// ```
int SDL_GetNumAllocations() {
  final _SDL_GetNumAllocations = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_GetNumAllocations');
  return _SDL_GetNumAllocations();
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_getenv(const char *name)
/// ```
Pointer<Int8>? SDL_getenv(String name) {
  final _SDL_getenv = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? name),
      Pointer<Int8>? Function(Pointer<Utf8>? name)>('SDL_getenv');
  final _namePointer = name.toNativeUtf8();
  final _result = _SDL_getenv(_namePointer);
  calloc.free(_namePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_setenv(const char *name, const char *value, int overwrite)
/// ```
int SDL_setenv(String name, String value, int overwrite) {
  final _SDL_setenv = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? name, Pointer<Utf8>? value, Int32 overwrite),
      int Function(Pointer<Utf8>? name, Pointer<Utf8>? value, int overwrite)>('SDL_setenv');
  final _namePointer = name.toNativeUtf8();
  final _valuePointer = value.toNativeUtf8();
  final _result = _SDL_setenv(_namePointer, _valuePointer, overwrite);
  calloc.free(_namePointer);
  calloc.free(_valuePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_qsort(void *base, size_t nmemb, size_t size, int (*compare) (const void *, const void *))
/// ```
void SDL_qsort(Pointer<Void>? base, int nmemb, int size, Pointer<Void>? compare) {
  final _SDL_qsort = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? base, Uint32 nmemb, Uint32 size, Pointer<Void>? compare),
      void Function(Pointer<Void>? base, int nmemb, int size, Pointer<Void>? compare)>('SDL_qsort');
  return _SDL_qsort(base, nmemb, size, compare);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_abs(int x)
/// ```
int SDL_abs(int x) {
  final _SDL_abs = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_abs');
  return _SDL_abs(x);
}

/// NOTE: these double-evaluate their arguments, so you should never have side effects in the parameters
/// ```c
/// extern DECLSPEC int SDLCALL SDL_isalpha(int x)
/// ```
int SDL_isalpha(int x) {
  final _SDL_isalpha = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isalpha');
  return _SDL_isalpha(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isalnum(int x)
/// ```
int SDL_isalnum(int x) {
  final _SDL_isalnum = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isalnum');
  return _SDL_isalnum(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isblank(int x)
/// ```
int SDL_isblank(int x) {
  final _SDL_isblank = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isblank');
  return _SDL_isblank(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_iscntrl(int x)
/// ```
int SDL_iscntrl(int x) {
  final _SDL_iscntrl = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_iscntrl');
  return _SDL_iscntrl(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isdigit(int x)
/// ```
int SDL_isdigit(int x) {
  final _SDL_isdigit = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isdigit');
  return _SDL_isdigit(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isxdigit(int x)
/// ```
int SDL_isxdigit(int x) {
  final _SDL_isxdigit = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isxdigit');
  return _SDL_isxdigit(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_ispunct(int x)
/// ```
int SDL_ispunct(int x) {
  final _SDL_ispunct = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_ispunct');
  return _SDL_ispunct(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isspace(int x)
/// ```
int SDL_isspace(int x) {
  final _SDL_isspace = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isspace');
  return _SDL_isspace(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isupper(int x)
/// ```
int SDL_isupper(int x) {
  final _SDL_isupper = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isupper');
  return _SDL_isupper(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_islower(int x)
/// ```
int SDL_islower(int x) {
  final _SDL_islower = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_islower');
  return _SDL_islower(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isprint(int x)
/// ```
int SDL_isprint(int x) {
  final _SDL_isprint = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isprint');
  return _SDL_isprint(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_isgraph(int x)
/// ```
int SDL_isgraph(int x) {
  final _SDL_isgraph = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isgraph');
  return _SDL_isgraph(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_toupper(int x)
/// ```
int SDL_toupper(int x) {
  final _SDL_toupper = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_toupper');
  return _SDL_toupper(x);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_tolower(int x)
/// ```
int SDL_tolower(int x) {
  final _SDL_tolower = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_tolower');
  return _SDL_tolower(x);
}

/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_crc32(Uint32 crc, const void *data, size_t len)
/// ```
int SDL_crc32(int crc, Pointer<Void>? data, int len) {
  final _SDL_crc32 = DLL_SDL2.lookupFunction<
      Uint32 Function(Uint32 crc, Pointer<Void>? data, Uint32 len),
      int Function(int crc, Pointer<Void>? data, int len)>('SDL_crc32');
  return _SDL_crc32(crc, data, len);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memset(SDL_OUT_BYTECAP(len) void *dst, int c, size_t len)
/// ```
Pointer<Void>? SDL_memset(Pointer<Void>? arg0, int c, int len) {
  final _SDL_memset = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? arg0, Int32 c, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? arg0, int c, int len)>('SDL_memset');
  return _SDL_memset(arg0, c, len);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memcpy(SDL_OUT_BYTECAP(len) void *dst, SDL_IN_BYTECAP(len) const void *src, size_t len)
/// ```
Pointer<Void>? SDL_memcpy(Pointer<Void>? arg0, Pointer<Void>? arg1, int len) {
  final _SDL_memcpy = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? arg0, Pointer<Void>? arg1, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? arg0, Pointer<Void>? arg1, int len)>('SDL_memcpy');
  return _SDL_memcpy(arg0, arg1, len);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memmove(SDL_OUT_BYTECAP(len) void *dst, SDL_IN_BYTECAP(len) const void *src, size_t len)
/// ```
Pointer<Void>? SDL_memmove(Pointer<Void>? arg0, Pointer<Void>? arg1, int len) {
  final _SDL_memmove = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? arg0, Pointer<Void>? arg1, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? arg0, Pointer<Void>? arg1, int len)>('SDL_memmove');
  return _SDL_memmove(arg0, arg1, len);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_memcmp(const void *s1, const void *s2, size_t len)
/// ```
int SDL_memcmp(Pointer<Void>? s1, Pointer<Void>? s2, int len) {
  final _SDL_memcmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? s1, Pointer<Void>? s2, Uint32 len),
      int Function(Pointer<Void>? s1, Pointer<Void>? s2, int len)>('SDL_memcmp');
  return _SDL_memcmp(s1, s2, len);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslen(const wchar_t *wstr)
/// ```
int SDL_wcslen(Pointer<Int16>? wstr) {
  final _SDL_wcslen = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16>? wstr),
      int Function(Pointer<Int16>? wstr)>('SDL_wcslen');
  return _SDL_wcslen(wstr);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslcpy(SDL_OUT_Z_CAP(maxlen) wchar_t *dst, const wchar_t *src, size_t maxlen)
/// ```
int SDL_wcslcpy(Pointer<Void>? arg0, Pointer<Int16>? src, int maxlen) {
  final _SDL_wcslcpy = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? arg0, Pointer<Int16>? src, Uint32 maxlen),
      int Function(Pointer<Void>? arg0, Pointer<Int16>? src, int maxlen)>('SDL_wcslcpy');
  return _SDL_wcslcpy(arg0, src, maxlen);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslcat(SDL_INOUT_Z_CAP(maxlen) wchar_t *dst, const wchar_t *src, size_t maxlen)
/// ```
int SDL_wcslcat(Pointer<Void>? arg0, Pointer<Int16>? src, int maxlen) {
  final _SDL_wcslcat = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? arg0, Pointer<Int16>? src, Uint32 maxlen),
      int Function(Pointer<Void>? arg0, Pointer<Int16>? src, int maxlen)>('SDL_wcslcat');
  return _SDL_wcslcat(arg0, src, maxlen);
}

/// ```c
/// extern DECLSPEC wchar_t *SDLCALL SDL_wcsdup(const wchar_t *wstr)
/// ```
Pointer<Int16>? SDL_wcsdup(Pointer<Int16>? wstr) {
  final _SDL_wcsdup = DLL_SDL2.lookupFunction<
      Pointer<Int16>? Function(Pointer<Int16>? wstr),
      Pointer<Int16>? Function(Pointer<Int16>? wstr)>('SDL_wcsdup');
  return _SDL_wcsdup(wstr);
}

/// ```c
/// extern DECLSPEC wchar_t *SDLCALL SDL_wcsstr(const wchar_t *haystack, const wchar_t *needle)
/// ```
Pointer<Int16>? SDL_wcsstr(Pointer<Int16>? haystack, Pointer<Int16>? needle) {
  final _SDL_wcsstr = DLL_SDL2.lookupFunction<
      Pointer<Int16>? Function(Pointer<Int16>? haystack, Pointer<Int16>? needle),
      Pointer<Int16>? Function(Pointer<Int16>? haystack, Pointer<Int16>? needle)>('SDL_wcsstr');
  return _SDL_wcsstr(haystack, needle);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_wcscmp(const wchar_t *str1, const wchar_t *str2)
/// ```
int SDL_wcscmp(Pointer<Int16>? str1, Pointer<Int16>? str2) {
  final _SDL_wcscmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int16>? str1, Pointer<Int16>? str2),
      int Function(Pointer<Int16>? str1, Pointer<Int16>? str2)>('SDL_wcscmp');
  return _SDL_wcscmp(str1, str2);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_wcsncmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen)
/// ```
int SDL_wcsncmp(Pointer<Int16>? str1, Pointer<Int16>? str2, int maxlen) {
  final _SDL_wcsncmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int16>? str1, Pointer<Int16>? str2, Uint32 maxlen),
      int Function(Pointer<Int16>? str1, Pointer<Int16>? str2, int maxlen)>('SDL_wcsncmp');
  return _SDL_wcsncmp(str1, str2, maxlen);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_wcscasecmp(const wchar_t *str1, const wchar_t *str2)
/// ```
int SDL_wcscasecmp(Pointer<Int16>? str1, Pointer<Int16>? str2) {
  final _SDL_wcscasecmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int16>? str1, Pointer<Int16>? str2),
      int Function(Pointer<Int16>? str1, Pointer<Int16>? str2)>('SDL_wcscasecmp');
  return _SDL_wcscasecmp(str1, str2);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_wcsncasecmp(const wchar_t *str1, const wchar_t *str2, size_t len)
/// ```
int SDL_wcsncasecmp(Pointer<Int16>? str1, Pointer<Int16>? str2, int len) {
  final _SDL_wcsncasecmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int16>? str1, Pointer<Int16>? str2, Uint32 len),
      int Function(Pointer<Int16>? str1, Pointer<Int16>? str2, int len)>('SDL_wcsncasecmp');
  return _SDL_wcsncasecmp(str1, str2, len);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlen(const char *str)
/// ```
int SDL_strlen(String str) {
  final _SDL_strlen = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8>? str),
      int Function(Pointer<Utf8>? str)>('SDL_strlen');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strlen(_strPointer);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlcpy(SDL_OUT_Z_CAP(maxlen) char *dst, const char *src, size_t maxlen)
/// ```
int SDL_strlcpy(Pointer<Void>? arg0, String src, int maxlen) {
  final _SDL_strlcpy = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? arg0, Pointer<Utf8>? src, Uint32 maxlen),
      int Function(Pointer<Void>? arg0, Pointer<Utf8>? src, int maxlen)>('SDL_strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcpy(arg0, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_utf8strlcpy(SDL_OUT_Z_CAP(dst_bytes) char *dst, const char *src, size_t dst_bytes)
/// ```
int SDL_utf8strlcpy(Pointer<Void>? arg0, String src, int dst_bytes) {
  final _SDL_utf8strlcpy = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? arg0, Pointer<Utf8>? src, Uint32 dst_bytes),
      int Function(Pointer<Void>? arg0, Pointer<Utf8>? src, int dst_bytes)>('SDL_utf8strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_utf8strlcpy(arg0, _srcPointer, dst_bytes);
  calloc.free(_srcPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlcat(SDL_INOUT_Z_CAP(maxlen) char *dst, const char *src, size_t maxlen)
/// ```
int SDL_strlcat(Pointer<Void>? arg0, String src, int maxlen) {
  final _SDL_strlcat = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? arg0, Pointer<Utf8>? src, Uint32 maxlen),
      int Function(Pointer<Void>? arg0, Pointer<Utf8>? src, int maxlen)>('SDL_strlcat');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcat(arg0, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strdup(const char *str)
/// ```
Pointer<Int8>? SDL_strdup(String str) {
  final _SDL_strdup = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? str),
      Pointer<Int8>? Function(Pointer<Utf8>? str)>('SDL_strdup');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strdup(_strPointer);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strrev(char *str)
/// ```
Pointer<Int8>? SDL_strrev(Pointer<Int8>? str) {
  final _SDL_strrev = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? str),
      Pointer<Int8>? Function(Pointer<Int8>? str)>('SDL_strrev');
  return _SDL_strrev(str);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strupr(char *str)
/// ```
Pointer<Int8>? SDL_strupr(Pointer<Int8>? str) {
  final _SDL_strupr = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? str),
      Pointer<Int8>? Function(Pointer<Int8>? str)>('SDL_strupr');
  return _SDL_strupr(str);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strlwr(char *str)
/// ```
Pointer<Int8>? SDL_strlwr(Pointer<Int8>? str) {
  final _SDL_strlwr = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? str),
      Pointer<Int8>? Function(Pointer<Int8>? str)>('SDL_strlwr');
  return _SDL_strlwr(str);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strchr(const char *str, int c)
/// ```
Pointer<Int8>? SDL_strchr(String str, int c) {
  final _SDL_strchr = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? str, Int32 c),
      Pointer<Int8>? Function(Pointer<Utf8>? str, int c)>('SDL_strchr');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strchr(_strPointer, c);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strrchr(const char *str, int c)
/// ```
Pointer<Int8>? SDL_strrchr(String str, int c) {
  final _SDL_strrchr = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? str, Int32 c),
      Pointer<Int8>? Function(Pointer<Utf8>? str, int c)>('SDL_strrchr');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strrchr(_strPointer, c);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strstr(const char *haystack, const char *needle)
/// ```
Pointer<Int8>? SDL_strstr(String haystack, String needle) {
  final _SDL_strstr = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? haystack, Pointer<Utf8>? needle),
      Pointer<Int8>? Function(Pointer<Utf8>? haystack, Pointer<Utf8>? needle)>('SDL_strstr');
  final _haystackPointer = haystack.toNativeUtf8();
  final _needlePointer = needle.toNativeUtf8();
  final _result = _SDL_strstr(_haystackPointer, _needlePointer);
  calloc.free(_haystackPointer);
  calloc.free(_needlePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_strtokr(char *s1, const char *s2, char **saveptr)
/// ```
Pointer<Int8>? SDL_strtokr(Pointer<Int8>? s1, String s2, Pointer<Pointer<Int8>>? saveptr) {
  final _SDL_strtokr = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Int8>? s1, Pointer<Utf8>? s2, Pointer<Pointer<Int8>>? saveptr),
      Pointer<Int8>? Function(Pointer<Int8>? s1, Pointer<Utf8>? s2, Pointer<Pointer<Int8>>? saveptr)>('SDL_strtokr');
  final _s2Pointer = s2.toNativeUtf8();
  final _result = _SDL_strtokr(s1, _s2Pointer, saveptr);
  calloc.free(_s2Pointer);
  return _result;
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_utf8strlen(const char *str)
/// ```
int SDL_utf8strlen(String str) {
  final _SDL_utf8strlen = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8>? str),
      int Function(Pointer<Utf8>? str)>('SDL_utf8strlen');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_utf8strlen(_strPointer);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_itoa(int value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_itoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_itoa = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Int32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_itoa');
  return _SDL_itoa(value, str, radix);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_uitoa(unsigned int value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_uitoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_uitoa = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Uint32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_uitoa');
  return _SDL_uitoa(value, str, radix);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_ltoa(long value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_ltoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_ltoa = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Int32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_ltoa');
  return _SDL_ltoa(value, str, radix);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_ultoa(unsigned long value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_ultoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_ultoa = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Uint32 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_ultoa');
  return _SDL_ultoa(value, str, radix);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_lltoa(Sint64 value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_lltoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_lltoa = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Int64 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_lltoa');
  return _SDL_lltoa(value, str, radix);
}

/// ```c
/// extern DECLSPEC char *SDLCALL SDL_ulltoa(Uint64 value, char *str, int radix)
/// ```
Pointer<Int8>? SDL_ulltoa(int value, Pointer<Int8>? str, int radix) {
  final _SDL_ulltoa = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Uint64 value, Pointer<Int8>? str, Int32 radix),
      Pointer<Int8>? Function(int value, Pointer<Int8>? str, int radix)>('SDL_ulltoa');
  return _SDL_ulltoa(value, str, radix);
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_atoi(const char *str)
/// ```
int SDL_atoi(String str) {
  final _SDL_atoi = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str),
      int Function(Pointer<Utf8>? str)>('SDL_atoi');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_atoi(_strPointer);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_atof(const char *str)
/// ```
double SDL_atof(String str) {
  final _SDL_atof = DLL_SDL2.lookupFunction<
      Double Function(Pointer<Utf8>? str),
      double Function(Pointer<Utf8>? str)>('SDL_atof');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_atof(_strPointer);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC long SDLCALL SDL_strtol(const char *str, char **endp, int base)
/// ```
int SDL_strtol(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtol = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtol');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtol(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC unsigned long SDLCALL SDL_strtoul(const char *str, char **endp, int base)
/// ```
int SDL_strtoul(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtoul = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtoul');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoul(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC Sint64 SDLCALL SDL_strtoll(const char *str, char **endp, int base)
/// ```
int SDL_strtoll(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtoll = DLL_SDL2.lookupFunction<
      Int64 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtoll');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoll(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_strtoull(const char *str, char **endp, int base)
/// ```
int SDL_strtoull(String str, Pointer<Pointer<Int8>>? endp, int base) {
  final _SDL_strtoull = DLL_SDL2.lookupFunction<
      Uint64 Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, Int32 base),
      int Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp, int base)>('SDL_strtoull');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtoull(_strPointer, endp, base);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_strtod(const char *str, char **endp)
/// ```
double SDL_strtod(String str, Pointer<Pointer<Int8>>? endp) {
  final _SDL_strtod = DLL_SDL2.lookupFunction<
      Double Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp),
      double Function(Pointer<Utf8>? str, Pointer<Pointer<Int8>>? endp)>('SDL_strtod');
  final _strPointer = str.toNativeUtf8();
  final _result = _SDL_strtod(_strPointer, endp);
  calloc.free(_strPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_strcmp(const char *str1, const char *str2)
/// ```
int SDL_strcmp(String str1, String str2) {
  final _SDL_strcmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2)>('SDL_strcmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strcmp(_str1Pointer, _str2Pointer);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_strncmp(const char *str1, const char *str2, size_t maxlen)
/// ```
int SDL_strncmp(String str1, String str2, int maxlen) {
  final _SDL_strncmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, Uint32 maxlen),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, int maxlen)>('SDL_strncmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strncmp(_str1Pointer, _str2Pointer, maxlen);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_strcasecmp(const char *str1, const char *str2)
/// ```
int SDL_strcasecmp(String str1, String str2) {
  final _SDL_strcasecmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2)>('SDL_strcasecmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strcasecmp(_str1Pointer, _str2Pointer);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_strncasecmp(const char *str1, const char *str2, size_t len)
/// ```
int SDL_strncasecmp(String str1, String str2, int len) {
  final _SDL_strncasecmp = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, Uint32 len),
      int Function(Pointer<Utf8>? str1, Pointer<Utf8>? str2, int len)>('SDL_strncasecmp');
  final _str1Pointer = str1.toNativeUtf8();
  final _str2Pointer = str2.toNativeUtf8();
  final _result = _SDL_strncasecmp(_str1Pointer, _str2Pointer, len);
  calloc.free(_str1Pointer);
  calloc.free(_str2Pointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_sscanf(const char *text, SDL_SCANF_FORMAT_STRING const char *fmt, ...) SDL_SCANF_VARARG_FUNC(2)
/// ```
int SDL_sscanf(String text, String fmt, Pointer<Void>? arg2) {
  final _SDL_sscanf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? text, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      int Function(Pointer<Utf8>? text, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_sscanf');
  final _textPointer = text.toNativeUtf8();
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_sscanf(_textPointer, _fmtPointer, arg2);
  calloc.free(_textPointer);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_vsscanf(const char *text, const char *fmt, va_list ap)
/// ```
int SDL_vsscanf(String text, String fmt, Pointer<Void>? ap) {
  final _SDL_vsscanf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Utf8>? text, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      int Function(Pointer<Utf8>? text, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_vsscanf');
  final _textPointer = text.toNativeUtf8();
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_vsscanf(_textPointer, _fmtPointer, ap);
  calloc.free(_textPointer);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_snprintf(SDL_OUT_Z_CAP(maxlen) char *text, size_t maxlen, SDL_PRINTF_FORMAT_STRING const char *fmt, ... ) SDL_PRINTF_VARARG_FUNC(3)
/// ```
int SDL_snprintf(Pointer<Void>? arg0, int maxlen, String fmt, Pointer<Void>? arg3) {
  final _SDL_snprintf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? arg0, Uint32 maxlen, Pointer<Utf8>? fmt, Pointer<Void>? arg3),
      int Function(Pointer<Void>? arg0, int maxlen, Pointer<Utf8>? fmt, Pointer<Void>? arg3)>('SDL_snprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_snprintf(arg0, maxlen, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_vsnprintf(SDL_OUT_Z_CAP(maxlen) char *text, size_t maxlen, const char *fmt, va_list ap)
/// ```
int SDL_vsnprintf(Pointer<Void>? arg0, int maxlen, String fmt, Pointer<Void>? ap) {
  final _SDL_vsnprintf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? arg0, Uint32 maxlen, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      int Function(Pointer<Void>? arg0, int maxlen, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_vsnprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_vsnprintf(arg0, maxlen, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_asprintf(char **strp, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2)
/// ```
int SDL_asprintf(Pointer<Pointer<Int8>>? strp, String fmt, Pointer<Void>? arg2) {
  final _SDL_asprintf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Int8>>? strp, Pointer<Utf8>? fmt, Pointer<Void>? arg2),
      int Function(Pointer<Pointer<Int8>>? strp, Pointer<Utf8>? fmt, Pointer<Void>? arg2)>('SDL_asprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_asprintf(strp, _fmtPointer, arg2);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_vasprintf(char **strp, const char *fmt, va_list ap)
/// ```
int SDL_vasprintf(Pointer<Pointer<Int8>>? strp, String fmt, Pointer<Void>? ap) {
  final _SDL_vasprintf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Int8>>? strp, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      int Function(Pointer<Pointer<Int8>>? strp, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_vasprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_vasprintf(strp, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
}

/// 
/// Use this function to compute arc cosine of `x`.
/// 
/// The definition of `y = acos(x)` is `x = cos(y)`.
/// 
/// Domain: `-1 <= x <= 1`
/// 
/// Range: `0 <= y <= Pi`
/// 
/// \param x floating point value, in radians.
/// \returns arc cosine of `x`.
/// 
/// \since This function is available since SDL 2.0.2.
/// 
/// ```c
/// extern DECLSPEC double SDLCALL SDL_acos(double x)
/// ```
double SDL_acos(double x) {
  final _SDL_acos = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_acos');
  return _SDL_acos(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_acosf(float x)
/// ```
double SDL_acosf(double x) {
  final _SDL_acosf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_acosf');
  return _SDL_acosf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_asin(double x)
/// ```
double SDL_asin(double x) {
  final _SDL_asin = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_asin');
  return _SDL_asin(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_asinf(float x)
/// ```
double SDL_asinf(double x) {
  final _SDL_asinf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_asinf');
  return _SDL_asinf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_atan(double x)
/// ```
double SDL_atan(double x) {
  final _SDL_atan = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_atan');
  return _SDL_atan(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_atanf(float x)
/// ```
double SDL_atanf(double x) {
  final _SDL_atanf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_atanf');
  return _SDL_atanf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_atan2(double y, double x)
/// ```
double SDL_atan2(double y, double x) {
  final _SDL_atan2 = DLL_SDL2.lookupFunction<
      Double Function(Double y, Double x),
      double Function(double y, double x)>('SDL_atan2');
  return _SDL_atan2(y, x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_atan2f(float y, float x)
/// ```
double SDL_atan2f(double y, double x) {
  final _SDL_atan2f = DLL_SDL2.lookupFunction<
      Float Function(Float y, Float x),
      double Function(double y, double x)>('SDL_atan2f');
  return _SDL_atan2f(y, x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_ceil(double x)
/// ```
double SDL_ceil(double x) {
  final _SDL_ceil = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_ceil');
  return _SDL_ceil(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_ceilf(float x)
/// ```
double SDL_ceilf(double x) {
  final _SDL_ceilf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_ceilf');
  return _SDL_ceilf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_copysign(double x, double y)
/// ```
double SDL_copysign(double x, double y) {
  final _SDL_copysign = DLL_SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_copysign');
  return _SDL_copysign(x, y);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_copysignf(float x, float y)
/// ```
double SDL_copysignf(double x, double y) {
  final _SDL_copysignf = DLL_SDL2.lookupFunction<
      Float Function(Float x, Float y),
      double Function(double x, double y)>('SDL_copysignf');
  return _SDL_copysignf(x, y);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_cos(double x)
/// ```
double SDL_cos(double x) {
  final _SDL_cos = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_cos');
  return _SDL_cos(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_cosf(float x)
/// ```
double SDL_cosf(double x) {
  final _SDL_cosf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_cosf');
  return _SDL_cosf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_exp(double x)
/// ```
double SDL_exp(double x) {
  final _SDL_exp = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_exp');
  return _SDL_exp(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_expf(float x)
/// ```
double SDL_expf(double x) {
  final _SDL_expf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_expf');
  return _SDL_expf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_fabs(double x)
/// ```
double SDL_fabs(double x) {
  final _SDL_fabs = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_fabs');
  return _SDL_fabs(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_fabsf(float x)
/// ```
double SDL_fabsf(double x) {
  final _SDL_fabsf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_fabsf');
  return _SDL_fabsf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_floor(double x)
/// ```
double SDL_floor(double x) {
  final _SDL_floor = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_floor');
  return _SDL_floor(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_floorf(float x)
/// ```
double SDL_floorf(double x) {
  final _SDL_floorf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_floorf');
  return _SDL_floorf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_trunc(double x)
/// ```
double SDL_trunc(double x) {
  final _SDL_trunc = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_trunc');
  return _SDL_trunc(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_truncf(float x)
/// ```
double SDL_truncf(double x) {
  final _SDL_truncf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_truncf');
  return _SDL_truncf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_fmod(double x, double y)
/// ```
double SDL_fmod(double x, double y) {
  final _SDL_fmod = DLL_SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_fmod');
  return _SDL_fmod(x, y);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_fmodf(float x, float y)
/// ```
double SDL_fmodf(double x, double y) {
  final _SDL_fmodf = DLL_SDL2.lookupFunction<
      Float Function(Float x, Float y),
      double Function(double x, double y)>('SDL_fmodf');
  return _SDL_fmodf(x, y);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_log(double x)
/// ```
double SDL_log(double x) {
  final _SDL_log = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_log');
  return _SDL_log(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_logf(float x)
/// ```
double SDL_logf(double x) {
  final _SDL_logf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_logf');
  return _SDL_logf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_log10(double x)
/// ```
double SDL_log10(double x) {
  final _SDL_log10 = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_log10');
  return _SDL_log10(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_log10f(float x)
/// ```
double SDL_log10f(double x) {
  final _SDL_log10f = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_log10f');
  return _SDL_log10f(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_pow(double x, double y)
/// ```
double SDL_pow(double x, double y) {
  final _SDL_pow = DLL_SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_pow');
  return _SDL_pow(x, y);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_powf(float x, float y)
/// ```
double SDL_powf(double x, double y) {
  final _SDL_powf = DLL_SDL2.lookupFunction<
      Float Function(Float x, Float y),
      double Function(double x, double y)>('SDL_powf');
  return _SDL_powf(x, y);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_round(double x)
/// ```
double SDL_round(double x) {
  final _SDL_round = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_round');
  return _SDL_round(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_roundf(float x)
/// ```
double SDL_roundf(double x) {
  final _SDL_roundf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_roundf');
  return _SDL_roundf(x);
}

/// ```c
/// extern DECLSPEC long SDLCALL SDL_lround(double x)
/// ```
int SDL_lround(double x) {
  final _SDL_lround = DLL_SDL2.lookupFunction<
      Int32 Function(Double x),
      int Function(double x)>('SDL_lround');
  return _SDL_lround(x);
}

/// ```c
/// extern DECLSPEC long SDLCALL SDL_lroundf(float x)
/// ```
int SDL_lroundf(double x) {
  final _SDL_lroundf = DLL_SDL2.lookupFunction<
      Int32 Function(Float x),
      int Function(double x)>('SDL_lroundf');
  return _SDL_lroundf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_scalbn(double x, int n)
/// ```
double SDL_scalbn(double x, int n) {
  final _SDL_scalbn = DLL_SDL2.lookupFunction<
      Double Function(Double x, Int32 n),
      double Function(double x, int n)>('SDL_scalbn');
  return _SDL_scalbn(x, n);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_scalbnf(float x, int n)
/// ```
double SDL_scalbnf(double x, int n) {
  final _SDL_scalbnf = DLL_SDL2.lookupFunction<
      Float Function(Float x, Int32 n),
      double Function(double x, int n)>('SDL_scalbnf');
  return _SDL_scalbnf(x, n);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_sin(double x)
/// ```
double SDL_sin(double x) {
  final _SDL_sin = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_sin');
  return _SDL_sin(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_sinf(float x)
/// ```
double SDL_sinf(double x) {
  final _SDL_sinf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_sinf');
  return _SDL_sinf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_sqrt(double x)
/// ```
double SDL_sqrt(double x) {
  final _SDL_sqrt = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_sqrt');
  return _SDL_sqrt(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_sqrtf(float x)
/// ```
double SDL_sqrtf(double x) {
  final _SDL_sqrtf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_sqrtf');
  return _SDL_sqrtf(x);
}

/// ```c
/// extern DECLSPEC double SDLCALL SDL_tan(double x)
/// ```
double SDL_tan(double x) {
  final _SDL_tan = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_tan');
  return _SDL_tan(x);
}

/// ```c
/// extern DECLSPEC float SDLCALL SDL_tanf(float x)
/// ```
double SDL_tanf(double x) {
  final _SDL_tanf = DLL_SDL2.lookupFunction<
      Float Function(Float x),
      double Function(double x)>('SDL_tanf');
  return _SDL_tanf(x);
}

/// ```c
/// extern DECLSPEC SDL_iconv_t SDLCALL SDL_iconv_open(const char *tocode, const char *fromcode)
/// ```
Pointer<Void>? SDL_iconv_open(String tocode, String fromcode) {
  final _SDL_iconv_open = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode),
      Pointer<Void>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode)>('SDL_iconv_open');
  final _tocodePointer = tocode.toNativeUtf8();
  final _fromcodePointer = fromcode.toNativeUtf8();
  final _result = _SDL_iconv_open(_tocodePointer, _fromcodePointer);
  calloc.free(_tocodePointer);
  calloc.free(_fromcodePointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_iconv_close(SDL_iconv_t cd)
/// ```
int SDL_iconv_close(Pointer<Void>? cd) {
  final _SDL_iconv_close = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Void>? cd),
      int Function(Pointer<Void>? cd)>('SDL_iconv_close');
  return _SDL_iconv_close(cd);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_iconv(SDL_iconv_t cd, const char **inbuf, size_t * inbytesleft, char **outbuf, size_t * outbytesleft)
/// ```
int SDL_iconv(Pointer<Void>? cd, Pointer<Pointer<Int8>>? inbuf, Pointer<Uint32>? inbytesleft, Pointer<Pointer<Int8>>? outbuf, Pointer<Uint32>? outbytesleft) {
  final _SDL_iconv = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Void>? cd, Pointer<Pointer<Int8>>? inbuf, Pointer<Uint32>? inbytesleft, Pointer<Pointer<Int8>>? outbuf, Pointer<Uint32>? outbytesleft),
      int Function(Pointer<Void>? cd, Pointer<Pointer<Int8>>? inbuf, Pointer<Uint32>? inbytesleft, Pointer<Pointer<Int8>>? outbuf, Pointer<Uint32>? outbytesleft)>('SDL_iconv');
  return _SDL_iconv(cd, inbuf, inbytesleft, outbuf, outbytesleft);
}

/// 
/// This function converts a string between encodings in one pass, returning a
/// string that must be freed with SDL_free() or NULL on error.
/// 
/// \since This function is available since SDL 2.0.0.
/// 
/// ```c
/// extern DECLSPEC char *SDLCALL SDL_iconv_string(const char *tocode, const char *fromcode, const char *inbuf, size_t inbytesleft)
/// ```
Pointer<Int8>? SDL_iconv_string(String tocode, String fromcode, String inbuf, int inbytesleft) {
  final _SDL_iconv_string = DLL_SDL2.lookupFunction<
      Pointer<Int8>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode, Pointer<Utf8>? inbuf, Uint32 inbytesleft),
      Pointer<Int8>? Function(Pointer<Utf8>? tocode, Pointer<Utf8>? fromcode, Pointer<Utf8>? inbuf, int inbytesleft)>('SDL_iconv_string');
  final _tocodePointer = tocode.toNativeUtf8();
  final _fromcodePointer = fromcode.toNativeUtf8();
  final _inbufPointer = inbuf.toNativeUtf8();
  final _result = _SDL_iconv_string(_tocodePointer, _fromcodePointer, _inbufPointer, inbytesleft);
  calloc.free(_tocodePointer);
  calloc.free(_fromcodePointer);
  calloc.free(_inbufPointer);
  return _result;
}

