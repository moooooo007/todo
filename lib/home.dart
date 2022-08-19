import 'package:flutter/material.dart';
import 'package:todo/tabs/listtab.dart';
import 'package:todo/tabs/settingtab.dart';

class home extends StatefulWidget {
  static const routename = "home";
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  List<Widget> tab = [listtab(),settingtab()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "To Do",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body:  tab[currentindex],
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 14,
         shape: StadiumBorder(
          side: BorderSide(color: Colors.white,width: 4)
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar:
            Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
            child: BottomAppBar(
              notchMargin: 8,
              clipBehavior: Clip.hardEdge,
              shape: CircularNotchedRectangle(),
              child: BottomNavigationBar(
          onTap: (currenttab) {
              currentindex = currenttab;
              setState(() {});
          },
          selectedItemColor: Colors.green,
          selectedLabelStyle:
                const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          selectedIconTheme: const IconThemeData(color: Colors.green),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          currentIndex: currentindex,
          items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "Menu"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
            ),
      ),
    );
  }
}
