import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../core.dart';

class MandiriView extends GetView<MandiriControlller> {
  final Penduduk penduduk;

  MandiriView({this.penduduk});

  final MandiriControlller mandiriControlller = Get.put(MandiriControlller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: kPrimaryColor, //change your color here
          ),
          centerTitle: false,
          backgroundColor: kBackgroundColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                LineIcons.arrowCircleRight,
                color: kPrimaryColor,
              ),
              onPressed: () {
                mandiriControlller.logOut();
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/latar_login.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  color: mBlueColor.withOpacity(.50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Selamat Datang di",
                          style: TextStyle(
                            letterSpacing: 3,
                            fontSize: 16,
                            color: Colors.yellow[700],
                          ),
                        ),
                      ),
                      Text(
                        'Layanan Mandiri Desa Talok',
                        style: TextStyle(
                            fontSize: 16,
                            color: mFillColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: mFillColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/png/logo_app.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Pemerintah Desa Talok Kec. Turen"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "3507090709910002",
                              style: mTitleStyle,
                            ),
                            Divider(color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 120,
              width: MediaQuery.of(context).size.width - 20,
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: 50,
                            left: 40,
                          ),
                          child: Text("Nama"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                          ),
                          child: Text("Jenis Kelamin"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                          ),
                          child: Text("Alamat"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                          ),
                          child: Text("RT / RW"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                          ),
                          child: Text("Agama"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                          ),
                          child: Text("Status Perkawinan"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                          ),
                          child: Text("Pekerjaan"),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: 50,
                            left: 10,
                          ),
                          child: Text(": " + "Evan Helga Suganda"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Text(": " + "Laki Laki"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Text(": " + "Jl. Jatirenggo No 38"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Text(": " + "04" + " / " + "09"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Text(": " + "Islam"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Text(": " + "Kawin"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Text(": " + "Seniman"),
                        ),
                      ]),
                ],
              ),
            ),
            Positioned(
              top: 420,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child:
                    // tombol service
                    Container(
                  height: 320,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Get.toNamed(Routes.LOGIN),
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 16),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: mFillColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: mBorderColor, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      'assets/svg/layanan.svg',
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Surat',
                                            style: mServiceTitleStyle,
                                          ),
                                          Text(
                                            'Layanan Mandiri',
                                            style: mServiceSubtitleStyle,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 16),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: mFillColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: mBorderColor, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      'assets/svg/info.svg',
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Info',
                                            style: mServiceTitleStyle,
                                          ),
                                          Text(
                                            'Informasi Terkini',
                                            style: mServiceSubtitleStyle,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 16),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: mFillColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: mBorderColor, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      'assets/svg/lapor.svg',
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'e-Lapor',
                                            style: mServiceTitleStyle,
                                          ),
                                          Text(
                                            'Call Center',
                                            style: mServiceSubtitleStyle,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 16),
                                height: 64,
                                decoration: BoxDecoration(
                                    color: mFillColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: mBorderColor, width: 1)),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      'assets/svg/ambulan.svg',
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Ambulan',
                                            style: mServiceTitleStyle,
                                          ),
                                          Text(
                                            'Emergency Call',
                                            style: mServiceSubtitleStyle,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
