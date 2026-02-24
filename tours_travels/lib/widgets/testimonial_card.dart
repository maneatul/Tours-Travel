// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';

// class TestimonialCard extends StatelessWidget {
//   final String name;
//   final String review;

//   const TestimonialCard({
//     super.key,
//     required this.name,
//     required this.review,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 320,
//       padding: const EdgeInsets.all(24),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             color: Colors.black.withOpacity(0.05),
//             offset: const Offset(0, 10),
//           )
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Row(
//             children: [
//               Icon(Icons.star, color: Colors.amber, size: 18),
//               Icon(Icons.star, color: Colors.amber, size: 18),
//               Icon(Icons.star, color: Colors.amber, size: 18),
//               Icon(Icons.star, color: Colors.amber, size: 18),
//               Icon(Icons.star, color: Colors.amber, size: 18),
//             ],
//           ),
//           const SizedBox(height: 16),
//           Text(
//             review,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Colors.black87,
//               height: 1.5,
//             ),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             name,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF14532D),
//             ),
//           ),
//         ],
//       ),
//     ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2);
//   }
// }