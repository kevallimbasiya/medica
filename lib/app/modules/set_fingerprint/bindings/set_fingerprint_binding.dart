import 'package:get/get.dart';

import '../controllers/set_fingerprint_controller.dart';

class SetFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetFingerprintController>(
      () => SetFingerprintController(),
    );
  }
}
