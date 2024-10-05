
import"package:flutter/material.dart";

void main(){
  runApp(const PlayersApp());
}
class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override
  State<PlayersApp>createState()=>_PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp>{
  int _counter=0;

List<String>playerList=<String>[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6CQDvcER2-SfOBDz5Uc-6LEJ03voQVSKj8A&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5IMvU5mzUNUAVtUPVexkzgt3cDPUE6113Q&s",
  "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
  "https://onecricketnews.akamaized.net/parth-editor/oc-dashboard/news-images-prod/1700644243673_KLRahulll.jpeg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVe7WyXuGl3ZdtjlR45jVJJZcBs72cZorvA&s",

];
@override 
Widget build(BuildContext context){
  return MaterialApp(
    title:'Players',
    home:Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title:const Text("Player App"),
        centerTitle: true,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Image.network(
              playerList[_counter],
              height:300,
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_counter<playerList.length-1){
            _counter++;
          }else{
            _counter=0;
          }
          setState(() {
            
          });
        },
        tooltip: 'Increment',
        child:const Icon(Icons.add),
        ),
    ),
  );
}
}