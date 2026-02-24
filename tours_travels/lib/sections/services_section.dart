import 'package:flutter/material.dart';


// class ServicesSection extends StatelessWidget {
//   const ServicesSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final columns = width > 1000 ? 4 : width > 600 ? 2 : 1;

//     return Container(
//       color: const Color(0xFFF5FDF7),
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
//       child: Column(
//         children: [
//           const SectionTitle("Our Services"),
//           const SizedBox(height: 40),
//           GridView.count(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisCount: columns,
//             crossAxisSpacing: 24,
//             mainAxisSpacing: 24,
//             children: const [
//               ServiceCard(
//                 icon: Icons.directions_car,
//                 title: "Luxury Cars",
//                 subtitle: "Premium & well-maintained vehicles",
//               ),
//               ServiceCard(
//                 icon: Icons.favorite,
//                 title: "Wedding Transport",
//                 subtitle: "Special cars for your big day",
//               ),
//               ServiceCard(
//                 icon: Icons.business_center,
//                 title: "Corporate Rentals",
//                 subtitle: "Reliable business travel solutions",
//               ),
//               ServiceCard(
//                 icon: Icons.temple_hindu,
//                 title: "Pilgrimage Tours",
//                 subtitle: "Comfortable religious journeys",
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ServiceCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;

//   const ServiceCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.subtitle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(28),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             color: Colors.black.withOpacity(0.05),
//             offset: const Offset(0, 10),
//           )
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(16),
//             decoration: const BoxDecoration(
//               color: Color(0xFFE7F7EF),
//               shape: BoxShape.circle,
//             ),
//             child: Icon(icon, size: 32, color: Color(0xFF14532D)),
//           ),
//           const SizedBox(height: 16),
//           Text(
//             title,
//             style: const TextStyle(
//                 fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             subtitle,
//             textAlign: TextAlign.center,
//             style: const TextStyle(color: Colors.black54),
//           ),
//         ],
//       ),
//     ).animate().fadeIn().slideY(begin: 0.2);
//   }
// }


// import 'package:flutter/material.dart';

// class ServicesSection extends StatelessWidget {
//   const ServicesSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final isMobile = constraints.maxWidth < 600;

