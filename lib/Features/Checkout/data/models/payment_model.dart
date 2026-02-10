class PayPalPayment {
  final int quantity;
  final String currency;
  final String description;
  final num total;

  PayPalPayment({
    required this.quantity,
    this.currency = 'USD',
    required this.description,
    required this.total,
  });

  Map<String, dynamic> toTransaction() {
    final double unitPrice = double.parse(
      (total / quantity).toStringAsFixed(2),
    );

    final double calculatedSubtotal = double.parse(
      (unitPrice * quantity).toStringAsFixed(2),
    );

    return {
      "amount": {
        "total": calculatedSubtotal.toStringAsFixed(2),
        "currency": currency,
        "details": {
          "subtotal": calculatedSubtotal.toStringAsFixed(2),
          "shipping": "0.00",
          "shipping_discount": "0.00",
        },
      },
      "description": description,
      "item_list": {
        "items": [
          {
            "name": "Quick Mart Product",
            "quantity": quantity.toString(),
            "price": unitPrice.toStringAsFixed(2),
            "currency": currency,
          },
        ],
      },
    };
  }
}
