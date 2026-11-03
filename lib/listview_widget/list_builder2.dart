import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  ListBuilder2({super.key});

  final List<Map<String, dynamic>> siswa = [
    {'nama': 'asep', 'kelas': 'XII RPL 3', 'umur': 17},
    {'nama': 'Budi', 'kelas': 'XII RPL 2', 'umur': 17},
    {'nama': 'Siti', 'kelas': 'XII RPL 1', 'umur': 18},
    {'nama': 'Andi', 'kelas': 'XII RPL 2', 'umur': 20},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(child: Text(data['nama'][0])),
            title: Text(data['nama']),
            subtitle: Text('${data['kelas']} - Umur: ${data['umur']}'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
