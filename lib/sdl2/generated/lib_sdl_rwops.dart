// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Use this function to create a new SDL_RWops structure for reading from
/// and/or writing to a named file.
///
/// The `mode` string is treated roughly the same as in a call to the C
/// library's fopen(), even if SDL doesn't happen to use fopen() behind the
/// scenes.
///
/// Available `mode` strings:
///
/// - "r": Open a file for reading. The file must exist.
/// - "w": Create an empty file for writing. If a file with the same name
/// already exists its content is erased and the file is treated as a new
/// empty file.
/// - "a": Append to a file. Writing operations append data at the end of the
/// file. The file is created if it does not exist.
/// - "r+": Open a file for update both reading and writing. The file must
/// exist.
/// - "w+": Create an empty file for both reading and writing. If a file with
/// the same name already exists its content is erased and the file is
/// treated as a new empty file.
/// - "a+": Open a file for reading and appending. All writing operations are
/// performed at the end of the file, protecting the previous content to be
/// overwritten. You can reposition (fseek, rewind) the internal pointer to
/// anywhere in the file for reading, but writing operations will move it
/// back to the end of file. The file is created if it does not exist.
///
/// **NOTE**: In order to open a file as a binary file, a "b" character has to
/// be included in the `mode` string. This additional "b" character can either
/// be appended at the end of the string (thus making the following compound
/// modes: "rb", "wb", "ab", "r+b", "w+b", "a+b") or be inserted between the
/// letter and the "+" sign for the mixed modes ("rb+", "wb+", "ab+").
/// Additional characters may follow the sequence, although they should have no
/// effect. For example, "t" is sometimes appended to make explicit the file is
/// a text file.
///
/// This function supports Unicode filenames, but they must be encoded in UTF-8
/// format, regardless of the underlying operating system.
///
/// As a fallback, SDL_RWFromFile() will transparently open a matching filename
/// in an Android app's `assets`.
///
/// Closing the SDL_RWops will close the file handle SDL is holding internally.
///
/// \param file a UTF-8 string representing the filename to open
/// \param mode an ASCII string representing the mode to be used for opening
/// the file.
/// \returns a pointer to the SDL_RWops structure that is created, or NULL on
/// failure; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWseek
/// \sa SDL_RWtell
/// \sa SDL_RWwrite
///
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFile(const char *file, const char *mode)
/// ```
Pointer<SdlRWops> sdlRwFromFile(String file, String mode) {
  final sdlRwFromFileLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlRWops> Function(Pointer<Utf8> file, Pointer<Utf8> mode),
      Pointer<SdlRWops> Function(
          Pointer<Utf8> file, Pointer<Utf8> mode)>('SDL_RWFromFile');
  final filePointer = file.toNativeUtf8();
  final modePointer = mode.toNativeUtf8();
  final result = sdlRwFromFileLookupFunction(filePointer, modePointer);
  calloc.free(filePointer);
  calloc.free(modePointer);
  return result;
}

/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFP(FILE * fp, SDL_bool autoclose)
/// ```
Pointer<SdlRWops> sdlRwFromFp(Pointer<IntPtr> fp, int autoclose) {
  final sdlRwFromFpLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlRWops> Function(Pointer<IntPtr> fp, Int32 autoclose),
      Pointer<SdlRWops> Function(
          Pointer<IntPtr> fp, int autoclose)>('SDL_RWFromFP');
  return sdlRwFromFpLookupFunction(fp, autoclose);
}

