import 'package:flutter/material.dart';
import 'package:swamedika/views/widgets/button_more_section.dart';
import 'package:swamedika/views/widgets/dotted_line.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          // BAGIAN APPBAR
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 4.413),
            child: AppBar(
              leading: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: const Center(
                child: Text(
                  'Lainnya',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
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
      }),
    );
  }
}
