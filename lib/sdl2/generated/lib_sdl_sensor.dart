// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Locking for multi-threaded access to the sensor API
/// 
/// If you are using the sensor API or handling events from multiple threads
/// you should use these locking functions to protect access to the sensors.
/// 
/// In particular, you are guaranteed that the sensor list won't change, so the
/// API functions that take a sensor index will be valid, and sensor events
/// will not be delivered.
/// 
/// \since This function is available since SDL 2.0.14.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_LockSensors(void)
/// ```
void SDL_LockSensors() {
  final _SDL_LockSensors = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_LockSensors');
  return _SDL_LockSensors();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockSensors(void)
/// ```
void SDL_UnlockSensors() {
  final _SDL_UnlockSensors = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_UnlockSensors');
  return _SDL_UnlockSensors();
}

/// 
/// Count the number of sensors attached to the system right now.
/// 
/// \returns the number of sensors detected.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_NumSensors(void)
/// ```
int SDL_NumSensors() {
  final _SDL_NumSensors = DLL_SDL2.lookupFunction<
      Int32 Function(),
      int Function()>('SDL_NumSensors');
  return _SDL_NumSensors();
}

/// 
/// Get the implementation dependent name of a sensor.
/// 
/// \param device_index The sensor to obtain name from
/// \returns the sensor name, or NULL if `device_index` is out of range.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_SensorGetDeviceName(int device_index)
/// ```
String SDL_SensorGetDeviceName(int device_index) {
  final _SDL_SensorGetDeviceName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Int32 device_index),
      Pointer<Utf8>? Function(int device_index)>('SDL_SensorGetDeviceName');
  return _SDL_SensorGetDeviceName(device_index)!.toDartString();
}

/// 
/// Get the type of a sensor.
/// 
/// \param device_index The sensor to get the type from
/// \returns the SDL_SensorType, or `SDL_SENSOR_INVALID` if `device_index` is
/// out of range.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_SensorType SDLCALL SDL_SensorGetDeviceType(int device_index)
/// ```
int SDL_SensorGetDeviceType(int device_index) {
  final _SDL_SensorGetDeviceType = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_SensorGetDeviceType');
  return _SDL_SensorGetDeviceType(device_index);
}

/// 
/// Get the platform dependent type of a sensor.
/// 
/// \param device_index The sensor to check
/// \returns the sensor platform dependent type, or -1 if `device_index` is out
/// of range.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SensorGetDeviceNonPortableType(int device_index)
/// ```
int SDL_SensorGetDeviceNonPortableType(int device_index) {
  final _SDL_SensorGetDeviceNonPortableType = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_SensorGetDeviceNonPortableType');
  return _SDL_SensorGetDeviceNonPortableType(device_index);
}

/// 
/// Get the instance ID of a sensor.
/// 
/// \param device_index The sensor to get instance id from
/// \returns the sensor instance ID, or -1 if `device_index` is out of range.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_SensorID SDLCALL SDL_SensorGetDeviceInstanceID(int device_index)
/// ```
int SDL_SensorGetDeviceInstanceID(int device_index) {
  final _SDL_SensorGetDeviceInstanceID = DLL_SDL2.lookupFunction<
      Int32 Function(Int32 device_index),
      int Function(int device_index)>('SDL_SensorGetDeviceInstanceID');
  return _SDL_SensorGetDeviceInstanceID(device_index);
}

/// 
/// Open a sensor for use.
/// 
/// \param device_index The sensor to open
/// \returns an SDL_Sensor sensor object, or NULL if an error occurred.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_Sensor *SDLCALL SDL_SensorOpen(int device_index)
/// ```
Pointer<SDL_Sensor>? SDL_SensorOpen(int device_index) {
  final _SDL_SensorOpen = DLL_SDL2.lookupFunction<
      Pointer<SDL_Sensor>? Function(Int32 device_index),
      Pointer<SDL_Sensor>? Function(int device_index)>('SDL_SensorOpen');
  return _SDL_SensorOpen(device_index);
}

/// 
/// Return the SDL_Sensor associated with an instance id.
/// 
/// \param instance_id The sensor from instance id
/// \returns an SDL_Sensor object.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_Sensor *SDLCALL SDL_SensorFromInstanceID(SDL_SensorID instance_id)
/// ```
Pointer<SDL_Sensor>? SDL_SensorFromInstanceID(int instance_id) {
  final _SDL_SensorFromInstanceID = DLL_SDL2.lookupFunction<
      Pointer<SDL_Sensor>? Function(Int32 instance_id),
      Pointer<SDL_Sensor>? Function(int instance_id)>('SDL_SensorFromInstanceID');
  return _SDL_SensorFromInstanceID(instance_id);
}

