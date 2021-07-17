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
    final _sizeW = MediaQuery.of(context).size.width;
    final _sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: _sizeH - 60,
            width: _sizeW,
            color: Color(0xff2BA9E6),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 120)),
                Container(
                  width: _sizeW,
                  height: 150,
                  child: Image(image: AssetImage('assets/png/log_embos.png')),
                )
              ],
            ),
          ),
          Container(
            width: _sizeW,
            height: 60,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFF79CFF7),
                    const Color(0xFF0333B0),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(.7, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Center(
              child: Text(
                'Mulai',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _load() {
    // widget._awalBloc.add(LoadAwalEvent());
  }
}
