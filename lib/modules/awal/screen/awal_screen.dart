import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AwalScreen extends StatefulWidget {
  const AwalScreen({
    Key? key,
  }) : super(key: key);

  @override
  AwalScreenState createState() {
    return AwalScreenState();
  }
}

class AwalScreenState extends State<AwalScreen> {
  AwalScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }

  void _load() {
    // widget._awalBloc.add(LoadAwalEvent());
  }
}
