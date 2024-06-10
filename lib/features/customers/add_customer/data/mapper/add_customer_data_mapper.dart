


import 'package:quantumapp/features/customers/add_customer/domain/model/add_customer_data.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';

extension AddCustomerDataExt on AddCustomerData{
  Customer toCustomer({
    required String companyCode,
    required String addingUserNameAndSurname,
    required int addingUserId
  }){
    return Customer(
        id: id,
        name: name,
        tckNo: tckNo,
        taxOffice: taxOffice,
        taxNo: taxNo,
        related: related,
        district: selectedDistrict?.name ?? "",
        currencyUnitId: selectedCurrency?.currencyType,
        country: selectedCountry?.name ?? "",
        city: selectedCity?.name ?? "",
        authorizedSurname: authorizedSurname,
        authorizedName: authorizedName,
        address: address,
        accountType: selectedAccountType,
        code: code,
        addingUserNameAndSurname: addingUserNameAndSurname,
        addingUserId: addingUserId,
        companyCode: companyCode
    );
  }

  Customer toCustomerWithC({
    required Customer c
  }){
    return toCustomer(
        companyCode: c.companyCode,
        addingUserNameAndSurname: c.addingUserNameAndSurname,
        addingUserId: c.addingUserId
    );
  }
}