///
/// Use this function to prepare a read-write memory buffer for use with
/// SDL_RWops.
///
/// This function sets up an SDL_RWops struct based on a memory area of a
/// certain size, for both read and write access.
///
/// This memory buffer is not copied by the RWops; the pointer you provide must
/// remain valid until you close the stream. Closing the stream will not free
/// the original buffer.
///
/// If you need to make sure the RWops never writes to the memory buffer, you
/// should use SDL_RWFromConstMem() with a read-only buffer of memory instead.
///
/// \param mem a pointer to a buffer to feed an SDL_RWops stream
/// \param size the buffer size, in bytes
/// \returns a pointer to a new SDL_RWops structure, or NULL if it fails; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWseek
/// \sa SDL_RWtell
/// \sa SDL_RWwrite
///
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromMem(void *mem, int size)
/// ```
Pointer<SdlRWops> sdlRwFromMem(Pointer<Void> mem, int size) {
  final sdlRwFromMemLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlRWops> Function(Pointer<Void> mem, Int32 size),
      Pointer<SdlRWops> Function(Pointer<Void> mem, int size)>('SDL_RWFromMem');
  return sdlRwFromMemLookupFunction(mem, size);
}

///
/// Use this function to prepare a read-only memory buffer for use with RWops.
///
/// This function sets up an SDL_RWops struct based on a memory area of a
/// certain size. It assumes the memory area is not writable.
///
/// Attempting to write to this RWops stream will report an error without
/// writing to the memory buffer.
///
/// This memory buffer is not copied by the RWops; the pointer you provide must
/// remain valid until you close the stream. Closing the stream will not free
/// the original buffer.
///
/// If you need to write to a memory buffer, you should use SDL_RWFromMem()
/// with a writable buffer of memory instead.
///
/// \param mem a pointer to a read-only buffer to feed an SDL_RWops stream
/// \param size the buffer size, in bytes
/// \returns a pointer to a new SDL_RWops structure, or NULL if it fails; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWseek
/// \sa SDL_RWtell
///
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromConstMem(const void *mem, int size)
/// ```
Pointer<SdlRWops> sdlRwFromConstMem(Pointer<Void> mem, int size) {
  final sdlRwFromConstMemLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlRWops> Function(Pointer<Void> mem, Int32 size),
      Pointer<SdlRWops> Function(
          Pointer<Void> mem, int size)>('SDL_RWFromConstMem');
  return sdlRwFromConstMemLookupFunction(mem, size);
}

///
/// Use this function to allocate an empty, unpopulated SDL_RWops structure.
///
/// Applications do not need to use this function unless they are providing
/// their own SDL_RWops implementation. If you just need a SDL_RWops to
/// read/write a common data source, you should use the built-in
/// implementations in SDL, like SDL_RWFromFile() or SDL_RWFromMem(), etc.
///
/// You must free the returned pointer with SDL_FreeRW(). Depending on your
/// operating system and compiler, there may be a difference between the
/// malloc() and free() your program uses and the versions SDL calls
/// internally. Trying to mix the two can cause crashing such as segmentation
/// faults. Since all SDL_RWops must free themselves when their **close**
/// method is called, all SDL_RWops must be allocated through this function, so
/// they can all be freed correctly with SDL_FreeRW().
///
/// \returns a pointer to the allocated memory on success, or NULL on failure;
/// call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_FreeRW
///
/// ```c
/// extern DECLSPEC SDL_RWops *SDLCALL SDL_AllocRW(void)
/// ```
Pointer<SdlRWops> sdlAllocRw() {
  final sdlAllocRwLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlRWops> Function(),
      Pointer<SdlRWops> Function()>('SDL_AllocRW');
  return sdlAllocRwLookupFunction();
}

///
/// Use this function to free an SDL_RWops structure allocated by
/// SDL_AllocRW().
///
/// Applications do not need to use this function unless they are providing
/// their own SDL_RWops implementation. If you just need a SDL_RWops to
/// read/write a common data source, you should use the built-in
/// implementations in SDL, like SDL_RWFromFile() or SDL_RWFromMem(), etc, and
/// call the **close** method on those SDL_RWops pointers when you are done
/// with them.
///
/// Only use SDL_FreeRW() on pointers returned by SDL_AllocRW(). The pointer is
/// invalid as soon as this function returns. Any extra memory allocated during
/// creation of the SDL_RWops is not freed by SDL_FreeRW(); the programmer must
/// be responsible for managing that memory in their **close** method.
///
/// \param area the SDL_RWops structure to be freed
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_AllocRW
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FreeRW(SDL_RWops * area)
/// ```
void sdlFreeRw(Pointer<SdlRWops> area) {
  final sdlFreeRwLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlRWops> area),
      void Function(Pointer<SdlRWops> area)>('SDL_FreeRW');
  return sdlFreeRwLookupFunction(area);
}

