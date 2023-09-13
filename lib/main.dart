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

      floatingActionButton: FloatingActionButton(
        elevation: 6,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: (){
          MySnackBar("I am FLoating Action Buttion",context);

        },
      ),
    );
  }
}







// // ICON SET IN AppBar
// //=======================
// class HomeActivity extends StatelessWidget{
//   const HomeActivity({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title: Text("Inventory"),
//         titleSpacing: 10,
//         toolbarHeight: 60,
//         toolbarOpacity: 1,
//         //elevation: 0,
//         elevation: 10,
//         backgroundColor: Colors.blue,
//
//         // ICON SET IN AppBar
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.message)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.search)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
//         ],
//       ),
//
//     );
//   }
// }
