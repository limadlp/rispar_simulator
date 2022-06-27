import 'package:money_formatter/money_formatter.dart';

class Money {
  Money._();

  static String moneyFormat(double value) {
    String total;
    MoneyFormatter f = MoneyFormatter(
      amount: value, //value.toDouble().abs() * 0.01,
      settings: MoneyFormatterSettings(
        symbol: r'R$',
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 0,
      ),
    );

    total = f.output.symbolOnLeft;

    return total;
  }
}
