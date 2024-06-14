import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Cleaning"), value: "cleaning"),
    DropdownMenuItem(child: Text("Repair"), value: "repair"),
    DropdownMenuItem(child: Text("Plumbing"), value: "plumbing"),
    DropdownMenuItem(child: Text("Panting"), value: "panting"),
    DropdownMenuItem(child: Text("Washing"), value: "washing"),
    DropdownMenuItem(child: Text("Sterllization"), value: "sterllization"),
  ];
  return menuItems;
}
