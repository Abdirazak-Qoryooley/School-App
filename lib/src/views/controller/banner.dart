import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  final imageList = [
    {"id": 1, "image_path": 'assets/banner.jpg'},
    {"id": 2, "image_path": 'assets/banner.jpg'}
  ].obs;

  final carouselController = CarouselController();
  final currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}