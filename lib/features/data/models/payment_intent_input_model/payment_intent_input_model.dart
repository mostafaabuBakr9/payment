// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaymentIntentInputModel {
  final int amount;
  final String currency;
  final String customerId;
  PaymentIntentInputModel({
    required this.customerId,
    required this.amount,
    required this.currency,
  });

  toJson() {
    return {
      'amount': amount,
      'currency': currency,
      'customer': customerId,
    };
  }
}
