// ignore: file_names

// import 'package:flutter/material.dart';
// import 'package:onlinestore/HomeScreen/Home.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});

//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//    int _currentIndex = 0;
   
//    void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(

//        currentIndex: _currentIndex,
//         onTap: _onTabTapped,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.deepOrange,
//          selectedItemColor: Colors.white,
//        unselectedItemColor: Color.fromARGB(179, 193, 188, 188),
//    items: [
//        BottomNavigationBarItem(
//             icon: Icon(Icons.home,),
//             label: 'Home',
            
            
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category,
//             ),
//             label: 'Catalog',
            
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart,
//             ),
//             label: 'Cart',
            
           
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person,
//             ),
//             label: 'Profile',
            
//           ),
//    ]
//     );
//   }
//    Widget _buildPage(int index) {
//     switch (index) {
//       case 0:
//         return MyHomePage();
//       case 1:
//         return MyHomePage();
      
//       default:
//         return MyHomePage();
//     }
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BottomNavigation extends StatefulWidget {
//   @override
//   BottomNavigationState createState() => BottomNavigationState();
// }

// class BottomNavigationState extends State<BottomNavigation> {
//   var currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return  Container(
//         margin: EdgeInsets.all(5),
//         height: size.width * .155,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.15),
//               blurRadius: 10,
//               offset: Offset(0, 20),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(40),
//         ),
//         child: ListView.builder(
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: size.width * .024),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(
//                 () {
//                   currentIndex = index;
//                 },
//               );
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 1500),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   margin: EdgeInsets.only(
//                     bottom: index == currentIndex ? 0 : size.width * .029,
//                     right: size.width * .0422,
//                     left: size.width * .0422,
//                   ),
//                   width: size.width * .128,
//                   height: index == currentIndex ? size.width * .014 : 0,
//                   decoration: BoxDecoration(
//                     color: Colors.deepOrange,
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Icon(
//                   listOfIcons[index],
//                   size: size.width * .076,
//                   color: index == currentIndex
//                       ? Colors.deepOrange
//                       : Colors.black38,
                    
//                 ),
//                 SizedBox(height: size.width * .03),
//               ],
//             ),
//           ),
//         ),
      
//     );
//   }

//   List<IconData> listOfIcons = [
//     CupertinoIcons.home,
//     CupertinoIcons.bag,
//     CupertinoIcons.cart,
//     CupertinoIcons.person,
//   ];
// }

// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinestore/HomeScreen/Home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
 
 

   
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));}, icon:const Icon(CupertinoIcons.home),),
          IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.bag),
          ),
          IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.cart),
          ),
          IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.person),
          ),
        ],
      ),
    );
  }
}