/// 
/// Get the implementation dependent name of a sensor
/// 
/// \param sensor The SDL_Sensor object
/// \returns the sensor name, or NULL if `sensor` is NULL.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC const char *SDLCALL SDL_SensorGetName(SDL_Sensor *sensor)
/// ```
String SDL_SensorGetName(Pointer<SDL_Sensor>? sensor) {
  final _SDL_SensorGetName = DLL_SDL2.lookupFunction<
      Pointer<Utf8>? Function(Pointer<SDL_Sensor>? sensor),
      Pointer<Utf8>? Function(Pointer<SDL_Sensor>? sensor)>('SDL_SensorGetName');
  return _SDL_SensorGetName(sensor)!.toDartString();
}

/// 
/// Get the type of a sensor.
/// 
/// \param sensor The SDL_Sensor object to inspect
/// \returns the SDL_SensorType type, or `SDL_SENSOR_INVALID` if `sensor` is
/// NULL.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_SensorType SDLCALL SDL_SensorGetType(SDL_Sensor *sensor)
/// ```
int SDL_SensorGetType(Pointer<SDL_Sensor>? sensor) {
  final _SDL_SensorGetType = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Sensor>? sensor),
      int Function(Pointer<SDL_Sensor>? sensor)>('SDL_SensorGetType');
  return _SDL_SensorGetType(sensor);
}

/// 
/// Get the platform dependent type of a sensor.
/// 
/// \param sensor The SDL_Sensor object to inspect
/// \returns the sensor platform dependent type, or -1 if `sensor` is NULL.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SensorGetNonPortableType(SDL_Sensor *sensor)
/// ```
int SDL_SensorGetNonPortableType(Pointer<SDL_Sensor>? sensor) {
  final _SDL_SensorGetNonPortableType = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Sensor>? sensor),
      int Function(Pointer<SDL_Sensor>? sensor)>('SDL_SensorGetNonPortableType');
  return _SDL_SensorGetNonPortableType(sensor);
}

/// 
/// Get the instance ID of a sensor.
/// 
/// \param sensor The SDL_Sensor object to inspect
/// \returns the sensor instance ID, or -1 if `sensor` is NULL.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC SDL_SensorID SDLCALL SDL_SensorGetInstanceID(SDL_Sensor *sensor)
/// ```
int SDL_SensorGetInstanceID(Pointer<SDL_Sensor>? sensor) {
  final _SDL_SensorGetInstanceID = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Sensor>? sensor),
      int Function(Pointer<SDL_Sensor>? sensor)>('SDL_SensorGetInstanceID');
  return _SDL_SensorGetInstanceID(sensor);
}

/// 
/// Get the current state of an opened sensor.
/// 
/// The number of values and interpretation of the data is sensor dependent.
/// 
/// \param sensor The SDL_Sensor object to query
/// \param data A pointer filled with the current sensor state
/// \param num_values The number of values to write to data
/// \returns 0 or -1 if an error occurred.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SensorGetData(SDL_Sensor * sensor, float *data, int num_values)
/// ```
int SDL_SensorGetData(Pointer<SDL_Sensor>? sensor, Pointer<Float>? data, int num_values) {
  final _SDL_SensorGetData = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Sensor>? sensor, Pointer<Float>? data, Int32 num_values),
      int Function(Pointer<SDL_Sensor>? sensor, Pointer<Float>? data, int num_values)>('SDL_SensorGetData');
  return _SDL_SensorGetData(sensor, data, num_values);
}

/// 
/// Close a sensor previously opened with SDL_SensorOpen().
/// 
/// \param sensor The SDL_Sensor object to close
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SensorClose(SDL_Sensor * sensor)
/// ```
void SDL_SensorClose(Pointer<SDL_Sensor>? sensor) {
  final _SDL_SensorClose = DLL_SDL2.lookupFunction<
      Void Function(Pointer<SDL_Sensor>? sensor),
      void Function(Pointer<SDL_Sensor>? sensor)>('SDL_SensorClose');
  return _SDL_SensorClose(sensor);
}

/// 
/// Update the current state of the open sensors.
/// 
/// This is called automatically by the event loop if sensor events are
/// enabled.
/// 
/// This needs to be called from the thread that initialized the sensor
/// subsystem.
/// 
/// \since This function is available since SDL 2.0.9.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SensorUpdate(void)
/// ```
void SDL_SensorUpdate() {
  final _SDL_SensorUpdate = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_SensorUpdate');
  return _SDL_SensorUpdate();
}

