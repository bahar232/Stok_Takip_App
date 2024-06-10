class K {
  static const ApiK api = ApiK();
}

class ApiK {
  final int checkServiceForCancelInMilliSeconds = 1000;
  final int resetDownloadStateInMilli = 70;
  final int delayForResetDownloadStateInMilli = 30;

  final String apiServiceHostUrl =
      "http://192.168.0.103:5000"; //"http://localhost:5000";
  final String authPath = "api/auth";
  final String cityPath = "api/city";
  final String countryPath = "api/country";
  final String currencyTypePath = "api/currencyType";
  final String customerPath = "api/customer";
  final String customerMovementsPath = "api/customerMovements";
  final String districtPath = "api/district";
  final String invoicePath = "api/invoice";
  final String salesPersonPath = "api/salesPerson";
  final String materialPath = "api/material";
  final String materialImagePath = "api/materialImage";
  final String materialCategoryPath = "api/materialCategory";

  const ApiK();
}
