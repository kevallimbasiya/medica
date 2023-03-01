import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  CarouselController carouselController = CarouselController();
  List img = [
    'assets/doctor1.jpg',
    'assets/doctor2.jpg',
    'assets/doctor3.jpg',
  ];
  List text1 = [
    'Thousands of doctors & experts to help your health!',
    'Health checks & consultations easily anywhere anytime',
    'Let\'s start living healthy and well with us right now!',
  ];

  final _values = 0.obs;
  int get values => _values.value;
  set values(int values) => _values.value = values;

  final _dot = 0.obs;
  int get dot => _dot.value;
  set dot(int value) => _dot.value = value;

  final _button = 0.obs;
  int get button => _button.value;
  set button(int value) => _button.value = value;

  
}
