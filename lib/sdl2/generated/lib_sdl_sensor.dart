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
void sdlLockSensors() {
  final sdlLockSensorsLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_LockSensors');
  return sdlLockSensorsLookupFunction();
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_UnlockSensors(void)
/// ```
void sdlUnlockSensors() {
  final sdlUnlockSensorsLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_UnlockSensors');
  return sdlUnlockSensorsLookupFunction();
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
int sdlNumSensors() {
  final sdlNumSensorsLookupFunction = libSdl2
      .lookupFunction<Int32 Function(), int Function()>('SDL_NumSensors');
  return sdlNumSensorsLookupFunction();
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
String? sdlSensorGetDeviceName(int deviceIndex) {
  final sdlSensorGetDeviceNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Int32 deviceIndex),
      Pointer<Utf8> Function(int deviceIndex)>('SDL_SensorGetDeviceName');
  final result = sdlSensorGetDeviceNameLookupFunction(deviceIndex);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlSensorGetDeviceType(int deviceIndex) {
  final sdlSensorGetDeviceTypeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_SensorGetDeviceType');
  return sdlSensorGetDeviceTypeLookupFunction(deviceIndex);
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
int sdlSensorGetDeviceNonPortableType(int deviceIndex) {
  final sdlSensorGetDeviceNonPortableTypeLookupFunction =
      libSdl2.lookupFunction<Int32 Function(Int32 deviceIndex),
          int Function(int deviceIndex)>('SDL_SensorGetDeviceNonPortableType');
  return sdlSensorGetDeviceNonPortableTypeLookupFunction(deviceIndex);
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
int sdlSensorGetDeviceInstanceId(int deviceIndex) {
  final sdlSensorGetDeviceInstanceIdLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Int32 deviceIndex),
      int Function(int deviceIndex)>('SDL_SensorGetDeviceInstanceID');
  return sdlSensorGetDeviceInstanceIdLookupFunction(deviceIndex);
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
Pointer<SdlSensor> sdlSensorOpen(int deviceIndex) {
  final sdlSensorOpenLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlSensor> Function(Int32 deviceIndex),
      Pointer<SdlSensor> Function(int deviceIndex)>('SDL_SensorOpen');
  return sdlSensorOpenLookupFunction(deviceIndex);
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
Pointer<SdlSensor> sdlSensorFromInstanceId(int instanceId) {
  final sdlSensorFromInstanceIdLookupFunction = libSdl2.lookupFunction<
      Pointer<SdlSensor> Function(Int32 instanceId),
      Pointer<SdlSensor> Function(int instanceId)>('SDL_SensorFromInstanceID');
  return sdlSensorFromInstanceIdLookupFunction(instanceId);
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
String? sdlSensorGetName(Pointer<SdlSensor> sensor) {
  final sdlSensorGetNameLookupFunction = libSdl2.lookupFunction<
      Pointer<Utf8> Function(Pointer<SdlSensor> sensor),
      Pointer<Utf8> Function(Pointer<SdlSensor> sensor)>('SDL_SensorGetName');
  final result = sdlSensorGetNameLookupFunction(sensor);
  if (result == nullptr) {
    return null;
  }
  return result.toDartString();
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
int sdlSensorGetType(Pointer<SdlSensor> sensor) {
  final sdlSensorGetTypeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSensor> sensor),
      int Function(Pointer<SdlSensor> sensor)>('SDL_SensorGetType');
  return sdlSensorGetTypeLookupFunction(sensor);
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
int sdlSensorGetNonPortableType(Pointer<SdlSensor> sensor) {
  final sdlSensorGetNonPortableTypeLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSensor> sensor),
      int Function(Pointer<SdlSensor> sensor)>('SDL_SensorGetNonPortableType');
  return sdlSensorGetNonPortableTypeLookupFunction(sensor);
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
int sdlSensorGetInstanceId(Pointer<SdlSensor> sensor) {
  final sdlSensorGetInstanceIdLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSensor> sensor),
      int Function(Pointer<SdlSensor> sensor)>('SDL_SensorGetInstanceID');
  return sdlSensorGetInstanceIdLookupFunction(sensor);
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
/// extern DECLSPEC int SDLCALL SDL_SensorGetData(SDL_Sensor *sensor, float *data, int num_values)
/// ```
int sdlSensorGetData(
    Pointer<SdlSensor> sensor, Pointer<Float> data, int numValues) {
  final sdlSensorGetDataLookupFunction = libSdl2.lookupFunction<
      Int32 Function(
          Pointer<SdlSensor> sensor, Pointer<Float> data, Int32 numValues),
      int Function(Pointer<SdlSensor> sensor, Pointer<Float> data,
          int numValues)>('SDL_SensorGetData');
  return sdlSensorGetDataLookupFunction(sensor, data, numValues);
}

///
/// Get the current state of an opened sensor with the timestamp of the last
/// update.
///
/// The number of values and interpretation of the data is sensor dependent.
///
/// \param sensor The SDL_Sensor object to query
/// \param timestamp A pointer filled with the timestamp in microseconds of the
/// current sensor reading if available, or 0 if not
/// \param data A pointer filled with the current sensor state
/// \param num_values The number of values to write to data
/// \returns 0 or -1 if an error occurred.
///
/// \since This function is available since SDL 2.26.0.
///
/// ```c
/// extern DECLSPEC int SDLCALL SDL_SensorGetDataWithTimestamp(SDL_Sensor *sensor, Uint64 *timestamp, float *data, int num_values)
/// ```
int sdlSensorGetDataWithTimestamp(Pointer<SdlSensor> sensor,
    Pointer<Uint64> timestamp, Pointer<Float> data, int numValues) {
  final sdlSensorGetDataWithTimestampLookupFunction = libSdl2.lookupFunction<
      Int32 Function(Pointer<SdlSensor> sensor, Pointer<Uint64> timestamp,
          Pointer<Float> data, Int32 numValues),
      int Function(
          Pointer<SdlSensor> sensor,
          Pointer<Uint64> timestamp,
          Pointer<Float> data,
          int numValues)>('SDL_SensorGetDataWithTimestamp');
  return sdlSensorGetDataWithTimestampLookupFunction(
      sensor, timestamp, data, numValues);
}

///
/// Close a sensor previously opened with SDL_SensorOpen().
///
/// \param sensor The SDL_Sensor object to close
///
/// \since This function is available since SDL 2.0.9.
///
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SensorClose(SDL_Sensor *sensor)
/// ```
void sdlSensorClose(Pointer<SdlSensor> sensor) {
  final sdlSensorCloseLookupFunction = libSdl2.lookupFunction<
      Void Function(Pointer<SdlSensor> sensor),
      void Function(Pointer<SdlSensor> sensor)>('SDL_SensorClose');
  return sdlSensorCloseLookupFunction(sensor);
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
void sdlSensorUpdate() {
  final sdlSensorUpdateLookupFunction = libSdl2
      .lookupFunction<Void Function(), void Function()>('SDL_SensorUpdate');
  return sdlSensorUpdateLookupFunction();
}
