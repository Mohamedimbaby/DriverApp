// To parse this JSON data, do
//
//     final notificationOrder = notificationOrderFromMap(jsonString);

import 'dart:convert';

NotificationOrder notificationOrderFromMap(String str) => NotificationOrder.fromMap(json.decode(str));

String notificationOrderToMap(NotificationOrder data) => json.encode(data.toMap());

class NotificationOrder {
  NotificationOrder({
    this.status,
    this.data,
  });

  final int ?status;
  final List<Order> ?data;

  factory NotificationOrder.fromMap(Map<String, dynamic> json) => NotificationOrder(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : List<Order>.from(json["data"].map((x) => Order.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toMap())),
  };
}

class Order {
  Order({
    this.id,
    this.userId,
    this.customerName,
    this.total,
    this.subTotal,
    this.deliveryCharge,
    this.status,
    this.statusName,
    this.paymentStatus,
    this.paidAmount,
    this.address,
    this.mobile,
    this.lat,
    this.long,
    this.misc,
    this.paymentMethod,
    this.paymentMethodName,
    this.createdAt,
    this.updatedAt,
    this.invoiceId,
    this.shopId,
    this.deliveryBoyId,
    this.productReceived,
    this.timeFormat,
    this.date,
  });

  final int ?id;
  final int ?userId;
  final String ?customerName;
  final String ?total;
  final String ?subTotal;
  final String ?deliveryCharge;
  final int ?status;
  final String ?statusName;
  final int ?paymentStatus;
  final String ?paidAmount;
  final String ?address;
  final String ?mobile;
  final String ?lat;
  final String ?long;
  final String ?misc;
  final int ?paymentMethod;
  final String ?paymentMethodName;
  final String ?createdAt;
  final String ?updatedAt;
  final String ?invoiceId;
  final int ?shopId;
  final int ?deliveryBoyId;
  final int ?productReceived;
  final String ?timeFormat;
  final String? date;

  factory Order.fromMap(Map<String, dynamic> json) => Order(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    customerName: json["customer_name"] == null ? null : json["customer_name"],
    total: json["total"] == null ? null : json["total"],
    subTotal: json["sub_total"] == null ? null : json["sub_total"],
    deliveryCharge: json["delivery_charge"] == null ? null : json["delivery_charge"],
    status: json["status"] == null ? null : json["status"],
    statusName: json["status_name"] == null ? null : json["status_name"],
    paymentStatus: json["payment_status"] == null ? null : json["payment_status"],
    paidAmount: json["paid_amount"] == null ? null : json["paid_amount"],
    address: json["address"] == null ? null : json["address"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    lat: json["lat"] == null ? null : json["lat"],
    long: json["long"] == null ? null : json["long"],
    misc: json["misc"] == null ? null : json["misc"],
    paymentMethod: json["payment_method"] == null ? null : json["payment_method"],
    paymentMethodName: json["payment_method_name"] == null ? null : json["payment_method_name"],
    createdAt: json["created_at"] == null ? null : json["created_at"],
    updatedAt: json["updated_at"] == null ? null : json["updated_at"],
    invoiceId: json["invoice_id"] == null ? null : json["invoice_id"],
    shopId: json["shop_id"] == null ? null : json["shop_id"],
    deliveryBoyId: json["delivery_boy_id"] == null ? null : json["delivery_boy_id"],
    productReceived: json["product_received"] == null ? null : json["product_received"],
    timeFormat: json["time_format"] == null ? null : json["time_format"],
    date: json["date"] == null ? null : json["date"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "customer_name": customerName == null ? null : customerName,
    "total": total == null ? null : total,
    "sub_total": subTotal == null ? null : subTotal,
    "delivery_charge": deliveryCharge == null ? null : deliveryCharge,
    "status": status == null ? null : status,
    "status_name": statusName == null ? null : statusName,
    "payment_status": paymentStatus == null ? null : paymentStatus,
    "paid_amount": paidAmount == null ? null : paidAmount,
    "address": address == null ? null : address,
    "mobile": mobile == null ? null : mobile,
    "lat": lat == null ? null : lat,
    "long": long == null ? null : long,
    "misc": misc == null ? null : misc,
    "payment_method": paymentMethod == null ? null : paymentMethod,
    "payment_method_name": paymentMethodName == null ? null : paymentMethodName,
    "created_at": createdAt == null ? null : createdAt,
    "updated_at": updatedAt == null ? null : updatedAt,
    "invoice_id": invoiceId == null ? null : invoiceId,
    "shop_id": shopId == null ? null : shopId,
    "delivery_boy_id": deliveryBoyId == null ? null : deliveryBoyId,
    "product_received": productReceived == null ? null : productReceived,
    "time_format": timeFormat == null ? null : timeFormat,
    "date": date == null ? null : date,
  };
}
