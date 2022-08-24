import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/modules/home/home_controller.dart';

class ProductFilter extends StatelessWidget {
  ProductFilter({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 60,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ActionChip(
              pressElevation: 0,
              backgroundColor: controller.selectedMenu.value == index
                  ? ThemeColor.navy
                  : ThemeColor.white,
              labelStyle: ThemeText.bodyText.copyWith(
                  color: controller.selectedMenu.value == index
                      ? ThemeColor.white
                      : ThemeColor.navy,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Proxima Nova'),
              label: Text(controller.menus[index]),
              onPressed: () {
                controller.selectedMenu.value = index;
                print(controller.menus[index] +
                    " pressed ${controller.selectedMenu}");
              },
            );
          },
          separatorBuilder: (_, __) => SizedBox(width: 8),
          itemCount: controller.menus.length,
        ),
      ),
    );
  }
}
