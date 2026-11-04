import 'package:flutter/material.dart';

class GridBuilder extends StatelessWidget {
  GridBuilder({super.key});

  final List<Map<String, dynamic>> produk = [
    {
      'nama': 'Laptop',
      'harga': '7500000',
      'icon': Icons.laptop,
      'warna': Colors.blue,
    },

    {
      'nama': 'headphone',
      'harga': '3500000',
      'icon': Icons.headphones,
      'warna': Colors.blue,
    },
    {
      'nama': 'keyboard',
      'harga': '5500000',
      'icon': Icons.keyboard,
      'warna': Colors.blue,
    },
    {
      'nama': 'Mouse',
      'harga': '7500000',
      'icon': Icons.mouse,
      'warna': Colors.blue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: produk.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final data = produk[index];

        return Card(
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(data['icon'], size: 60, color: data['warna']),
              SizedBox(height: 10),
              Text(
                data['nama'],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text("Rp. ${data['harga']}"),
            ],
          ),
        );
      },
    );
  }
}
