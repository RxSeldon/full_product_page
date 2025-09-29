import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductVariations extends StatelessWidget {
  const ProductVariations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Variations",
                style: GoogleFonts.raleway(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Pink",
                  style: GoogleFonts.raleway(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "M",
                  style: GoogleFonts.raleway(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 0, 126, 230),
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(
                    "assets/var1.png",
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(
                    "assets/var2.png",
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(
                    "assets/var3.png",
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
