import 'package:flutter/material.dart';
import 'package:posttest7_125_lidya/Cart.dart';

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "DATA BERHASIL\nDITAMBAHKAN!",
                    style: const TextStyle(
                      fontSize: 25,
                      color: Color(0xffa85cf9),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/check.png",
                  height: 200,
                  width: 200,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Output()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffa85cf9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Tampilkan Data",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
