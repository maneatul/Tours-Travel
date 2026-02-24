import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  // Future<void> openWhatsApp() async {
  //   final url = Uri.parse(
  //     "https://wa.me/918208807502?text=Hello%20PavanRaje%20Tours",
  //   );
  //   await launchUrl(url);
  // }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final heroHeight = width < 600 ? 450.0 : 650.0;
    return Container(
      height: 650,//heroHeight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/hero.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black.withOpacity(0.6),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Travel in Comfort.\nTravel with Trust.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.3),
              const SizedBox(height: 20),
              const Text(
                "Premium Car Rentals & Tour Packages from Pune",
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 30),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: const Color(0xFF22C55E),
              //   ),
              //   onPressed: openWhatsApp,
              //   child: const Text("Book on WhatsApp"),
              // ),
              // CTA BUTTONS
                Wrap(
                  spacing: 20,
                  runSpacing: 16,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.chat),
                      label: const Text("WhatsApp Booking"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF14532D),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse("https://wa.me/918208807502"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                    OutlinedButton.icon(
                      icon: const Icon(Icons.call),
                      label: const Text("Call Now"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse("tel:8208807502"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
