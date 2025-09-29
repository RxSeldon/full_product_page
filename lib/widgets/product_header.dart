import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/topbar.png",
          height: screenHeight * 0.45,
          width: double.infinity,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$17.00",
                style: GoogleFonts.raleway(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 255, 235, 235),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                  child: const Icon(
                    Icons.reply,
                    color: Color.fromARGB(255, 181, 162, 162),
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
            style: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
