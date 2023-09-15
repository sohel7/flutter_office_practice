
    return Scaffold(
      // SIMPLE FORM
      //=====================
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



