import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TextController extends GetxController{
    var namaLengkap = ''.obs;
    var noHp = ''.obs;
    var email = ''.obs;
    var alamat = ''.obs;
    var kodePos = ''.obs;
    var catatan = ''.obs;
    var kupon = ''.obs;

  final namaLengkapCtrl = TextEditingController();
  final noHpCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final kodePosCtrl = TextEditingController();
  final catatanCtrl = TextEditingController();
  final kuponCtrl = TextEditingController();

  onSubmit(){
    namaLengkap = namaLengkapCtrl.text.obs;
    noHp = noHpCtrl.text.obs;
    email = emailCtrl.text.obs;
    alamat = alamatCtrl.text.obs;
    kodePos = kodePosCtrl.text.obs;
    catatan = catatanCtrl.text.obs;
    kupon = kuponCtrl.text.obs;
  }
}

enum Pembayaran { transfer, dana, shopeePay, cod }

class RadioController extends GetxController{
  var pembayaran = Pembayaran.transfer.obs;

  setTransfer(){
    pembayaran.value = Pembayaran.transfer;
  }
  setCod(){
    pembayaran.value = Pembayaran.cod;
  }
  setShopeepay(){
    pembayaran.value = Pembayaran.shopeePay;
  }
  setDana(){
    pembayaran.value = Pembayaran.dana;
  }
}