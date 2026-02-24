import 'package:flutter/material.dart';
import 'package:tours_travels/widgets/animated_counter.dart';
class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final isMobile = w < 600;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            vertical: isMobile ? 60 : 100,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFF8FAFC),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ---- BADGE ----
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFE7F7EF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "ABOUT US",
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14532D),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ---- TITLE ----
              Text(
                "Your Trusted Travel Partner",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 26 : 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0F172A),
                ),
              ),

              const SizedBox(height: 20),

              // ---- DESCRIPTION ----
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: const Text(
                  "PavanRaje Tours & Travels is a Pune-based travel and car rental service "
                  "committed to delivering safe, comfortable, and reliable journeys. "
                  "With years of experience in the travel industry, we understand that "
                  "every trip matters — whether it’s a family vacation, a pilgrimage, "
                  "a business trip, or a special occasion.\n\n"
                  "Our mission is simple: to make travel stress-free, enjoyable, and "
                  "accessible through well-maintained vehicles, professional drivers, "
                  "and transparent service.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.7,
                    color: Color(0xFF475569),
                  ),
                ),
              ),

              const SizedBox(height: 60),

//Animated view started
     const SizedBox(height: 50),

Wrap(
  spacing: 40,
  runSpacing: 30,
  alignment: WrapAlignment.center,
  children: const [
    AnimatedCounter(
      value: 10,
      label: "Years of Experience",
    ),
    AnimatedCounter(
      value: 1000,
      label: "Happy Customers",
    ),
    AnimatedCounter(
      value: 5000,
      label: "Trips Completed",
    ),
  ],
),

const SizedBox(height: 60),
//Animated view ended

              // ---- HIGHLIGHT CARDS ----
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: const [
                  _AboutHighlightCard(
                    icon: Icons.route,
                    title: "Years of Experience",
                    description:
                        "Proven expertise in tours, rentals, and customer-focused travel solutions.",
                  ),
                  _AboutHighlightCard(
                    icon: Icons.directions_car,
                    title: "Comfort & Safety",
                    description:
                        "Clean, well-maintained vehicles with trained and professional drivers.",
                  ),
                  _AboutHighlightCard(
                    icon: Icons.verified,
                    title: "Trusted by Customers",
                    description:
                        "Hundreds of happy customers who rely on us for dependable service.",
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

class _AboutHighlightCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _AboutHighlightCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
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
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Color(0xFF475569),
            ),
          ),
        ],
      ),
    );
  }
}