// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'dart:ffi';
import './generated/const_sdl.dart';
import './generated/lib_sdl_surface.dart';
import './generated/lib_sdl_stdinc.dart';
import './generated/lib_sdl_rwops.dart';
import './generated/struct_sdl.dart';

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

// ```c
// const SDL_SCANCODE_TO_KEYCODE = (X) (X | SDLK_SCANCODE_MASK);
// ```
int sdlScancodeToKeycode(int x) {
  return x | SDLK_SCANCODE_MASK;
}

const SDLK_CAPSLOCK = SDL_SCANCODE_CAPSLOCK | SDLK_SCANCODE_MASK;
const SDLK_F1 = SDL_SCANCODE_F1 | SDLK_SCANCODE_MASK;
const SDLK_F2 = SDL_SCANCODE_F2 | SDLK_SCANCODE_MASK;
const SDLK_F3 = SDL_SCANCODE_F3 | SDLK_SCANCODE_MASK;
const SDLK_F4 = SDL_SCANCODE_F4 | SDLK_SCANCODE_MASK;
const SDLK_F5 = SDL_SCANCODE_F5 | SDLK_SCANCODE_MASK;
const SDLK_F6 = SDL_SCANCODE_F6 | SDLK_SCANCODE_MASK;
const SDLK_F7 = SDL_SCANCODE_F7 | SDLK_SCANCODE_MASK;
const SDLK_F8 = SDL_SCANCODE_F8 | SDLK_SCANCODE_MASK;
const SDLK_F9 = SDL_SCANCODE_F9 | SDLK_SCANCODE_MASK;
const SDLK_F10 = SDL_SCANCODE_F10 | SDLK_SCANCODE_MASK;
const SDLK_F11 = SDL_SCANCODE_F11 | SDLK_SCANCODE_MASK;
const SDLK_F12 = SDL_SCANCODE_F12 | SDLK_SCANCODE_MASK;
const SDLK_PRINTSCREEN = SDL_SCANCODE_PRINTSCREEN | SDLK_SCANCODE_MASK;
const SDLK_SCROLLLOCK = SDL_SCANCODE_SCROLLLOCK | SDLK_SCANCODE_MASK;
const SDLK_PAUSE = SDL_SCANCODE_PAUSE | SDLK_SCANCODE_MASK;
const SDLK_INSERT = SDL_SCANCODE_INSERT | SDLK_SCANCODE_MASK;
const SDLK_HOME = SDL_SCANCODE_HOME | SDLK_SCANCODE_MASK;
const SDLK_PAGEUP = SDL_SCANCODE_PAGEUP | SDLK_SCANCODE_MASK;
const SDLK_END = SDL_SCANCODE_END | SDLK_SCANCODE_MASK;
const SDLK_PAGEDOWN = SDL_SCANCODE_PAGEDOWN | SDLK_SCANCODE_MASK;
const SDLK_RIGHT = SDL_SCANCODE_RIGHT | SDLK_SCANCODE_MASK;
const SDLK_LEFT = SDL_SCANCODE_LEFT | SDLK_SCANCODE_MASK;
const SDLK_DOWN = SDL_SCANCODE_DOWN | SDLK_SCANCODE_MASK;
const SDLK_UP = SDL_SCANCODE_UP | SDLK_SCANCODE_MASK;
const SDLK_NUMLOCKCLEAR = SDL_SCANCODE_NUMLOCKCLEAR | SDLK_SCANCODE_MASK;
const SDLK_KP_DIVIDE = SDL_SCANCODE_KP_DIVIDE | SDLK_SCANCODE_MASK;
const SDLK_KP_MULTIPLY = SDL_SCANCODE_KP_MULTIPLY | SDLK_SCANCODE_MASK;
const SDLK_KP_MINUS = SDL_SCANCODE_KP_MINUS | SDLK_SCANCODE_MASK;
const SDLK_KP_PLUS = SDL_SCANCODE_KP_PLUS | SDLK_SCANCODE_MASK;
const SDLK_KP_ENTER = SDL_SCANCODE_KP_ENTER | SDLK_SCANCODE_MASK;
const SDLK_KP_1 = SDL_SCANCODE_KP_1 | SDLK_SCANCODE_MASK;
const SDLK_KP_2 = SDL_SCANCODE_KP_2 | SDLK_SCANCODE_MASK;
const SDLK_KP_3 = SDL_SCANCODE_KP_3 | SDLK_SCANCODE_MASK;
const SDLK_KP_4 = SDL_SCANCODE_KP_4 | SDLK_SCANCODE_MASK;
const SDLK_KP_5 = SDL_SCANCODE_KP_5 | SDLK_SCANCODE_MASK;
const SDLK_KP_6 = SDL_SCANCODE_KP_6 | SDLK_SCANCODE_MASK;
const SDLK_KP_7 = SDL_SCANCODE_KP_7 | SDLK_SCANCODE_MASK;
const SDLK_KP_8 = SDL_SCANCODE_KP_8 | SDLK_SCANCODE_MASK;
const SDLK_KP_9 = SDL_SCANCODE_KP_9 | SDLK_SCANCODE_MASK;
const SDLK_KP_0 = SDL_SCANCODE_KP_0 | SDLK_SCANCODE_MASK;
const SDLK_KP_PERIOD = SDL_SCANCODE_KP_PERIOD | SDLK_SCANCODE_MASK;
const SDLK_APPLICATION = SDL_SCANCODE_APPLICATION | SDLK_SCANCODE_MASK;
const SDLK_POWER = SDL_SCANCODE_POWER | SDLK_SCANCODE_MASK;
const SDLK_KP_EQUALS = SDL_SCANCODE_KP_EQUALS | SDLK_SCANCODE_MASK;
const SDLK_F13 = SDL_SCANCODE_F13 | SDLK_SCANCODE_MASK;
const SDLK_F14 = SDL_SCANCODE_F14 | SDLK_SCANCODE_MASK;
const SDLK_F15 = SDL_SCANCODE_F15 | SDLK_SCANCODE_MASK;
const SDLK_F16 = SDL_SCANCODE_F16 | SDLK_SCANCODE_MASK;
const SDLK_F17 = SDL_SCANCODE_F17 | SDLK_SCANCODE_MASK;
const SDLK_F18 = SDL_SCANCODE_F18 | SDLK_SCANCODE_MASK;
const SDLK_F19 = SDL_SCANCODE_F19 | SDLK_SCANCODE_MASK;
const SDLK_F20 = SDL_SCANCODE_F20 | SDLK_SCANCODE_MASK;
const SDLK_F21 = SDL_SCANCODE_F21 | SDLK_SCANCODE_MASK;
const SDLK_F22 = SDL_SCANCODE_F22 | SDLK_SCANCODE_MASK;
const SDLK_F23 = SDL_SCANCODE_F23 | SDLK_SCANCODE_MASK;
const SDLK_F24 = SDL_SCANCODE_F24 | SDLK_SCANCODE_MASK;
const SDLK_EXECUTE = SDL_SCANCODE_EXECUTE | SDLK_SCANCODE_MASK;
const SDLK_HELP = SDL_SCANCODE_HELP | SDLK_SCANCODE_MASK;
const SDLK_MENU = SDL_SCANCODE_MENU | SDLK_SCANCODE_MASK;
const SDLK_SELECT = SDL_SCANCODE_SELECT | SDLK_SCANCODE_MASK;
const SDLK_STOP = SDL_SCANCODE_STOP | SDLK_SCANCODE_MASK;
const SDLK_AGAIN = SDL_SCANCODE_AGAIN | SDLK_SCANCODE_MASK;
const SDLK_UNDO = SDL_SCANCODE_UNDO | SDLK_SCANCODE_MASK;
const SDLK_CUT = SDL_SCANCODE_CUT | SDLK_SCANCODE_MASK;
const SDLK_COPY = SDL_SCANCODE_COPY | SDLK_SCANCODE_MASK;
const SDLK_PASTE = SDL_SCANCODE_PASTE | SDLK_SCANCODE_MASK;
const SDLK_FIND = SDL_SCANCODE_FIND | SDLK_SCANCODE_MASK;
const SDLK_MUTE = SDL_SCANCODE_MUTE | SDLK_SCANCODE_MASK;
const SDLK_VOLUMEUP = SDL_SCANCODE_VOLUMEUP | SDLK_SCANCODE_MASK;
const SDLK_VOLUMEDOWN = SDL_SCANCODE_VOLUMEDOWN | SDLK_SCANCODE_MASK;
const SDLK_KP_COMMA = SDL_SCANCODE_KP_COMMA | SDLK_SCANCODE_MASK;
const SDLK_KP_EQUALSAS400 = SDL_SCANCODE_KP_EQUALSAS400 | SDLK_SCANCODE_MASK;
const SDLK_ALTERASE = SDL_SCANCODE_ALTERASE | SDLK_SCANCODE_MASK;
const SDLK_SYSREQ = SDL_SCANCODE_SYSREQ | SDLK_SCANCODE_MASK;
const SDLK_CANCEL = SDL_SCANCODE_CANCEL | SDLK_SCANCODE_MASK;
const SDLK_CLEAR = SDL_SCANCODE_CLEAR | SDLK_SCANCODE_MASK;
const SDLK_PRIOR = SDL_SCANCODE_PRIOR | SDLK_SCANCODE_MASK;
const SDLK_RETURN2 = SDL_SCANCODE_RETURN2 | SDLK_SCANCODE_MASK;
const SDLK_SEPARATOR = SDL_SCANCODE_SEPARATOR | SDLK_SCANCODE_MASK;
const SDLK_OUT = SDL_SCANCODE_OUT | SDLK_SCANCODE_MASK;
const SDLK_OPER = SDL_SCANCODE_OPER | SDLK_SCANCODE_MASK;
const SDLK_CLEARAGAIN = SDL_SCANCODE_CLEARAGAIN | SDLK_SCANCODE_MASK;
const SDLK_CRSEL = SDL_SCANCODE_CRSEL | SDLK_SCANCODE_MASK;
const SDLK_EXSEL = SDL_SCANCODE_EXSEL | SDLK_SCANCODE_MASK;
const SDLK_KP_00 = SDL_SCANCODE_KP_00 | SDLK_SCANCODE_MASK;
const SDLK_KP_000 = SDL_SCANCODE_KP_000 | SDLK_SCANCODE_MASK;
const SDLK_THOUSANDSSEPARATOR =
    SDL_SCANCODE_THOUSANDSSEPARATOR | SDLK_SCANCODE_MASK;
