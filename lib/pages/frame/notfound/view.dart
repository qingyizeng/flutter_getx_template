import 'package:flutter/material.dart';
import 'package:flutter_getx_template/pages/frame/notfound/widgets/helloword.dart';
import 'package:get/get.dart';

import 'controller.dart';

class NotfoundPage extends GetView<NotfoundController> {
  // 内容页
  Widget _buildView() {
    return HellowordWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildView(),
    );
  }
}
