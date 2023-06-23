import 'package:flutter/material.dart';

import 'screen/homePage2.dart';

void main() {
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      //home: HomePage1(),
      home: HomePage2(),
    );
  }
}
