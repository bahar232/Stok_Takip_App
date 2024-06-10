
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/sales_person/sales_person_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';

extension SalesPersonDtoExt on SalesPersonDto{

  SalesPerson toSalesPerson(){
    return SalesPerson(
      id: plasiyerId,
      name: adi,
      code: kodu,
      active: aktif,
      companyCode: sirketKodu
    );
  }
}