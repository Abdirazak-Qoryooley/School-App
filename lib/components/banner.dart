import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/controller/banner.dart';

class Bannercard extends GetView<BannerController> {

  final BannerController controller = Get.put(BannerController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(controller.currentIndex.value);
              },
              child: CarouselSlider(
                items: controller.imageList.map(
                  (item) =>Image.asset(
  item['image_path'] as String,
  fit: BoxFit.cover,
  width: double.infinity,
),
                ).toList(),
                carouselController: controller.carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    controller.changeIndex(index);
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller.carouselController.animateToPage(entry.key),
                    child: Container(
                      width: controller.currentIndex.value == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: controller.currentIndex.value == entry.key
                            ? Colors.red
                            : Colors.teal,
                      ),
                    ),
                  );
                }).toList(),
              )),
            ),
          ],
        ),
      ],
    );
  }
}