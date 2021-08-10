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

/// !!! FIXME: Maybe we do forceinline functions of SDL_mini, SDL_minf, etc?
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
/// extern DECLSPEC int SDLCALL SDL_isspace(int x)
/// ```
int SDL_isspace(int x) {
  final _SDL_isspace = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 x),
      int Function(int x)>('SDL_isspace');
  return _SDL_isspace(x);
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
/// extern DECLSPEC void *SDLCALL SDL_memset(void *dst, int c, size_t len)
/// ```
Pointer<Void>? SDL_memset(Pointer<Void>? dst, int c, int len) {
  final _SDL_memset = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? dst, Int32 c, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? dst, int c, int len)>('SDL_memset');
  return _SDL_memset(dst, c, len);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memcpy(void *dst, const void *src, size_t len)
/// ```
Pointer<Void>? SDL_memcpy(Pointer<Void>? dst, Pointer<Void>? src, int len) {
  final _SDL_memcpy = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, int len)>('SDL_memcpy');
  return _SDL_memcpy(dst, src, len);
}

/// ```c
/// extern DECLSPEC void *SDLCALL SDL_memmove(void *dst, const void *src, size_t len)
/// ```
Pointer<Void>? SDL_memmove(Pointer<Void>? dst, Pointer<Void>? src, int len) {
  final _SDL_memmove = DLL_SDL2.lookupFunction<
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, Uint32 len),
      Pointer<Void>? Function(Pointer<Void>? dst, Pointer<Void>? src, int len)>('SDL_memmove');
  return _SDL_memmove(dst, src, len);
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
/// extern DECLSPEC size_t SDLCALL SDL_wcslcpy(wchar_t *dst, const wchar_t *src, size_t maxlen)
/// ```
int SDL_wcslcpy(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen) {
  final _SDL_wcslcpy = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16>? dst, Pointer<Int16>? src, Uint32 maxlen),
      int Function(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen)>('SDL_wcslcpy');
  return _SDL_wcslcpy(dst, src, maxlen);
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_wcslcat(wchar_t *dst, const wchar_t *src, size_t maxlen)
/// ```
int SDL_wcslcat(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen) {
  final _SDL_wcslcat = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int16>? dst, Pointer<Int16>? src, Uint32 maxlen),
      int Function(Pointer<Int16>? dst, Pointer<Int16>? src, int maxlen)>('SDL_wcslcat');
  return _SDL_wcslcat(dst, src, maxlen);
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
/// extern DECLSPEC size_t SDLCALL SDL_strlcpy(char *dst, const char *src, size_t maxlen)
/// ```
int SDL_strlcpy(Pointer<Int8>? dst, String src, int maxlen) {
  final _SDL_strlcpy = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8>? dst, Pointer<Utf8>? src, Uint32 maxlen),
      int Function(Pointer<Int8>? dst, Pointer<Utf8>? src, int maxlen)>('SDL_strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcpy(dst, _srcPointer, maxlen);
  calloc.free(_srcPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_utf8strlcpy(char *dst, const char *src, size_t dst_bytes)
/// ```
int SDL_utf8strlcpy(Pointer<Int8>? dst, String src, int dst_bytes) {
  final _SDL_utf8strlcpy = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8>? dst, Pointer<Utf8>? src, Uint32 dst_bytes),
      int Function(Pointer<Int8>? dst, Pointer<Utf8>? src, int dst_bytes)>('SDL_utf8strlcpy');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_utf8strlcpy(dst, _srcPointer, dst_bytes);
  calloc.free(_srcPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_strlcat(char *dst, const char *src, size_t maxlen)
/// ```
int SDL_strlcat(Pointer<Int8>? dst, String src, int maxlen) {
  final _SDL_strlcat = DLL_SDL2.lookupFunction<
      Uint32 Function(Pointer<Int8>? dst, Pointer<Utf8>? src, Uint32 maxlen),
      int Function(Pointer<Int8>? dst, Pointer<Utf8>? src, int maxlen)>('SDL_strlcat');
  final _srcPointer = src.toNativeUtf8();
  final _result = _SDL_strlcat(dst, _srcPointer, maxlen);
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
/// extern DECLSPEC int SDLCALL SDL_sscanf(const char *text, const char *fmt, ...)
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
/// extern DECLSPEC int SDLCALL SDL_snprintf(char *text, size_t maxlen, const char *fmt, ...)
/// ```
int SDL_snprintf(Pointer<Int8>? text, int maxlen, String fmt, Pointer<Void>? arg3) {
  final _SDL_snprintf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int8>? text, Uint32 maxlen, Pointer<Utf8>? fmt, Pointer<Void>? arg3),
      int Function(Pointer<Int8>? text, int maxlen, Pointer<Utf8>? fmt, Pointer<Void>? arg3)>('SDL_snprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_snprintf(text, maxlen, _fmtPointer, arg3);
  calloc.free(_fmtPointer);
  return _result;
}

/// ```c
/// extern DECLSPEC int SDLCALL SDL_vsnprintf(char *text, size_t maxlen, const char *fmt, va_list ap)
/// ```
int SDL_vsnprintf(Pointer<Int8>? text, int maxlen, String fmt, Pointer<Void>? ap) {
  final _SDL_vsnprintf = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Int8>? text, Uint32 maxlen, Pointer<Utf8>? fmt, Pointer<Void>? ap),
      int Function(Pointer<Int8>? text, int maxlen, Pointer<Utf8>? fmt, Pointer<Void>? ap)>('SDL_vsnprintf');
  final _fmtPointer = fmt.toNativeUtf8();
  final _result = _SDL_vsnprintf(text, maxlen, _fmtPointer, ap);
  calloc.free(_fmtPointer);
  return _result;
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
/// extern DECLSPEC double SDLCALL SDL_atan2(double x, double y)
/// ```
double SDL_atan2(double x, double y) {
  final _SDL_atan2 = DLL_SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_atan2');
  return _SDL_atan2(x, y);
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
/// extern DECLSPEC double SDLCALL SDL_copysign(double x, double y)
/// ```
double SDL_copysign(double x, double y) {
  final _SDL_copysign = DLL_SDL2.lookupFunction<
      Double Function(Double x, Double y),
      double Function(double x, double y)>('SDL_copysign');
  return _SDL_copysign(x, y);
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
/// extern DECLSPEC double SDLCALL SDL_fabs(double x)
/// ```
double SDL_fabs(double x) {
  final _SDL_fabs = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_fabs');
  return _SDL_fabs(x);
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
/// extern DECLSPEC double SDLCALL SDL_log(double x)
/// ```
double SDL_log(double x) {
  final _SDL_log = DLL_SDL2.lookupFunction<
      Double Function(Double x),
      double Function(double x)>('SDL_log');
  return _SDL_log(x);
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
/// extern DECLSPEC double SDLCALL SDL_scalbn(double x, int n)
/// ```
double SDL_scalbn(double x, int n) {
  final _SDL_scalbn = DLL_SDL2.lookupFunction<
      Double Function(Double x, Int32 n),
      double Function(double x, int n)>('SDL_scalbn');
  return _SDL_scalbn(x, n);
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

