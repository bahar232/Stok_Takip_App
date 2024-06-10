

import 'package:quantumapp/core/domain/model/sign_up_model/sign_up_model.dart';
import 'package:quantumapp/features/authentication/sign_up/domain/models/adress_step_data_model.dart';
import 'package:quantumapp/features/authentication/sign_up/domain/models/company_step_data_model.dart';
import 'package:quantumapp/features/authentication/sign_up/domain/models/user_step_data_model.dart';

extension SignUpModelDataMapper on SignUpModel{

  static SignUpModel fromData({
    required CompanyStepDataModel companyStepData,
    required AddressStepDataModel addressStepData,
    required UserStepDataModel userStepData
  }){
    return SignUpModel(
      companyName: companyStepData.companyName,
      companyTypeId: companyStepData.companyTypeEnum.typeId,
      authorizedName: companyStepData.authorizedName,
      authorizedSurname: companyStepData.authorizedSurname,
      currencyTypeModel: companyStepData.currencyTypeModel,
      authorizedTC: companyStepData.authorizedTC,
      taxOffice: companyStepData.taxOffice,
      taxNo: companyStepData.taxNo,
      address: addressStepData.address,
      country: addressStepData.country,
      city: addressStepData.city,
      district: addressStepData.district,
      userName: userStepData.userName,
      userNameAndSurname: userStepData.userNameAndSurname,
      userTC: userStepData.userTC,
      password: userStepData.password
    );
  }
}