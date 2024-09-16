import 'package:either_dart/src/either.dart';
import 'package:payment/core/errors/failures.dart';
import 'package:payment/core/utils/stripe_service.dart';
import 'package:payment/features/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/features/data/repos/checkout_repo.dart';

class CheckoutRepoImplementation extends CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(errMessage: e.toString()));
    }
  }
}
