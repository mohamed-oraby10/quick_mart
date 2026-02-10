import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Checkout/data/models/payment_model.dart';
import 'package:quick_mart/Features/Checkout/domain/use_cases/paypal_payment_use_case.dart';

class PayPalPaymentController extends ChangeNotifier {
  final PayPalUseCase useCase;

  bool _isValidating = false;
  bool get isValidating => _isValidating;

  bool _credentialsValid = false;
  bool get credentialsValid => _credentialsValid;

  PayPalPaymentController({required this.useCase});

  Future<void> validateCredentials() async {
    _isValidating = true;
    notifyListeners();

    try {
      await useCase.service.getAccessToken();
      _credentialsValid = true;
    } catch (_) {
      _credentialsValid = false;
    } finally {
      _isValidating = false;
      notifyListeners();
    }
  }

  bool canProceed() => _credentialsValid;

  PayPalPayment createPaymentModel(double amount, String description) {
    return PayPalPayment(amount: amount, description: description);
  }
}