const SDLK_DECIMALSEPARATOR =
    SDL_SCANCODE_DECIMALSEPARATOR | SDLK_SCANCODE_MASK;
const SDLK_CURRENCYUNIT = SDL_SCANCODE_CURRENCYUNIT | SDLK_SCANCODE_MASK;
const SDLK_CURRENCYSUBUNIT = SDL_SCANCODE_CURRENCYSUBUNIT | SDLK_SCANCODE_MASK;
const SDLK_KP_LEFTPAREN = SDL_SCANCODE_KP_LEFTPAREN | SDLK_SCANCODE_MASK;
const SDLK_KP_RIGHTPAREN = SDL_SCANCODE_KP_RIGHTPAREN | SDLK_SCANCODE_MASK;
const SDLK_KP_LEFTBRACE = SDL_SCANCODE_KP_LEFTBRACE | SDLK_SCANCODE_MASK;
const SDLK_KP_RIGHTBRACE = SDL_SCANCODE_KP_RIGHTBRACE | SDLK_SCANCODE_MASK;
const SDLK_KP_TAB = SDL_SCANCODE_KP_TAB | SDLK_SCANCODE_MASK;
const SDLK_KP_BACKSPACE = SDL_SCANCODE_KP_BACKSPACE | SDLK_SCANCODE_MASK;
const SDLK_KP_A = SDL_SCANCODE_KP_A | SDLK_SCANCODE_MASK;
const SDLK_KP_B = SDL_SCANCODE_KP_B | SDLK_SCANCODE_MASK;
const SDLK_KP_C = SDL_SCANCODE_KP_C | SDLK_SCANCODE_MASK;
const SDLK_KP_D = SDL_SCANCODE_KP_D | SDLK_SCANCODE_MASK;
const SDLK_KP_E = SDL_SCANCODE_KP_E | SDLK_SCANCODE_MASK;
const SDLK_KP_F = SDL_SCANCODE_KP_F | SDLK_SCANCODE_MASK;
const SDLK_KP_XOR = SDL_SCANCODE_KP_XOR | SDLK_SCANCODE_MASK;
const SDLK_KP_POWER = SDL_SCANCODE_KP_POWER | SDLK_SCANCODE_MASK;
const SDLK_KP_PERCENT = SDL_SCANCODE_KP_PERCENT | SDLK_SCANCODE_MASK;
const SDLK_KP_LESS = SDL_SCANCODE_KP_LESS | SDLK_SCANCODE_MASK;
const SDLK_KP_GREATER = SDL_SCANCODE_KP_GREATER | SDLK_SCANCODE_MASK;
const SDLK_KP_AMPERSAND = SDL_SCANCODE_KP_AMPERSAND | SDLK_SCANCODE_MASK;
const SDLK_KP_DBLAMPERSAND = SDL_SCANCODE_KP_DBLAMPERSAND | SDLK_SCANCODE_MASK;
const SDLK_KP_VERTICALBAR = SDL_SCANCODE_KP_VERTICALBAR | SDLK_SCANCODE_MASK;
const SDLK_KP_DBLVERTICALBAR =
    SDL_SCANCODE_KP_DBLVERTICALBAR | SDLK_SCANCODE_MASK;
