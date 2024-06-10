

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/sales_person/sales_person_dto.dart';

abstract class SalesPersonApiService{

  Future<Resource<List<SalesPersonDto>>> getSalesPersons();

}