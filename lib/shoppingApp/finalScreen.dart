import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/homeScreen.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShoppingScreen(),));
                },
                child: Icon(Icons.home)),
            ),
          ),
          SizedBox(height: 170,),
        Center(
          child: Image.network("https://www.wordstream.com/wp-content/uploads/2022/07/thank-you-for-your-order-images-13.png"),
      ),
      ],) 
      
    ) ;
    
   
  }
}