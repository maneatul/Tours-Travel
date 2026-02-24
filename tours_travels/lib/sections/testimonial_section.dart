import 'package:flutter/material.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

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
          color: const Color(0xFFF8FAFC),
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
                  "TESTIMONIALS",
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
                "What Our Customers Say",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 26 : 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0F172A),
                ),
              ),

              const SizedBox(height: 16),

              // ---- SUBTITLE ----
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700),
                child: Text(
                  "We take pride in delivering comfortable, reliable, and stress-free "
                  "travel experiences. Here’s what our customers have to say about "
                  "their journey with PavanRaje Tours & Travels.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Color(0xFF475569),
                  ),
                ),
              ),

              const SizedBox(height: 60),

              // ---- TESTIMONIAL CARDS ----
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: const [
                  _NewTestimonialCard(
                    review:
                        "The car was very clean and comfortable. The driver was polite "
                        "and punctual. Our family trip was smooth and enjoyable.",
                    name: "Atul Mane",
                    location: "Baramati",
                  ),
                  _NewTestimonialCard(
                    review:
                        "Excellent service! Booking was easy and the vehicle quality "
                        "was top-notch. Highly recommended for outstation travel.",
                    name: "Aparna Mane",
                    location: "Hadapsar",
                  ),
                  _NewTestimonialCard(
                    review:
                        "Very professional team. On-time pickup and safe driving. "
                        "I regularly use their service for business travel.",
                    name: "Amit Deshmukh",
                    location: "Magarpatta",
                  ),
                  _NewTestimonialCard(
                    review:
                        "Excellent service! Booking was easy and the vehicle quality "
                        "was top-notch. Highly recommended for outstation travel.",
                    name: "Aparna Kolape",
                    location: "Katraj",
                  ),
                  _NewTestimonialCard(
                    review:
                        "Very professional team. On-time pickup and safe driving. "
                        "I regularly use their service for business travel.",
                    name: "Anushree Mane",
                    location: "Magarpatta",
                  ),
                  _NewTestimonialCard(
                    review:
                        "Excellent service! Booking was easy and the vehicle quality "
                        "was top-notch. Highly recommended for outstation travel.",
                    name: "Sneha Kulkarni",
                    location: "Hadapsar",
                  ),
                  _NewTestimonialCard(
                    review:
                        "Very professional team. On-time pickup and safe driving. "
                        "I regularly use their service for business travel.",
                    name: "Amit Deshmukh",
                    location: "Magarpatta",
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

class _NewTestimonialCard extends StatelessWidget {
  final String review;
  final String name;
  final String location;

  const _NewTestimonialCard({
    required this.review,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(26),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quote icon
          const Icon(
            Icons.format_quote,
            size: 32,
            color: Color(0xFF22C55E),
          ),

          const SizedBox(height: 14),

          // Review text
          Text(
            review,
            style: const TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Color(0xFF334155),
            ),
          ),

          const SizedBox(height: 22),

          // Divider
          Container(
            height: 1,
            width: 40,
            color: const Color(0xFFE5E7EB),
          ),

          const SizedBox(height: 14),

          // Name
          Text(
            name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF14532D),
            ),
          ),

          const SizedBox(height: 4),

          // Location
          Text(
            location,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF64748B),
            ),
          ),
        ],
      ),
    );
  }
}