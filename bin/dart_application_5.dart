import 'dart:io';

void main() {
  double usd = 85;
  double kzt = 0.20;
  double eur = 97;
  double rub = 1.1;

  print(
      'Доброе пожаловать!\nКурс на сегодня: \nUSD -$usd \nKZT -$kzt \nEUR - $eur \nRUB - $rub');
  print(
      '1) Хотите обменять другую валюту на сом? \n2) Хотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync()!;
  if (choice == '1') {
    print('Покупка');
    print('Выберите валюту \nUSD\nKZT\nEUR\nRUB');
    String valuta = stdin.readLineSync()!;
    if (valuta == 'USD' || valuta == 'usd') {
      calc(usd);
    } else if (valuta == 'KZT' || valuta == 'kzt') {
      calc(kzt);
    } else if (valuta == 'EUR' || valuta == 'eur') {
      calc(eur);
    } else if (valuta == 'RUB' || valuta == 'rub') {
      calc(rub);
    } else {
      print('Неверный ввод');
    }
  } else if (choice == '2') {
    print('Продажа');
    print('Выберите валюту \nUSD\nKZT\nEUR\nRUB');
    String valuta = stdin.readLineSync()!;
    if (valuta == 'USD' || valuta == 'usd') {
      calc1(usd);
    } else if (valuta == 'KZT' || valuta == 'kzt') {
      calc1(kzt);
    } else if (valuta == 'EUR' || valuta == 'eur') {
      calc1(eur);
    } else if (valuta == 'RUB' || valuta == 'rub') {
      calc1(rub);
    } else {
      print('Неверный ввод');
    }
  } else {
    print('Вы можете ввести только 1 или 2');
  }
}

void calc(double currency) {
  print('Введите сумму');
  int summ = int.parse(stdin.readLineSync()!);
  print(summ * currency);
}

void calc1(double currency) {
  print('Введите сумму');
  int summ = int.parse(stdin.readLineSync()!);
  print(summ / currency);
}
