import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../value_controller.dart';

// introducao ao getx Gerência de estado GetX - GetBuilder e Utilizando de tipos observáveis e Observando variáveis com Obx
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final textController = TextEditingController();

  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    //print('Construiu');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Valor
            Obx(() {
              return Text('Valor definido: ${valueController.definedValue}');
            }),

            // Campo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: TextField(
                controller: textController,
              ),
            ),

            // Botao
            Obx(() {
              return valueController.isLoaded.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        String value = textController.text;
                        //print(value);
                        valueController.setValue(value);
                      },
                      child: const Text('Confirmar'),
                    );
            })
          ],
        ),
      ),
    );
  }
}
