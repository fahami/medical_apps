import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/values/values.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            Stack(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: Values.horizontalPadding),
      ],
    );
  }
}
