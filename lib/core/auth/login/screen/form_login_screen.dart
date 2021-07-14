import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_talok/core/auth/login/bloc/login_bloc.dart';
import 'package:my_talok/core/auth/login/models/form_model/username_model.dart';
import 'package:my_talok/utlils/ui/styles/colors.dart';
import 'package:my_talok/utlils/ui/styles/fonts.dart';

class FrameFormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      child: Container(
        height: 330,
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
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        InputNik(),
                        SizedBox(
                          height: 10,
                        ),
                        InputPassword(),
                        SizedBox(
                          height: 25,
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
    );
  }
}

class InputNik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextField(
          onChanged: (username) {
            context.read<LoginBloc>().add(LoginUsernameChanged(username));
          },
          maxLength: 16,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_circle,
              color: mBlueColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mBorderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mBorderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            ),
            contentPadding: EdgeInsets.all(10),
            hintText: "Masukkan NIK",
            hintStyle: TextStyle(fontSize: 14, color: mBorderColor),
          ),
        );
      },
    );
  }
}

class InputPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (password) {
            context.read<LoginBloc>().add(LoginPasswordChanged(password));
          },
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
              borderSide: BorderSide(color: mBorderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mBorderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            ),
            contentPadding: EdgeInsets.all(10),
            hintText: "Masukkan PIN",
            hintStyle: TextStyle(fontSize: 14, color: mBorderColor),
          ),
        );
      },
    );
  }
}
