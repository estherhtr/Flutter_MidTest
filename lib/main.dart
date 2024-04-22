import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'UTS Flutter Mobile Lanjutan';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color.fromARGB(188, 10, 201, 190),
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'image/foto.jpg',
                  height: 180,
                ),
                SizedBox(height: 16),
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.8), // Untuk label
                    1: FlexColumnWidth(0.2), // Untuk nilai
                    2: FlexColumnWidth(2), // Untuk titik dua
                  },
                  children: const [
                    TableRow(
                      children: [
                        Text(
                          'NAMA',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Esther Oktavia Hotoroe',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          'TTL',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Banjarbaru, 27 Oktober 2001',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          'ALAMAT',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Komp. Asabri Blok HA No.05, Sei Ulin, Banjarbaru, Kal-sel',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Tentang Saya',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Saya lahir dan besar di kota Banjarbaru. Pendidikan terakhir saya SMKN 3 Banjarbaru, jurusan Pariwisata. Dan saya sekarang merantau ke pulau Jawa, tepatnya di Purwokerto untuk melanjutkan pendidikan yang sedang saya jalani sekarang yaitu di STMIK Widya Utama jurusan Teknik Informatika.',
                  style: TextStyle(fontSize: 18),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SvgPicture.asset('image/ic_instagram.svg',
                        semanticsLabel: 'Instagram Logo'),
                    SizedBox(
                      width: 6,
                    ),
                    Text('iamqueen._.v', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
