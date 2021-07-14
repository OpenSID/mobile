import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_talok/core/auth/login/bloc/login_bloc.dart';
import 'package:my_talok/core/auth/login/screen/tombol_login_screen.dart';
import 'package:my_talok/core/auth/login/service/login_service.dart';
import 'package:my_talok/utlils/ui/styles/colors.dart';
import 'package:my_talok/utlils/ui/styles/fonts.dart';
import 'form_login_screen.dart';
import 'package:formz/formz.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => LoginBloc(LoginService()),
          child: Stack(
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
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  print('cek state');
                  print(state);
                  if (state.status.isSubmissionFailure) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                            content: Text('Username dan Password Salah')),
                      );
                  } else if (state.status.isSubmissionSuccess) {
                    context.replaceRoute(
                        PageRouteInfo('HomeScreen', path: '/home'));
                  }
                },
                child: FrameFormLogin(),
              ),
              buildTombol(false),
            ],
          ),
        ),
      ),
    );
  }
}
