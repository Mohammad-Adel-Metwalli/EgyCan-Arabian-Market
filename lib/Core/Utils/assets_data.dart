import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'constant_colors.dart';

abstract class AssetsData
{
  static final Map<String, dynamic> socialMedia = {
    'Facebook': Icon(Bootstrap.facebook, size: 35.h, color: blue),
    'Instagram': Image(image: const AssetImage('Assets/Images/Instagram-icon.png'), height: 35.h),
    'WhatsApp': Icon(FontAwesome.whatsapp_brand ,size: 35.h, color: green),
    'Location': Image(image: const AssetImage('Assets/Images/world-icon.png'), height: 35.h),
    'TikTok': Brand(Brands.tiktok, size: 35.h),
  };

  static final List<String> socialMediaLinks = [
    'https://www.facebook.com/AlimanInc?mibextid=ZbWKwL',
    'https://www.instagram.com/egycanfoods2003/',
    'https://wa.me/17788615330',
    'https://www.google.com/maps/place/13811+Central+Ave,+Surrey,+BC+V3T+5B5,+Canada/@49.18982,-122.8424849,17z/data=!3m1!4b1!4m6!3m5!1s0x5485d77fa5ad697d:0x5c1d59a0c7f356d1!8m2!3d49.18982!4d-122.83991!16s%2Fg%2F11fb3jlk8c?entry=ttu',
    'https://www.tiktok.com/@egycan.middle.east?_t=8pnWeN8s3Gh&_r=1',
  ];

  static final List<String> categories = [
    'Foods Products',
    'Kitchenware',
    'Hardware',
    'Fresh Products',
    'Muslims Store',
    'Extracted Oils',
  ];

  static final List<String> subCategoryOfFoodsProducts = [
    'Rice, Pasta, Couscous',
    'Grains & Legumes',
    'Dairy',
    'Frozen',
    'Olives & Oils',
    'Pickles',
    'Spices & Flavors',
    'Canned Specialities',
    'Condiments',
    'Baking & Mixes',
    'Halawa & Tahini',
    'Biscuits ad Baklawa',
    'Snacks & Sweets',
    'Honey & Jam',
    'Nuts',
    'Dates & Dried Fruits',
    'Coffee & Tea',
    'Juice, Essence, Syrup',
  ];

  static final List<String> subCategoryOfKitchenware = [
    'Trays & Termus',
    'Boilers & Pots',
    'Pots and Vessels',
    'Cups and China',
    'Hygiene',
    'Utensils and Cuttery',
    'Glasses',
  ];

  static final List<String> subCategoryOfHardware = [
    'AL HELAL WEL NEGMA',
    'Perfumes and Scents',
    'Charcoal and BBQ',
    'KHAN AL KHALILI',
  ];

  static final List<String> subCategoryOfFreshProducts = [
    'Fresh Fruits',
    'Fresh Vegetables',
    'Egyptian Produce',
  ];

  static final List<String> imagesOfEgyCan = [
    'Assets/Images/EgyCan Company Image.jpg',
    'Assets/Images/Image-2.jpg',
    'Assets/Images/Image-3.jpg',
    'Assets/Images/Image-4.jpg',
    'Assets/Images/Image-5.jpg',
    'Assets/Images/Image-6.jpg',
    'Assets/Images/Image-7.jpg',
    'Assets/Images/Image-8.jpg',
    'Assets/Images/Image-9.jpg',
    'Assets/Images/Image-10.jpg',
    'Assets/Images/Image-11.jpg',
    'Assets/Images/Image-12.jpg',
  ];
}