// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
import 'dart:ffi';
import 'lib_sdl.dart';
import 'struct_sdl.dart';

/// 
/// Pumps the event loop, gathering events from the input devices.
/// 
/// This function updates the event queue and internal input device state.
/// 
/// This should only be run in the thread that sets the video mode.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_PumpEvents(void)
/// ```
void SDL_PumpEvents() {
  final _SDL_PumpEvents = DLL_SDL2.lookupFunction<
      Void Function(),
      void Function()>('SDL_PumpEvents');
  return _SDL_PumpEvents();
}

/// 
/// Checks the event queue for messages and optionally returns them.
/// 
/// If \c action is ::SDL_ADDEVENT, up to \c numevents events will be added to
/// the back of the event queue.
/// 
/// If \c action is ::SDL_PEEKEVENT, up to \c numevents events at the front
/// of the event queue, within the specified minimum and maximum type,
/// will be returned and will not be removed from the queue.
/// 
/// If \c action is ::SDL_GETEVENT, up to \c numevents events at the front
/// of the event queue, within the specified minimum and maximum type,
/// will be returned and will be removed from the queue.
/// 
/// \return The number of events actually stored, or -1 if there was an error.
/// 
/// This function is thread-safe.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PeepEvents(SDL_Event * events, int numevents, SDL_eventaction action, Uint32 minType, Uint32 maxType)
/// ```
int SDL_PeepEvents(Pointer<SDL_Event>? events, int numevents, int action, int minType, int maxType) {
  final _SDL_PeepEvents = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? events, Int32 numevents, Int32 action, Uint32 minType, Uint32 maxType),
      int Function(Pointer<SDL_Event>? events, int numevents, int action, int minType, int maxType)>('SDL_PeepEvents');
  return _SDL_PeepEvents(events, numevents, action, minType, maxType);
}

/// 
/// Checks to see if certain event types are in the event queue.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasEvent(Uint32 type)
/// ```
int SDL_HasEvent(int type) {
  final _SDL_HasEvent = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 type),
      int Function(int type)>('SDL_HasEvent');
  return _SDL_HasEvent(type);
}

/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_HasEvents(Uint32 minType, Uint32 maxType)
/// ```
int SDL_HasEvents(int minType, int maxType) {
  final _SDL_HasEvents = DLL_SDL2.lookupFunction<
      Int32 Function(Uint32 minType, Uint32 maxType),
      int Function(int minType, int maxType)>('SDL_HasEvents');
  return _SDL_HasEvents(minType, maxType);
}

/// 
/// This function clears events from the event queue
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FlushEvent(Uint32 type)
/// ```
void SDL_FlushEvent(int type) {
  final _SDL_FlushEvent = DLL_SDL2.lookupFunction<
      Void Function(Uint32 type),
      void Function(int type)>('SDL_FlushEvent');
  return _SDL_FlushEvent(type);
}

/// ```c
/// extern DECLSPEC void SDLCALL SDL_FlushEvents(Uint32 minType, Uint32 maxType)
/// ```
void SDL_FlushEvents(int minType, int maxType) {
  final _SDL_FlushEvents = DLL_SDL2.lookupFunction<
      Void Function(Uint32 minType, Uint32 maxType),
      void Function(int minType, int maxType)>('SDL_FlushEvents');
  return _SDL_FlushEvents(minType, maxType);
}

/// 
/// \brief Polls for currently pending events.
/// 
/// \return 1 if there are any pending events, or 0 if there are none available.
/// 
/// \param event If not NULL, the next event is removed from the queue and
/// stored in that area.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PollEvent(SDL_Event * event)
/// ```
int SDL_PollEvent(Pointer<SDL_Event>? event) {
  final _SDL_PollEvent = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event),
      int Function(Pointer<SDL_Event>? event)>('SDL_PollEvent');
  return _SDL_PollEvent(event);
}

/// 
/// \brief Waits indefinitely for the next available event.
/// 
/// \return 1, or 0 if there was an error while waiting for events.
/// 
/// \param event If not NULL, the next event is removed from the queue and
/// stored in that area.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_WaitEvent(SDL_Event * event)
/// ```
int SDL_WaitEvent(Pointer<SDL_Event>? event) {
  final _SDL_WaitEvent = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event),
      int Function(Pointer<SDL_Event>? event)>('SDL_WaitEvent');
  return _SDL_WaitEvent(event);
}

/// 
/// \brief Waits until the specified timeout (in milliseconds) for the next
/// available event.
/// 
/// \return 1, or 0 if there was an error while waiting for events.
/// 
/// \param event If not NULL, the next event is removed from the queue and
/// stored in that area.
/// \param timeout The timeout (in milliseconds) to wait for next event.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_WaitEventTimeout(SDL_Event * event, int timeout)
/// ```
int SDL_WaitEventTimeout(Pointer<SDL_Event>? event, int timeout) {
  final _SDL_WaitEventTimeout = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event, Int32 timeout),
      int Function(Pointer<SDL_Event>? event, int timeout)>('SDL_WaitEventTimeout');
  return _SDL_WaitEventTimeout(event, timeout);
}

