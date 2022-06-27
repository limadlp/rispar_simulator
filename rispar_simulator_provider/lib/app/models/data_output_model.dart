import 'dart:convert';

class DataOutputModel {
  String? id;
  String fullname;
  String email;
  int ltv;
  double contractValue;
  double netValue;
  double installmentValue;
  double iofFee;
  double originationFee;
  int term;
  double collateral;
  //double collateralInBRL;
  double collateralUnitPrice;
  String firstDueDate;
  //DateTime lastDueDate;
  double interestRate;
  double monthlyRate;
  double annualRate;

  DataOutputModel({
    required this.id,
    required this.fullname,
    required this.email,
    required this.ltv,
    required this.contractValue,
    required this.netValue,
    required this.installmentValue,
    required this.iofFee,
    required this.originationFee,
    required this.term,
    required this.collateral,
    required this.collateralUnitPrice,
    required this.firstDueDate,
    required this.monthlyRate,
    required this.annualRate,
    required this.interestRate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullname': fullname,
      'email': email,
      'ltv': ltv,
      'contract_value': contractValue,
      'netValue': netValue,
      'installment_value': installmentValue,
      'iofFee': iofFee,
      'origination_fee': originationFee,
      'term': term,
      'collateral': collateral,
      'collateral_unit_price': collateralUnitPrice,
      'first_due_date': firstDueDate,
      'interest_rate': interestRate,
      'monthly_rate': monthlyRate,
      'annual_rate': annualRate,
    };
  }

  factory DataOutputModel.fromMap(Map<String, dynamic> map) {
    return DataOutputModel(
      id: map['id'],
      fullname: map['fullname'] ?? '',
      email: map['email'] ?? '',
      ltv: map['ltv']?.toInt() ?? 0,
      contractValue: map['contract_value']?.toDouble() ?? 0.0,
      netValue: map['net_value']?.toDouble() ?? 0.0,
      installmentValue: map['installment_value']?.toDouble() ?? 0.0,
      iofFee: map['iof_fee']?.toDouble() ?? 0.0,
      originationFee: map['origination_fee']?.toDouble() ?? 0.0,
      term: map['term']?.toInt() ?? 0,
      collateral: map['collateral']?.toDouble() ?? 0.0,
      collateralUnitPrice: map['collateral_unit_price']?.toDouble() ?? 0.0,
      firstDueDate: map['first_due_date'] ?? '',
      interestRate: map['interest_rate']?.toDouble() ?? 0.0,
      monthlyRate: map['monthly_rate']?.toDouble() ?? 0.0,
      annualRate: map['annual_rate']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataOutputModel.fromJson(String source) =>
      DataOutputModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DataOutputModel(id: $id, fullname: $fullname, email: $email, ltv: $ltv, contractValue: $contractValue, netValue: $netValue, installmentValue: $installmentValue, iofFee: $iofFee, originationFee: $originationFee, term: $term, collateral: $collateral, collateralUnitPrice: $collateralUnitPrice, firstDueDate: $firstDueDate, monthlyRate: $monthlyRate, annualRate: $annualRate)';
  }
}
