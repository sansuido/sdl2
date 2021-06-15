import 'dart:ffi';
import './generated/const_sdl2.dart';
import './generated/lib_sdl2.dart';
import './generated/struct_sdl2.dart';

//const SDL_INIT_EVERYTHING = ( \ SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS | \ SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER \ );
//const SDL_ASSERT_LEVEL = SDL_DEFAULT_ASSERT_LEVEL;
//const SDL_TriggerBreakpoint = () __debugbreak();
//const SDL_FUNCTION = __func__;
//const SDL_FILE = __FILE__;
//const SDL_LINE = __LINE__;
//const SDL_disabled_assert = (condition) \ do { (void) sizeof ((condition)); } while (0);
//const SDL_enabled_assert = (condition) \ do { \ while ( !(condition) ) { \ static struct SDL_assert_data assert_data = { \ 0, 0, #condition, 0, 0, 0, 0 \ }; \ const SDL_assert_state state = SDL_ReportAssertion(&assert_data, \ SDL_FUNCTION, \ SDL_FILE, \ SDL_LINE); \ if (state == SDL_ASSERTION_RETRY) { \ continue; \ } \ } while (0);
//const SDL_assert = (condition) SDL_disabled_assert(condition);
//const SDL_assert_release = (condition) SDL_disabled_assert(condition);
//const SDL_assert_paranoid = (condition) SDL_disabled_assert(condition);
//const SDL_CompilerBarrier = () _ReadWriteBarrier();
//const SDL_MemoryBarrierRelease = () __asm__ __volatile__ ('lwsync' : : : 'memory');
//const SDL_MemoryBarrierAcquire = () __asm__ __volatile__ ('lwsync' : : : 'memory');
//const SDL_AtomicSet = (a, v) _InterlockedExchange((long*)&(a)->value, (v));
//const SDL_AtomicAdd = (a, v) _InterlockedExchangeAdd((long*)&(a)->value, (v));
//const SDL_AtomicCAS = (a, oldval, newval) (_InterlockedCompareExchange((long*)&(a)->value, (newval), (oldval)) == (oldval));
//const SDL_AtomicSetPtr = (a, v) _InterlockedExchangePointer((a), (v));
//const SDL_AtomicCASPtr = (a, oldval, newval) (_InterlockedCompareExchange((long*)(a), (long)(newval), (long)(oldval)) == (long)(oldval));
//const SDL_AtomicIncRef = (a) SDL_AtomicAdd(a, 1);
//const SDL_AtomicDecRef = (a) (SDL_AtomicAdd(a, -1) == 1);
//const SDL_AUDIO_BITSIZE = (x) (x & SDL_AUDIO_MASK_BITSIZE);
//const SDL_AUDIO_ISFLOAT = (x) (x & SDL_AUDIO_MASK_DATATYPE);
//const SDL_AUDIO_ISBIGENDIAN = (x) (x & SDL_AUDIO_MASK_ENDIAN);
//const SDL_AUDIO_ISSIGNED = (x) (x & SDL_AUDIO_MASK_SIGNED);
//const SDL_AUDIO_ISINT = (x) (!SDL_AUDIO_ISFLOAT(x));
//const SDL_AUDIO_ISLITTLEENDIAN = (x) (!SDL_AUDIO_ISBIGENDIAN(x));
//const SDL_AUDIO_ISUNSIGNED = (x) (!SDL_AUDIO_ISSIGNED(x));
//const SDL_AUDIOCVT_PACKED = __attribute__((packed));
//const SDL_LoadWAV = (file, spec, audio_buf, audio_len) \ SDL_LoadWAV_RW(SDL_RWFromFile(file, 'rb'),1, spec,audio_buf,audio_len);
//const DWORD_PTR = DWORD;
//const LONG_PTR = LONG;
//const SDL_SwapLE16 = (X) (X);
//const SDL_SwapLE32 = (X) (X);
//const SDL_SwapLE64 = (X) (X);
//const SDL_SwapFloatLE = (X) (X);
//const SDL_SwapBE16 = (X) SDL_Swap16(X);
//const SDL_SwapBE32 = (X) SDL_Swap32(X);
//const SDL_SwapBE64 = (X) SDL_Swap64(X);
//const SDL_SwapFloatBE = (X) SDL_SwapFloat(X);
//const SDL_OutOfMemory = () SDL_Error(SDL_ENOMEM);
//const SDL_Unsupported = () SDL_Error(SDL_UNSUPPORTED);
//const SDL_InvalidParamError = (param) SDL_SetError('Parameter '%s' is invalid', (param));
//const SDL_GetEventState = (type) SDL_EventState(type, SDL_QUERY);
//const SDL_HAPTIC_INFINITY = 4294967295U;
//const SDL_SCANCODE_TO_KEYCODE = (X) (X | SDLK_SCANCODE_MASK);
//const main = SDL_main;

