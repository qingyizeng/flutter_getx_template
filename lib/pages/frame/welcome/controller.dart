import 'package:flutter_getx_template/common/routers/routes.dart';
import 'package:flutter_getx_template/common/store/store.dart';
import 'package:flutter_getx_template/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();

  WelcomeController();

  // 跳转 注册界面
  handleNavSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }

  @override
  void onReady() {
    super.onReady();
  }
}
