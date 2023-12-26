// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

///
/// Initialize the HIDAPI library.
///
/// This function initializes the HIDAPI library. Calling it is not strictly
/// necessary, as it will be called automatically by SDL_hid_enumerate() and
/// any of the SDL_hid_open_*() functions if it is needed. This function should
/// be called at the beginning of execution however, if there is a chance of
/// HIDAPI handles being opened by different threads simultaneously.
///
/// Each call to this function should have a matching call to SDL_hid_exit()
///
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_hid_exit
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_init(void)
/// ```
int sdlHidInit() {
  final sdlHidInitLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_hid_init');
  return sdlHidInitLookupFunction();
}

///
/// Finalize the HIDAPI library.
///
/// This function frees all of the static data associated with HIDAPI. It
/// should be called at the end of execution to avoid memory leaks.
///
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_hid_init
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_exit(void)
/// ```
int sdlHidExit() {
  final sdlHidExitLookupFunction =
      libSdl2.lookupFunction<Int32 Function(), int Function()>('SDL_hid_exit');
  return sdlHidExitLookupFunction();
}

///
/// Check to see if devices may have been added or removed.
///
/// Enumerating the HID devices is an expensive operation, so you can call this
/// to see if there have been any system device changes since the last call to
/// this function. A change in the counter returned doesn't necessarily mean
/// that anything has changed, but you can call SDL_hid_enumerate() to get an
/// updated device list.
///
/// Calling this function for the first time may cause a thread or other system
/// resource to be allocated to track device change notifications.
///
/// \returns a change counter that is incremented with each potential device
/// change, or 0 if device change detection isn't available.
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_hid_enumerate
///
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_hid_device_change_count(void)
/// ```
int sdlHidDeviceChangeCount() {
  final sdlHidDeviceChangeCountLookupFunction =
      libSdl2.lookupFunction<Uint32 Function(), int Function()>(
          'SDL_hid_device_change_count');
  return sdlHidDeviceChangeCountLookupFunction();
}

///
/// Enumerate the HID Devices.
///
/// This function returns a linked list of all the HID devices attached to the
/// system which match vendor_id and product_id. If `vendor_id` is set to 0
/// then any vendor matches. If `product_id` is set to 0 then any product
/// matches. If `vendor_id` and `product_id` are both set to 0, then all HID
/// devices will be returned.
///
/// \param vendor_id The Vendor ID (VID) of the types of device to open.
/// \param product_id The Product ID (PID) of the types of device to open.
/// \returns a pointer to a linked list of type SDL_hid_device_info, containing
/// information about the HID devices attached to the system, or NULL
/// in the case of failure. Free this linked list by calling
/// SDL_hid_free_enumeration().
///
/// \since This function is available since SDL 2.0.18.
///
/// \sa SDL_hid_device_change_count
///
/// ```c
/// extern DECLSPEC SDL_hid_device_info * SDLCALL SDL_hid_enumerate(unsigned short vendor_id, unsigned short product_id)
/// ```
Pointer<SdlHidDeviceInfo> sdlHidEnumerate(int vendorId, int productId) {
  final sdlHidEnumerateLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlHidDeviceInfo> Function(Uint16 vendorId, Uint16 productId),
      Pointer<SdlHidDeviceInfo> Function(
          int vendorId, int productId)>('SDL_hid_enumerate');
  return sdlHidEnumerateLookupFunction(vendorId, productId);
}

///
/// Free an enumeration Linked List
///
/// This function frees a linked list created by SDL_hid_enumerate().
///
/// \param devs Pointer to a list of struct_device returned from
/// SDL_hid_enumerate().
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_hid_free_enumeration(SDL_hid_device_info *devs)
/// ```
void sdlHidFreeEnumeration(Pointer<SdlHidDeviceInfo> devs) {
  final sdlHidFreeEnumerationLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlHidDeviceInfo> devs),
      void Function(
          Pointer<SdlHidDeviceInfo> devs)>('SDL_hid_free_enumeration');
  return sdlHidFreeEnumerationLookupFunction(devs);
}

