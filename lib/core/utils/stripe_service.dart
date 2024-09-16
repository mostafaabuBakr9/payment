import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/core/utils/api_service.dart';
import 'package:payment/features/data/models/ephemeral_kay/ephemeral_kay.dart';
import 'package:payment/features/data/models/payment_intent_input_model/initPayment_sheet_input_model.dart';
import 'package:payment/features/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/features/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitpaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret:
          initPaymentSheetInputModel.paymentIntentClientSecret,
      customerEphemeralKeySecret:
          initPaymentSheetInputModel.customerEphemeralKeySecret,
      customerId: initPaymentSheetInputModel.customerId,
      merchantDisplayName: 'AbuBakr Auto Services',
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentmodel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel =
        await creatEphemeralKey(customerId: paymentIntentmodel.id!);

    var initPaymentSheetInputModel = InitpaymentSheetInputModel(
        paymentIntentClientSecret: paymentIntentmodel.clientSecret!,
        customerId: paymentIntentInputModel.customerId,
        customerEphemeralKeySecret: ephemeralKeyModel.secret!);

    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKay> creatEphemeralKey({required String customerId}) async {
    var response = await apiService.post(
        body: {'customer': customerId},
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'Content-Type': 'application/x-www-form-urlencoded',
          'Stripe-Version': '2024-06-20',
        });

    if (response.statusCode != 200) {
      throw Exception('Failed to create ephemeral key: ${response.data}');
    }
    var ephemeralKay = EphemeralKay.fromJson(response.data);
    return ephemeralKay;
  }
}
  // Future<PaymentIntentModel> createCustomer(
  //     PaymentIntentInputModel paymentIntentInputModel) async {
  //   var response = await apiService.post(
  //       body: paymentIntentInputModel.toJson(),
  //       ContentType: Headers.formUrlEncodedContentType,
  //       url: 'https://api.stripe.com/v1/customers',
  //       token: ApiKeys.secretKey);
  //   var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
  //   return paymentIntentModel;
  // }