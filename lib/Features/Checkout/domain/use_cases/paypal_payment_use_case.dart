import 'package:quick_mart/Features/Checkout/data/services/paypal_payment_remote_service.dart';
import '../../data/models/payment_model.dart';

class PayPalUseCase {
  final PayPalRemoteService service;

  PayPalUseCase(this.service);

  Future<Map<String, dynamic>> createPayment(PayPalPayment payment) {
    return service.createPayment(payment);
  }

  Future<Map<String, dynamic>> executePayment({
    required String paymentId,
    required String payerId,
  }) {
    return service.executePayment(paymentId: paymentId, payerId: payerId);
  }
}
