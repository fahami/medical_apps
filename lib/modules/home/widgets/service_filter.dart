import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/home/home_controller.dart';

class ServiceFilter extends GetView<HomeController> {
  const ServiceFilter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: Values.horizontalPadding),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ActionChip(
            pressElevation: 0,
            backgroundColor: controller.selectedService.value == index
                ? ThemeColor.turquoise
                : ThemeColor.white,
            labelStyle: ThemeText.bodyText.copyWith(
                color: ThemeColor.navy,
                fontWeight: FontWeight.w700,
                fontFamily: 'Proxima Nova'),
            label: Text(controller.services[index]),
            onPressed: () {
              controller.selectedService.value = index;
              print(controller.services[index] +
                  " pressed ${controller.selectedService}");
            },
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemCount: controller.services.length,
      ),
    );
  }
}