///
/// Use this function to get the size of the data stream in an SDL_RWops.
///
/// Prior to SDL 2.0.10, this function was a macro.
///
/// \param context the SDL_RWops to get the size of the data stream from
/// \returns the size of the data stream in the SDL_RWops on success, -1 if
/// unknown or a negative error code on failure; call SDL_GetError()
/// for more information.
///
/// \since This function is available since SDL 2.0.10.
///
/// ```c
/// extern DECLSPEC Sint64 SDLCALL SDL_RWsize(SDL_RWops *context)
/// ```
int sdlRWsize(Pointer<SdlRWops> context) {
  final sdlRWsizeLookupFunction = libSdl2.lookupFunction<
      Int64 Function(Pointer<SdlRWops> context),
      int Function(Pointer<SdlRWops> context)>('SDL_RWsize');
  return sdlRWsizeLookupFunction(context);
}

///
/// Seek within an SDL_RWops data stream.
///
/// This function seeks to byte `offset`, relative to `whence`.
///
/// `whence` may be any of the following values:
///
/// - `RW_SEEK_SET`: seek from the beginning of data
/// - `RW_SEEK_CUR`: seek relative to current read point
/// - `RW_SEEK_END`: seek relative to the end of data
///
/// If this stream can not seek, it will return -1.
///
/// SDL_RWseek() is actually a wrapper function that calls the SDL_RWops's
/// `seek` method appropriately, to simplify application development.
///
/// Prior to SDL 2.0.10, this function was a macro.
///
/// \param context a pointer to an SDL_RWops structure
/// \param offset an offset in bytes, relative to **whence** location; can be
/// negative
/// \param whence any of `RW_SEEK_SET`, `RW_SEEK_CUR`, `RW_SEEK_END`
/// \returns the final offset in the data stream after the seek or -1 on error.
///
/// \since This function is available since SDL 2.0.10.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWtell
/// \sa SDL_RWwrite
///
/// ```c
/// extern DECLSPEC Sint64 SDLCALL SDL_RWseek(SDL_RWops *context, Sint64 offset, int whence)
/// ```
int sdlRWseek(Pointer<SdlRWops> context, int offset, int whence) {
  final sdlRWseekLookupFunction = libSdl2.lookupFunction<
      Int64 Function(Pointer<SdlRWops> context, Int64 offset, Int32 whence),
      int Function(
          Pointer<SdlRWops> context, int offset, int whence)>('SDL_RWseek');
  return sdlRWseekLookupFunction(context, offset, whence);
}

///
/// Determine the current read/write offset in an SDL_RWops data stream.
///
/// SDL_RWtell is actually a wrapper function that calls the SDL_RWops's `seek`
/// method, with an offset of 0 bytes from `RW_SEEK_CUR`, to simplify
/// application development.
///
/// Prior to SDL 2.0.10, this function was a macro.
///
/// \param context a SDL_RWops data stream object from which to get the current
/// offset
/// \returns the current offset in the stream, or -1 if the information can not
/// be determined.
///
/// \since This function is available since SDL 2.0.10.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWseek
/// \sa SDL_RWwrite
///
/// ```c
/// extern DECLSPEC Sint64 SDLCALL SDL_RWtell(SDL_RWops *context)
/// ```
int sdlRWtell(Pointer<SdlRWops> context) {
  final sdlRWtellLookupFunction = libSdl2.lookupFunction<
      Int64 Function(Pointer<SdlRWops> context),
      int Function(Pointer<SdlRWops> context)>('SDL_RWtell');
  return sdlRWtellLookupFunction(context);
}

