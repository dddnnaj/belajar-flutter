import 'package:flutter/material.dart';

class Latihan4 extends StatelessWidget {
  Latihan4({super.key});

  final List<Map<String, dynamic>> gallery = [
    {
      'title': 'ikan cupang',
      'description': 'ikan cupang',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxh2yMa9usfAHel_P4024oLc1poffn0sAxWFaJeHOtvw&s=10',
      'rating': 5,
    },
    {
      'title': 'ikan cupang',
      'description': 'ikan cupang',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxWEeqUoFZVn41oUZPp0kdeuJfsXtq1r4aQOIUYJ1bBg&s=10',
      'rating': 5,
    },
    {
      'title': 'ikan betok',
      'description': 'ikan betok',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEIFNWTY9xui8Wn3Yb2hwOirhiCqg7sCXVXDF0QmbNfQ&s=10',
      'rating': 5,
    },
    {
      'title': 'ikan chana',
      'description': 'ikan chana',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIXlA4lPIQb-ZEu_9D7qvOgptqSX2R8iY2WLLdGiuxJQ&s=10',
      'rating': 5,
    },
    {
      'title': 'ikan arawana',
      'description': 'ikan arawana',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRor2T8XyolgcNbGo7bU48nYPO3B0diqZg_j2JW0rtQBZpZSyuZx8RB5s&s=10',
      'rating': 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: gallery.length,
                itemBuilder: (context, index) {
                  final data = gallery[index];
                  return Container(
                    width: double.infinity,
                    height: 200,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data['cover']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 8,
                          child: Container(
                            child: Text(
                              data['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 8,
                          right: 8,
                          child: Container(
                            color: Colors.black54,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              data['description'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            color: Colors.black54,
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 4,
                            ),
                            child: Text(
                              "${data['rating']}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gallery.length,
                itemBuilder: (context, index) {
                  final data = gallery[index];
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data['cover']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        color: Colors.black54,
                        padding: EdgeInsets.all(4),
                        child: Text(
                          data['title'].toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
