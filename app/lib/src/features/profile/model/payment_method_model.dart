//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class PaymentMethodModel {
  PaymentMethodModel({
    required this.uid,
    required this.cardName,
    required this.cardIconUrl,
    required this.cardNumber,
    required this.cardExpireDate,
    required this.cvv,
    required this.isDefault,
  });
  late final String uid;
  late final String cardName;
  late final String cardIconUrl;
  late final String cardNumber;
  late final String cardExpireDate;
  late final String cvv;
  late final bool isDefault;

  PaymentMethodModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    cardName = json['cardName'];
    cardIconUrl = json['cardIconUrl'];
    cardNumber = json['cardNumber'];
    cardExpireDate = json['cardExpireDate'];
    cvv = json['cvv'];
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['cardName'] = cardName;
    data['cardIconUrl'] = cardIconUrl;
    data['cardNumber'] = cardNumber;
    data['cardExpireDate'] = cardExpireDate;
    data['cvv'] = cvv;
    data['isDefault'] = isDefault;
    return data;
  }

  static List<PaymentMethodModel> dummyPaymentMethods = [
    PaymentMethodModel(
      uid: "1",
      cardName: "John Doe",
      cardIconUrl: "https://example.com/card_icon1.jpg",
      cardNumber: "**** **** **** 1234",
      cardExpireDate: "12/26",
      cvv: "123",
      isDefault: true,
    ),
    PaymentMethodModel(
      uid: "2",
      cardName: "Jane Smith",
      cardIconUrl: "https://example.com/card_icon2.jpg",
      cardNumber: "**** **** **** 5678",
      cardExpireDate: "05/23",
      cvv: "456",
      isDefault: false,
    ),
    PaymentMethodModel(
      uid: "3",
      cardName: "Alice Johnson",
      cardIconUrl: "https://example.com/card_icon3.jpg",
      cardNumber: "**** **** **** 9012",
      cardExpireDate: "09/28",
      cvv: "789",
      isDefault: false,
    )
  ];
}
