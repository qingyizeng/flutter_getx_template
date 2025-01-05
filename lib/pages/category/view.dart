import 'package:flutter/material.dart';
import 'package:flutter_getx_template/pages/category/widgets/news_page_list.dart';
import 'package:get/get.dart';

import 'controller.dart';

class CategoryPage extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsPageList(),
    );
  }
}
