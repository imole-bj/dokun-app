
import 'package:get/get.dart';
import '../controllers/editdubbing_controller.dart';


class EditDubbingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditDubbingController>(() => EditDubbingController());
  }
}