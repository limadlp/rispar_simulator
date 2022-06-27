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

  static String moneyFormatBTC(double value) {
    String total;
    value /= 100000000;
    MoneyFormatter f = MoneyFormatter(
      amount: value, //value.toDouble().abs() * 0.01,
      settings: MoneyFormatterSettings(
        symbol: r'₿',
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 8,
      ),
    );

    total = f.output.symbolOnLeft;

    return total;
  }

  static String moneyFormatFrac(double value) {
    String total;
    MoneyFormatter f = MoneyFormatter(
      amount: value, //value.toDouble().abs() * 0.01,
      settings: MoneyFormatterSettings(
        symbol: r'R$',
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 2,
      ),
    );

    total = f.output.symbolOnLeft;

    return total;
  }

  static String moneyFormatBTCBRL(double value) {
    String total;
    value /= 1000;
    MoneyFormatter f = MoneyFormatter(
      amount: value, //value.toDouble().abs() * 0.01,
      settings: MoneyFormatterSettings(
        symbol: r'R$',
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 2,
      ),
    );

    total = f.output.symbolOnLeft;

    return total;
  }

  static String percentFormat(double value) {
    String total;
    MoneyFormatter f = MoneyFormatter(
      amount: value, //value.toDouble().abs() * 0.01,
      settings: MoneyFormatterSettings(
        symbol: r'%',
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 2,
      ),
    );

    total = f.output.symbolOnRight;

    return total;
  }
}
