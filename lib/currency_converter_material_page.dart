
import 'package:flutter/material.dart';

//1. create a variable that stores a currency value.
    //2. create a fucntion that multplies the given by the textfeild with 88
    //3. stores the value in variable we create
    //4. Display that variable


class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage ({super.key});

  @override
   State createState() => 
    _CurrencyConverterMaterialPage() ;
  }

 class _CurrencyConverterMaterialPage extends State{
    double result = 0;

    final TextEditingController textEditingController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
              borderSide: const BorderSide(
              color: Color.fromARGB(255, 0, 0, 0),
              width: 2,
              style: BorderStyle.solid,
           ),
              borderRadius: BorderRadius.circular(5),
       );

    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey ,
        title: const Text('Currency converter', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
             ),
           ),
              centerTitle: true,
         ),
      body:  Center(
        child: Column(
         mainAxisAlignment :MainAxisAlignment.center,
         children: [
            Text(
            'INR ${result != 0 ? result.toStringAsFixed(2): result.toStringAsFixed(0) }',
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Colors.white,
              ),
             ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
               hintText: 'Please enter the amount in USD',
               hintStyle: const TextStyle(
                color: Colors.black,
               ),
               prefixIcon: Icon(Icons.monetization_on_outlined),
               prefixIconColor: Colors.black,
               fillColor: Colors.white,
               filled: true,
               focusedBorder: border,
               enabledBorder: border,  
              ),
                keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
             ),
           ),
          
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: ElevatedButton(
              onPressed:(){
             
             setState(() {
               result =  double.parse(textEditingController.text)*88;
             });
             }, 
             style: TextButton.styleFrom(
              elevation:(8),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 50 ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                 ),
               ),
                child: const Text(' Convert'),
             ),
            ),
         ],
       ),
     ),
    );
  }
 } 