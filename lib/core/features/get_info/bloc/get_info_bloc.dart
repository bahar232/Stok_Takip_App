


import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/core/domain/repo/get_info_repo.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/core/features/get_info/models/get_info_init_params.dart';
import 'package:collection/collection.dart';

import 'get_info_event.dart';
import 'get_info_state.dart';

class GetInfoBloc extends Bloc<IGetInfoEvent,GetInfoState>{

  late final GetInfoRepo _getInfoRepo;
  late final ConnectivityService _connectivityService;


  GetInfoBloc({
    required GetInfoRepo getInfoRepo,
    required ConnectivityService connectivityService
  }): super(GetInfoState.init()){

    _getInfoRepo = getInfoRepo;
    _connectivityService = connectivityService;

    on<GetInfoEventLoadData>(_onLoadData, transformer: restartable());
    on<GetInfoEventCheckLoadData>(_onCheckLoadData, transformer: restartable());

    on<GetInfoEventSelectCity>(_onSelectCity, transformer: restartable());
    on<GetInfoEventSelectCountry>(_onSelectCountry, transformer: restartable());
    on<GetInfoEventSelectCurrency>(_onSelectCurrency, transformer: restartable());
    on<GetInfoEventSelectDistrict>(_onSelectDistrict, transformer: restartable());

    on<GetInfoEventClearMessage>(_onClearMessage, transformer: restartable());

  }


  void _onLoadData(GetInfoEventLoadData event, Emitter<GetInfoState> emit) async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    emit(state.copyWith(isLoading: true));

    final citiesResponse = await _getInfoRepo.getAllCities();
    final countriesResponse = await _getInfoRepo.getAllCountries();
    final districtsResponse = await _getInfoRepo.getAllDistricts();
    final currenciesResponse = await _getInfoRepo.getAllCurrencies();

    String? errorMessage;
    List<City> cities = [];
    List<Country> countries = [];
    List<District> districts = [];
    List<CurrencyTypeModel> currencies = [];


    citiesResponse.handle(
        onSuccess: (data){
          cities = data;
        },
        onError: (error){
          errorMessage = error;
        }
    );

    countriesResponse.handle(
        onSuccess: (data){
          countries = data;
        },
        onError: (error){
          errorMessage = error;
        }
    );

    districtsResponse.handle(
        onSuccess: (data){
          districts = data;
        },
        onError: (error){
          errorMessage = error;
        }
    );

    currenciesResponse.handle(
        onSuccess: (data){
          currencies = data;
        },
        onError: (error){
          errorMessage = error;
        }
    );

    emit(state.copyWith(
        isLoading: false,
        countries: countries,
        cities: cities,
        districts: districts,
        currencies: currencies,
        filteredCountries: countries,
        isCountryEnabled: true,
        message: errorMessage
    ));

    emit(_adaptInitState(state, event.initParams));
  }

  void _onCheckLoadData(GetInfoEventCheckLoadData event, Emitter<GetInfoState> emit) async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }
    emit(GetInfoState.init().copyWith(
      districts: state.districts,
      cities: state.cities,
      countries: state.countries,
      currencies: state.currencies,
      filteredCountries: state.countries,
    ));

    if(state.anyEmptyData){
      add(GetInfoEventLoadData());
    }else{
      emit(_adaptInitState(state, event.initParams));
    }
  }

  void _onSelectCountry(GetInfoEventSelectCountry event, Emitter<GetInfoState> emit)async{
    emit(state.copyWith(
        selectedCountry: event.country,
        isCityEnabled: true,
        isDistrictEnabled: false,
        selectedDistrict: null,
        selectedCity: null,
        filteredCities: state.cities
    ));
  }

  void _onSelectCity(GetInfoEventSelectCity event, Emitter<GetInfoState> emit)async{
    if(state.selectedCountry == null) return;

    emit(state.copyWith(
      selectedCity: event.city,
      isDistrictEnabled: true,
      selectedDistrict: null,
      filteredDistricts: state.districts.where((e) => e.cityPlateCode == event.city.plateNo.toString()).toList(),
    ));
  }

  void _onSelectDistrict(GetInfoEventSelectDistrict event, Emitter<GetInfoState> emit)async{
    if(state.selectedCity == null) return;
    emit(state.copyWith(
        selectedDistrict: event.district
    ));
  }

  void _onSelectCurrency(GetInfoEventSelectCurrency event, Emitter<GetInfoState> emit){
    emit(state.copyWith(selectedCurrency: event.currency));
  }


  void _onClearMessage(GetInfoEventClearMessage event, Emitter<GetInfoState> emit){
    emit(state.copyWith(message: null));
  }

  GetInfoState _adaptInitState(GetInfoState oldState, GetInfoInitParams? params){
    if(params == null) return oldState;
    final selectedCountry = state.countries.firstWhereOrNull((e) => e.name.toLowerCase() == params.country?.toLowerCase());
    final selectedCity = state.cities.firstWhereOrNull((e) => e.name.toLowerCase() == params.city?.toLowerCase());
    final selectedDistrict = state.districts.firstWhereOrNull((e) => e.name.toLowerCase() == params.district?.toLowerCase());
    final selectedCurrency = state.currencies.firstWhereOrNull((e) => e.currencyType == params.currencyUnitId);

    return oldState.copyWith(
      isCountryEnabled: true,
      isCityEnabled: selectedCountry != null,
      isDistrictEnabled: selectedCity != null,
      selectedCountry: selectedCountry,
      selectedCurrency: selectedCurrency,
      selectedDistrict: selectedDistrict,
      selectedCity: selectedCity,
      filteredCities: state.cities,
      filteredDistricts: state.districts.where((e) => e.cityPlateCode == selectedCity?.plateNo?.toString()).toList(),
    );
  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }


}