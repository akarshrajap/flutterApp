import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 233, 233),
        appBar: AppBar(
          title: const Text('Restaurant App2'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: const ResturantMenuPage(),
      ),
    );
  }
}

class ResturantMenuPage extends StatelessWidget {
  const ResturantMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: const [
          Text(
            'Today\'s Special',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 20),
          MenuItemCard(
            title: 'Grilled Salmon',
            description: 'Freshly grilled salmon with lemon butter sauce.',
            price: 18.99,
            rating: 4.5,
            tag: 'Chef\'s Special',
          ),
          SizedBox(height: 20),
          MenuItemCard(
            title: 'Pasta Primavera',
            description: 'Pasta with fresh vegetables and a light tomato sauce.',
            price: 12.99,
            rating: 4.2,
            tag: 'Vegetarian',
          ),
          SizedBox(height: 20),
          MenuItemCard(
            title: 'Chocolate Lava Cake',
            description: 'Warm chocolate cake with a gooey center.',
            price: 6.99,
            rating: 4.8,
            tag: 'Dessert',
          ),
          SizedBox(height: 20),
          MenuItemCard(
            title: 'Caesar Salad',
            description: 'Crisp romaine lettuce with Caesar dressing and croutons.',
            price: 8.99,
            rating: 4.0,
            tag: 'Salad',
          ),
        ],
      ),
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final double rating;
  final String tag;

  const MenuItemCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  rating.toStringAsFixed(1),
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                tag,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
