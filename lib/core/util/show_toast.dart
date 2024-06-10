


import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils{
  static void showLongToast(String message){
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

}