const SDLK_KP_COLON = SDL_SCANCODE_KP_COLON | SDLK_SCANCODE_MASK;
const SDLK_KP_HASH = SDL_SCANCODE_KP_HASH | SDLK_SCANCODE_MASK;
const SDLK_KP_SPACE = SDL_SCANCODE_KP_SPACE | SDLK_SCANCODE_MASK;
const SDLK_KP_AT = SDL_SCANCODE_KP_AT | SDLK_SCANCODE_MASK;
const SDLK_KP_EXCLAM = SDL_SCANCODE_KP_EXCLAM | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMSTORE = SDL_SCANCODE_KP_MEMSTORE | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMRECALL = SDL_SCANCODE_KP_MEMRECALL | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMCLEAR = SDL_SCANCODE_KP_MEMCLEAR | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMADD = SDL_SCANCODE_KP_MEMADD | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMSUBTRACT = SDL_SCANCODE_KP_MEMSUBTRACT | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMMULTIPLY = SDL_SCANCODE_KP_MEMMULTIPLY | SDLK_SCANCODE_MASK;
const SDLK_KP_MEMDIVIDE = SDL_SCANCODE_KP_MEMDIVIDE | SDLK_SCANCODE_MASK;
const SDLK_KP_PLUSMINUS = SDL_SCANCODE_KP_PLUSMINUS | SDLK_SCANCODE_MASK;
const SDLK_KP_CLEAR = SDL_SCANCODE_KP_CLEAR | SDLK_SCANCODE_MASK;
const SDLK_KP_CLEARENTRY = SDL_SCANCODE_KP_CLEARENTRY | SDLK_SCANCODE_MASK;
const SDLK_KP_BINARY = SDL_SCANCODE_KP_BINARY | SDLK_SCANCODE_MASK;
const SDLK_KP_OCTAL = SDL_SCANCODE_KP_OCTAL | SDLK_SCANCODE_MASK;
const SDLK_KP_DECIMAL = SDL_SCANCODE_KP_DECIMAL | SDLK_SCANCODE_MASK;
const SDLK_KP_HEXADECIMAL = SDL_SCANCODE_KP_HEXADECIMAL | SDLK_SCANCODE_MASK;
const SDLK_LCTRL = SDL_SCANCODE_LCTRL | SDLK_SCANCODE_MASK;
const SDLK_LSHIFT = SDL_SCANCODE_LSHIFT | SDLK_SCANCODE_MASK;
const SDLK_LALT = SDL_SCANCODE_LALT | SDLK_SCANCODE_MASK;
const SDLK_LGUI = SDL_SCANCODE_LGUI | SDLK_SCANCODE_MASK;
const SDLK_RCTRL = SDL_SCANCODE_RCTRL | SDLK_SCANCODE_MASK;
const SDLK_RSHIFT = SDL_SCANCODE_RSHIFT | SDLK_SCANCODE_MASK;
const SDLK_RALT = SDL_SCANCODE_RALT | SDLK_SCANCODE_MASK;
const SDLK_RGUI = SDL_SCANCODE_RGUI | SDLK_SCANCODE_MASK;
const SDLK_MODE = SDL_SCANCODE_MODE | SDLK_SCANCODE_MASK;
const SDLK_AUDIONEXT = SDL_SCANCODE_AUDIONEXT | SDLK_SCANCODE_MASK;
const SDLK_AUDIOPREV = SDL_SCANCODE_AUDIOPREV | SDLK_SCANCODE_MASK;
const SDLK_AUDIOSTOP = SDL_SCANCODE_AUDIOSTOP | SDLK_SCANCODE_MASK;
const SDLK_AUDIOPLAY = SDL_SCANCODE_AUDIOPLAY | SDLK_SCANCODE_MASK;
const SDLK_AUDIOMUTE = SDL_SCANCODE_AUDIOMUTE | SDLK_SCANCODE_MASK;
const SDLK_MEDIASELECT = SDL_SCANCODE_MEDIASELECT | SDLK_SCANCODE_MASK;
const SDLK_WWW = SDL_SCANCODE_WWW | SDLK_SCANCODE_MASK;
const SDLK_MAIL = SDL_SCANCODE_MAIL | SDLK_SCANCODE_MASK;
const SDLK_CALCULATOR = SDL_SCANCODE_CALCULATOR | SDLK_SCANCODE_MASK;
const SDLK_COMPUTER = SDL_SCANCODE_COMPUTER | SDLK_SCANCODE_MASK;
const SDLK_AC_SEARCH = SDL_SCANCODE_AC_SEARCH | SDLK_SCANCODE_MASK;
const SDLK_AC_HOME = SDL_SCANCODE_AC_HOME | SDLK_SCANCODE_MASK;
const SDLK_AC_BACK = SDL_SCANCODE_AC_BACK | SDLK_SCANCODE_MASK;
const SDLK_AC_FORWARD = SDL_SCANCODE_AC_FORWARD | SDLK_SCANCODE_MASK;
const SDLK_AC_STOP = SDL_SCANCODE_AC_STOP | SDLK_SCANCODE_MASK;
const SDLK_AC_REFRESH = SDL_SCANCODE_AC_REFRESH | SDLK_SCANCODE_MASK;
const SDLK_AC_BOOKMARKS = SDL_SCANCODE_AC_BOOKMARKS | SDLK_SCANCODE_MASK;
const SDLK_BRIGHTNESSDOWN = SDL_SCANCODE_BRIGHTNESSDOWN | SDLK_SCANCODE_MASK;
const SDLK_BRIGHTNESSUP = SDL_SCANCODE_BRIGHTNESSUP | SDLK_SCANCODE_MASK;
const SDLK_DISPLAYSWITCH = SDL_SCANCODE_DISPLAYSWITCH | SDLK_SCANCODE_MASK;
const SDLK_KBDILLUMTOGGLE = SDL_SCANCODE_KBDILLUMTOGGLE | SDLK_SCANCODE_MASK;
const SDLK_KBDILLUMDOWN = SDL_SCANCODE_KBDILLUMDOWN | SDLK_SCANCODE_MASK;
const SDLK_KBDILLUMUP = SDL_SCANCODE_KBDILLUMUP | SDLK_SCANCODE_MASK;
const SDLK_EJECT = SDL_SCANCODE_EJECT | SDLK_SCANCODE_MASK;
const SDLK_SLEEP = SDL_SCANCODE_SLEEP | SDLK_SCANCODE_MASK;