///
/// Open a HID device using a Vendor ID (VID), Product ID (PID) and optionally
/// a serial number.
///
/// If `serial_number` is NULL, the first device with the specified VID and PID
/// is opened.
///
/// \param vendor_id The Vendor ID (VID) of the device to open.
/// \param product_id The Product ID (PID) of the device to open.
/// \param serial_number The Serial Number of the device to open (Optionally
/// NULL).
/// \returns a pointer to a SDL_hid_device object on success or NULL on
/// failure.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC SDL_hid_device * SDLCALL SDL_hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number)
/// ```
Pointer<SdlHidDevice> sdlHidOpen(
    int vendorId, int productId, Pointer<Int16> serialNumber) {
  final sdlHidOpenLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlHidDevice> Function(
          Uint16 vendorId, Uint16 productId, Pointer<Int16> serialNumber),
      Pointer<SdlHidDevice> Function(int vendorId, int productId,
          Pointer<Int16> serialNumber)>('SDL_hid_open');
  return sdlHidOpenLookupFunction(vendorId, productId, serialNumber);
}

/// = false
/// ```c
/// extern DECLSPEC SDL_hid_device * SDLCALL SDL_hid_open_path(const char *path, int bExclusive )
/// ```
Pointer<SdlHidDevice> sdlHidOpenPath(String? path, int bExclusive) {
  final sdlHidOpenPathLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlHidDevice> Function(Pointer<Utf8> path, Int32 bExclusive),
      Pointer<SdlHidDevice> Function(
          Pointer<Utf8> path, int bExclusive)>('SDL_hid_open_path');
  final pathPointer = path != null ? path.toNativeUtf8() : nullptr;
  final result = sdlHidOpenPathLookupFunction(pathPointer, bExclusive);
  calloc.free(pathPointer);
  return result;
}

///
/// Write an Output report to a HID device.
///
/// The first byte of `data` must contain the Report ID. For devices which only
/// support a single report, this must be set to 0x0. The remaining bytes
/// contain the report data. Since the Report ID is mandatory, calls to
/// SDL_hid_write() will always contain one more byte than the report contains.
/// For example, if a hid report is 16 bytes long, 17 bytes must be passed to
/// SDL_hid_write(), the Report ID (or 0x0, for devices with a single report),
/// followed by the report data (16 bytes). In this example, the length passed
/// in would be 17.
///
/// SDL_hid_write() will send the data on the first OUT endpoint, if one
/// exists. If it does not, it will send the data through the Control Endpoint
/// (Endpoint 0).
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param data The data to send, including the report number as the first
/// byte.
/// \param length The length in bytes of the data to send.
/// \returns the actual number of bytes written and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_write(SDL_hid_device *dev, const unsigned char *data, size_t length)
/// ```
int sdlHidWrite(Pointer<SdlHidDevice> dev, Pointer<Uint8> data, int length) {
  final sdlHidWriteLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Uint8> data, Uint32 length),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Uint8> data,
          int length)>('SDL_hid_write');
  return sdlHidWriteLookupFunction(dev, data, length);
}

///
/// Read an Input report from a HID device with timeout.
///
/// Input reports are returned to the host through the INTERRUPT IN endpoint.
/// The first byte will contain the Report number if the device uses numbered
/// reports.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param data A buffer to put the read data into.
/// \param length The number of bytes to read. For devices with multiple
/// reports, make sure to read an extra byte for the report
/// number.
/// \param milliseconds timeout in milliseconds or -1 for blocking wait.
/// \returns the actual number of bytes read and -1 on error. If no packet was
/// available to be read within the timeout period, this function
/// returns 0.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_read_timeout(SDL_hid_device *dev, unsigned char *data, size_t length, int milliseconds)
/// ```
int sdlHidReadTimeout(Pointer<SdlHidDevice> dev, Pointer<Uint8> data,
    int length, int milliseconds) {
  final sdlHidReadTimeoutLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHidDevice> dev, Pointer<Uint8> data,
          Uint32 length, Int32 milliseconds),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Uint8> data, int length,
          int milliseconds)>('SDL_hid_read_timeout');
  return sdlHidReadTimeoutLookupFunction(dev, data, length, milliseconds);
}

