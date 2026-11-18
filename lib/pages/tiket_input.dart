import 'package:flutter/material.dart';

class TiketInput extends StatefulWidget {
  const TiketInput({super.key});

  @override
  State<TiketInput> createState() => _TiketInputState();
}

class _TiketInputState extends State<TiketInput> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();

  final List<String> _daftarKota = [
    'Jakarta',
    'Bandung',
    'Yogyakarta',
    'Surabaya',
  ];

  String? _lokasiAwal;
  String? _tujuanPilihan;
  String _kelasPilihan = 'Ekonomi';

  final Map<String, int> _biayaKelas = {
    'Ekonomi': 0,
    'Bisnis': 150000,
    'Eksekutif': 300000,
  };

  int _hitungHargaDasar(String? awal, String? tujuan) {
    if (awal == null || tujuan == null || awal == tujuan) return 0;

    if ((awal == 'Jakarta' && tujuan == 'Bandung') ||
        (awal == 'Bandung' && tujuan == 'Jakarta')) {
      return 100000;
    } else if ((awal == 'Jakarta' && tujuan == 'Yogyakarta') ||
        (awal == 'Yogyakarta' && tujuan == 'Jakarta')) {
      return 250000;
    } else if ((awal == 'Jakarta' && tujuan == 'Surabaya') ||
        (awal == 'Surabaya' && tujuan == 'Jakarta')) {
      return 400000;
    } else if ((awal == 'Bandung' && tujuan == 'Yogyakarta') ||
        (awal == 'Yogyakarta' && tujuan == 'Bandung')) {
      return 200000;
    } else if ((awal == 'Bandung' && tujuan == 'Surabaya') ||
        (awal == 'Surabaya' && tujuan == 'Bandung')) {
      return 350000;
    } else if ((awal == 'Yogyakarta' && tujuan == 'Surabaya') ||
        (awal == 'Surabaya' && tujuan == 'Yogyakarta')) {
      return 150000;
    }
    return 150000;
  }

  @override
  void dispose() {
    _namaController.dispose();
    _jumlahController.dispose();
    super.dispose();
  }

  void _pesanTiket() {
    final nama = _namaController.text;
    final jumlahStr = _jumlahController.text;

    if (nama.isEmpty ||
        _lokasiAwal == null ||
        _tujuanPilihan == null ||
        jumlahStr.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Harap lengkapi semua data pemesanan!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (_lokasiAwal == _tujuanPilihan) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lokasi awal dan tujuan tidak boleh sama!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final int jumlah = int.tryParse(jumlahStr) ?? 0;
    if (jumlah <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Jumlah tiket harus lebih dari 0!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final int hargaDasar = _hitungHargaDasar(_lokasiAwal, _tujuanPilihan);
    final int tambahanKelas = _biayaKelas[_kelasPilihan]!;
    final int totalHarga = (hargaDasar + tambahanKelas) * jumlah;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Rincian Pemesanan Tiket'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Pemesan : $nama'),
            Text('Rute         : $_lokasiAwal ➔ $_tujuanPilihan'),
            Text('Kelas        : $_kelasPilihan'),
            Text('Jumlah Tiket : $jumlah'),
            const Divider(),
            Text(
              'Total Harga  : Rp $totalHarga',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tiket berhasil dipesan!')),
              );
            },
            child: const Text('Konfirmasi'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final int hargaDasarSaatIni = _hitungHargaDasar(
      _lokasiAwal,
      _tujuanPilihan,
    );
    final int hargaPerTiket =
        hargaDasarSaatIni + (_biayaKelas[_kelasPilihan] ?? 0);

    return Scaffold(
      appBar: AppBar(title: const Text('Form Input Tiket Perjalanan')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Input Nama
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Dropdown Lokasi Awal
            DropdownButtonFormField<String>(
              value: _lokasiAwal,
              decoration: const InputDecoration(
                labelText: 'Lokasi Awal (Keberangkatan)',
                prefixIcon: Icon(Icons.flight_takeoff),
                border: OutlineInputBorder(),
              ),
              items: _daftarKota.map((kota) {
                return DropdownMenuItem(value: kota, child: Text(kota));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _lokasiAwal = value;
                  // Reset tujuan jika sama dengan lokasi awal yang baru dipilih
                  if (_tujuanPilihan == _lokasiAwal) {
                    _tujuanPilihan = null;
                  }
                });
              },
            ),
            const SizedBox(height: 16),

            // Dropdown Kota Tujuan (otomatis menampilkan harga rute)
            DropdownButtonFormField<String>(
              value: _tujuanPilihan,
              decoration: const InputDecoration(
                labelText: 'Kota Tujuan',
                prefixIcon: Icon(Icons.flight_land),
                border: OutlineInputBorder(),
              ),
              // Sembunyikan kota yang sudah dipilih sebagai lokasi awal
              items: _daftarKota.where((kota) => kota != _lokasiAwal).map((
                kota,
              ) {
                final int hargaRute = _hitungHargaDasar(_lokasiAwal, kota);
                final String teksTampil = _lokasiAwal == null
                    ? kota
                    : '$kota (Rp $hargaRute)';

                return DropdownMenuItem(value: kota, child: Text(teksTampil));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _tujuanPilihan = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Dropdown Pilihan Kelas Kursi
            DropdownButtonFormField<String>(
              value: _kelasPilihan,
              decoration: const InputDecoration(
                labelText: 'Pilih Kelas Kursi',
                prefixIcon: Icon(Icons.class_),
                border: OutlineInputBorder(),
              ),
              items: _biayaKelas.entries.map((entry) {
                return DropdownMenuItem(
                  value: entry.key,
                  child: Text('${entry.key} (+ Rp ${entry.value})'),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _kelasPilihan = value!;
                });
              },
            ),
            const SizedBox(height: 16),

            // Input Jumlah Tiket
            TextField(
              controller: _jumlahController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Jumlah Tiket',
                prefixIcon: Icon(Icons.confirmation_number),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Kotak Info Harga Per Tiket (muncul otomatis jika rute sudah dipilih)
            if (_lokasiAwal != null && _tujuanPilihan != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Harga per Tiket:',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Rp $hargaPerTiket',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 24),

            // Tombol Pesan
            ElevatedButton.icon(
              onPressed: _pesanTiket,
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Hitung & Pesan Tiket'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
