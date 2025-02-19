import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/apis/apis.dart';
import 'package:flutter_getx_template/common/entities/entities.dart';
import 'package:flutter_getx_template/common/routers/routes.dart';
import 'package:flutter_getx_template/common/store/store.dart';
import 'package:flutter_getx_template/common/utils/utils.dart';
import 'package:flutter_getx_template/common/widgets/widgets.dart';
import 'package:flutter_getx_template/pages/frame/sign_in/state.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final state = SignInState();

  SignInController();

  // email的控制器
  final TextEditingController emailController = TextEditingController();
  // 密码的控制器
  final TextEditingController passController = TextEditingController();

  // final MyRepository repository;
  // SignInController({@required this.repository}) : assert(repository != null);

  // 跳转 注册界面
  handleNavSignUp() {
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  // 忘记密码
  handleFogotPassword() {
    toastInfo(msg: '忘记密码');
  }

  // 执行登录操作
  handleSignIn() async {
    // if (!duIsEmail(_emailController.value.text)) {
    //   toastInfo(msg: '请正确输入邮件');
    //   return;
    // }
    // if (!duCheckStringLength(_passController.value.text, 6)) {
    //   toastInfo(msg: '密码不能小于6位');
    //   return;
    // }

    UserLoginRequestEntity params = UserLoginRequestEntity(
      email: emailController.value.text,
      password: duSHA256(passController.value.text),
    );

    UserLoginResponseEntity userProfile = await UserAPI.login(
      params: params,
    );
    UserStore.to.saveProfile(userProfile);
    //UserStore.to.saveProfile(new UserLoginResponseEntity());
    Get.offAndToNamed(AppRoutes.Application);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
