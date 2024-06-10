

import 'package:rxdart/rxdart.dart';

abstract class ConnectivityService{

  ValueStream<bool> get connectionStream;

  bool? get hasConnected;

  Future<bool>  get checkHasConnected;
}