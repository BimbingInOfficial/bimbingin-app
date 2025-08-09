import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guru_profilepage_controller.dart';

class GuruProfilepageView extends GetView<GuruProfilepageController> {
  const GuruProfilepageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GuruProfilepageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GuruProfilepageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