//const main = SDL_main;

/// ```c
/// const SDL_BUTTON = (X) (1 << ((X)-1));
/// ```
int sdlButton(int x) {
  return 1 << (x - 1);
}

/// ```c
/// const SDL_BUTTON_LMASK = SDL_BUTTON(SDL_BUTTON_LEFT);
/// ```
final int SDL_BUTTON_LMASK = sdlButton(SDL_BUTTON_LEFT);

/// ```c
/// const SDL_BUTTON_MMASK = SDL_BUTTON(SDL_BUTTON_MIDDLE);
/// ```
final int SDL_BUTTON_MMASK = sdlButton(SDL_BUTTON_MIDDLE);

/// ```c
/// const SDL_BUTTON_RMASK = SDL_BUTTON(SDL_BUTTON_RIGHT);
/// ```
final int SDL_BUTTON_RMASK = sdlButton(SDL_BUTTON_RIGHT);

/// ```c
/// const SDL_BUTTON_X1MASK = SDL_BUTTON(SDL_BUTTON_X1);
/// ```
final int SDL_BUTTON_X1MASK = sdlButton(SDL_BUTTON_X1);

/// ```c
/// const SDL_BUTTON_X2MASK = SDL_BUTTON(SDL_BUTTON_X2);
/// ```
final int SDL_BUTTON_X2MASK = sdlButton(SDL_BUTTON_X2);

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
Pointer<Int8> sdlIconvUtf8Locate(String s) {
  return sdlIconvString('', 'UTF-8', s, sdlStrlen(s) + 1);
}

