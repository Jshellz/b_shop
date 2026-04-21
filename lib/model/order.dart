import 'package:bsop/model/product.dart';

enum OrderStatus { pending, paid, failed, cancelled }

enum PaymentMethod { card, cash, applePay, googlePay, unknown }

class OrderItem {
  final Product product;
  final int quantity;

  OrderItem({
    required this.product, 
    this.quantity = 1,
    });

  double get totalPrice => product.price * quantity;
}

class Order {
  final String id;
  final List<OrderItem> items;
  final DateTime createAt;
  final OrderStatus status;
  PaymentMethod paymentMethod;
  String? transactionId;
  String? failureMessage;

  Order({
    required this.id,
    required this.items,
    DateTime? createAt,
    this.status = OrderStatus.pending,
    this.paymentMethod = PaymentMethod.unknown,
    this.transactionId,
    this.failureMessage,
  }): createAt = createAt ?? DateTime.now();

    double get totalAmount => items.fold(0, (value, item) => value + item.totalPrice);

    bool get isPaid => status == OrderStatus.paid;

    void pay({required OrderStatus status, required PaymentMethod method, required String transactionId}) {
      status = OrderStatus.paid;
      paymentMethod = method;
      this.transactionId = transactionId;
      failureMessage = null;
  }

  void failPayment(OrderStatus status, String message) {
    status = OrderStatus.failed;
    failureMessage = message;
  }

  void cancel() {
    OrderStatus status = this.status;
    if (status == OrderStatus.paid) {
      return;
    }
    status = OrderStatus.cancelled;
  }
}