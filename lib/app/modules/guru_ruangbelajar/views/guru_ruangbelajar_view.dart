import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guru_ruangbelajar_controller.dart';

class GuruRuangbelajarView extends GetView<GuruRuangbelajarController> {
  const GuruRuangbelajarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GuruRuangbelajarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GuruRuangbelajarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
