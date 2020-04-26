import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/ui_helpers.dart';

//Created by Said Al Fakhri

class AboutProductPage extends StatefulWidget {
  @override
  _AboutProductPageState createState() => _AboutProductPageState();
}

class _AboutProductPageState extends State<AboutProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: colorBackground,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white, size: 20),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTitle(),
                UIHelper.verticalSpaceSmall,
                _buildContent(),
                UIHelper.verticalSpaceSmall,
              ],
            ),
          )),
    );
  }

  Container _buildContent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
          "Yuktakaful adalah merupakan sebuah portal layanan digital asuransi (insurtech) yang berbasis web dan aplikasi mobile yang berpegang pada prinsip syariah untuk memberikan kemudahan kepada nasabah, dimulai dari layanan pembelian polis hingga penyelesaian klaim. \n\nYuktakaful juga merupakan portal layanan digital asuransi syariah (shariah insurtech) yang pertama di Indonesia. \n\nPelayanan Yuktakaful terfokus pada produk-produk asuransi mikro (micro insurance) yang berbasis pada komunitas atau keumatan, dalam rangka meningkatkan inklusi dan literasi keuangan dan asuransi di Indonesia, dengan mengusung dengan tagline “Asuransi untuk semua, Semua bisa berasuransi”",
          style: GoogleFonts.roboto(
              fontSize: 16,
              textStyle: TextStyle(height: 1.5, letterSpacing: 1.0)),
          textAlign: TextAlign.justify),
    );
  }

  Container _buildTitle() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerLeft,
        height: 250,
        width: 300,
        decoration: BoxDecoration(
          color: colorBanner,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(300)),
        ),
        child: Text("Apa Itu Yuk Takaful ?",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold)));
  }
}
