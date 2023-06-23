import 'package:get/get.dart';
import 'package:getx_intro/user_model.dart';

class UserController extends GetxController {
  //RxString nome = 'Gui'.obs;

  //criando variavel observável que vai pegar objeto user_controller e seus valores
  Rx<UserModel> user = UserModel().obs;

  void setUserName(String userName) {
    //user.value.name = userNome;

    // user.update((obj) {
    //   obj?.name = userName;
    // });

    // outra forma atribuir os valores
    user.value.name = userName;
    user.refresh();
  }

  void setUserAge(int userAge) {
    //user.value.age = userAge;
    user.update((obj) {
      obj?.age = userAge;
    });
  }
}
