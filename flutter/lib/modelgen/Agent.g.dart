import 'dart:convert';

class Agent {
  const Agent({
    required this.id,
    required this.userid,
    this.price,
    this.taxNo,
    this.taxAdministration,
    this.iban,
    this.bank,
  });

  factory Agent.fromMap(Map<String, dynamic> map) {
    return Agent(
      id: map['id'],
      userid: map['userid'],
      price: map['price']?.toDouble(),
      taxNo: map['tax_no'],
      taxAdministration: map['tax_administration'],
      iban: map['iban'],
      bank: map['bank'],
    );
  }

  factory Agent.fromJson(String source) => Agent.fromMap(json.decode(source));

  final String id;

  final String userid;

  final double? price;

  final String? taxNo;

  final String? taxAdministration;

  final String? iban;

  final String? bank;

  Agent copyWith({
    String? id,
    String? userid,
    double? price,
    String? taxNo,
    String? taxAdministration,
    String? iban,
    String? bank,
  }) {
    return Agent(
      id: id ?? this.id,
      userid: userid ?? this.userid,
      price: price ?? this.price,
      taxNo: taxNo ?? this.taxNo,
      taxAdministration: taxAdministration ?? this.taxAdministration,
      iban: iban ?? this.iban,
      bank: bank ?? this.bank,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userid': userid,
      'price': price,
      'tax_no': taxNo,
      'tax_administration': taxAdministration,
      'iban': iban,
      'bank': bank,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Agent &&
        other.id == id &&
        other.userid == userid &&
        other.price == price &&
        other.taxNo == taxNo &&
        other.taxAdministration == taxAdministration &&
        other.iban == iban &&
        other.bank == bank;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userid.hashCode ^
        price.hashCode ^
        taxNo.hashCode ^
        taxAdministration.hashCode ^
        iban.hashCode ^
        bank.hashCode;
  }

  @override
  String toString() {
    return 'Agent(id: $id, userid: $userid, price: $price, taxNo: $taxNo, taxAdministration: $taxAdministration, iban: $iban, bank: $bank)';
  }
}
