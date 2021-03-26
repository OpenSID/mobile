import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core.dart';

class MandiriControlller extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // final PendudukController pendudukController = PendudukController();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future logOut() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.clear();
    Get.offAllNamed(Routes.LOGIN);
  }
}
