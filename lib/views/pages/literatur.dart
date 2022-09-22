// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Literatur extends StatelessWidget {
  const Literatur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 6.413),
          child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            // leading: IconButton(
            //     icon: const Icon(Icons.arrow_back_ios_new_rounded),
            //     onPressed: () => Navigator.of(context).pop()),
            centerTitle: true,
            title: const Text(
              'Literatur',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              // BUKU PEDOMAN PENGGUNAAN HERBAL & SK DALAM MENGHADAPI COVID 19
              BukuStruktur(
                urlAddress:
                    'https://www.pom.go.id/new/view/direct/hotissue-covid19',
                nomor: '1',
                imagesAddress: 'assets/images/literatur/covid19pedoman.png',
                judul:
                    'Buku Pedoman Penggunaan Herbal & SK Dalam Menghadapi Covid 19.',
                kategori: 'eBook',
              ),

              // BUKU SAKU OBAT TRADISIONAL
              BukuStruktur(
                urlAddress:
                    'https://www.pom.go.id/new/view/direct/hotissue-covid19',
                nomor: '2',
                imagesAddress: 'assets/images/literatur/bs-obattradisional.png',
                judul: 'Buku Saku Obat Tradisional.',
                kategori: 'eBook',
              ),

              // JURNAL ILMIAH 1
              BukuStruktur(
                urlAddress:
                    'http://jurnal.globalhealthsciencegroup.com/index.php/JPPP/article/view/947/665',
                nomor: '3',
                imagesAddress: 'assets/images/literatur/stjurnalmadu.png',
                judul:
                    'Jurnal Manfaat Madu Sebagai Terapi Adjuvan Pada Pasien COVID-19 Dengan Sakit Tenggorokan.',
                kategori: 'eBook',
              ),

              // JURNAL ILMIAH 2
              BukuStruktur(
                urlAddress:
                    'https://repository.unmul.ac.id/bitstream/handle/123456789/16459/5.%20Minuman%20Tradisional%20dari%20halaman%20rumah.pdf?sequence=1&isAllowed=y',
                nomor: '4',
                imagesAddress: 'assets/images/literatur/mintradisional.png',
                judul: 'Minuman Tradisional dari Halaman Rumah',
                kategori: 'eBook',
              ),
            ],
          ),
        ));
  }
}

// const url = 'https://www.pom.go.id/new/view/direct/hotissue-covid19';
class BukuStruktur extends StatelessWidget {
  const BukuStruktur({
    super.key,
    required this.urlAddress,
    required this.nomor,
    required this.imagesAddress,
    required this.judul,
    required this.kategori,
  });

  final String urlAddress;
  final String nomor;
  final String imagesAddress;
  final String judul;
  final String kategori;

  @override
  Widget build(BuildContext context) {
    final lebarPadding = MediaQuery.of(context).size.width / 12.5;
    return Padding(
      padding:
          EdgeInsets.only(right: lebarPadding, left: lebarPadding, bottom: 50),
      child: GestureDetector(
        onTap: () async {
          // url = urlAddress;
          if (await canLaunch(urlAddress)) {
            await launch(urlAddress);
          } else {
            throw 'Could not launch $urlAddress';
          }
        },
        child: Row(
          children: [
            // NOMOR URUTAN
            Container(
              margin: const EdgeInsets.only(right: 22),
              child: Text(
                "$nomor.",
                style: const TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),

            // GAMBAR BUKU
            Container(
              width: MediaQuery.of(context).size.height / 11,
              height: MediaQuery.of(context).size.height / 8.12,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(imagesAddress), fit: BoxFit.cover)),
            ),

            // JUDUL
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 27.23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000).withOpacity(0.7)),
                    ),
                    Text(
                      kategori,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Color(0xFFBDBDBD)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
