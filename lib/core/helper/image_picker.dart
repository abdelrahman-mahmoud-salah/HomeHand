import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import '../di/dependace_injection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';




Future<void> _showAlertPermissionsDialog() {
  return showCupertinoDialog(
    context: getIt<GlobalKey<NavigatorState>>().currentState!.context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text('Permissions Denied'),
        content: const Text('Allow access to gallery and photos'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          const CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: openAppSettings,
            child: Text('Settings'),
          ),
        ],
      );
    },
  );
}




class PickImage {
  static Future<File?> cameraPick() async {
    var camerImge = await ImagePicker().pickImage(source: ImageSource.camera);
    if (camerImge != null) {
      return File(camerImge.path);
    }
    return null;
  }

  static Future<File?> galleryPick() async {
    PermissionStatus status;
    if (Platform.isAndroid) {
      final andriodInfo = await DeviceInfoPlugin().androidInfo;
      if (andriodInfo.version.sdkInt <= 32) {
        status = await Permission.storage.request();
      } else {
        status = await Permission.phone.request();
      }
    } else {
      status = await Permission.storage.request();
    }
    if (status.isGranted) {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        return File(image.path);
      } else {
        return null;
      }
    }
    return null;
  }
}
