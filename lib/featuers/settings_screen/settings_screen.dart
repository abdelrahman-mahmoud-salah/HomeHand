import 'package:flutter/material.dart';

import 'widgets/alert_dialoug.dart';
import 'widgets/listtail_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              top: 125,
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.10),
                      spreadRadius: 5,
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 130),
                    CustomListTile(
                      iconData: Icons.edit_note_rounded,
                      name: "Edit Profile",
                      onTapFunction: () {},
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
                        showLogoutDialog(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        child: Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[100],
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/147/147129.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 15,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Colors.blue,
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Omar Ahmed',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'omarahmed14@gmail.com',
                    style: TextStyle(
                      color: Color(0xff242424),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}