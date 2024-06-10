


import '../../domain/enums/company_type_enum.dart';
import '../../domain/models/adress_step_data_model.dart';
import '../../domain/models/company_step_data_model.dart';
import '../../domain/models/user_step_data_model.dart';

abstract class ISignUpEvent{}

class SignUpEventLoadData extends ISignUpEvent {}

class SignUpEventSetCompanyType extends ISignUpEvent{
  final CompanyTypeEnum companyTypeEnum;
  SignUpEventSetCompanyType({required this.companyTypeEnum});
}

class SignUpEventNextAddress extends ISignUpEvent{
  final CompanyStepDataModel companyStepData;

  SignUpEventNextAddress({
    required this.companyStepData
  });
}

class SignUpEventNextUser extends ISignUpEvent{
  final AddressStepDataModel addressStepData;

  SignUpEventNextUser({
    required this.addressStepData
  });
}

class SignUpEventComplete extends ISignUpEvent{
  final UserStepDataModel userStepData;

  SignUpEventComplete({
    required this.userStepData
  });
}


class SignUpEventNextStep extends ISignUpEvent{}

class SignUpEventPrevStep extends ISignUpEvent{}

class SignUpEventClearMessage extends ISignUpEvent{}