/// ```c
/// const SDL_iconv_utf8_ucs2 = (S) (Uint16 *)SDL_iconv_string('UCS-2-INTERNAL', 'UTF-8', S, SDL_strlen(S)+1);
/// ```
Pointer<Uint16> sdlIconvUtf8Ucs2(String s) {
  return sdlIconvString('UCS-2-INTERNAL', 'UTF-8', s, sdlStrlen(s) + 1)
      .cast<Uint16>();
}

/// ```c
/// const SDL_iconv_utf8_ucs4 = (S) (Uint32 *)SDL_iconv_string('UCS-4-INTERNAL', 'UTF-8', S, SDL_strlen(S)+1);
/// ```
Pointer<Uint32> sdlIconvUtf8Ucs4(String s) {
  return sdlIconvString('UCS-4-INTERNAL', 'UTF-8', s, sdlStrlen(s) + 1)
      .cast<Uint32>();
}

//const SDL_MUSTLOCK = (S) (((S)->flags & SDL_RLEACCEL) != 0);

/// ```c
/// const SDL_LoadBMP = (file) SDL_LoadBMP_RW(SDL_RWFromFile(file, 'rb'), 1);
/// ```
Pointer<SdlSurface> sdlLoadBmp(String file) {
  return sdlLoadBmpRw(sdlRwFromFile(file, 'rb'), 1);
}

