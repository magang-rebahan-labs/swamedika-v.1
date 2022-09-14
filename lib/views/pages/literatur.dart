import 'package:flutter/material.dart';

class Literatur extends StatelessWidget {
  const Literatur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 4.413),
          child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Literatur',
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins"),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  children: [
                    const Text('1.'),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                              'Pedoman Penggunan Herbal & SK Dalam Menghadapi Covid 19'),
                          Text('eBook')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
