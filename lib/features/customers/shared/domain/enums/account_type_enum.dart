
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';

enum AccountTypeEnum implements ISelectCatItem{
  sellerAndBuyer(
    typeId: 0,
    title: "Alıcı + Satıcı (Müşteri ve Tedarikçi)"
  ),
  buyer(
    typeId: 1,
    title: "Alıcı (Müşteriler)"
  ),
  seller(
    typeId: 2,
    title: "Satıcı (Tedarikçi)"
  ),
  eCustomer(
    typeId: 3,
    title: "E-Ticaret Müştericisi"
  );

  const AccountTypeEnum({required this.typeId, required this.title});

  @override
  final String title;
  final int typeId;

  @override
  get selectCatId => typeId;

  static AccountTypeEnum get defaultType => AccountTypeEnum.sellerAndBuyer;

  static AccountTypeEnum from(int typeId){
    if(typeId == AccountTypeEnum.sellerAndBuyer.typeId){
      return AccountTypeEnum.sellerAndBuyer;
    }
    else if(typeId == AccountTypeEnum.buyer.typeId){
      return AccountTypeEnum.buyer;
    }
    if(typeId == AccountTypeEnum.seller.typeId){
      return AccountTypeEnum.seller;
    }
    if(typeId == AccountTypeEnum.eCustomer.typeId){
      return AccountTypeEnum.eCustomer;
    }
    return AccountTypeEnum.sellerAndBuyer;
  }

}