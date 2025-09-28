import 'package:flutter/material.dart';

class ProductMostpopular extends StatelessWidget {
  const ProductMostpopular({super.key});

  Widget _buildProductCard(String imagePath, String likes, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        elevation: 3,
        margin: const EdgeInsets.only(right: 0),
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    likes,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 2),
                  const Icon(
                    Icons.favorite,
                    color: Color.fromARGB(238, 0, 76, 255),
                    size: 18,
                  ),
                  const Spacer(),
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext contex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Most Popular",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(255, 0, 126, 230),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildProductCard("assets/mostpopu1.png", "1780", "New"),
                _buildProductCard("assets/veronica.png", "1780", "Sale"),
                _buildProductCard("assets/mostpop3.png", "1780", "Hot"),
                _buildProductCard("assets/mostpop4.png", "1780", "New"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
