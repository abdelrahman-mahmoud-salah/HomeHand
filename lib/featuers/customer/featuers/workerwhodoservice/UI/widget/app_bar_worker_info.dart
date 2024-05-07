import 'package:flutter/material.dart';

class AppBarWorkerInfo extends StatelessWidget {
  const AppBarWorkerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_rounded),
                    )
                  ],
                );
  }
}
