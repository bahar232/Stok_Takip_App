

import 'package:flutter/material.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/contants/k_image.dart';
import 'package:quantumapp/core/presentation/components/menu_item.dart';
import 'package:quantumapp/core/util/icon_resource.dart';
import 'package:quantumapp/features/app/routers/app_routers.dart';
import 'package:quantumapp/features/home/presentation/home_page.dart';

extension HomePageMenuItemExt on HomePage{

  IconResourceAsset _getIconFromAsset({required String path}){
    return IconResourceAsset(path: path,size: 50);
  }

  List<MenuItem> getMenuItems(BuildContext context){
    return [
      MenuItem(
          title: "Müşteriler",
          iconResource: _getIconFromAsset(path: KImage.customers),
          onClick: (){
            CustomerRoute().push(context);
          }
      ),
      MenuItem(
          title: "Stoklar",
          iconResource: _getIconFromAsset(path: KImage.stocks),
          onClick: (){
            ShowMaterialsRoute().push(context);
          }
      ),

      MenuItem(
          title: "Faturalar",
          iconResource: _getIconFromAsset(path: KImage.invoice),
          onClick: (){
            ShowInvoicesRoute().push(context);
          }
      ),
      MenuItem(
          title: "Graphs",
          iconResource: IconResourceIconData(iconData: Icons.access_time,size: 50),
          onClick: (){
            GraphRoute().push(context);
          }
      ),
      MenuItem(
          title: "Log out",
          iconResource: IconResourceIconData(iconData: Icons.logout,size: 50),
          onClick: ()async{
            AuthManager.instance.logOut();
          }
      ),
      // MenuItem(
      //     title: "Raporlar",
      //     iconResource: _getIconFromAsset(path: KImage.report),
      //     onClick: (){
      //       ShowInvoicesRoute().push(context);
      //     }
      // ),
      // MenuItem(
      //     title: "Siparişler",
      //     iconResource: _getIconFromAsset(path: KImage.orders),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Tahsilatlar",
      //     iconResource: _getIconFromAsset(path: KImage.collection),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Faturalar",
      //     iconResource: _getIconFromAsset(path: KImage.invoice),
      //     onClick: (){
      //       ShowInvoicesRoute().push(context);
      //     }
      // ),
      // MenuItem(
      //     title: "M.Fatura",
      //     iconResource: _getIconFromAsset(path: KImage.invoice),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Teklifler",
      //     iconResource: _getIconFromAsset(path: KImage.orders),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Talepler",
      //     iconResource: _getIconFromAsset(path: KImage.orders),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Yönetim Rap",
      //     iconResource: _getIconFromAsset(path: KImage.dashboard),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "M.Raporlar",
      //     iconResource: _getIconFromAsset(path: KImage.chartAddIcon),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "T.Raporu",
      //     iconResource: _getIconFromAsset(path: KImage.report),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Tercihler",
      //     iconResource: _getIconFromAsset(path: KImage.preferences),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Ayarlar",
      //     iconResource: _getIconFromAsset(path: KImage.settings),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "M.Sipariş",
      //     iconResource: _getIconFromAsset(path: KImage.centerOrder),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Yazıcı Ayarlar",
      //     iconResource: _getIconFromAsset(path: KImage.printerSetting),
      //     onClick: (){
      //
      //     }
      // ),
      // MenuItem(
      //     title: "Log out",
      //     iconResource: IconResourceIconData(iconData: Icons.logout,size: 50),
      //     onClick: ()async{
      //       AuthManager.instance.logOut();
      //     }
      // )
    ];
  }
}