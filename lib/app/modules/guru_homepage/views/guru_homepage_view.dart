import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guru_homepage_controller.dart';

class GuruHomepageView extends GetView<GuruHomepageController> {
  const GuruHomepageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GuruHomepageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GuruHomepageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
