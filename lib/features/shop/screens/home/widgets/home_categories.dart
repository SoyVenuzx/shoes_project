import 'package:flutter/material.dart';
import 'package:shoes_project/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:shoes_project/common/widgets/texts/section_heading.dart';
import 'package:shoes_project/utils/constants/colors.dart';
import 'package:shoes_project/utils/constants/image_strings.dart';
import 'package:shoes_project/utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Map<String, String> categories = {
      'Deportivo': TImages.sportIcon,
      'Formal': TImages.jeweleryIcon,
      'Casual': TImages.shoeIcon,
      'Marcas': TImages.jordanLogo,
      'Sandalias': TImages.toyIcon,
    };

    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          //* Heading
          const TSectionHeading(
            title: 'Categorías Populares',
            showActionsButton: false,
            textColor: TColors.white,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          //* Categories
          SizedBox(
            height: 80,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return TVerticalImageText(
                    image: categories.values.elementAt(index),
                    title: categories.keys.elementAt(index),
                    onTap: () {},
                  );
                }),
          ),

          const SizedBox(height: TSizes.spaceBtwSections * 1.2),
        ],
      ),
    );
  }
}