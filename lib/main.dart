import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/homePage2/user_controller.dart';
import 'screen/homePage3.dart';

void main() {
  //add objeto memoria celular
  //Get.put<UserController>(UserController());

  //add objeto memoria celular so quando ele for chamado
  Get.lazyPut<UserController>(() => UserController());

  runApp(const MyApp());
}

//na aula professor de um dica para configurar setting do dart,
//que quando ele salva colocar const automaticamente:
// "editor.codeActionsOnSave": {
//        "source.fixAll": true
//    },
// "editor.formatOnSave": true,

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      //home: HomePage1(),
      //home: HomePage2(),
      home: const HomePage3(),
    );
  }
}
