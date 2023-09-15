
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // BOTTOM NEVIGATION BAR
      //==============================
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 2,// will show the active index
      items: [

        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Searct"),
      ],
    ),

    );
  }






