import 'package:flutter/material.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';
import '../widgets/widgets.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      // BAGIAN APPBAR
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height / 4.413),
        child: AppBar(
          // leading: const Icon(
          //   Icons.arrow_back_ios_new_rounded,
          //   color: Colors.black,
          // ),
          backgroundColor: const Color(0xFFFAFAFA),
          elevation: 0,
          flexibleSpace: Center(
            child: Text(
              'Lainnya',
              style: kTitleScreen,
            ),
          ),
        ),
      ),

      // BAGIAN DESKRIPSI
      body: Column(
        children: const [
          // BAGIAN GARIS PEMBATAS (DOTTED LINE)
          DottedLineWidget(),

          // BAGIAN TOMBOL
          ButtonMore(),
        ],
      ),
    );
  }
}