/// ```c
/// const SDL_SaveBMP = (surface, file) \ SDL_SaveBMP_RW(surface, SDL_RWFromFile(file, 'wb'), 1);
/// ```
int sdlSaveBmp(Pointer<SdlSurface> surface, String file) {
  return sdlSaveBmpRw(surface, sdlRwFromFile(file, 'wb'), 1);
}

/// ```c
/// const SDL_BlitSurface = SDL_UpperBlit;
/// ```
int sdlBlitSurface(Pointer<SdlSurface> src, Pointer<SdlRect> srcrect,
    Pointer<SdlSurface> dst, Pointer<SdlRect> dstrect) {
  return sdlUpperBlit(src, srcrect, dst, dstrect);
}

/// ```c
/// const SDL_BlitScaled = SDL_UpperBlitScaled;
/// ```
int sdlBlitScaled(Pointer<SdlSurface> src, Pointer<SdlRect> srcrect,
    Pointer<SdlSurface> dst, Pointer<SdlRect> dstrect) {
  return sdlUpperBlitScaled(src, srcrect, dst, dstrect);
}

//const SDL_CreateThread = (fn, name, data) SDL_CreateThread(fn, name, data, (pfnSDL_CurrentBeginThread)_beginthreadex, (pfnSDL_CurrentEndThread)_endthreadex);
//const SDL_TOUCH_MOUSEID = ((Uint32)-1);

