import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/bayar.dart';
import 'package:proyek_akhir/widgets/cardkeranjang.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:proyek_akhir/widgets/counter.dart';

class Keranjang extends StatelessWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: black,
              )),
          title: Text(
            "Keranjang",
            style: TextStyle(color: black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: white1,
          elevation: 0,
        ),
        body: ListView(
          children: [
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            CardCart(),
            SizedBox(
              height: 150,
            )
          ],
        ),
        bottomSheet: Container(
            height: 100,
            color: white1,
            child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.125,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => Pembayaran());
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Icon(Icons.shopping_cart_checkout),
                                    ),
                                  )),
                              VerticalDivider(
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                                color: white1,
                              ),
                              Flexible(
                                  flex: 3,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "Metode Pembayaran",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ))
                            ]))))));
  }
}
