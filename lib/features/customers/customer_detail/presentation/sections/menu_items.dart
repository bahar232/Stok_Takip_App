
import 'package:quantumapp/core/domain/contants/k_image.dart';
import 'package:quantumapp/core/presentation/components/menu_item.dart';
import 'package:quantumapp/core/util/icon_resource.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/customer_detail_page.dart';

extension CustomerDetailPageMenuItemsExt on CustomerDetailPage{

  IconResourceAsset _getIconFromAsset({required String path}){
    return IconResourceAsset(path: path,size: 50);
  }

  List<MenuItem> getMenuItems(){
    return [
      MenuItem(
          title: "Ana Menü",
          iconResource: _getIconFromAsset(path: KImage.home),
          onClick: (){}
      ),
      MenuItem(
          title: "Extre",
          iconResource: _getIconFromAsset(path: KImage.extre),
          onClick: (){}
      ),
      MenuItem(
          title: "M.Fatura",
          iconResource: _getIconFromAsset(path: KImage.invoice),
          onClick: (){}
      ),
      MenuItem(
          title: "Rapor",
          iconResource: _getIconFromAsset(path: KImage.report),
          onClick: (){}
      ),
      MenuItem(
          title: "Yaşlandırma",
          iconResource: _getIconFromAsset(path: KImage.reportAging),
          onClick: (){}
      ),
      MenuItem(
          title: "Extre Gönder",
          iconResource: _getIconFromAsset(path: KImage.email),
          onClick: (){}
      ),
      MenuItem(
          title: "Bekleyen Siparişler",
          iconResource: _getIconFromAsset(path: KImage.reportOrder2),
          onClick: (){}
      ),
      MenuItem(
          title: "Extre Kart",
          iconResource: _getIconFromAsset(path: KImage.extre),
          onClick: (){}
      ),
      MenuItem(
          title: "Email Güncelle",
          iconResource: _getIconFromAsset(path: KImage.email2),
          onClick: (){}
      ),
    ];
  }


}