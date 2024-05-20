
import 'package:get/get.dart';
import '../controllers/dubbing_controller.dart';


class DubbingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DubbingController>(() => DubbingController());
  }
}