///
/// Read an Input report from a HID device.
///
/// Input reports are returned to the host through the INTERRUPT IN endpoint.
/// The first byte will contain the Report number if the device uses numbered
/// reports.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param data A buffer to put the read data into.
/// \param length The number of bytes to read. For devices with multiple
/// reports, make sure to read an extra byte for the report
/// number.
/// \returns the actual number of bytes read and -1 on error. If no packet was
/// available to be read and the handle is in non-blocking mode, this
/// function returns 0.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_read(SDL_hid_device *dev, unsigned char *data, size_t length)
/// ```
int sdlHidRead(Pointer<SdlHidDevice> dev, Pointer<Uint8> data, int length) {
  final sdlHidReadLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Uint8> data, Uint32 length),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Uint8> data,
          int length)>('SDL_hid_read');
  return sdlHidReadLookupFunction(dev, data, length);
}

///
/// Set the device handle to be non-blocking.
///
/// In non-blocking mode calls to SDL_hid_read() will return immediately with a
/// value of 0 if there is no data to be read. In blocking mode, SDL_hid_read()
/// will wait (block) until there is data to read before returning.
///
/// Nonblocking can be turned on and off at any time.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param nonblock enable or not the nonblocking reads - 1 to enable
/// nonblocking - 0 to disable nonblocking.
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_set_nonblocking(SDL_hid_device *dev, int nonblock)
/// ```
int sdlHidSetNonblocking(Pointer<SdlHidDevice> dev, int nonblock) {
  final sdlHidSetNonblockingLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHidDevice> dev, Int32 nonblock),
      int Function(
          Pointer<SdlHidDevice> dev, int nonblock)>('SDL_hid_set_nonblocking');
  return sdlHidSetNonblockingLookupFunction(dev, nonblock);
}

///
/// Send a Feature report to the device.
///
/// Feature reports are sent over the Control endpoint as a Set_Report
/// transfer. The first byte of `data` must contain the Report ID. For devices
/// which only support a single report, this must be set to 0x0. The remaining
/// bytes contain the report data. Since the Report ID is mandatory, calls to
/// SDL_hid_send_feature_report() will always contain one more byte than the
/// report contains. For example, if a hid report is 16 bytes long, 17 bytes
/// must be passed to SDL_hid_send_feature_report(): the Report ID (or 0x0, for
/// devices which do not use numbered reports), followed by the report data (16
/// bytes). In this example, the length passed in would be 17.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param data The data to send, including the report number as the first
/// byte.
/// \param length The length in bytes of the data to send, including the report
/// number.
/// \returns the actual number of bytes written and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_send_feature_report(SDL_hid_device *dev, const unsigned char *data, size_t length)
/// ```
int sdlHidSendFeatureReport(
    Pointer<SdlHidDevice> dev, Pointer<Uint8> data, int length) {
  final sdlHidSendFeatureReportLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Uint8> data, Uint32 length),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Uint8> data,
          int length)>('SDL_hid_send_feature_report');
  return sdlHidSendFeatureReportLookupFunction(dev, data, length);
}

///
/// Get a feature report from a HID device.
///
/// Set the first byte of `data` to the Report ID of the report to be read.
/// Make sure to allow space for this extra byte in `data`. Upon return, the
/// first byte will still contain the Report ID, and the report data will start
/// in data[1].
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param data A buffer to put the read data into, including the Report ID.
/// Set the first byte of `data` to the Report ID of the report to
/// be read, or set it to zero if your device does not use numbered
/// reports.
/// \param length The number of bytes to read, including an extra byte for the
/// report ID. The buffer can be longer than the actual report.
/// \returns the number of bytes read plus one for the report ID (which is
/// still in the first byte), or -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_get_feature_report(SDL_hid_device *dev, unsigned char *data, size_t length)
/// ```
int sdlHidGetFeatureReport(
    Pointer<SdlHidDevice> dev, Pointer<Uint8> data, int length) {
  final sdlHidGetFeatureReportLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Uint8> data, Uint32 length),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Uint8> data,
          int length)>('SDL_hid_get_feature_report');
  return sdlHidGetFeatureReportLookupFunction(dev, data, length);
}

