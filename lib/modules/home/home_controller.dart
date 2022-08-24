import 'package:get/get.dart';
import 'package:medical_apps/data/models/product.dart';

class HomeController extends GetxController {
  var menus = [
    'All Product',
    'Layanan Kesehatan',
    'Alat Kesehatan',
    'Peralatan',
    'Kesehatan Anak',
  ].obs;
  var selectedMenu = 0.obs;
  var products = [
    Product(
      name: "Suntik Steril",
      image: "assets/images/png/mikroskop.png",
      price: 10000,
      category: "All Product",
      rating: 5,
      isReady: true,
    ),
    Product(
      name: "Suntik Steril",
      image: "assets/images/png/mikroskop.png",
      price: 10000,
      category: "All Product",
      rating: 5,
      isReady: true,
    ),
    Product(
      name: "Suntik Steril",
      image: "assets/images/png/mikroskop.png",
      price: 10000,
      category: "All Product",
      rating: 5,
      isReady: true,
    ),
    Product(
      name: "Suntik Steril",
      image: "assets/images/png/mikroskop.png",
      price: 10000,
      category: "All Product",
      rating: 5,
      isReady: true,
    ),
  ].obs;
}
