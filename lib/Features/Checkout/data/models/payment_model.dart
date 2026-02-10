class PayPalPayment {
  final double amount;
  final String currency;
  final String description;

  PayPalPayment({
    required this.amount,
    this.currency = 'USD',
    required this.description,
  });

  Map<String, dynamic> toTransaction() {
    final total = amount.toStringAsFixed(2);

    return {
      "amount": {
        "total": total,
        "currency": currency,
        "details": {
          "subtotal": total,
          "shipping": "0.00",
          "shipping_discount": "0.00"
        }
      },
      "description": description,
      "item_list": {
        "items": [
          {
            "name": "Quick Mart Product",
            "quantity": "1",
            "price": total,
            "currency": currency
          }
        ]
      }
    };
  }
}