/// ```c
/// const SDL_VERSION = (x) \{ \ (x)->major = SDL_MAJOR_VERSION; \ (x)->minor = SDL_MINOR_VERSION; \ (x)->patch = SDL_PATCHLEVEL; \};
/// ```
void sdlVersion(Pointer<SdlVersion> x) {
  x.ref.major = SDL_MAJOR_VERSION;
  x.ref.minor = SDL_MINOR_VERSION;
  x.ref.patch = SDL_PATCHLEVEL;
}

/// ```c
/// const SDL_VERSIONNUM = (X, Y, Z) \ ((X)*1000 + (Y)*100 + (Z));
/// ```
int sdlVersionnum(int x, int y, int z) {
  return x * 1000 + y * 100 + z;
}

/// ```c
/// const SDL_COMPILEDVERSION = \ SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);
/// ```
final SDL_COMPILEDVERSION =
    sdlVersionnum(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);

/// ```c
/// const SDL_VERSION_ATLEAST = (X, Y, Z) \ (SDL_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
/// ```
bool sdlVersionAtleast(int x, int y, int z) {
  return SDL_COMPILEDVERSION >= sdlVersionnum(x, y, z);
}

/// ```c
/// SDL_WINDOWPOS_UNDEFINED_DISPLAY = (X) (SDL_WINDOWPOS_UNDEFINED_MASK|(X));
/// ```
int sdlWindowposUndefinedDisplay(int x) {
  return SDL_WINDOWPOS_UNDEFINED_MASK | x;
}

/// ```c
/// const SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);
/// ```
final SDL_WINDOWPOS_UNDEFINED = sdlWindowposUndefinedDisplay(0);

/// ```c
/// const SDL_WINDOWPOS_ISUNDEFINED = (X) \ (((X)&0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK);
/// ```
bool sdlWindowposIsundefined(int x) {
  return x & 0xFFFF0000 == SDL_WINDOWPOS_UNDEFINED_MASK;
}

/// ```c
/// const SDL_WINDOWPOS_CENTERED_DISPLAY = (X) (SDL_WINDOWPOS_CENTERED_MASK|(X));
/// ```
int sdlWindowposCenteredDisplay(int x) {
  return SDL_WINDOWPOS_CENTERED_MASK | x;
}

/// ```c
/// const SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0);
/// ```
final SDL_WINDOWPOS_CENTERED = sdlWindowposCenteredDisplay(0);

/// ```c
/// const SDL_WINDOWPOS_ISCENTERED = (X) \ (((X)&0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK);
/// ```
bool sdlWindowposIscentered(int x) {
  return x & 0xFFFF0000 == SDL_WINDOWPOS_CENTERED_MASK;
}
