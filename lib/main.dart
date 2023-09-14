import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.blue ),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

//  SHow Snackbar Message  IN AppBar
//==================================
class HomeActivity extends StatelessWidget{
   const HomeActivity({super.key});

  MySnackBar(message,context){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }



  @override
  Widget build(BuildContext context) {

    // ADD CUSTOM BUTTON STYLE for eleveted button
    final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
        )

    );

    return Scaffold(

      appBar: AppBar(
        title: Text("Inventory"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        //elevation: 0,
        elevation: 10,
        backgroundColor: Colors.blue,

        // ICON SET IN AppBar
        actions: [
          IconButton(onPressed: (){MySnackBar("message",context);}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){MySnackBar("Search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Settings", context);}, icon: Icon(Icons.settings)),
        ],
      ),

    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'First Name'))),
        Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Last Name'))),
        Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Emai'))),
        Padding(padding: EdgeInsets.all(20), child: ElevatedButton(onPressed: (){},child: Text('Submit'),style: buttonStyle,))
      ],
    ),


    );

  }
}

