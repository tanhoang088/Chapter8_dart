import 'dart:io';
import 'package:intl/intl.dart';


void main(){
  stdout.write('Enter unit price: ');
  int unitPrice = int.parse(stdin.readLineSync()!);
  stdout.write('Enter quantity: ');
  int quantity = int.parse(stdin.readLineSync()!);
  double discount = 0;
  switch(quantity){
    case <100 : discount = 0;
    case >= 100 && < 120 : discount = 0.1;
    case >= 120 : discount = 0.15;
  }
  double discountValue = quantity * unitPrice * discount;
  stdout.write('Your discount is: $discountValue(${discount*100}%)');
  stdout.write('\nThe revenue after discount is: ${quantity * unitPrice - discountValue}');
}