import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/utils/string_formatter.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/home/home_controller.dart';

class ServiceList extends GetView<HomeController> {
  const ServiceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: Values.horizontalPadding),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.faskes.length,
      itemBuilder: (context, index) {
        final faskes = controller.faskes[index];
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ThemeColor.shadow.withAlpha(50),
                blurRadius: 10,
                offset: const Offset(0, 10),
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: ThemeColor.white,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      faskes.serviceName,
                      style: ThemeText.baseStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      simpleIDR(faskes.price),
                      style: ThemeText.heading6.copyWith(
                        color: ThemeColor.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.location_city),
                        const SizedBox(width: 8),
                        Text(
                          faskes.provider,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.location_pin),
                        const SizedBox(width: 8),
                        Text(
                          faskes.address,
                          style: ThemeText.disabledText,
                        ),
                      ],
                    ),
                  ],
                ).paddingAll(Values.horizontalPadding),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(faskes.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 30),
    );
  }
}
