import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes_project/common/widgets/appbar/appbar.dart';
import 'package:shoes_project/common/widgets/images/t_circular_image.dart';
import 'package:shoes_project/common/widgets/texts/section_heading.dart';
import 'package:shoes_project/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shoes_project/utils/constants/image_strings.dart';
import 'package:shoes_project/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Perfil'),
      ),

      //* Body
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                    image: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Cambia tu foto de perfil'))
                ],
              ),
            ),
            //* Details
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TSectionHeading(title: 'Información de la cuenta', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(title: 'Nombre', value: 'Anto Álvarez', onPressed: (){},),
            TProfileMenu(title: 'Username', value: '@Shoouttoys', onPressed: (){},),

            const SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TSectionHeading(title: 'Información Personal', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(title: 'ID Usuario', value: '44444', icon: Iconsax.copy, onPressed: (){}),
            TProfileMenu(title: 'Correo Electrínico', value: 'ealvarez01@gmail.com', onPressed: (){}),
            TProfileMenu(title: 'Número de Télefono', value: '+52 (667) 527 9911', onPressed: (){}),
            TProfileMenu(title: 'Género', value: 'Hombre', onPressed: (){}),
            TProfileMenu(title: 'Fecha de Nacimiento', value: '19 Nov, 2004', onPressed: (){}),

            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: (){},
                child: const Text('Eliminar Cuenta', style: TextStyle(color: Colors.red)),
              ),
            )
          ],
        ),
      )
          //* Profile Picture
          ),
    );
  }
}
