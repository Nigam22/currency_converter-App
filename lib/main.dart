import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart';

void main() {
  runApp(const Myapp());
}

//types of widgets
//statelesswidget
//statefulwidgets

//state

// 1. Material Design created by Google
// 2. Cupertino Design created by Apple

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
