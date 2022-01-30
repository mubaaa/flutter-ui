import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:sample_ui_design/fifthdesign.dart';
import 'package:sample_ui_design/forthdesign.dart';
import 'package:sample_ui_design/screen1.dart';
import 'package:sample_ui_design/secondScreen.dart';
import 'package:sample_ui_design/sixthdesign.dart';
import 'package:sample_ui_design/thirdDesign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
    return const  MaterialApp(
     debugShowCheckedModeBanner: false,
        home:
            //ScreenOne(),
           // SecondScreen()
            //ThirdScreen()
             FourthPage()
           //FifthDesign()
            //SixthDesign()


    );
  }
}

// //======custom icon======//

// class MyFlutterApp {
//   MyFlutterApp._();

//   static const _kFontFam = 'MyFlutterApp';
//   static const String? _kFontPkg = null;
//   static const IconData whatsapp =IconData(0xf232, fontFamily: _kFontFam, fontPackage: _kFontPkg);
// }
