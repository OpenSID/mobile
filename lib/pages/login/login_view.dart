import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:my_talok/models/login_model.dart';
import '../../core.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  final nikController = TextEditingController();
  final pinController = TextEditingController();

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/latar_login.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  color: kPrimaryColor.withOpacity(.50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        "OpenSID Mobile",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildTombol(true),
            Positioned(
              top: 250,
              child: Container(
                height: 300,
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
                child: Column(
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
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 10, right: 10),
                            child: Column(
                              children: [
                                TextField(
                                  controller: nikController,
                                  onChanged: (text) {
                                    // When user enter text in textfield checktext method will get called
                                    loginController.checktext(text);
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: mBlueColor,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mBorderColor),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(35.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mBorderColor),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(35.0),
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Masukkan NIK",
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: mBorderColor),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: pinController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: mBlueColor,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.remove_red_eye_rounded,
                                        size: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                    focusColor: mBlueColor,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mBorderColor),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(35.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: mBorderColor),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(35.0),
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Masukkan PIN",
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: mBorderColor),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text:
                                          "Silakan datang atau hubungi operator desa untuk mendapatkan kode PIN anda.",
                                      style: mSectionSubtitleStyle,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildTombol(false),
          ],
        ),
      ),
    );
  }

  Positioned buildTombol(bool showShadow) {
    return Positioned(
      top: 500,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: 90,
          width: 90,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: mFillColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              if (showShadow)
                BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    spreadRadius: 1.5,
                    blurRadius: 10,
                    offset: Offset(0, 1))
            ],
          ),
          child: !showShadow
              ? Container(
                  child: InkWell(
                    onTap: () {
                      String nik = nikController.text;
                      String pin = pinController.text;

                      if (nik != null && pin != null) {
                        print(nik + pin);
                        loginController.login(nik, pin);
                      } else {
                        Get.snackbar(
                            "Error", "Masukkan NIK & PIN dengan benar");
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[200], Colors.blue[900]],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Center(),
        ),
      ),
    );
  }
}
