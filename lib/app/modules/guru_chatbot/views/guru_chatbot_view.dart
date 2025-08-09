import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guru_chatbot_controller.dart';

class GuruChatbotView extends GetView<GuruChatbotController> {
  const GuruChatbotView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GuruChatbotView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GuruChatbotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
