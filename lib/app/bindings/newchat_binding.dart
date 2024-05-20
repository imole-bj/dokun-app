
import 'package:get/get.dart';
import '../controllers/newchat_controller.dart';


class NewChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewChatController>(() => NewChatController());
  }
}