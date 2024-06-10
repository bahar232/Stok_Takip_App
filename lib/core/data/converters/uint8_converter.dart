

import "dart:convert";
import "dart:typed_data";

import "package:json_annotation/json_annotation.dart";

/// Converts to and from [Uint8List] and [List]<[int]>.
class Uint8ListConverter implements JsonConverter<Uint8List?, String?> {
  /// Create a new instance of [Uint8ListConverter].
  const Uint8ListConverter();


  @override
  Uint8List? fromJson(String? jsonStr) {
    if(jsonStr == null)return null;
    try{
      return const Base64Decoder().convert(jsonStr);
    }catch(e){
      return null;
    }
  }

  @override
  String? toJson(Uint8List? object) {
    if (object == null) return null;
    return const Base64Encoder().convert(object.toList());
  }
}