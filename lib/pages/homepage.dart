import 'package:ecommerce/components/bottom_nav.dart';
import 'package:ecommerce/pages/cartpage.dart';
import 'package:ecommerce/pages/shoppage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBAR(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigateBottomBAR(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu,color: Colors.black,),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
       DrawerHeader(
              child: Image.asset(
                'lib/images/nike.png',
                color: Colors.white,
              ),
            ),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            
            //HOME
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white),
                title: Text('Home',style: TextStyle(color: Colors.white),),
              ),
            ),
            
            //ABOUT
            const Padding(
              padding: EdgeInsets.only(left:24.0),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
                title: Text('About', style: TextStyle(color: Colors.white),),
              ),
            ),
            ],),
            
            
            const Padding(
              padding: EdgeInsets.only(left:24.0, bottom: 3),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
       
      ),

          );

        

  }
}