///
/// Close a HID device.
///
/// \param dev A device handle returned from SDL_hid_open().
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_hid_close(SDL_hid_device *dev)
/// ```
void sdlHidClose(Pointer<SdlHidDevice> dev) {
  final sdlHidCloseLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlHidDevice> dev),
      void Function(Pointer<SdlHidDevice> dev)>('SDL_hid_close');
  return sdlHidCloseLookupFunction(dev);
}

///
/// Get The Manufacturer String from a HID device.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param string A wide string buffer to put the data into.
/// \param maxlen The length of the buffer in multiples of wchar_t.
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_get_manufacturer_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen)
/// ```
int sdlHidGetManufacturerString(
    Pointer<SdlHidDevice> dev, Pointer<Int16> string, int maxlen) {
  final sdlHidGetManufacturerStringLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Int16> string, Uint32 maxlen),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Int16> string,
          int maxlen)>('SDL_hid_get_manufacturer_string');
  return sdlHidGetManufacturerStringLookupFunction(dev, string, maxlen);
}

///
/// Get The Product String from a HID device.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param string A wide string buffer to put the data into.
/// \param maxlen The length of the buffer in multiples of wchar_t.
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_get_product_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen)
/// ```
int sdlHidGetProductString(
    Pointer<SdlHidDevice> dev, Pointer<Int16> string, int maxlen) {
  final sdlHidGetProductStringLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Int16> string, Uint32 maxlen),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Int16> string,
          int maxlen)>('SDL_hid_get_product_string');
  return sdlHidGetProductStringLookupFunction(dev, string, maxlen);
}

///
/// Get The Serial Number String from a HID device.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param string A wide string buffer to put the data into.
/// \param maxlen The length of the buffer in multiples of wchar_t.
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_get_serial_number_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen)
/// ```
int sdlHidGetSerialNumberString(
    Pointer<SdlHidDevice> dev, Pointer<Int16> string, int maxlen) {
  final sdlHidGetSerialNumberStringLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlHidDevice> dev, Pointer<Int16> string, Uint32 maxlen),
      int Function(Pointer<SdlHidDevice> dev, Pointer<Int16> string,
          int maxlen)>('SDL_hid_get_serial_number_string');
  return sdlHidGetSerialNumberStringLookupFunction(dev, string, maxlen);
}

///
/// Get a string from a HID device, based on its string index.
///
/// \param dev A device handle returned from SDL_hid_open().
/// \param string_index The index of the string to get.
/// \param string A wide string buffer to put the data into.
/// \param maxlen The length of the buffer in multiples of wchar_t.
/// \returns 0 on success and -1 on error.
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_hid_get_indexed_string(SDL_hid_device *dev, int string_index, wchar_t *string, size_t maxlen)
/// ```
int sdlHidGetIndexedString(Pointer<SdlHidDevice> dev, int stringIndex,
    Pointer<Int16> string, int maxlen) {
  final sdlHidGetIndexedStringLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlHidDevice> dev, Int32 stringIndex,
          Pointer<Int16> string, Uint32 maxlen),
      int Function(Pointer<SdlHidDevice> dev, int stringIndex,
          Pointer<Int16> string, int maxlen)>('SDL_hid_get_indexed_string');
  return sdlHidGetIndexedStringLookupFunction(dev, stringIndex, string, maxlen);
}

///
/// Start or stop a BLE scan on iOS and tvOS to pair Steam Controllers
///
/// \param active SDL_TRUE to start the scan, SDL_FALSE to stop the scan
///
/// \since This function is available since SDL 2.0.18.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_hid_ble_scan(SDL_bool active)
/// ```
void sdlHidBleScan(bool active) {
  final sdlHidBleScanLookupFunction = libSdl2.lookupFunction<
      Void Function(Int32 active),
      void Function(int active)>('SDL_hid_ble_scan');
  return sdlHidBleScanLookupFunction(active ? 1 : 0);
}
