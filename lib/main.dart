// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : "Message Card",
      theme: ThemeData(
        primarySwatch :Colors.blue,
      ),
    home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
        TextEditingController  controllers = TextEditingController();
    String message=" ";
    Color themeColor= Colors.cyan;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar :AppBar(
        backgroundColor: themeColor,
          title: Text("Message Card", 
              style: TextStyle(
                color:Colors.white,
              ),
          ),
      ),
       body:ListView(

        //  crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Padding(
             padding: EdgeInsets.all(8.0),
             child: Container(
               width:400.0,
               height:200.0,
               color: themeColor,  
               child:Center(
                  child:Text(message, 
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'cursive',                     
                    color: Colors.white, 
                  ),
                  ),
               ),
             ),
           ),


           Padding(
             padding: EdgeInsets.all(8.0),
             child: TextField(
               controller: controllers,
               maxLength :30,
               onChanged:(String newValue){
              
                  // print(newValue);
                  setState((){
                    message= newValue ; 
                  }


                  );
            
               },
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 focusedBorder: OutlineInputBorder(
                   borderSide:BorderSide(
                    width:2.0,
                    color:themeColor,
                 ),
                 ),
                 suffixIcon: Icon(
                   Icons.edit, 
                   color:themeColor,
                   ),
                 hintText: " Your Message is here!",
                 helperText:  "You can add ur message here",
               ),
             ),
           ),


           Padding(
             padding: EdgeInsets.all(8.0),
             child: FlatButton(
               onPressed: (){
                 controllers.clear();
               },
              color:themeColor,
              child: Text("Clear The Text",style: TextStyle(color:Colors.white,),),
             ),
           ),

           Card(
             child:Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment : MainAxisAlignment.spaceAround,
                 children:<Widget> [

                   InkWell(
                     onTap:(){
                       setState(() {
                      themeColor= Colors.red;
                       });
                     },
                     child: CircleAvatar(
                     backgroundColor: Colors.red,
                   ),
                   ),
                  

                InkWell(
                  onTap:(){
                    setState(() {
                      themeColor= Colors.blue;
                    }
);
                  },
                  child: CircleAvatar(
                     backgroundColor: Colors.blue,
                   ),
                  
                ),
               


                InkWell(
                  onTap:(){
                    setState((){
                      themeColor= Colors.green;
                    },
                    );
                  },
                  child:  CircleAvatar(
                     backgroundColor: Colors.green,
                   ),
                ),
              

                InkWell(
                  onTap:(){
                    setState((){
                        themeColor = Colors.orange; 
                    },
                    );
                  },
                  child: CircleAvatar(
                     backgroundColor: Colors.orange,
                   ),
                ),
               

                 ],
               ),
             ),
           ),
         ],
       ),
    );
  }
}