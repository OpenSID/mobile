import 'package:get/get.dart';
import 'package:my_talok/pages/mandiri/mandiri_controller.dart';

class MandiriBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MandiriControlller>(MandiriControlller());
  }
}
