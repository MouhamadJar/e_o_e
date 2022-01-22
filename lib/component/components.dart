import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void messageToast({required String msg,required Color color}){

  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 5,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 12.0
  );
}

