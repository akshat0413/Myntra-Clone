// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'main.dart';
// import 'package:badges/badges.dart' as badges;
// import 'page1.dart';
// import 'page2.dart';
// import 'page3.dart';

// int pageIndex = 0;
// int Cart_Count = 0;
// int Notification_Count = 0;
// int Favorites_Count = 0;

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final pages = [const Page1(), const Page2(), const Page3()];
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: PopupMenuButton(
//             color: Colors.black,
//             itemBuilder: (BuildContext context) {
//               return [
//                 PopupMenuItem<int>(
//                   value: 0,
//                   child: Column(
//                     children: [
//                       ElevatedButton(
//                         child: const Text('Cart Items'),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomePage()),
//                           );
//                         },
//                       ),
//                       ElevatedButton(
//                         child: const Text('Notification'),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const Page2()),
//                           );
//                         },
//                       ),
//                       ElevatedButton(
//                         child: const Text('Favorites'),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const Page3()),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 )
//               ];
//             },
//           ),
//           title: const Text(
//             'Cart Item',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 25,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Theme.of(context).primaryColor,
//         ),
//         body: pages[pageIndex],
//         bottomNavigationBar: buildMyNavBar(context),
//       ),
//     );
//   }

//   Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColor,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           badges.Badge(
//             child: Icon(
//               Icons.shopping_cart,
//               size: 40,
//             ),
//             badgeContent: Text('$Cart_Count'),
//           ),
//           badges.Badge(
//             child: Icon(
//               Icons.notifications,
//               size: 40,
//             ),
//             badgeContent: Text('$Notification_Count'),
//           ),
//           badges.Badge(
//             child: Icon(
//               Icons.favorite,
//               size: 40,
//             ),
//             badgeContent: Text('$Favorites_Count'),
//           ),
//           Container(
//             // This is your Badge
//             child: Center(
//               // Here you can put whatever content you want inside your Badge
//               child: Text('4', style: TextStyle(color: Colors.white)),
//             ),
//             padding: EdgeInsets.all(8),
//             constraints: BoxConstraints(minHeight: 32, minWidth: 32),
//             decoration: BoxDecoration(
//               // This controls the shadow
//               boxShadow: [
//                 BoxShadow(
//                     spreadRadius: 1,
//                     blurRadius: 5,
//                     color: Colors.black.withAlpha(50))
//               ],
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.blue, // This would be color of the Badge
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