/// ```c
/// const SDL_BUTTON = (X) (1 << ((X)-1));
/// ```
int SDL_BUTTON(int x) {
  return 1 << (x - 1);
}

/// ```c
/// const SDL_BUTTON_LMASK = SDL_BUTTON(SDL_BUTTON_LEFT);
/// ```
final int SDL_BUTTON_LMASK = SDL_BUTTON(SDL_BUTTON_LEFT);

/// ```c
/// const SDL_BUTTON_MMASK = SDL_BUTTON(SDL_BUTTON_MIDDLE);
/// ```
final int SDL_BUTTON_MMASK = SDL_BUTTON(SDL_BUTTON_MIDDLE);

/// ```c
/// const SDL_BUTTON_RMASK = SDL_BUTTON(SDL_BUTTON_RIGHT);
/// ```
final int SDL_BUTTON_RMASK = SDL_BUTTON(SDL_BUTTON_RIGHT);

/// ```c
/// const SDL_BUTTON_X1MASK = SDL_BUTTON(SDL_BUTTON_X1);
/// ```
final int SDL_BUTTON_X1MASK = SDL_BUTTON(SDL_BUTTON_X1);

/// ```c
/// const SDL_BUTTON_X2MASK = SDL_BUTTON(SDL_BUTTON_X2);
/// ```
final int SDL_BUTTON_X2MASK = SDL_BUTTON(SDL_BUTTON_X2);

