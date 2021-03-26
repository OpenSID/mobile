import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';
import 'berita_controller.dart';

class BeritaView extends GetView<BeritaController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: mBackgroundColor,
            title: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 10),
                child: Material(
                  elevation: 1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: TextField(
                    onChanged: (text) {},
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 14.0),
                      suffixIcon: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              labelColor: kPrimaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: kPrimaryColor,
              tabs: [
                Container(height: 30, child: Text('Semua Artikel')),
                Container(height: 30, child: Text('Berita Desa')),
                Container(height: 30, child: Text('Program Desa')),
                Container(height: 30, child: Text('Peraturan Desa')),
                Container(height: 30, child: Text('Laporan Desa')),
              ],
            )),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text('Semua Artikel'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Berita Desa'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Program Desa'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Peraturan Desa'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Laporan Desa'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
