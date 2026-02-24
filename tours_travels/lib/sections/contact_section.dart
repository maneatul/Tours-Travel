import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});

//   bool isMobileWeb(BuildContext context) {
//     final w = MediaQuery.of(context).size.width;
//     return kIsWeb && w < 768;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final w = constraints.maxWidth;
//         final isMobile = w < 600;

//         return Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(
//             horizontal: isMobile ? 20 : 80,
//             vertical: isMobile ? 60 : 100,
//           ),
//           decoration: const BoxDecoration(
//             color: Color(0xFFF8FAFC),
//           ),
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
//                   "CONTACT US",
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
//                 "Let’s Plan Your Journey",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: isMobile ? 26 : 36,
//                   fontWeight: FontWeight.bold,
//                   color: const Color(0xFF0F172A),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // ---- SUBTITLE ----
//               ConstrainedBox(
//                 constraints: BoxConstraints(maxWidth: 700),
//                 child: Text(
//                   "Have questions or ready to book your next trip? "
//                   "Get in touch with PavanRaje Tours & Travels — "
//                   "we’re just a call or message away.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 15,
//                     height: 1.6,
//                     color: Color(0xFF475569),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 50),

//               // ---- CONTACT INFO CARDS ----
//               Wrap(
//                 spacing: 24,
//                 runSpacing: 24,
//                 alignment: WrapAlignment.center,
//                 children: [
//                   _ContactInfoCard(
//                     icon: Icons.location_on,
//                     title: "Our Office",
//                     content:
//                         "Kumar Park Infinia,\nPhursungi, Pune – 413102",
//                   ),
//                   _ContactInfoCard(
//                     icon: Icons.call,
//                     title: "Call Us",
//                     content: "8600807077",
//                     onTap: () {
//                       launchUrl(Uri.parse("tel:8600807077"));
//                     },
//                   ),
//                   _ContactInfoCard(
//                     icon: Icons.chat,
//                     title: "WhatsApp",
//                     content: "Quick Booking & Support",
//                     highlight: true,
//                     onTap: () {
//                       launchUrl(Uri.parse(
//                         "https://wa.me/918600807077",
//                       ));
//                     },
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 50),

//               // ---- MAP BUTTON (SAFE) ----
//               ElevatedButton.icon(
//                 icon: const Icon(Icons.map),
//                 label: const Text("Open Location in Google Maps"),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFF14532D),
//                   foregroundColor: Colors.white,
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 28,
//                     vertical: 16,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(14),
//                   ),
//                 ),
//                 onPressed: () {
//                   launchUrl(Uri.parse(
//                     "https://maps.google.com/?q=Kumar+Park+Infinia+Phursungi+Pune",
//                   ));
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class _ContactInfoCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String content;
//   final VoidCallback? onTap;
//   final bool highlight;

//   const _ContactInfoCard({
//     required this.icon,
//     required this.title,
//     required this.content,
//     this.onTap,
//     this.highlight = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(18),
//       child: Container(
//         width: 280,
//         padding: const EdgeInsets.all(24),
//         decoration: BoxDecoration(
//           color: highlight ? const Color(0xFF14532D) : Colors.white,
//           borderRadius: BorderRadius.circular(18),
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 18,
//               color: Colors.black.withOpacity(0.06),
//               offset: const Offset(0, 10),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               size: 30,
//               color: highlight ? Colors.white : const Color(0xFF14532D),
//             ),
//             const SizedBox(height: 14),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: highlight ? Colors.white : const Color(0xFF0F172A),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               content,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 14,
//                 height: 1.5,
//                 color:
//                     highlight ? Colors.white70 : const Color(0xFF475569),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _messageCtrl = TextEditingController();

  void _sendWhatsApp() {
    final text = Uri.encodeComponent(
      "Hello PavanRaje Tours & Travels,\n\n"
      "Name: ${_nameCtrl.text}\n"
      "Phone: ${_phoneCtrl.text}\n"
      "Message: ${_messageCtrl.text}",
    );

    launchUrl(
      Uri.parse("https://wa.me/918600807077?text=$text"),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 900;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 80,
            vertical: isMobile ? 60 : 100,
          ),
          color: const Color(0xFFF8FAFC),
          child: Column(
            children: [
              // TITLE
              const Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "We’re here to help you plan a comfortable and safe journey",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF475569)),
              ),

              const SizedBox(height: 60),

              // MAIN CONTENT
              Wrap(
                spacing: 32,
                runSpacing: 32,
                alignment: WrapAlignment.center,
                children: [
                  _mapCard(),
                  _callUsCard(),
                  _formCard(isMobile),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // ---------------- MAP + ADDRESS ----------------

  Widget _mapCard() {
    return _card(
      width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Our Location",
            style: _cardTitleStyle,
          ),
          const SizedBox(height: 12),

          GestureDetector(
            onTap: () {
              launchUrl(
                Uri.parse(
                  "https://maps.google.com/?q=Kumar+Park+Infinia+Phursungi+Pune",
                ),
                mode: LaunchMode.externalApplication,
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                "assets/map_preview.png",
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 14),

          const Text(
            "Kumar Park Infinia,\nPhursungi, Pune – 413102",
            style: TextStyle(
              height: 1.5,
              color: Color(0xFF475569),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- CALL US ----------------

  Widget _callUsCard() {
    return _card(
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Call Us",
            style: _cardTitleStyle,
          ),
          const SizedBox(height: 14),

          _phoneTile("8600807077"),
          const SizedBox(height: 10),
          _phoneTile("8600807077"), // add another number if needed
        ],
      ),
    );
  }

  Widget _phoneTile(String number) {
    return InkWell(
      onTap: () {
        launchUrl(
          Uri.parse("tel:$number"),
          mode: LaunchMode.externalApplication,
        );
      },
      child: Row(
        children: [
          const Icon(Icons.call, color: Color(0xFF14532D)),
          const SizedBox(width: 10),
          Text(
            number,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF14532D),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- FORM ----------------

  Widget _formCard(bool isMobile) {
    return _card(
      width: isMobile ? double.infinity : 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Send Us a Message",
            style: _cardTitleStyle,
          ),
          const SizedBox(height: 14),

          _inputField("Full Name", _nameCtrl),
          const SizedBox(height: 12),
          _inputField(
            "Phone Number",
            _phoneCtrl,
            keyboard: TextInputType.phone,
          ),
          const SizedBox(height: 12),
          _inputField(
            "Message",
            _messageCtrl,
            maxLines: 4,
          ),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _sendWhatsApp,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF14532D),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Send via WhatsApp"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputField(
    String hint,
    TextEditingController controller, {
    int maxLines = 1,
    TextInputType keyboard = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF1F5F9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // ---------------- CARD WRAPPER ----------------

  Widget _card({required Widget child, double? width}) {
    return Container(
      width: width,
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
      child: child,
    );
  }
}

// ---------------- STYLES ----------------

const _cardTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color(0xFF0F172A),
);