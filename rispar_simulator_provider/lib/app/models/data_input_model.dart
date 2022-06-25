import 'dart:convert';

class DataInputModel {
  String fullname;
  String email;
  int ltv;
  double amount;
  int term;
  bool hasProtectedCollateral;

  DataInputModel({
    required this.fullname,
    required this.email,
    required this.ltv,
    required this.amount,
    required this.term,
    required this.hasProtectedCollateral,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullname': fullname,
      'email': email,
      'ltv': ltv,
      'amount': amount,
      'term': term,
      'has_protected_collateral': hasProtectedCollateral,
    };
  }

  factory DataInputModel.fromMap(Map<String, dynamic> map) {
    return DataInputModel(
      fullname: map['fullname'] ?? '',
      email: map['email'] ?? '',
      ltv: map['ltv']?.toInt() ?? 0,
      amount: map['amount']?.toDouble() ?? 0.0,
      term: map['term']?.toInt() ?? 0,
      hasProtectedCollateral: map['has_protected_collateral'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataInputModel.fromJson(String source) =>
      DataInputModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DataInputModel(fullname: $fullname, email: $email, ltv: $ltv, amount: $amount, term: $term, hasProtectedCollateral: $hasProtectedCollateral)';
  }
}
