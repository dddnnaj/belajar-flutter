import 'package:flutter/material.dart';
import 'package:dadan_flutter_rpl3/navigation/about_page.dart';
import 'package:dadan_flutter_rpl3/pages/tiket_input.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  static const Color bg = Color(0xFFE8EEF8);
  static const Color card = Colors.white;
  static const Color text = Color(0xFF3F4F6B);
  static const Color muted = Color(0xFF8795AD);
  static const Color headerStart = Color(0xFF6F93D8);
  static const Color headerEnd = Color(0xFF8FAEE8);

  static const List<List<Color>> tones = [
    [Color(0xFFE3ECFD), Color(0xFF5F86D6)], // biru
    [Color(0xFFDDF3EA), Color(0xFF4FAE90)], // mint
    [Color(0xFFFCEBDB), Color(0xFFDB9660)], // peach
    [Color(0xFFEDE6F9), Color(0xFF9078C8)], // lavender
  ];

  @override
  Widget build(BuildContext context) {
    final menus = <Map<String, dynamic>>[
      {
        'title': 'Grid View',
        'subtitle': 'Grid Layout',
        'icon': Icons.grid_view_rounded,
        'route': '/gridview',
      },
      {
        'title': 'List Widget',
        'subtitle': 'List Components',
        'icon': Icons.view_agenda_rounded,
        'route': '/listview_widget',
      },
      {
        'title': 'Expanded',
        'subtitle': 'Flexible Layout',
        'icon': Icons.open_in_full_rounded,
        'route': '/sized_expanded_stack',
      },
      {
        'title': 'Row & Column',
        'subtitle': 'Basic Layout',
        'icon': Icons.view_week_rounded,
        'route': '/row.column.dart',
      },
      {
        'title': 'Container',
        'subtitle': 'UI Components',
        'icon': Icons.crop_square_rounded,
        'route': '/container_widget',
      },
      {
        'title': 'Latihan 1',
        'subtitle': 'Coding Practice',
        'icon': Icons.code_rounded,
        'route': '/latihan',
      },
      {
        'title': 'Latihan 2',
        'subtitle': 'Coding Practice',
        'icon': Icons.terminal_rounded,
        'route': '/Latihan2',
      },
      {
        'title': 'Latihan 3',
        'subtitle': 'Coding Practice',
        'icon': Icons.widgets_rounded,
        'route': '/Latihan3',
      },
      {
        'title': 'Latihan 4',
        'subtitle': 'Coding Practice',
        'icon': Icons.dashboard_customize_rounded,
        'route': '/Latihan4',
      },
      {
        'title': 'Latihan 5',
        'subtitle': 'Coding Practice',
        'icon': Icons.layers_rounded,
        'route': '/Latihan5',
      },
      {
        'title': 'Formulir',
        'subtitle': 'Form Components',
        'icon': Icons.assignment_rounded,
        'route': '/FormEkskul',
      },
      // TIKET: membuka halaman dari file tiket_input.dart
      {
        'title': 'Tiket',
        'subtitle': 'Pesan Tiket',
        'icon': Icons.confirmation_number_rounded,
        'page': const TiketInput(),
      },
    ];

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // HEADER
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [headerStart, headerEnd],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x336F93D8),
                      blurRadius: 18,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Halo, Dadan 👋',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Pilih modul untuk mulai belajar.',
                            style: TextStyle(
                              color: Color(0xDDFFFFFF),
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const TiketInput(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.confirmation_number_rounded,
                              size: 18,
                            ),
                            label: const Text('Pesan Tiket'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF5F86D6),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    InkWell(
                      borderRadius: BorderRadius.circular(14),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutPage(
                              nama: 'Lintang Ganteng',
                              kelas: 'XII RPL 3',
                              umur: 18,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color(0x33FFFFFF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.person_outline_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SECTION LABEL
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 26, 24, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Modul',
                      style: TextStyle(
                        color: text,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${menus.length} tersedia',
                      style: const TextStyle(color: muted, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),

            // MENU GRID
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 28),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final menu = menus[index];
                  final tone = tones[index % tones.length];

                  return Container(
                    decoration: BoxDecoration(
                      color: card,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A5C7BB0),
                          blurRadius: 14,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          if (menu['page'] != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => menu['page'] as Widget,
                              ),
                            );
                          } else {
                            Navigator.pushNamed(
                              context,
                              menu['route'] as String,
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: tone[0],
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Icon(
                                  menu['icon'] as IconData,
                                  color: tone[1],
                                  size: 22,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    menu['title'] as String,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: text,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    menu['subtitle'] as String,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: muted,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }, childCount: menus.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