///
/// Read from a data source.
///
/// This function reads up to `maxnum` objects each of size `size` from the
/// data source to the area pointed at by `ptr`. This function may read less
/// objects than requested. It will return zero when there has been an error or
/// the data stream is completely read.
///
/// SDL_RWread() is actually a function wrapper that calls the SDL_RWops's
/// `read` method appropriately, to simplify application development.
///
/// Prior to SDL 2.0.10, this function was a macro.
///
/// \param context a pointer to an SDL_RWops structure
/// \param ptr a pointer to a buffer to read data into
/// \param size the size of each object to read, in bytes
/// \param maxnum the maximum number of objects to be read
/// \returns the number of objects read, or 0 at error or end of file; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.10.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWseek
/// \sa SDL_RWwrite
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_RWread(SDL_RWops *context, void *ptr, size_t size, size_t maxnum)
/// ```
int sdlRWread(
    Pointer<SdlRWops> context, Pointer<Void> ptr, int size, int maxnum) {
  final sdlRWreadLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> context, Pointer<Void> ptr, Uint32 size,
          Uint32 maxnum),
      int Function(Pointer<SdlRWops> context, Pointer<Void> ptr, int size,
          int maxnum)>('SDL_RWread');
  return sdlRWreadLookupFunction(context, ptr, size, maxnum);
}

///
/// Write to an SDL_RWops data stream.
///
/// This function writes exactly `num` objects each of size `size` from the
/// area pointed at by `ptr` to the stream. If this fails for any reason, it'll
/// return less than `num` to demonstrate how far the write progressed. On
/// success, it returns `num`.
///
/// SDL_RWwrite is actually a function wrapper that calls the SDL_RWops's
/// `write` method appropriately, to simplify application development.
///
/// Prior to SDL 2.0.10, this function was a macro.
///
/// \param context a pointer to an SDL_RWops structure
/// \param ptr a pointer to a buffer containing data to write
/// \param size the size of an object to write, in bytes
/// \param num the number of objects to write
/// \returns the number of objects written, which will be less than **num** on
/// error; call SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.10.
///
/// \sa SDL_RWclose
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWseek
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_RWwrite(SDL_RWops *context, const void *ptr, size_t size, size_t num)
/// ```
int sdlRWwrite(
    Pointer<SdlRWops> context, Pointer<Void> ptr, int size, int num) {
  final sdlRWwriteLookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> context, Pointer<Void> ptr, Uint32 size,
          Uint32 num),
      int Function(Pointer<SdlRWops> context, Pointer<Void> ptr, int size,
          int num)>('SDL_RWwrite');
  return sdlRWwriteLookupFunction(context, ptr, size, num);
}

///
/// Close and free an allocated SDL_RWops structure.
///
/// SDL_RWclose() closes and cleans up the SDL_RWops stream. It releases any
/// resources used by the stream and frees the SDL_RWops itself with
/// SDL_FreeRW(). This returns 0 on success, or -1 if the stream failed to
/// flush to its output (e.g. to disk).
///
/// Note that if this fails to flush the stream to disk, this function reports
/// an error, but the SDL_RWops is still invalid once this function returns.
///
/// Prior to SDL 2.0.10, this function was a macro.
///
/// \param context SDL_RWops structure to close
/// \returns 0 on success or a negative error code on failure; call
/// SDL_GetError() for more information.
///
/// \since This function is available since SDL 2.0.10.
///
/// \sa SDL_RWFromConstMem
/// \sa SDL_RWFromFile
/// \sa SDL_RWFromFP
/// \sa SDL_RWFromMem
/// \sa SDL_RWread
/// \sa SDL_RWseek
/// \sa SDL_RWwrite
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_RWclose(SDL_RWops *context)
/// ```
int sdlRWclose(Pointer<SdlRWops> context) {
  final sdlRWcloseLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlRWops> context),
      int Function(Pointer<SdlRWops> context)>('SDL_RWclose');
  return sdlRWcloseLookupFunction(context);
}

