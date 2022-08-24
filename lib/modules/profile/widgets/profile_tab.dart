import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/profile/profile_controller.dart';

class ProfileTab extends GetView<ProfileController> {
  const ProfileTab({Key? key}) : super(key: key);
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
            backgroundColor: controller.selectedTab.value == index
                ? ThemeColor.turquoise
                : ThemeColor.white,
            labelStyle: ThemeText.bodyText.copyWith(
              color: ThemeColor.navy,
              fontWeight: FontWeight.w700,
              fontFamily: 'Proxima Nova',
            ),
            label: Text(controller.tabs[index]),
            onPressed: () {
              controller.selectedTab.value = index;
              print(
                '${controller.tabs[index]} pressed ${controller.selectedTab}',
              );
            },
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemCount: controller.tabs.length,
      ),
    );
  }
}
