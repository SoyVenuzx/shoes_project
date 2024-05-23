import 'package:flutter/material.dart';
import 'package:shoes_project/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shoes_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shoes_project/common/widgets/layouts/grid_layout.dart';
import 'package:shoes_project/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shoes_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shoes_project/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shoes_project/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shoes_project/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const TPrimaryHeaderContainer(
              child: Column(
            children: [
              //* Appbar
              THomeAppBar(),
              SizedBox(height: TSizes.spaceBtwSections),

              //* Searchbar
              TSearchContainer(text: 'Busca en la Tienda'),
              SizedBox(height: TSizes.spaceBtwSections),

              //* Categories
              THomeCategories()
            ],
          )),

          //* Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TPromoSlider(),
                const SizedBox(height: TSizes.spaceBtwSections),

                //* Products
                TGridLayout(
                  itemcount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
