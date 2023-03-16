import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListViewUsage extends StatelessWidget {
  //const ListViewUsage({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(index + 1, 'ogrenci adı ${index + 1}',
          'ogrenci soyadı ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var oankiOgrenci = tumOgrenciler[index];
          return Card(
            color: Colors.amber,
            child: ListTile(
              onTap: () {
                print("index değeri $index");
              },
              title: Text(oankiOgrenci.isim),
              subtitle: Text(oankiOgrenci.soyisim),
              leading: CircleAvatar(child: Text(oankiOgrenci.id.toString())),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
      ),
    );
  }

  ListView ClassicListViewUsage() {
    return ListView(
        //children: [ListTile(title: Text('asd'),)
        children: tumOgrenciler
            .map((Ogrenci ogr) => ListTile(
                  title: Text(ogr.isim),
                  subtitle: Text(ogr.soyisim),
                  leading: CircleAvatar(child: Text(ogr.id.toString())),
                ))
            .toList());
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
