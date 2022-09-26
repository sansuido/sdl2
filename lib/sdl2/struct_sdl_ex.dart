import 'dart:ffi';
import 'dart:convert';
import 'dart:typed_data';
import './generated/struct_sdl.dart';

extension SdlTextEditingEventExtension on Pointer<SdlTextEditingEvent> {
  String get text {
    var buff = Int8List.fromList([
      ref.text_1,
      ref.text_2,
      ref.text_3,
      ref.text_4,
      ref.text_5,
      ref.text_6,
      ref.text_7,
      ref.text_8,
      ref.text_9,
      ref.text_10,
      ref.text_11,
      ref.text_12,
      ref.text_13,
      ref.text_14,
      ref.text_15,
      ref.text_16,
      ref.text_17,
      ref.text_18,
      ref.text_19,
      ref.text_20,
      ref.text_21,
      ref.text_22,
      ref.text_23,
      ref.text_24,
      ref.text_25,
      ref.text_26,
      ref.text_27,
      ref.text_28,
      ref.text_29,
      ref.text_30,
      ref.text_31,
      ref.text_32,
    ]).buffer.asUint8List();
    var list = <int>[];
    for (var i = 0; i < buff.length; i++) {
      if (buff[i] == 0) {
        break;
      }
      list.add(buff[i]);
    }
    return utf8.decode(list);
  }
}

extension SdlTextInputEventExtension on Pointer<SdlTextInputEvent> {
  String get text {
    var buff = Int8List.fromList([
      ref.text_1,
      ref.text_2,
      ref.text_3,
      ref.text_4,
      ref.text_5,
      ref.text_6,
      ref.text_7,
      ref.text_8,
      ref.text_9,
      ref.text_10,
      ref.text_11,
      ref.text_12,
      ref.text_13,
      ref.text_14,
      ref.text_15,
      ref.text_16,
      ref.text_17,
      ref.text_18,
      ref.text_19,
      ref.text_20,
      ref.text_21,
      ref.text_22,
      ref.text_23,
      ref.text_24,
      ref.text_25,
      ref.text_26,
      ref.text_27,
      ref.text_28,
      ref.text_29,
      ref.text_30,
      ref.text_31,
      ref.text_32,
    ]).buffer.asUint8List();
    var list = <int>[];
    for (var i = 0; i < buff.length; i++) {
      if (buff[i] == 0) {
        break;
      }
      list.add(buff[i]);
    }
    return utf8.decode(list);
  }
}
