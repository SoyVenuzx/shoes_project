import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes_project/utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_cart,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text('9',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(
                          color: TColors.white,
                        ))),
          ),
        )
      ],
    );
  }
}