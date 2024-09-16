import 'package:either_dart/either.dart';
import 'package:payment/core/errors/failures.dart';
import 'package:payment/features/data/models/payment_intent_input_model/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
