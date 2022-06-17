import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/pages/signin.dart';
import 'package:proyek_akhir/widgets/color.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd93728),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 50),
            Container(
              child: Image(
                image: AssetImage("assets/logo-mono.png",)
              ),
              height: 80,
              width: 80,
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Yuk, Daftarin Dirimu !!!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Form(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),
                        maxLength: 11,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixText: '+62     ',
                          counterText: "",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Pastiin nomor yang kamu masukkan benar ya",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffefefef),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 320,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Udah punya akun ?",
                    style: TextStyle(color: Color(0xffefefef), fontSize: 15),
                  ),
                ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Get.to(() => SignIn());
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(color: white2, fontSize: 15),
                  ),
                ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}