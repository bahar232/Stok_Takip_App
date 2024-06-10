
import 'package:quantumapp/core/domain/preferences/model/pref_key_enum.dart';

import '../preferences/model/pref_key.dart';

class KPref{

  static final PrefKey<String> currentAuth = PrefKey(key: "currentAuth", defaultValue: "");

  static final prefValues = <PrefKey>[
    currentAuth
  ];

  static final prefEnumValues = <PrefKeyEnum>[];

}