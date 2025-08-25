import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => 
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState 
   extends State<CurrencyConverterCupertinoPage> {
   double result = 0;

    final TextEditingController textEditingController = TextEditingController();

    void convert(){
      result = double.parse(textEditingController.text)*88;
      setState(() { });
    }

   @override
   Widget build(BuildContext context) {

    return  CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3 ,
        middle: Text('Currency converter', 
          style: TextStyle(
            color: Colors.black54,
            fontSize: 35,
            fontWeight: FontWeight.bold,
             ),
           ),
         ),
      child:  Center(
        child: Column(
         mainAxisAlignment :MainAxisAlignment.center,
         children: [
            Text(
            'INR ${result != 0 ? result.toStringAsFixed(2): result.toStringAsFixed(0) }',
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
              ),
             ), 
             CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: BoxBorder.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              placeholder: 'Please enter the amount in USD',
              placeholderStyle: const TextStyle(
                color: Colors.black45,
               ),
              prefix: const Icon(CupertinoIcons.money_dollar,
              color: Colors.black,),
             keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
             ),
              const SizedBox(height: 10,),
           CupertinoButton(
              color:  CupertinoColors.black,
              onPressed: convert,
              child: Text('Convert',
              style: TextStyle(
            color: CupertinoColors.white),
            ),
           ),
         ],
        ),
      ),
    );
   }
   }