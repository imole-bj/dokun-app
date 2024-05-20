
import 'package:get/get.dart';
import '../controllers/showresources_controller.dart';


class ShowResourcesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowResourcesController>(() => ShowResourcesController());
  }
}