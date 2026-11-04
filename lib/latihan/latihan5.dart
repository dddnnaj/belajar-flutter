import 'package:flutter/material.dart';

class Latihan5 extends StatelessWidget {
  Latihan5({super.key});

  final List<Map<String, dynamic>> galeriFoto = [
    {
      'nama': 'Komodo',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl9VDJR44u4eR-FYcVX4HlM6vk5s9z_zmcH8mE5XXR1w&s=10',
      'deskripsi': 'Komodo (Varanus komodoensis) adalah spesies kadal terbesar di dunia yang merupakan hewan endemik Indonesia.',
      'jenis makanan': 'Jenis: Karnivora',
      'lokasi': 'Lokasi: Savana kering & hutan pulau (NTT, Indonesia)',
    },
    {
      'nama': 'Macan Tutul',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNKIBpQtxJ3fJd_lggKGZHKSNRF-NoxMYUSwtye3owIn0NPPGx-2DEbfI&s=10',
      'deskripsi': 'Macan Tutul (Panthera pardus) atau sering juga disebut Harimau Dahan.',
      'jenis makanan': 'Jenis: Karnivora',
      'lokasi':
          'Lokasi: Hutan, savana, & pegunungan (Afrika & Asia, termasuk Jawa)',
    },
    {
      'nama': 'Iguana',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1HziYYrG_eQTrrMGwp47nV4OXWhc2TUS_SA4eDS7F3w&s=10',
      'deskripsi': 'Iguana adalah genus kadal herbivora yang berasal dari kawasan tropis Amerika Tengah, Amerika Selatan, dan Kepulauan Karibia. Hewan ini sangat populer di seluruh dunia, baik sebagai hewan liar maupun sebagai hewan peliharaan eksotis.',
      'jenis makanan': 'Jenis: Herbivora',
      'lokasi': 'Lokasi: Pepohonan hutan tropis dekat air (Amerika & Karibia)',
    },
    {
      'nama': 'Harimau',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTJDUlyv5iGqOvUrWvyUCAfs8sO5p9NO4UJdksPYJf7Q&s=10',
      'deskripsi': 'Harimau adalah kucing besar terbesar di dunia yang terkenal dengan kekuatan fisik dan keindahannya.',
      'jenis makanan': 'Jenis: Karnivora',
      'lokasi': 'Lokasi: Hutan lebat & rawa bervegetasi rapat (Asia)',
    },
    {
      'nama': 'zebra',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROogo2L0ZtmVH3xBnmo0l7YVWP-DXgWVIii_EiTqRHW48TVWzR5xDdEd8&s=10',
      'deskripsi': 'Zebra adalah mamalia herbivora asal Afrika yang terkenal karena pola garis-garis hitam dan putih di tubuhnya yang sangat khas.',
      'jenis makanan': 'Jenis: Herbivora',
      'lokasi': 'Padang rumput / savana terbuka (Afrika)',
    },
    {
      'nama': 'Flamingo',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPhj1BWK_xFDrmHogw2NEBSXiBNyrTGveasotx1Bfg3A&s=10',
      'deskripsi': 'Flamingo adalah burung air yang sangat ikonik dengan penampilan yang anggun dan warna bulu yang mencolok.',
      'jenis makanan': 'Jenis: Karnivora/Omnivora',
      'lokasi': 'Lokasi: Danau air asin, lagun, & lahan basah (Berbagai benua)',
    },
    {
      'nama': 'Kura kura Aldabra',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNf4LuKgkv0g3LwvwZMAK4KpjsNCcViRC1MydeDHqKMAMb7AcRuLxbnbhA&s=10',
      'deskripsi': 'Kura-kura aldabra adalah salah satu spesies kura-kura darat terbesar di dunia yang berasal dari Atol Aldabra di Kepulauan Seychelles, Samudra Hindia.',
      'jenis makanan': 'Jenis; Herbivora',
      'lokasi': 'Lokasi: Padang rumput & semak di Atol Aldabra (Seychelles)',
    },
    {
      'nama': 'Burung Hantu',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsMMEEZ6Ii-bP2TC7iMASrDeu7Vs73_neHpAQEK7l_Fw&s=10',
      'deskripsi': 'Burung hantu adalah kelompok burung pemangsa (raptor) yang sebagian besar aktif pada malam hari (nokturnal).',
      'jenis makanan': 'Jenis: Karnivora',
      'lokasi': 'Lokasi: Hutan, perkebunan, hingga sekitar pemukiman (Global)',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: galeriFoto.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.80,
      ),
      itemBuilder: (context, index) {
        final data = galeriFoto[index];

        return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 15,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        data['imageUrl'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['nama'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['jenis makanan'],
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['lokasi'],
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['deskripsi'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
