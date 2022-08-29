import 'package:flutter/material.dart';
import 'package:swamedika/views/widgets/appbar_more.dart';
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
          resizeToAvoidBottomInset: false,
          // BAGIAN APPBAR
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 14.4974),
            child: const AppBarMore(),
          ),

          // BAGIAN DESKRIPSI
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Lainnya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),

              // BAGIAN GARIS PEMBATAS (DOTTED LINE)
              const DottedLineWidget(),

              // BAGIAN TOMBOL
              const ButtonMore(),
            ],
          ),
        );
      }),
    );
  }
}
