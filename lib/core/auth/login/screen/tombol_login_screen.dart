import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_talok/core/auth/login/bloc/login_bloc.dart';
import 'package:my_talok/utlils/ui/styles/colors.dart';

Positioned buildTombol(bool showShadow) {
  return Positioned(
    top: 480,
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
            ? BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return Container(
                    child: InkWell(
                      onTap: () async {
                        context.read<LoginBloc>().add(LoginSubmitted());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue.shade200,
                                Colors.blue.shade900
                              ],
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
                  );
                },
              )
            : Center(),
      ),
    ),
  );
}
