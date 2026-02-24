import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/section_title.dart';

class PackagesCarouselSection extends StatefulWidget {
  const PackagesCarouselSection({super.key});

  @override
  State<PackagesCarouselSection> createState() =>
      _PackagesCarouselSectionState();
}

class _PackagesCarouselSectionState
    extends State<PackagesCarouselSection> {
  final PageController _pageController =
      PageController(viewportFraction: 0.8);

  int currentPage = 0;
  Timer? _timer;

  final List<Map<String, String>> packages = [
    {
      "title": "Mahabaleshwar Weekend",
      "duration": "2 Days / 1 Night",
      "price": "₹2,999",
      "image": "assets/packages/mahabaleshwar.jpg"
    },
    {
      "title": "Shirdi Darshan",
      "duration": "1 Day",
      "price": "₹1,499",
      "image": "assets/packages/shirdi.jpg"
    },
    {
      "title": "Lonavala Trip",
      "duration": "1 Day",
      "price": "₹1,299",
      "image": "assets/packages/lonavala.jpg"
    },
    {
      "title": "Goa Special Tour",
      "duration": "3 Days / 2 Nights",
      "price": "₹7,999",
      "image": "assets/packages/goa.jpg"
    },
  ];

  @override
  void initState() {
    super.initState();
    startAutoSlide();
  }

  void startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (currentPage < packages.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width < 800 ? 380.0 : 480.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: [
          const SectionTitle("Popular Packages"),
          const SizedBox(height: 40),

          SizedBox(
            height: height,
            child: PageView.builder(
              controller: _pageController,
              itemCount: packages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final item = packages[index];
                return buildSlide(item);
              },
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              packages.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: currentPage == index ? 20 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentPage == index
                      ? const Color(0xFF14532D)
                      : Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildSlide(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage(item["image"]!),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF22C55E),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  item["price"]!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Text(
                item["title"]!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                item["duration"]!,
                style: const TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF14532D),
                ),
                onPressed: () {},
                child: const Text("Enquire Now"),
              )
            ],
          ),
        ),
      ),
    ).animate().fadeIn().slideY(begin: 0.2);
  }
}