import 'package:get/get.dart';
import 'package:medical_apps/data/models/faskes.dart';
import 'package:medical_apps/data/models/product.dart';

class HomeController extends GetxController {
  var menus = [
    'All Product',
    'Layanan Kesehatan',
    'Alat Kesehatan',
    'Peralatan',
    'Kesehatan Anak',
  ].obs;
  var services = ['Satuan', 'Paket Pemeriksaan'].obs;
  var selectedMenu = 0.obs;
  var selectedService = 0.obs;
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

  var socialMedia = [
    {
      "name": "Facebook",
      "image": "assets/images/svg/facebook.svg",
      "url": "https://www.facebook.com"
    },
    {
      "name": "Instagram",
      "image": "assets/images/svg/instagram.svg",
      "url": "https://www.instagram.com"
    },
    {
      "name": "Twitter",
      "image": "assets/images/svg/twitter.svg",
      "url": "https://www.twitter.com"
    },
  ].obs;

  var faskes = [
    Faskes(
      serviceName: 'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
      image: 'assets/images/jpg/lenmarc.jpeg',
      price: 1400000,
      address: 'Dukuh Pakis, Surabaya',
      provider: 'Lenmarc Surabaya',
    ),
    Faskes(
      serviceName: 'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
      image: 'assets/images/jpg/lenmarc_one.jpeg',
      price: 1500000,
      address: 'Dukuh Pakis, Surabaya',
      provider: 'Lenmarc Surabaya',
    )
  ].obs;
}
