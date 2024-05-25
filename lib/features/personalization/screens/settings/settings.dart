import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes_project/common/widgets/appbar/appbar.dart';
import 'package:shoes_project/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shoes_project/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:shoes_project/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:shoes_project/common/widgets/texts/section_heading.dart';
import 'package:shoes_project/utils/constants/colors.dart';
import 'package:shoes_project/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Cuenta',
                    style: Theme.of(context).textTheme.headlineMedium!.apply(
                          color: TColors.white,
                        ),
                  ),
                ),

                //* User profile Card
                const TUserProfileTile(),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),

            //* Body
            Padding(
                padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                child: Column(
                  children: [
                    //* Account Settings
                    const TSectionHeading(title: 'Configuración'),
                    const SizedBox(height: TSizes.spaceBtwItems - 10),

                    //* Address
                    TSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: "Mis Direcciones",
                      subtitle: 'Establece tus direcciones de entrega',
                      onTap: () {},
                    ),

                    //* Carrito
                    TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: "Mi Carrito",
                      subtitle:
                          'Agrega, elimina y mueve tus productos favoritos',
                      onTap: () {},
                    ),

                    //* Pedidos
                    TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: "Mis Pedidos",
                      subtitle: 'Tus pedidos realizados y en proceso',
                      onTap: () {},
                    ),

                    //* Cupones
                    TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: "Mis Cupones",
                      subtitle: 'Lista de cupones disponibles',
                      onTap: () {},
                    ),

                    //* Privacidad
                    TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: "Privacidad y Seguridad",
                      subtitle: 'Maneja tus preferencias de privacidad',
                      onTap: () {},
                    ),

                    //* Ayuda y Soporte
                    TSettingsMenuTile(
                      icon: Iconsax.medal_star,
                      title: "Ayuda & Soporte",
                      subtitle: 'Preguntas frecuentes y soporte técnico',
                      onTap: () {},
                    ),

                    //! App Settings
                    const SizedBox(height: TSizes.spaceBtwSections),
                    const TSectionHeading(
                        title: 'Configuración de la App',
                        showActionsButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSettingsMenuTile(
                        icon: Iconsax.document_upload,
                        title: 'Sube tus datos',
                        subtitle: 'Sincroniza tus datos con la nube'),

                    TSettingsMenuTile(
                        icon: Iconsax.location,
                        title: 'Geolocación',
                        subtitle:
                            'Establece recomendaciones basadas en tu ubicación',
                        trailing: Switch(value: false, onChanged: (value) {})),

                    TSettingsMenuTile(
                        icon: Iconsax.image,
                        title: 'Cálidad de Imagen HD',
                        subtitle:
                            'Establece la calidad de imagen en alta definición',
                        trailing: Switch(value: true, onChanged: (value) {})),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
