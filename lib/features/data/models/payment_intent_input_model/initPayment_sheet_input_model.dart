class InitpaymentSheetInputModel {
  final String paymentIntentClientSecret;
  final String customerEphemeralKeySecret;
  final String customerId;

  InitpaymentSheetInputModel(
      {required this.paymentIntentClientSecret,
      required this.customerEphemeralKeySecret,
      required this.customerId});
}
