import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/screen/homePage2/user_controller.dart';

// 64 introducao ao getx Injeção de dependência

class HomePage2 extends StatelessWidget {
  HomePage2({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final ageController = TextEditingController();

  //Get.find pregurando na memoria objeto UserController
  //final userController = Get.find<UserController>();
  final UserController userController = Get.find();

  TextStyle commonStyle() => const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Nome: ',
              style: commonStyle(),
            ),
            Text(
              'idade: ',
              style: commonStyle(),
            ),

            const Divider(
              thickness: 1.5,
              color: Colors.blue,
              height: 20,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Campo de nome
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                ),

                // Botão para salvar o nome
                ElevatedButton(
                  child: const Text('Salvar'),
                  onPressed: () {
                    userController.setUserName(nameController.text);
                  },
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Campo de idade
                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      labelText: 'Idade',
                    ),
                  ),
                ),

                // Botão para salvar a idade
                ElevatedButton(
                  child: const Text('Salvar'),
                  onPressed: () {
                    userController.setUserAge(int.parse(ageController.text));
                  },
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const DataScreen(
                          //controller: userController,
                          );
                    },
                  ),
                );
              },
              child: const Text('Tela de dados'),
            ),
          ],
        ),
      ),
    );
  }
}

class DataScreen extends GetView<UserController> {
  const DataScreen({
    Key? key,
    //required this.controller,
  }) : super(key: key);

  TextStyle commonStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  //final UserController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Text(
                'Nome: ${controller.user.value.name}',
                style: commonStyle(),
              ),
            ),
            // GetX<UserController>(
            //   builder: (controller) {
            //     return Text(
            //       'Idade: ${controller.user.value.age}',
            //       style: commonStyle(),
            //     );
            //   },
            // ),

            GetBuilder<UserController>(
              builder: (controller) {
                return const Text("");
              },
            ),

            Obx(
              () => Text(
                'Idade: ${controller.user.value.age}',
                style: commonStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
