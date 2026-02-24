
import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  final int value;
  final String label;
  final Duration duration;

  const AnimatedCounter({
    super.key,
    required this.value,
    required this.label,
    this.duration = const Duration(seconds: 2),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: value),
      duration: duration,
      builder: (context, val, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$val+",
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xFF14532D),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF475569),
              ),
            ),
          ],
        );
      },
    );
  }
}