///
/// Load all the data from an SDL data stream.
///
/// The data is allocated with a zero byte at the end (null terminated) for
/// convenience. This extra byte is not included in the value reported via
/// `datasize`.
///
/// The data should be freed with SDL_free().
///
/// \param src the SDL_RWops to read all available data from
/// \param datasize if not NULL, will store the number of bytes read
/// \param freesrc if non-zero, calls SDL_RWclose() on `src` before returning
/// \returns the data, or NULL if there was an error.
///
/// \since This function is available since SDL 2.0.6.
///
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_LoadFile_RW(SDL_RWops *src, size_t *datasize, int freesrc)
/// ```
Pointer<Void> sdlLoadFileRw(
    Pointer<SdlRWops> src, Pointer<Uint32> datasize, int freesrc) {
  final sdlLoadFileRwLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(
          Pointer<SdlRWops> src, Pointer<Uint32> datasize, Int32 freesrc),
      Pointer<Void> Function(Pointer<SdlRWops> src, Pointer<Uint32> datasize,
          int freesrc)>('SDL_LoadFile_RW');
  return sdlLoadFileRwLookupFunction(src, datasize, freesrc);
}

///
/// Load all the data from a file path.
///
/// The data is allocated with a zero byte at the end (null terminated) for
/// convenience. This extra byte is not included in the value reported via
/// `datasize`.
///
/// The data should be freed with SDL_free().
///
/// Prior to SDL 2.0.10, this function was a macro wrapping around
/// SDL_LoadFile_RW.
///
/// \param file the path to read all available data from
/// \param datasize if not NULL, will store the number of bytes read
/// \returns the data, or NULL if there was an error.
///
/// \since This function is available since SDL 2.0.10.
///
/// ```c
/// extern DECLSPEC void *SDLCALL SDL_LoadFile(const char *file, size_t *datasize)
/// ```
Pointer<Void> sdlLoadFile(String file, Pointer<Uint32> datasize) {
  final sdlLoadFileLookupFunction = libSdl2.lookupFunction<
      Pointer<Void> Function(Pointer<Utf8> file, Pointer<Uint32> datasize),
      Pointer<Void> Function(
          Pointer<Utf8> file, Pointer<Uint32> datasize)>('SDL_LoadFile');
  final filePointer = file.toNativeUtf8();
  final result = sdlLoadFileLookupFunction(filePointer, datasize);
  calloc.free(filePointer);
  return result;
}

///
/// Use this function to read a byte from an SDL_RWops.
///
/// \param src the SDL_RWops to read from
/// \returns the read byte on success or 0 on failure; call SDL_GetError() for
/// more information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteU8
///
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_ReadU8(SDL_RWops * src)
/// ```
int sdlReadU8(Pointer<SdlRWops> src) {
  final sdlReadU8LookupFunction = libSdl2.lookupFunction<
      Uint8 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadU8');
  return sdlReadU8LookupFunction(src);
}

///
/// Use this function to read 16 bits of little-endian data from an SDL_RWops
/// and return in native format.
///
/// SDL byteswaps the data only if necessary, so the data returned will be in
/// the native byte order.
///
/// \param src the stream from which to read data
/// \returns 16 bits of data in the native byte order of the platform.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadBE16
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_ReadLE16(SDL_RWops * src)
/// ```
int sdlReadLe16(Pointer<SdlRWops> src) {
  final sdlReadLe16LookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadLE16');
  return sdlReadLe16LookupFunction(src);
}

