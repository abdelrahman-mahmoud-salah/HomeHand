import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homehand/featuers/Auth/featuers/register/logic/cubit/register_state.dart';
import 'package:homehand/featuers/customer/featuers/service_details/data/repo/order_repo.dart';
import 'package:homehand/featuers/customer/featuers/service_details/logic/order_state.dart';
import 'package:homehand/core/helper/image_picker.dart';

class OrderCubit extends Cubit<OrderState> {
  final OrderRepo _orderRepo;

  OrderCubit(this._orderRepo) : super(const OrderState.initial());
  File? image;
  bool isCash = true;
  String id='';
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  Future<void> picKFromGallery() async {
    emit(OrderState.initial());
    image = await PickImage.galleryPick();
    log(image!.path);
  }
  final formKey = GlobalKey<FormState>();

  void emitOrderStates() async {
    
    emit(const OrderState.loading());
    final response = await _orderRepo.createOrder(
      workerId: id,
      orderPrice: 200,
      description:descriptionController.text,
      address: addressController.text,
      paymentMethod: isCash ? 'Cash' : 'Credit',
      paymentStatus: 'Pending',
      orderStatus: 'Pending',
      rating: 3,
      feedBack: dateController.text,
      orderImages: File('$image'), // Adjust as necessary
    );

    response.when(
      success: (data) {
        emit(OrderState.success(data));
      },
      failure: (error) {
        emit(OrderState.error(error: error.apiErrorModel.message ?? 'An unknown error occurred'));
      },
    );
  }
}
