

import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/core/util/resource.dart';

class GetConnectivityResourceUseCase{

  late final ConnectivityService _connectivityService;

  GetConnectivityResourceUseCase({required ConnectivityService connectivityService}){
    _connectivityService = connectivityService;
  }

  Future<Resource<void>> call()async{

    final hasConnected = _connectivityService.hasConnected ?? await _connectivityService.checkHasConnected;
    if(hasConnected){
      return ResourceSuccess(null);
    }
    return ResourceError("Internet bağlantısı bulunmamaktadır");
  }

}