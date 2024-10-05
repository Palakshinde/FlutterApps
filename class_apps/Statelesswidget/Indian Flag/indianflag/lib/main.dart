
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title:"India Flag",
      home:MyScreen(),
    );
  }
  
  }
  class MyScreen extends StatelessWidget{
    const MyScreen({super.key});
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(
          title:const Text("India Flag"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                width:4,
                height:350,
                color:Colors.brown,
              ),
              Column(
                children: [
                  const SizedBox(
                    height:90,
                    
                  ),
              Container(
                width:300,
                height:45,
                color:Colors.orange,

              ),
              Container(
                width:300,
                height:45,
                color:Colors.white,
                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmyugysxdAWf3W_kNbqnc6YLWQkQpJOYy6g&s"

                ),
              ),
              Container(
                width:300,
                height:45,
                color:Colors.green,
              ),
            ],
           ),
           ],
          ),
        ),
      
      );
    }
  }
