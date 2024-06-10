
class PatchUtil{
  static List<Map<String,dynamic>> transform({
    String op = "add",
    required Map<String, dynamic> dataMap
  }){

    final result = <Map<String,dynamic>>[];
    for(final key in dataMap.keys){
      final currentMap = <String,dynamic>{};
      final value = dataMap[key];
      currentMap["path"] = "/$key";
      currentMap["op"] = op;
      currentMap["value"] = value;

      result.add(currentMap);
    }
    return result;
  }

}