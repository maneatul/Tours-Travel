import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;

        return Container(
          width: double.infinity,
          color: const Color(0xFF0F172A),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            // vertical: 60,
          ),
          child: Column(
            children: [
              // Wrap(
              //   spacing: 80,
              //   runSpacing: 40,
              //   alignment: WrapAlignment.spaceBetween,
              //   children: [
              //     _brandSection(),
              //     _contactSection(),
              //   ],
              // ),

              // const SizedBox(height: 50),
              const Divider(color: Colors.white24),
              const SizedBox(height: 20),

              const Text(
                "© 2026 PavanRaje Tours & Travels. All rights reserved.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Designed by Atul Mane",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _brandSection() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PavanRaje Tours & Travels",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Trusted cab and travel service in Pune providing safe, "
            "comfortable, and reliable journeys.",
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _contactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Contact Us",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 14),
        _contactRow(
          icon: Icons.location_on,
          text: "Kumar Park Infinia, Phursungi, Pune – 413102",
        ),
        const SizedBox(height: 12),
        _contactRow(
          icon: Icons.call,
          text: "8600807077",
          onTap: () {
            launchUrl(Uri.parse("tel:8600807077"));
          },
        ),
      ],
    );
  }

  Widget _contactRow({
    required IconData icon,
    required String text,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.white70),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}