//const SDL_MUTEX_MAXWAIT = (~(Uint32)0);
//const SDL_mutexP = (m) SDL_LockMutex(m);
//const SDL_mutexV = (m) SDL_UnlockMutex(m);
//const SDL_NAME = (X) SDL_##X;
//const SDL_DEFINE_PIXELFOURCC = (A, B, C, D) SDL_FOURCC(A, B, C, D);
//const SDL_DEFINE_PIXELFORMAT = (type, order, layout, bits, bytes) \ ((1 << 28) | ((type) << 24) | ((order) << 20) | ((layout) << 16) | \ ((bits) << 8) | ((bytes) << 0));
//const SDL_PIXELFLAG = (X) (((X) >> 28) & 0x0F);
//const SDL_PIXELTYPE = (X) (((X) >> 24) & 0x0F);
//const SDL_PIXELORDER = (X) (((X) >> 20) & 0x0F);
//const SDL_PIXELLAYOUT = (X) (((X) >> 16) & 0x0F);
//const SDL_BITSPERPIXEL = (X) (((X) >> 8) & 0xFF);
//const SDL_BYTESPERPIXEL = (X) \ (SDL_ISPIXELFORMAT_FOURCC(X) ? \ ((((X) == SDL_PIXELFORMAT_YUY2) || \ ((X) == SDL_PIXELFORMAT_UYVY) || \ ((X) == SDL_PIXELFORMAT_YVYU)) ? 2 : 1) : (((X) >> 0) & 0xFF));
//const SDL_ISPIXELFORMAT_INDEXED = (format) \ (!SDL_ISPIXELFORMAT_FOURCC(format) && \ ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX1) || \ (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX4) || \ (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX8)));
//const SDL_ISPIXELFORMAT_ALPHA = (format) \ (!SDL_ISPIXELFORMAT_FOURCC(format) && \ ((SDL_PIXELORDER(format) == SDL_PACKEDORDER_ARGB) || \ (SDL_PIXELORDER(format) == SDL_PACKEDORDER_RGBA) || \ (SDL_PIXELORDER(format) == SDL_PACKEDORDER_ABGR) || \ (SDL_PIXELORDER(format) == SDL_PACKEDORDER_BGRA)));
//const SDL_ISPIXELFORMAT_FOURCC = (format) \ ((format) && (SDL_PIXELFLAG(format) != 1));
//const SDL_Colour = SDL_Color;
//const SDL_QuitRequested = () \ (SDL_PumpEvents(), (SDL_PeepEvents(NULL,0,SDL_PEEKEVENT,SDL_QUIT,SDL_QUIT) > 0));
//const SDL_RWsize = (ctx) (ctx)->size(ctx);
//const SDL_RWseek = (ctx, offset, whence) (ctx)->seek(ctx, offset, whence);
//const SDL_RWtell = (ctx) (ctx)->seek(ctx, 0, RW_SEEK_CUR);
//const SDL_RWread = (ctx, ptr, size, n) (ctx)->read(ctx, ptr, size, n);
//const SDL_RWwrite = (ctx, ptr, size, n) (ctx)->write(ctx, ptr, size, n);
//const SDL_RWclose = (ctx) (ctx)->close(ctx);
//const SDL_SHAPEMODEALPHA = (mode) (mode == ShapeModeDefault || mode == ShapeModeBinarizeAlpha || mode == ShapeModeReverseBinarizeAlpha);
//const SDL_arraysize = (array) (sizeof(array)/sizeof(array[0]));
//const SDL_TABLESIZE = (table) SDL_arraysize(table);
//const SDL_reinterpret_cast = (type, expression) reinterpret_cast<type>(expression);
//const SDL_static_cast = (type, expression) static_cast<type>(expression);
//const SDL_const_cast = (type, expression) const_cast<type>(expression);
//const SDL_FOURCC = (A, B, C, D) \ ((SDL_static_cast(Uint32, SDL_static_cast(Uint8, (A))) << 0) | \ (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (B))) << 8) | \ (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (C))) << 16) | \ (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (D))) << 24));
//const SDL_COMPILE_TIME_ASSERT = (name, x) \ typedef int SDL_dummy_ ## name[(x) * 2 - 1];
//const alloca = __builtin_alloca;
//const SDL_stack_alloc = (type, count) (type*)alloca(sizeof(type)*(count));
//const SDL_stack_free = (data);
//const SDL_min = (x, y) (((x) < (y)) ? (x) : (y));
//const SDL_max = (x, y) (((x) > (y)) ? (x) : (y));

//const SDL_zero = (x) SDL_memset(&(x), 0, sizeof((x)));
//const SDL_zerop = (x) SDL_memset((x), 0, sizeof(*(x)));
//const SDL_ICONV_ERROR = (size_t)-1;
//const SDL_ICONV_E2BIG = (size_t)-2;
//const SDL_ICONV_EILSEQ = (size_t)-3;
//const SDL_ICONV_EINVAL = (size_t)-4;

/// ```c
/// const SDL_iconv_utf8_locale = (S) SDL_iconv_string('', 'UTF-8', S, SDL_strlen(S)+1);
/// ```
Pointer<Int8>? SDL_iocnv_utf8_locate(String s) {
  return SDL_iconv_string('', 'UTF-8', s, SDL_strlen(s)+1)!;
}

/// ```c
/// const SDL_iconv_utf8_ucs2 = (S) (Uint16 *)SDL_iconv_string('UCS-2-INTERNAL', 'UTF-8', S, SDL_strlen(S)+1);
/// ```
Pointer<Uint16>? SDL_ioconv_utf8_ucs2(String s) {
  return SDL_iconv_string('UCS-2-INTERNAL', 'UTF-8', s, SDL_strlen(s)+1)!.cast<Uint16>();
}

/// ```c
/// const SDL_iconv_utf8_ucs4 = (S) (Uint32 *)SDL_iconv_string('UCS-4-INTERNAL', 'UTF-8', S, SDL_strlen(S)+1);
/// ```
Pointer<Uint32>? SDL_ioconv_utf8_ucs4(String s) {
  return SDL_iconv_string('UCS-4-INTERNAL', 'UTF-8', s, SDL_strlen(s)+1)!.cast<Uint32>();
}

//const SDL_MUSTLOCK = (S) (((S)->flags & SDL_RLEACCEL) != 0);

