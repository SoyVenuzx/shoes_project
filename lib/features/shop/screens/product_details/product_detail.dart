import 'package:flutter/material.dart';
import 'package:shoes_project/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:shoes_project/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:shoes_project/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:shoes_project/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        //* Producto Image Slider
        TProductImageSlider(),

        //* Product Details
        Padding(
          padding: EdgeInsets.only(
            right: TSizes.defaultSpace,
            left: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
          ),
          child: Column(
            //* Rating & Share Button
            children: [
              TRatingAndShare(),
              TProductMetaData()
            ],
          ),
        )
      ],
    )));
  }
}
