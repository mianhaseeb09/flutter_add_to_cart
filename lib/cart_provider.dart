

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier{

  int _counter=0;
  int get counter=>_counter;

   double _totalPrice=0.0;
   double get totalPrice=>_totalPrice;

  void _setPrefItems()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setInt('cart_item', _counter);
    sharedPreferences.setDouble('total_price', _totalPrice);
    notifyListeners();

  }

  void _getPrefItems()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    _counter=sharedPreferences.getInt('cart_item') ?? 0;

    _totalPrice=SharedPreferences.getDouble('total_price',) ?? 0;

    notifyListeners();

  }


}