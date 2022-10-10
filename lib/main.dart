import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FMIPA Untan',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Gedung Baru FMIPA Untan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /* TITLE*/
  Widget titleSection = Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 9),
    decoration: BoxDecoration(
      border: Border.all(width: 1.0, color: Colors.grey)
    ),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Gedung Baru FMIPA Universitas Tanjung Pura',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Pontianak, Kalimantan Barat',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );

  /*Deskripsi */
  Widget textSection = Container(
    padding: EdgeInsets.all(22),
    margin: EdgeInsets.all(2),
    decoration: BoxDecoration(
      border: Border.all(width: 1.0, color: Colors.grey)
    ),
    child: Text(
      'Matematika dan Ilmu Pengetahuan Alam (MIPA) adalah jurusan yang mempelajari gabungan ilmu matematika dan '
      'ilmu pengetahuan alam (biologi, fisika, dan kimia). '
      'Berlokasi di: Universitas Tanjungpura '
      'Alamat: Jl. Jenderal Ahmad Yani, Bansir Laut, Kec. Sungai Raya, '
      'Kabupaten Kubu Raya, Kalimantan Barat 78115 ',
      softWrap: true,
      textAlign: TextAlign.center,
    ),
  );

  @override
  Widget build(BuildContext context) {
    /* Icons */
    Color color = Colors.blueAccent;
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 9),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.grey)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
          _buildButtonColumn(color, Icons.web, 'WEBSITE'),
        ],
      ),
    );

    /* Gambar */
  Widget imageSection = Container(
    margin: const EdgeInsets.all(4),
    decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.grey)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
             'assets/images/fmipa1.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
        ),
        Row(
          children: [
            _buildImageColumn('assets/images/fmipa1.jpg'),
            _buildImageColumn('assets/images/fmipa2.jpg'),
            _buildImageColumn('assets/images/fmipa3.jpg'),
          ],
        ),
      ],
    ),
        // child: Image.asset(
        //      'assets/images/fmipa1.jpg',
        //       width: 600,
        //       height: 240,
        //       fit: BoxFit.cover,
        // ),
  );
   

    /* Struktur APK */
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          children: [
          imageSection,
          titleSection,
          buttonSection,
          textSection,
          ],
      ),
      
      /* Tombol mengambang */
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
    
  }

  /* Edit Icon */
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Column _buildImageColumn(String foto) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          child: 
            Image.asset(
                foto,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
            ),
        ),
      ],
    );
  }
}
