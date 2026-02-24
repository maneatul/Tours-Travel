// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
// ignore: avoid_web_libraries_in_flutter
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';
import 'package:tours_travels/sections/footer_section.dart';
import 'package:tours_travels/sections/hero_section.dart';
import 'package:tours_travels/sections/packages_section.dart';
import 'package:tours_travels/sections/services_section.dart';
import 'package:tours_travels/sections/testimonial_section.dart';

import 'utils/scroll_keys.dart';
import 'widgets/nav_item.dart';
import 'widgets/section_title.dart';
import 'sections/about_us_section.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _controller = ScrollController();

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 900;

  @override
  void initState() {
    super.initState();

    ui.platformViewRegistry.registerViewFactory(
      'google-map',
      (int viewId) =>
          html.IFrameElement()
            ..src =
                "https://maps.google.com/maps?q=Kumar%20Park%20Infinia%20Phursungi%20Pune&t=&z=15&ie=UTF8&iwloc=&output=embed"
            ..style.border = '0',
    );
  }

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  void scrollAndClose(BuildContext context, GlobalKey key) {
    Navigator.pop(context);
    scrollTo(key);
  }

  // Future<void> openWhatsApp() async {
  //   final url = Uri.parse(
  //     "https://wa.me/918208807502?text=Hello%20PavanRaje%20Tours",
  //   );
  //   await launchUrl(url);
  // }

  Widget buildMobileDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "PavanRaje Tours & Travels",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF14532D),
                ),
              ),
            ),
            const Divider(),
            drawerItem("Home", () => scrollAndClose(context, homeKey)),
            drawerItem("About Us", () => scrollAndClose(context, aboutKey)),
            drawerItem("Packages", () => scrollAndClose(context, packagesKey)),
            drawerItem("Services", () => scrollAndClose(context, servicesKey)),
            drawerItem(
              "Testimonials",
              () => scrollAndClose(context, testimonialsKey),
            ),
            drawerItem("Contact", () => scrollAndClose(context, contactKey)),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(String title, VoidCallback onTap) {
    return ListTile(title: Text(title), onTap: onTap);
  }

  // Widget packageCard(String title) {
  //   return SizedBox(
  //     width: 260,
  //     child: Card(
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  //       child: Padding(
  //         padding: const EdgeInsets.all(20),
  //         child: Column(
  //           children: [
  //             Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
  //             const SizedBox(height: 10),
  //             ElevatedButton(
  //               onPressed: openWhatsApp,
  //               child: const Text("Enquire"),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: isMobile(context) ? buildMobileDrawer(context) : null,
      body: Column(
        children: [
          // NAVBAR
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.directions_car, color: Color(0xFF14532D)),
                    SizedBox(width: 8),
                    Text(
                      "PavanRaje Tours & Travels",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF14532D),
                      ),
                    ),
                  ],
                ),
                if (!isMobile(context))
                  Row(
                    children: [
                      NavItem("Home", () => scrollTo(homeKey)),
                      NavItem("About Us", () => scrollTo(aboutKey)),
                      NavItem("Packages", () => scrollTo(packagesKey)),
                      NavItem("Services", () => scrollTo(servicesKey)),
                      NavItem("Testimonials", () => scrollTo(testimonialsKey)),
                      NavItem("Contact", () => scrollTo(contactKey)),
                    ],
                  )
                else
                  Builder(
                    builder:
                        (context) => IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                        ),
                  ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  // HERO
                  Container(
                    key: homeKey,
                    child: const HeroSection(),
                  ),

                  // ✅ ABOUTUS
                  Container(key: aboutKey, child: const AboutUsSection()),

                  // ✅ POPULAR PACKAGES
                  Container(
                    key: packagesKey,
                    child: const PopularPackagesSection(),
                  ),

                  // ✅ OUR SERVICES (NEW)
                  Container(key: servicesKey, child: const ServicesSection()),


                  // NEW TESTIMONIALS
                  Container(key: testimonialsKey, child: const TestimonialsSection()),   


                  // // NEW CONTACT
                  // Container(key: contactKey, child: const ContactSection()),   

                  // CONTACT
                  Container(
                    key: contactKey,
                    padding: const EdgeInsets.all(60),
                    child: Column(
                      children: const [
                        SectionTitle("Contact Us"),
                        SizedBox(height: 20),
                        Text("📍 Kumar Park Infinia, Phursungi, Pune – 412308"),
                        SizedBox(height: 10),
                        Text("📞 8208807502, 9561986944"),
                        SizedBox(height: 30),
                        SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: HtmlElementView(viewType: 'google-map'),
                        ),
                      ],
                    ),
                  ),

                // Footer 
                 FooterSection(),
               
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
