import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:rxdart/rxdart.dart';

class ConnectivityServiceImpl extends ConnectivityService{

  ConnectivityServiceImpl(){
    // connectionStream.value = true;
  }
  
  @override
  ValueStream<bool> get connectionStream => Connectivity().onConnectivityChanged
      .map((event) => _isConnectInternet(event)).shareValue();

  @override
  bool? get hasConnected => connectionStream.valueOrNull;

  @override
  Future<bool> get checkHasConnected async{
    return _isConnectInternet(await Connectivity().checkConnectivity());
  }

  bool _isConnectInternet(ConnectivityResult result){
    return [
      ConnectivityResult.ethernet,
      ConnectivityResult.mobile,
      ConnectivityResult.wifi
    ].contains(result);
  }


}