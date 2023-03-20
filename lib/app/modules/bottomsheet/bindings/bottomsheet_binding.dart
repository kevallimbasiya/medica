import 'package:get/get.dart';
import 'package:medica/app/modules/appointment/controllers/appointment_controller.dart';
import 'package:medica/app/modules/main/controllers/main_controller.dart';

import '../controllers/bottomsheet_controller.dart';

class BottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomsheetController>(
      () => BottomsheetController(),
    );
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<AppointmentController>(
      () => AppointmentController(),
    );
  }
}
