import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyek_akhir/firestore/firebase.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/keranjang.dart';
import 'package:proyek_akhir/widgets/card1.dart';
import 'package:proyek_akhir/widgets/card2.dart';
import 'package:proyek_akhir/widgets/textfield1.dart';
import 'package:proyek_akhir/widgets/drawer.dart';

import '../firestore/getimagesurl.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirestoreController fcs = Get.put(FirestoreController());
    return Scaffold(
      drawer: DrawerAkun(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ocnizar.png'),
              ),
            ),
          );
        }),
        title: Center(
          child: Column(
            children: [
              Text(
                "Samarinda, Kalimantan Timur",
                style: TextStyle(
                    color: black, fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                color: black,
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => Keranjang());
            },
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: orange2,
            ),
          ),
        ],
        backgroundColor: white1,
        elevation: 0,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: ListView(
          children: [
            TextField1(),
            StreamBuilder<QuerySnapshot>(
              stream: fcs.menus.value.snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map(
                              (e) => Card2(
                                jenis: e.get("jenis"),
                                nama: e.get("nama"),
                                harga: e.get("nama"),
                                gambar: e.get("gambar"),
                                desc: e.get("desc"),
                              ),
                            )
                            .toList(),
                      )
                    : Text("Loading");
              },
            ),
          ],
        ),
      ),
    );
  }
}
