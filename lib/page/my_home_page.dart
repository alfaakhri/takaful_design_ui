import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:takaful_design_ui/page/about_product_page.dart';
import 'package:takaful_design_ui/utils/colors.dart';
import 'package:takaful_design_ui/utils/ui_helpers.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final List<String> imgInformation = [
    'assets/informasi1.png',
    'assets/informasi2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Container(
            child: Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset(
                  'assets/logo_takaful.png',
                ),
              ),
            ),
          ),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: colorIconNotif,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                UIHelper.verticalSpaceMedium,
                _buildBanner(),
                UIHelper.verticalSpaceMedium,
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutProductPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: colorBanner,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Apa itu Yuk Takaful?",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      fontSize: 18,
                                      color: Colors.white)),
                              UIHelper.verticalSpaceVerySmall,
                              Text("Yuk Takaful siap menemani hari-hari mu",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white, fontSize: 12))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/people.png',
                            width: MediaQuery.of(context).size.width / 2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                Container(
                  child: Row(
                    children: <Widget>[
                      _buildColumnIconButton('assets/icon_kecelakaan.png',
                          "Proteksi Kecelakaan Diri"),
                      _buildColumnIconButton(
                          'assets/icon_perjalanan.png', "Proteksi Perjalanan"),
                      _buildColumnIconButton(
                          'assets/icon_motor.png', "Proteksi Pembiayaan Motor"),
                      _buildColumnIconButton(
                          'assets/icon_mikro.png', "Proteksi Pembiayaan Mikro"),
                    ],
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                Container(
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 5,
                          child: Text(
                            "Informasi",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.roboto(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {},
                            child: Text("Lihat Semua",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.roboto(
                                    fontSize: 12, color: Colors.grey)),
                          ))
                    ],
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                _buildInformation(),
                UIHelper.verticalSpaceMedium,
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: colorBanner,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Space Iklan / Kerjasama",
                    style:
                        GoogleFonts.roboto(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                UIHelper.verticalSpaceMedium,
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavyBar(),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      child: SizedBox(
        height: 100.0,
        width: double.infinity,
        child: Carousel(
          boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          dotIncreasedColor: colorBanner,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomLeft,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            ExactAssetImage('assets/banner.jpg'),
            ExactAssetImage('assets/banner.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnIconButton(String assets, String title) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: colorBackIcon,
              child: Image.asset(assets),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: MediaQuery.of(context).size.width / 4.5,
              height: 50,
              child: Text(
                title,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ))
        ]);
  }

  Widget _buildInformation() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset('assets/informasi1.jpg'),
          Image.asset('assets/informasi2.jpg'),
        ],
      ),
    );
  }

  Widget _buildBottomNavyBar() {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      itemCornerRadius: 8,
      curve: Curves.easeInBack,
      onItemSelected: (index) => setState(() {
        currentIndex = index;
      }),
      items: [
        _bottomNavyBarItem(Icons.home, 'Beranda', 0),
        _bottomNavyBarItem(Icons.payment, 'Pembayaran', 1),
        _bottomNavyBarItem(Icons.error_outline, 'Riwayat', 2),
        _bottomNavyBarItem(Icons.account_circle, 'Profil', 3),
      ],
    );
  }

  BottomNavyBarItem _bottomNavyBarItem(
      IconData iconData, String title, int index) {
    return BottomNavyBarItem(
      icon: (currentIndex == index)
          ? Icon(iconData, color: Colors.white)
          : Icon(iconData, color: colorIconNav),
      title: Text(title,
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12)),
      inactiveColor: colorIconNav,
      activeColor: colorBottomNav,
      textAlign: TextAlign.center,
    );
  }
}
