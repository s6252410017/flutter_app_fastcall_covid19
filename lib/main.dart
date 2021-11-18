import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_covid19/views/home_ui.dart';
import 'package:flutter_app_fastcall_covid19/views/listcall_covid_ui.dart';
import 'package:flutter_app_fastcall_covid19/views/listcall_ui.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI() ,
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}