/// ```c
/// const SDL_LoadBMP = (file) SDL_LoadBMP_RW(SDL_RWFromFile(file, 'rb'), 1);
/// ```
Pointer<SDL_Surface> SDL_LoadBMP(String file) {
  return SDL_LoadBMP_RW(SDL_RWFromFile(file, 'rb'), 1)!;
}

/// ```c
/// const SDL_SaveBMP = (surface, file) \ SDL_SaveBMP_RW(surface, SDL_RWFromFile(file, 'wb'), 1);
/// ```
int SDL_SaveBMP(Pointer<SDL_Surface>? surface, String file) {
  return SDL_SaveBMP_RW(surface, SDL_RWFromFile(file, 'wb'), 1);
}

/// ```c
/// const SDL_BlitSurface = SDL_UpperBlit;
/// ```
int SDL_BlitSurface(Pointer<SDL_Surface>? src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  return SDL_UpperBlit(src, srcrect, dst, dstrect);
}

/// ```c
/// const SDL_BlitScaled = SDL_UpperBlitScaled;
/// ```
int SDL_BlitScaled(Pointer<SDL_Surface> src, Pointer<SDL_Rect>? srcrect, Pointer<SDL_Surface>? dst, Pointer<SDL_Rect>? dstrect) {
  return SDL_UpperBlitScaled(src, srcrect, dst, dstrect);
}

//const SDL_CreateThread = (fn, name, data) SDL_CreateThread(fn, name, data, (pfnSDL_CurrentBeginThread)_beginthreadex, (pfnSDL_CurrentEndThread)_endthreadex);
//const SDL_TOUCH_MOUSEID = ((Uint32)-1);

/// ```c
/// const SDL_VERSION = (x) \{ \ (x)->major = SDL_MAJOR_VERSION; \ (x)->minor = SDL_MINOR_VERSION; \ (x)->patch = SDL_PATCHLEVEL; \};
/// ```
void SDL_VERSION(Pointer<SDL_version>? x) {
  if (x != null) {
    x.ref.major = SDL_MAJOR_VERSION;
    x.ref.minor = SDL_MINOR_VERSION;
    x.ref.patch = SDL_PATCHLEVEL;
  }
}

/// ```c
/// const SDL_VERSIONNUM = (X, Y, Z) \ ((X)*1000 + (Y)*100 + (Z));
/// ```
int SDL_VERSIONNUM (int x, int y, int z) {
  return x * 1000 + y * 100 + z;
}

/// ```c
/// const SDL_COMPILEDVERSION = \ SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);
/// ```
final SDL_COMPILEDVERSION = SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);

/// ```c
/// const SDL_VERSION_ATLEAST = (X, Y, Z) \ (SDL_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
/// ```
bool SDL_VERSION_ATLEAST(int x, int y, int z) {
  return SDL_COMPILEDVERSION >= SDL_VERSIONNUM(x, y, z);
}

/// ```c
/// SDL_WINDOWPOS_UNDEFINED_DISPLAY = (X) (SDL_WINDOWPOS_UNDEFINED_MASK|(X));
/// ```
int SDL_WINDOWPOS_UNDEFINED_DISPLAY(int x) {
  return SDL_WINDOWPOS_UNDEFINED_MASK | x;
}

/// ```c
/// const SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);
/// ```
final SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);

/// ```c
/// const SDL_WINDOWPOS_ISUNDEFINED = (X) \ (((X)&0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK);
/// ```
bool SDL_WINDOWPOS_ISUNDEFINED(int x) {
  return x & 0xFFFF0000 == SDL_WINDOWPOS_UNDEFINED_MASK;
}
/// ```c
/// const SDL_WINDOWPOS_CENTERED_DISPLAY = (X) (SDL_WINDOWPOS_CENTERED_MASK|(X));
/// ```
int SDL_WINDOWPOS_CENTERED_DISPLAY(int x) {
  return SDL_WINDOWPOS_CENTERED_MASK | x;
}

/// ```c
/// const SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0);
/// ```
final SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0);

/// ```c
/// const SDL_WINDOWPOS_ISCENTERED = (X) \ (((X)&0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK);
/// ```
bool SDL_WINDOWPOS_ISCENTERED(int x) {
  return x & 0xFFFF0000 == SDL_WINDOWPOS_CENTERED_MASK;
}