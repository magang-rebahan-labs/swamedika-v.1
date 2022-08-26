
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Category extends StatefulWidget{
  const Category ({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
        appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: AppBar(
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarBrightness: Brightness.dark,
                  statusBarIconBrightness: Brightness.dark,
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () { Navigator.pop(context);
                  },
                ),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
                elevation: 0,
              ),
            ),  
        body: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Kategori',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width,
                child: const DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 0.8,
                  dashLength: 4.0,
                  dashColor: Colors.grey,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                ),
              ),
            Container(
              margin: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/Buah.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/Herbal.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/Rempah.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/Sayur.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
      }),
    );
  }
}