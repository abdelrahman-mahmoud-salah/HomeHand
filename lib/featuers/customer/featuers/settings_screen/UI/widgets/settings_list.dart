import 'package:flutter/material.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/featuers/customer/featuers/settings_screen/UI/widgets/custom_list_tile.dart';
import 'package:homehand/featuers/customer/featuers/settings_screen/UI/widgets/logout_dialog.dart';



class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(130),
        CustomListTile(
          iconData: Icons.edit_note_rounded,
          name: "Edit Profile",
          onTapFunction: () {
            // context.pushNamed(RoutesApp.);
          },
        ),
        CustomListTile(
          iconData: Icons.lock_rounded,
          name: "Change Password",
          onTapFunction: () {},
        ),
        CustomListTile(
          iconData: Icons.monetization_on_rounded,
          name: "Payment Method",
          onTapFunction: () {},
        ),
        CustomListTile(
          iconData: Icons.favorite_border_rounded,
          name: "Favorite Provider",
          onTapFunction: () {},
        ),
        CustomListTile(
          iconData: Icons.language_rounded,
          name: "Languages",
          onTapFunction: () {},
        ),
        CustomListTile(
          iconData: Icons.logout_rounded,
          name: "Logout",
          onTapFunction: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const LogoutDialog();
                });
          },
        ),
      ],
    );
  }
}
