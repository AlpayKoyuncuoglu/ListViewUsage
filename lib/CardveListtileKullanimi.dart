import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('card ve list tile'),
        ),
        body: Center(
          child: ListView(reverse: true, children: [
            Column(
              children: [
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
              ],
            ),
            Text("deneme"),
            ElevatedButton(onPressed: () {}, child: Text('data')),
            SizedBox(
              height: 50,
            )
          ]),
        ));
  }

  SingleChildScrollView SingleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
        ],
      ),
    );
  }

  Column TekListeElemani() {
    return Column(
      children: [
        Card(
          // color: Colors.amber.withOpacity(0.4),
          color: Colors.amber.shade100,
          elevation: 55,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          // child: Text('dont',style: TextStyle(fontSize: 122),),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('title:'),
            subtitle: Text('subtitle:'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 2,
          indent: 33,
          endIndent: 33,
        )
      ],
    );
  }
}
