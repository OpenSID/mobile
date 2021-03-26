import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../core.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: kPrimaryColor, //change your color here
          ),
          centerTitle: false,
          backgroundColor: kBackgroundColor,
          title: Container(
            height: 30,
            child: Image.asset('assets/png/logo.png'),
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                LineIcons.bell,
                color: kPrimaryColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  'Selamat Datang di aplikasi OpenSID Mobile',
                  style: mTitleStyle,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Swiper(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, index) {
                          return getSlider(index);
                        },
                      ),
                    ),
                    //counting slider coming soon

                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              // layanan
              Padding(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                child: Text(
                  'Layanan',
                  style: mTitleStyle,
                ),
              ),

              // tombol service
              Container(
                height: 144,
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
            ],
          ),
        ),
      ),
    );
  }

  Widget getSlider(index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(8),
        image: DecorationImage(
            image: AssetImage('assets/images/talok.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
