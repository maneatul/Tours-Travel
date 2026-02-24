// import 'package:flutter/material.dart';
// import '../utils/scroll_keys.dart';
// import 'nav_item.dart';

// class NavBar extends StatelessWidget {
//   final Function(GlobalKey) onNavigate;

//   const NavBar({required this.onNavigate, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             "PPavanRaje Tours & Travels",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             children: [
//               NavItem("Home", () => onNavigate(homeKey)),
//               NavItem("Packages", () => onNavigate(packagesKey)),
//               NavItem("Services", () => onNavigate(servicesKey)),
//               NavItem("Contact", () => onNavigate(contactKey)),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }