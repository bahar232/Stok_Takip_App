

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/core/domain/model/cat_selector_model.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_event.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_state.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_category_item.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_form_category_item.dart';
import 'package:quantumapp/core/presentation/dialogs/show_select_cat_item_dia.dart';

Widget gGetInfoSelectCountry({
  List<FormFieldValidator<String>> validators = const []
}){
  return BlocSelector<GetInfoBloc,GetInfoState,CatSelectorModel<Country>>(
    selector: (state)=> CatSelectorModel(
        items: state.filteredCountries,
        selected: state.selectedCountry,
        isEnabled: state.isCountryEnabled
    ),
    builder: (context, stateSelector){
      return SelectFormCategoryItem(
        placeHolder: "Ülke seç",
        title: stateSelector.selected?.name,
        isEnabled: stateSelector.isEnabled,
        validators: [
          KValidate.required,
          ...validators
        ],
        onTap: (){
          showSelectCatItemDia(
              context,
              title: "Ülke seç",
              items: stateSelector.items,
              onSelected: (selected){
                context.read<GetInfoBloc>()
                    .add(GetInfoEventSelectCountry(country: selected));
              }
          );
        },
      );
    },
  );
}

Widget gGetInfoSelectCurrency({
  List<FormFieldValidator<String>> validators = const []
}){
  return BlocSelector<GetInfoBloc,GetInfoState,CatSelectorModel<CurrencyTypeModel>>(
    selector: (state)=>CatSelectorModel(
        items: state.currencies,
        selected: state.selectedCurrency,
        isEnabled: true
    ),
    builder: (context, stateSelector){
      return SelectFormCategoryItem(
        placeHolder: "Döviz birimi seç",
        title: stateSelector.selected?.shortCode,
        isEnabled: true,
        validators: [
          KValidate.required,
          ...validators
        ],
        onTap: (){
          showSelectCatItemDia(
              context,
              title: "Döviz birimi seç",
              items: stateSelector.items,
              onSelected: (selected){
                context.read<GetInfoBloc>()
                    .add(GetInfoEventSelectCurrency(currency: selected));
              }
          );
        },
      );
    },
  );
}

Widget gGetInfoSelectCity({
  List<FormFieldValidator<String>> validators = const []
}){
  return BlocSelector<GetInfoBloc,GetInfoState,CatSelectorModel<City>>(
    selector: (state)=>CatSelectorModel(
        items: state.filteredCities,
        selected: state.selectedCity,
        isEnabled: state.isCityEnabled
    ),
    builder: (context, stateSelector){
      return SelectFormCategoryItem(
        placeHolder: "Şehir seç",
        title: stateSelector.selected?.name,
        isEnabled: stateSelector.isEnabled,
        validators: [
          KValidate.required,
          ...validators
        ],
        onTap: (){
          showSelectCatItemDia(
              context,
              title: "Şehir seç",
              items: stateSelector.items,
              onSelected: (selected){
                context.read<GetInfoBloc>()
                    .add(GetInfoEventSelectCity(city: selected));
              }
          );
        },
      );
    },
  );
}

Widget gGetInfoSelectDistrict({
  List<FormFieldValidator<String>> validators = const []
}){
  return BlocSelector<GetInfoBloc,GetInfoState,CatSelectorModel<District>>(
    selector: (state)=>CatSelectorModel(
        items: state.filteredDistricts,
        selected: state.selectedDistrict,
        isEnabled: state.isDistrictEnabled
    ),
    builder: (context, stateSelector){
      return SelectFormCategoryItem(
        placeHolder: "İlçe seç",
        title: stateSelector.selected?.name,
        isEnabled: stateSelector.isEnabled,
        validators: [
          KValidate.required,
          ...validators
        ],
        onTap: (){
          showSelectCatItemDia(
              context,
              title: "İlçe seç",
              items: stateSelector.items,
              onSelected: (selected){
                context.read<GetInfoBloc>()
                    .add(GetInfoEventSelectDistrict(district: selected));
              }
          );
        },
      );
    },
  );
}