///
/// Use this function to read 16 bits of big-endian data from an SDL_RWops and
/// return in native format.
///
/// SDL byteswaps the data only if necessary, so the data returned will be in
/// the native byte order.
///
/// \param src the stream from which to read data
/// \returns 16 bits of data in the native byte order of the platform.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadLE16
///
/// ```c
/// extern DECLSPEC Uint16 SDLCALL SDL_ReadBE16(SDL_RWops * src)
/// ```
int sdlReadBe16(Pointer<SdlRWops> src) {
  final sdlReadBe16LookupFunction = libSdl2.lookupFunction<
      Uint16 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadBE16');
  return sdlReadBe16LookupFunction(src);
}

///
/// Use this function to read 32 bits of little-endian data from an SDL_RWops
/// and return in native format.
///
/// SDL byteswaps the data only if necessary, so the data returned will be in
/// the native byte order.
///
/// \param src the stream from which to read data
/// \returns 32 bits of data in the native byte order of the platform.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadBE32
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_ReadLE32(SDL_RWops * src)
/// ```
int sdlReadLe32(Pointer<SdlRWops> src) {
  final sdlReadLe32LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadLE32');
  return sdlReadLe32LookupFunction(src);
}

///
/// Use this function to read 32 bits of big-endian data from an SDL_RWops and
/// return in native format.
///
/// SDL byteswaps the data only if necessary, so the data returned will be in
/// the native byte order.
///
/// \param src the stream from which to read data
/// \returns 32 bits of data in the native byte order of the platform.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadLE32
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_ReadBE32(SDL_RWops * src)
/// ```
int sdlReadBe32(Pointer<SdlRWops> src) {
  final sdlReadBe32LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadBE32');
  return sdlReadBe32LookupFunction(src);
}

///
/// Use this function to read 64 bits of little-endian data from an SDL_RWops
/// and return in native format.
///
/// SDL byteswaps the data only if necessary, so the data returned will be in
/// the native byte order.
///
/// \param src the stream from which to read data
/// \returns 64 bits of data in the native byte order of the platform.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadBE64
///
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_ReadLE64(SDL_RWops * src)
/// ```
int sdlReadLe64(Pointer<SdlRWops> src) {
  final sdlReadLe64LookupFunction = libSdl2.lookupFunction<
      Uint64 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadLE64');
  return sdlReadLe64LookupFunction(src);
}

///
/// Use this function to read 64 bits of big-endian data from an SDL_RWops and
/// return in native format.
///
/// SDL byteswaps the data only if necessary, so the data returned will be in
/// the native byte order.
///
/// \param src the stream from which to read data
/// \returns 64 bits of data in the native byte order of the platform.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadLE64
///
/// ```c
/// extern DECLSPEC Uint64 SDLCALL SDL_ReadBE64(SDL_RWops * src)
/// ```
int sdlReadBe64(Pointer<SdlRWops> src) {
  final sdlReadBe64LookupFunction = libSdl2.lookupFunction<
      Uint64 Function(Pointer<SdlRWops> src),
      int Function(Pointer<SdlRWops> src)>('SDL_ReadBE64');
  return sdlReadBe64LookupFunction(src);
}

///
/// Use this function to write a byte to an SDL_RWops.
///
/// \param dst the SDL_RWops to write to
/// \param value the byte value to write
/// \returns 1 on success or 0 on failure; call SDL_GetError() for more
/// information.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_ReadU8
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteU8(SDL_RWops * dst, Uint8 value)
/// ```
int sdlWriteU8(Pointer<SdlRWops> dst, int value) {
  final sdlWriteU8LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint8 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteU8');
  return sdlWriteU8LookupFunction(dst, value);
}

