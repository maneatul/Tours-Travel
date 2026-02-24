import 'package:flutter/material.dart';


// class PopularPackagesSection extends StatelessWidget {
//   const PopularPackagesSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final columns = width > 1200 ? 4 : width > 800 ? 2 : 1;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
//       child: Column(
//         children: [
//           const SectionTitle("Popular Packages"),
//           const SizedBox(height: 40),
//           GridView.count(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisCount: columns,
//             crossAxisSpacing: 24,
//             mainAxisSpacing: 24,
//             childAspectRatio: 0.85,
//             children: const [
//               PackageCard(
//                 title: "Mahabaleshwar Weekend",
//                 duration: "2 Days / 1 Night",
//                 price: "₹2,999",
//                 image: "assets/packages/mahabaleshwar.jpg",
//               ),
//               PackageCard(
//                 title: "Shirdi Darshan",
//                 duration: "1 Day",
//                 price: "₹1,499",
//                 image: "assets/packages/shirdi.jpg",
//               ),
//               PackageCard(
//                 title: "Lonavala Trip",
//                 duration: "1 Day",
//                 price: "₹1,299",
//                 image: "assets/packages/lonavala.jpg",
//               ),
//               PackageCard(
//                 title: "Goa Special Tour",
//                 duration: "3 Days / 2 Nights",
//                 price: "₹7,999",
//                 image: "assets/packages/goa.jpg",
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PackageCard extends StatelessWidget {
//   final String title;
//   final String duration;
//   final String price;
//   final String image;

//   const PackageCard({
//     super.key,
//     required this.title,
//     required this.duration,
//     required this.price,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 250),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           image: DecorationImage(
//             image: AssetImage(image),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Colors.transparent,
//                 Colors.black.withOpacity(0.75),
//               ],
//             ),
//           ),
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF22C55E),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text(
//                   price,
//                   style: const TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               const Spacer(),
//               Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 duration,
//                 style: const TextStyle(color: Colors.white70),
//               ),
//               const SizedBox(height: 12),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   foregroundColor: const Color(0xFF14532D),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12)),
//                 ),
//                 child: const Text("Enquire Now"),
//               )
//             ],
//           ),
//         ),
//       ).animate().fadeIn().slideY(begin: 0.2),
//     );
//   }
// }


import 'package:url_launcher/url_launcher.dart';

class PopularPackagesSection extends StatelessWidget {
  const PopularPackagesSection({super.key});

  void _openWhatsApp(String packageName) {
    final text = Uri.encodeComponent(
      "Hello PavanRaje Tours & Travels,\n\nI am interested in the $packageName package. "
      "Please share more details.",
    );

    launchUrl(
      Uri.parse("https://wa.me/918208807502?text=$text"),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            vertical: isMobile ? 60 : 100,
          ),
          color: Colors.white,
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
                  "POPULAR PACKAGES",
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
                "Explore Our Most Loved Trips",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 26 : 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0F172A),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Carefully designed travel packages for families, friends, "
                "corporate teams, and pilgrims.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Color(0xFF475569),
                ),
              ),

              const SizedBox(height: 60),

              Wrap(
                spacing: 32,
                runSpacing: 32,
                alignment: WrapAlignment.center,
                children: [
                  _PackageCard(
                    image: "assets/packages/lonavala.jpg",
                    title: "Lonavala Weekend Getaway",
                    duration: "1 Day / 2 Days",
                    price: "Starting from ₹1,499",
                    description:
                        "Perfect short escape to enjoy waterfalls, hills, "
                        "and scenic drives near Pune.",
                    onTap: () => _openWhatsApp("Lonavala Weekend Getaway"),
                  ),
                  _PackageCard(
                    image: "assets/packages/mahabaleshwar.jpg",
                    title: "Mahabaleshwar Family Trip",
                    duration: "2 Days / 1 Night",
                    price: "Starting from ₹2,999",
                    description:
                        "Enjoy strawberry farms, viewpoints, and peaceful "
                        "hill station vibes with your family.",
                    onTap: () =>
                        _openWhatsApp("Mahabaleshwar Family Trip"),
                  ),
                  _PackageCard(
                    image: "assets/packages/shirdi.jpg",
                    title: "Shirdi Darshan Tour",
                    duration: "1 Day",
                    price: "Starting from ₹1,299",
                    description:
                        "Comfortable pilgrimage travel with experienced "
                        "drivers for a peaceful darshan experience.",
                    onTap: () => _openWhatsApp("Shirdi Darshan Tour"),
                  ),
                  _PackageCard(
                    image: "assets/packages/goa.jpg",
                    title: "Goa Holiday Package",
                    duration: "3 Days / 2 Nights",
                    price: "Starting from ₹7,999",
                    description:
                        "Beach fun, nightlife, sightseeing, and relaxed "
                        "travel arrangements for unforgettable memories.",
                    onTap: () => _openWhatsApp("Goa Holiday Package"),
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

class _PackageCard extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String price;
  final String description;
  final VoidCallback onTap;

  const _PackageCard({
    required this.image,
    required this.title,
    required this.duration,
    required this.price,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.06),
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(22)),
            child: Image.asset(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                ),

                const SizedBox(height: 6),

                // DURATION
                Text(
                  duration,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF64748B),
                  ),
                ),

                const SizedBox(height: 14),

                // DESCRIPTION
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Color(0xFF475569),
                  ),
                ),

                const SizedBox(height: 16),

                // PRICE
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14532D),
                  ),
                ),

                const SizedBox(height: 18),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF14532D),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Enquire on WhatsApp", style: TextStyle(color: Color.fromARGB(255, 218, 235, 225))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}