
import 'package:flutter/material.dart';
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController=TextEditingController();
  double result =0;
  void answer()
  {
    setState(() {
      
        result =double.parse(textEditingController.text)*81;
    });
  }
  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Currency Converter"),
          backgroundColor: Colors.black,
        ),
        body: Center(child: 
        Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            //main axis of row is horizontal 
            //main axis of col is vertical 
             Text
             (
              result.toString(),
            style: const TextStyle
            (
              fontSize: 45,
              fontWeight: FontWeight.bold,
              
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.white
                ),
                decoration: const InputDecoration(
                  hintText: "Enter the Amount in INR ",
                  hintStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white70,
                  filled: true,
                  fillColor: Colors.black12,
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  answer();
                },
              style: TextButton.styleFrom//an easy method to style button rather thean material theme prpt
              (
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child:const Text("Click Me")),

            )
          ],
        ),
        )
      );
  }
}
 