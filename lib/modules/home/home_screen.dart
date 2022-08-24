import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/utils/string_formatter.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/home/home_controller.dart';
import 'package:medical_apps/modules/home/widgets/app_bar.dart';
import 'package:medical_apps/modules/home/widgets/drawer.dart';
import 'package:medical_apps/modules/home/widgets/main_banner.dart';
import 'package:medical_apps/modules/home/widgets/notification_cta.dart';
import 'package:medical_apps/modules/home/widgets/product_filter.dart';
import 'package:medical_apps/modules/home/widgets/search_field.dart';
import 'package:medical_apps/modules/home/widgets/section_cta.dart';
import 'package:medical_apps/modules/home/widgets/service_filter.dart';
import 'package:medical_apps/modules/home/widgets/service_list.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MenuDrawer(),
      drawerScrimColor: ThemeColor.navy.withAlpha(200),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 36),
                children: [
                  Column(
                    children: [
                      const HomeMainBanner(),
                      const SizedBox(height: 46),
                      CtaSection(
                        title: 'Layanan Khusus',
                        description:
                            'Tes Covid 19, Cegah Corona Sedini Mungkin',
                        buttonText: 'Daftar Tes',
                        vectorImage: 'assets/images/svg/vaccine.svg',
                        isImageRight: true,
                        onPressed: () {
                          print('tes');
                        },
                      ),
                      const SizedBox(height: 46),
                      CtaSection(
                        title: 'Track Pemeriksaan',
                        description:
                            'Kamu dapat mengecek progress pemeriksaanmu disini',
                        buttonText: 'Track',
                        vectorImage: 'assets/images/svg/magnifier.svg',
                        isImageRight: false,
                        onPressed: () {
                          print('track');
                        },
                      ),
                      const SizedBox(height: 46),
                      Row(
                        children: [
                          Material(
                            elevation: 10.0,
                            shadowColor: ThemeColor.shadow.withAlpha(50),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            child: IconButton(
                              onPressed: () {
                                print('open setting');
                              },
                              icon: const Icon(Icons.tune),
                            ),
                          ),
                          const SizedBox(width: Values.horizontalPadding),
                          const SearchField()
                        ],
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Values.horizontalPadding),
                  const ProductFilter(),
                  CarouselSlider(
                    items: controller.products
                        .map(
                          (product) => Container(
                            margin: const EdgeInsets.only(right: 16),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: ThemeColor.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: ThemeColor.shadow.withAlpha(50),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      product.rating.toString(),
                                      style: ThemeText.disabledText.copyWith(),
                                    )
                                  ],
                                ),
                                Center(child: Image.asset(product.image)),
                                Text(
                                  product.name,
                                  style: ThemeText.heading7.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      simpleIDR(product.price),
                                      style: ThemeText.bodyText.copyWith(
                                        color: ThemeColor.orange,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Chip(
                                      padding: EdgeInsets.zero,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      visualDensity: VisualDensity.compact,
                                      label: Text(product.category),
                                      backgroundColor: ThemeColor.lightGreen,
                                      labelStyle: ThemeText.bodyText.copyWith(
                                        color: ThemeColor.green,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 1,
                      viewportFraction: 0.5,
                      onPageChanged: (index, reason) {},
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 36),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pilih Tipe Layanan Kesehatan Anda',
                        style: ThemeText.baseStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ).paddingSymmetric(horizontal: Values.horizontalPadding),
                  const ServiceFilter(),
                  const ServiceList(),
                  const SizedBox(height: 48),
                  const NotificationCTA()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
