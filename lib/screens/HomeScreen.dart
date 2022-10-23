import 'package:final_ecommerce/config/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        //appBar
        _buildAppBar3(),

      ]),
      //bottomBar
      bottomNavigationBar: _buildBottomBar(),
    );
  }

 SliverAppBar _buildAppBar3() {
   return SliverAppBar(
     stretch: true,
     toolbarHeight: 130,
     title: Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(
               icon: Icon(
                 Icons.menu,
                 color: Colors.white,
               ),
               onPressed: () {},
             ),
             Text('OMAN PHONE'),
             IconButton(
               icon: Icon(
                 Icons.notifications,
                 color: Colors.white,
               ),
               onPressed: () {},
             ),
           ],
         ),
         Padding(
           padding: const EdgeInsets.only(
             top: 12.0,
             bottom: 12.0,
             // left: 4.0,
             // right: 4.0,
           ),
           child: Container(
             height: 55,
             decoration: BoxDecoration(
                 color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
             child: TextField(
               decoration: InputDecoration(
                 labelText: "Search products...",
                 border: InputBorder.none,
                 icon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
               ),
             ),
           ),
         ),
       ],
     ),
     centerTitle: true,
     backgroundColor: Colors.red,
     pinned: true,
   );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  BottomNavigationBar _buildBottomBar() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(
              Icons.category,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
        ]);
  }
}
