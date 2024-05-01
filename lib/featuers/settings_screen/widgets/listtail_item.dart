import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData iconData;
  final String name;
  final VoidCallback onTapFunction;

  const CustomListTile({
    Key? key,
    required this.iconData,
    required this.name,
    required this.onTapFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal:20),
        child: ListTile(
          leading: Icon(iconData, color: const Color(0xff001A72),size:25,),
          title: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w500,fontSize:20),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff001A72),
            size: 25,
          ),
        ),
      ),
    );
  }
}