/// 
/// \brief Add an event to the event queue.
/// 
/// \return 1 on success, 0 if the event was filtered, or -1 if the event queue
/// was full or there was some other error.
/// 
/// ```c
/// extern DECLSPEC int SDLCALL SDL_PushEvent(SDL_Event * event)
/// ```
int SDL_PushEvent(Pointer<SDL_Event>? event) {
  final _SDL_PushEvent = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<SDL_Event>? event),
      int Function(Pointer<SDL_Event>? event)>('SDL_PushEvent');
  return _SDL_PushEvent(event);
}

/// 
/// Sets up a filter to process all events before they change internal state and
/// are posted to the internal event queue.
/// 
/// The filter is prototyped as:
/// \code
/// int SDL_EventFilter(void *userdata, SDL_Event * event);
/// \endcode
/// 
/// If the filter returns 1, then the event will be added to the internal queue.
/// If it returns 0, then the event will be dropped from the queue, but the
/// internal state will still be updated.  This allows selective filtering of
/// dynamically arriving events.
/// 
/// \warning  Be very careful of what you do in the event filter function, as
/// it may run in a different thread!
/// 
/// There is one caveat when dealing with the ::SDL_QuitEvent event type.  The
/// event filter is only called when the window manager desires to close the
/// application window.  If the event filter returns 1, then the window will
/// be closed, otherwise the window will remain open if possible.
/// 
/// If the quit event is generated by an interrupt signal, it will bypass the
/// internal queue and be delivered to the application at the next event poll.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_SetEventFilter(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_SetEventFilter(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_SetEventFilter = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_SetEventFilter');
  return _SDL_SetEventFilter(filter, userdata);
}

/// 
/// Return the current event filter - can be used to "chain" filters.
/// If there is no event filter set, this function returns SDL_FALSE.
/// 
/// ```c
/// extern DECLSPEC SDL_bool SDLCALL SDL_GetEventFilter(SDL_EventFilter * filter, void **userdata)
/// ```
int SDL_GetEventFilter(Pointer<Pointer<Void>>? filter, Pointer<Pointer<Void>>? userdata) {
  final _SDL_GetEventFilter = DLL_SDL2.lookupFunction<
      Int32 Function(Pointer<Pointer<Void>>? filter, Pointer<Pointer<Void>>? userdata),
      int Function(Pointer<Pointer<Void>>? filter, Pointer<Pointer<Void>>? userdata)>('SDL_GetEventFilter');
  return _SDL_GetEventFilter(filter, userdata);
}

/// 
/// Add a function which is called when an event is added to the queue.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_AddEventWatch(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_AddEventWatch(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_AddEventWatch = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_AddEventWatch');
  return _SDL_AddEventWatch(filter, userdata);
}

/// 
/// Remove an event watch function added with SDL_AddEventWatch()
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_DelEventWatch(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_DelEventWatch(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_DelEventWatch = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_DelEventWatch');
  return _SDL_DelEventWatch(filter, userdata);
}

/// 
/// Run the filter function on the current event queue, removing any
/// events for which the filter returns 0.
/// 
/// ```c
/// extern DECLSPEC void SDLCALL SDL_FilterEvents(SDL_EventFilter filter, void *userdata)
/// ```
void SDL_FilterEvents(Pointer<Void>? filter, Pointer<Void>? userdata) {
  final _SDL_FilterEvents = DLL_SDL2.lookupFunction<
      Void Function(Pointer<Void>? filter, Pointer<Void>? userdata),
      void Function(Pointer<Void>? filter, Pointer<Void>? userdata)>('SDL_FilterEvents');
  return _SDL_FilterEvents(filter, userdata);
}

/// 
/// This function allows you to set the state of processing certain events.
/// - If \c state is set to ::SDL_IGNORE, that event will be automatically
/// dropped from the event queue and will not event be filtered.
/// - If \c state is set to ::SDL_ENABLE, that event will be processed
/// normally.
/// - If \c state is set to ::SDL_QUERY, SDL_EventState() will return the
/// current processing state of the specified event.
/// 
/// ```c
/// extern DECLSPEC Uint8 SDLCALL SDL_EventState(Uint32 type, int state)
/// ```
int SDL_EventState(int type, int state) {
  final _SDL_EventState = DLL_SDL2.lookupFunction<
      Uint8 Function(Uint32 type, Int32 state),
      int Function(int type, int state)>('SDL_EventState');
  return _SDL_EventState(type, state);
}

/// 
/// This function allocates a set of user-defined events, and returns
/// the beginning event number for that set of events.
/// 
/// If there aren't enough user-defined events left, this function
/// returns (Uint32)-1
/// 
/// ```c
/// extern DECLSPEC Uint32 SDLCALL SDL_RegisterEvents(int numevents)
/// ```
int SDL_RegisterEvents(int numevents) {
  final _SDL_RegisterEvents = DLL_SDL2.lookupFunction<
      Uint32 Function(Int32 numevents),
      int Function(int numevents)>('SDL_RegisterEvents');
  return _SDL_RegisterEvents(numevents);
}