//         return Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(
//             horizontal: isMobile ? 20 : 80,
//             vertical: isMobile ? 60 : 100,
//           ),
//           color: Colors.white,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // ---- BADGE ----
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFE7F7EF),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: const Text(
//                   "OUR SERVICES",
//                   style: TextStyle(
//                     fontSize: 12,
//                     letterSpacing: 1,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF14532D),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // ---- TITLE ----
//               Text(
//                 "Travel Made Easy & Comfortable",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: isMobile ? 26 : 36,
//                   fontWeight: FontWeight.bold,
//                   color: const Color(0xFF0F172A),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // ---- DESCRIPTION ----
//               ConstrainedBox(
//                 constraints: BoxConstraints(maxWidth: 750),
//                 child: Text(
//                   "At PavanRaje Tours & Travels, we offer a wide range of travel "
//                   "and car rental services designed to meet your personal, "
//                   "family, and business travel needs. Our focus is on safety, "
//                   "comfort, and timely service.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 15,
//                     height: 1.6,
//                     color: Color(0xFF475569),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 60),

//               // ---- SERVICES ----
//               Wrap(
//                 spacing: 28,
//                 runSpacing: 28,
//                 alignment: WrapAlignment.center,
//                 children: const [
//                   _ServiceCard(
//                     icon: Icons.directions_car,
//                     title: "Local Car Rentals",
//                     description:
//                         "Comfortable and reliable cars for city travel, meetings, "
//                         "shopping, and daily transportation.",
//                   ),
//                   _ServiceCard(
//                     icon: Icons.route,
//                     title: "Outstation Trips",
//                     description:
//                         "Well-planned outstation travel with experienced drivers "
//                         "for safe and smooth long journeys.",
//                   ),
//                   _ServiceCard(
//                     icon: Icons.temple_hindu,
//                     title: "Pilgrimage Tours",
//                     description:
//                         "Special tour packages for Shirdi, Pandharpur, "
//                         "Trimbakeshwar, and other holy destinations.",
//                   ),
//                   _ServiceCard(
//                     icon: Icons.beach_access,
//                     title: "Holiday Packages",
//                     description:
//                         "Customized holiday trips to popular destinations like "
//                         "Lonavala, Mahabaleshwar, Goa, and more.",
//                   ),
//                   _ServiceCard(
//                     icon: Icons.business_center,
//                     title: "Corporate Travel",
//                     description:
//                         "Professional and punctual travel solutions for business "
//                         "meetings, conferences, and corporate events.",
//                   ),
//                   _ServiceCard(
//                     icon: Icons.emoji_events,
//                     title: "Special Occasions",
//                     description:
//                         "Dedicated vehicles for weddings, family functions, "
//                         "airport pickups, and special events.",
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class _ServiceCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String description;

//   const _ServiceCard({
//     required this.icon,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       padding: const EdgeInsets.all(26),
//       decoration: BoxDecoration(
//         color: const Color(0xFFF8FAFC),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 18,
//             color: Colors.black.withOpacity(0.06),
//             offset: const Offset(0, 10),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(14),
//             decoration: const BoxDecoration(
//               color: Color(0xFFE7F7EF),
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               icon,
//               size: 28,
//               color: Color(0xFF14532D),
//             ),
//           ),
//           const SizedBox(height: 18),
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF0F172A),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             description,
//             style: const TextStyle(
//               fontSize: 14,
//               height: 1.6,
//               color: Color(0xFF475569),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            vertical: isMobile ? 60 : 100,
          ),
          color: const Color(0xFFF8FAFC),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // BADGE
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFE7F7EF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "OUR SERVICES",
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14532D),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // TITLE
              Text(
                "Reliable Cab & Travel Services from Pune",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 26 : 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0F172A),
                ),
              ),

              const SizedBox(height: 16),

              // DESCRIPTION
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 750),
                child: Text(
                  "We provide safe, comfortable, and reliable cab services for local travel, "
                  "outstation trips, airport transfers, and corporate requirements. "
                  "Our focus is on punctuality, cleanliness, and customer satisfaction.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Color(0xFF475569),
                  ),
                ),
              ),

              const SizedBox(height: 60),

              // SERVICES LIST
              Wrap(
                spacing: 28,
                runSpacing: 28,
                alignment: WrapAlignment.center,
                children: const [
                  _ServiceCard(
                    icon: Icons.local_taxi,
                    title: "Local Cab Service in Pune",
                    description:
                        "Ideal for office travel, shopping, daily commuting, and "
                        "local errands across all areas of Pune.",
                  ),
                  _ServiceCard(
                    icon: Icons.flight_takeoff,
                    title: "Pune Airport Pickup & Drop",
                    description:
                        "On-time airport transfers with clean vehicles and "
                        "professional drivers — no delays, no stress.",
                  ),
                  _ServiceCard(
                    icon: Icons.route,
                    title: "Outstation Cab from Pune",
                    description:
                        "Comfortable long-distance travel to nearby cities and "
                        "tourist destinations with flexible packages.",
                  ),
                  _ServiceCard(
                    icon: Icons.business,
                    title: "Corporate Cab Services",
                    description:
                        "Reliable and punctual transportation for companies, "
                        "business meetings, employees, and guests.",
                  ),
                  _ServiceCard(
                    icon: Icons.map,
                    title: "Tourist & Sightseeing Travel",
                    description:
                        "Explore Pune and nearby attractions with experienced "
                        "drivers who know the best routes.",
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 18,
            color: Colors.black.withOpacity(0.06),
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Color(0xFFE7F7EF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 28,
              color: Color(0xFF14532D),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Color(0xFF475569),
            ),
          ),
        ],
      ),
    );
  }
}