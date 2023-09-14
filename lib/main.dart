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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,// will show the active index
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Searct"),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(child:  Text("Sohel")),
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text("Md SOhel Hossain", style: TextStyle(color: Colors.black),),
                accountEmail: Text("sohelju1983@gmail.com",style: TextStyle(color: Colors.black),),
                currentAccountPicture: Image.network("https://banner2.cleanpng.com/20180710/xui/kisspng-dart-programming-language-flutter-object-oriented-flutter-logo-5b454ed3adae62.4180922415312688197114.jpg"),
                onDetailsPressed: (){
                  MySnackBar("Iam Details", context);
                },


              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
                onTap: (){
                  MySnackBar("Home",context);
                }),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("contact"),
                onTap: (){
                  MySnackBar("Contact",context);
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("profile"),
                onTap: (){
                  MySnackBar("profile",context);
                }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("phone"),
                onTap: (){
                  MySnackBar("phone",context);
                }),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(child:  Text("Sohel")),
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text("Md SOhel Hossain", style: TextStyle(color: Colors.black),),
                accountEmail: Text("sohelju1983@gmail.com",style: TextStyle(color: Colors.black),),
                currentAccountPicture: Image.network("https://banner2.cleanpng.com/20180710/xui/kisspng-dart-programming-language-flutter-object-oriented-flutter-logo-5b454ed3adae62.4180922415312688197114.jpg"),
                onDetailsPressed: (){
                  MySnackBar("Iam Details", context);
                },


              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
                onTap: (){
                  MySnackBar("Home",context);
                }),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("contact"),
                onTap: (){
                  MySnackBar("Contact",context);
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("profile"),
                onTap: (){
                  MySnackBar("profile",context);
                }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("phone"),
                onTap: (){
                  MySnackBar("phone",context);
                }),
          ],
        ),
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
