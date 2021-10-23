import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-meals';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('$mealId'),),
        body:Center(
      child: Text('meals - $mealId'),
    ));
  }
}