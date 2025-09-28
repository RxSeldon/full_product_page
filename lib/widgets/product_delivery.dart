import 'package:flutter/material.dart';

class ProductDelivery extends StatelessWidget {
  const ProductDelivery({super.key});

  Widget _buildOption(String title, String days, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(238, 0, 76, 255)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  days,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(238, 0, 76, 255),
                  ),
                ),
              ],
            ),
            Text(
              price,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 12),
          _buildOption("Standard", "5-7 days", "\$3,00"),
          _buildOption("Express", "1-2 days", "\$12,00"),
        ],
      ),
    );
  }
}
