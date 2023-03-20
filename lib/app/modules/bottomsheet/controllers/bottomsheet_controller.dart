import 'package:get/get.dart';
import 'package:medica/app/modules/appointment/views/appointment_view.dart';
import 'package:medica/app/modules/main/views/main_view.dart';

class BottomsheetController extends GetxController {
  final _change = 0.obs;
  get change => _change.value;
  set change(value) => _change.value = value;

  void ontapped(int index) {
    change = index;
  }

  List page = [
    const MainView(),
    const AppointmentView(),
  ];
}
