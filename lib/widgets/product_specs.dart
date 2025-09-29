import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSpecs extends StatelessWidget {
  const ProductSpecs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Specifications",
            style: GoogleFonts.raleway(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Material",
            style: GoogleFonts.raleway(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 244, 206, 219),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Cotton 95%",
                  style: GoogleFonts.raleway(
                    fontSize: 16,
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
                  color: const Color.fromARGB(255, 244, 206, 219),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Nylon 5%",
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "Origin",
            style: GoogleFonts.raleway(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 175, 189, 224),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "EU",
              style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Text(
                "Size Guide",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 0, 126, 230),
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
