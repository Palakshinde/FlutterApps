
import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
Widget build(BuildContext context){
  return MaterialApp(

    home: Scaffold(
      appBar: AppBar(
        title: const Text("Shoes"),
      
        backgroundColor: Colors.white,
      
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.network("https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/o/l/d/-original-imagg3fnvnnsxbjf.jpeg?q=90&crop=false",
          fit: BoxFit.cover,
          ),
        ),
        
          ),
        ),
  );
}
            
  
  
}