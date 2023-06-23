import 'package:get/get.dart';

class ValueController extends GetxController {
  //obs especificando que e um variavel observável, o benefício utilizar variavel obs e que nao precisa chamar metodo update()
  RxString definedValue = ''.obs;

  RxBool isLoaded = false.obs;

  Future<void> setValue(String newValue) async {
    definedValue.value = newValue;

    isLoaded.value = true;
    //update();

    await Future.delayed(const Duration(seconds: 2));

    isLoaded.value = false;
    //o getx precisa ser atualizado
    //update();
  }
}