///
/// Use this function to write 16 bits in native format to a SDL_RWops as
/// little-endian data.
///
/// SDL byteswaps the data only if necessary, so the application always
/// specifies native format, and the data written will be in little-endian
/// format.
///
/// \param dst the stream to which data will be written
/// \param value the data to be written, in native format
/// \returns 1 on successful write, 0 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteBE16
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE16(SDL_RWops * dst, Uint16 value)
/// ```
int sdlWriteLe16(Pointer<SdlRWops> dst, int value) {
  final sdlWriteLe16LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint16 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteLE16');
  return sdlWriteLe16LookupFunction(dst, value);
}

///
/// Use this function to write 16 bits in native format to a SDL_RWops as
/// big-endian data.
///
/// SDL byteswaps the data only if necessary, so the application always
/// specifies native format, and the data written will be in big-endian format.
///
/// \param dst the stream to which data will be written
/// \param value the data to be written, in native format
/// \returns 1 on successful write, 0 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteLE16
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE16(SDL_RWops * dst, Uint16 value)
/// ```
int sdlWriteBe16(Pointer<SdlRWops> dst, int value) {
  final sdlWriteBe16LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint16 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteBE16');
  return sdlWriteBe16LookupFunction(dst, value);
}

///
/// Use this function to write 32 bits in native format to a SDL_RWops as
/// little-endian data.
///
/// SDL byteswaps the data only if necessary, so the application always
/// specifies native format, and the data written will be in little-endian
/// format.
///
/// \param dst the stream to which data will be written
/// \param value the data to be written, in native format
/// \returns 1 on successful write, 0 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteBE32
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE32(SDL_RWops * dst, Uint32 value)
/// ```
int sdlWriteLe32(Pointer<SdlRWops> dst, int value) {
  final sdlWriteLe32LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint32 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteLE32');
  return sdlWriteLe32LookupFunction(dst, value);
}

///
/// Use this function to write 32 bits in native format to a SDL_RWops as
/// big-endian data.
///
/// SDL byteswaps the data only if necessary, so the application always
/// specifies native format, and the data written will be in big-endian format.
///
/// \param dst the stream to which data will be written
/// \param value the data to be written, in native format
/// \returns 1 on successful write, 0 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteLE32
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE32(SDL_RWops * dst, Uint32 value)
/// ```
int sdlWriteBe32(Pointer<SdlRWops> dst, int value) {
  final sdlWriteBe32LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint32 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteBE32');
  return sdlWriteBe32LookupFunction(dst, value);
}

///
/// Use this function to write 64 bits in native format to a SDL_RWops as
/// little-endian data.
///
/// SDL byteswaps the data only if necessary, so the application always
/// specifies native format, and the data written will be in little-endian
/// format.
///
/// \param dst the stream to which data will be written
/// \param value the data to be written, in native format
/// \returns 1 on successful write, 0 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteBE64
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteLE64(SDL_RWops * dst, Uint64 value)
/// ```
int sdlWriteLe64(Pointer<SdlRWops> dst, int value) {
  final sdlWriteLe64LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint64 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteLE64');
  return sdlWriteLe64LookupFunction(dst, value);
}

///
/// Use this function to write 64 bits in native format to a SDL_RWops as
/// big-endian data.
///
/// SDL byteswaps the data only if necessary, so the application always
/// specifies native format, and the data written will be in big-endian format.
///
/// \param dst the stream to which data will be written
/// \param value the data to be written, in native format
/// \returns 1 on successful write, 0 on error.
///
/// \since This function is available since SDL 2.0.0.
///
/// \sa SDL_WriteLE64
///
/// ```c
/// extern DECLSPEC size_t SDLCALL SDL_WriteBE64(SDL_RWops * dst, Uint64 value)
/// ```
int sdlWriteBe64(Pointer<SdlRWops> dst, int value) {
  final sdlWriteBe64LookupFunction = libSdl2.lookupFunction<
      Uint32 Function(Pointer<SdlRWops> dst, Uint64 value),
      int Function(Pointer<SdlRWops> dst, int value)>('SDL_WriteBE64');
  return sdlWriteBe64LookupFunction(dst, value);
}
