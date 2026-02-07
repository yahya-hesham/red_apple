import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              child: Image.network(
                'https://pngimg.com/uploads/apple/apple_PNG12439.png', // Placeholder for the apple image
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Naturel Red Apple",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.favorite_border, color: Colors.grey),
                    ],
                  ),
                  const Text("1kg, Price", style: TextStyle(color: Colors.grey, fontSize: 16)),
                  const SizedBox(height: 25),

                  
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => setState(() => quantity > 1 ? quantity-- : null),
                        icon: const Icon(Icons.remove, color: Colors.grey),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(quantity.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        onPressed: () => setState(() => quantity++),
                        icon: const Icon(Icons.add, color: Colors.green),
                      ),
                      const Spacer(),
                      const Text("\$4.99", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(height: 40),

                  
                  const ExpansionTile(
                    title: Text("Product Detail", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    tilePadding: EdgeInsets.zero,
                    children: [
                      Text(
                        "Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.",
                        style: TextStyle(color: Colors.grey, height: 1.5),
                      ),
                    ],
                  ),
                  const Divider(),

                  
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Nutritions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  const Divider(),

                  
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text("Review", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    trailing: SizedBox(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: List.generate(
                          5,
                          (index) => const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 18),
                        )..add(const Icon(Icons.arrow_forward_ios, size: 18)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53B175),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                      ),
                      child: const Text(
                        "Add To Basket",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}