import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/featuers/customer/featuers/service_details/logic/order_cubit.dart';
import 'package:homehand/featuers/customer/featuers/service_details/logic/order_state.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/widget/custom_error.dart';

class OrderBlocListener extends StatelessWidget {
  const OrderBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderCubit, OrderState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: (data) {
            Navigator.of(context).pop(); // Close the loading dialog
            context.pushReplacementNamed(RoutesApp.orderDetails);
          },
          error: (error) {
            Navigator.of(context).pop(); // Close the loading dialog
            debugPrint(error);
            setupErrorState(context, "This order was not created");
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String errorMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(errorMessage),
      backgroundColor: Colors.red,
    ),
  );
}
