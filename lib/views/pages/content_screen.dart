import 'package:flutter/material.dart';
import 'package:swamedika/views/constants/r.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({
    Key? key,
    // required this.gejala,
  }) : super(key: key);
  // final String gejala;

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              leading: const Icon(Icons.arrow_back_ios),
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'askdjfo',
                  // textScaleFactor: 1,
                ),
                background: Image.asset(R.assets.sliverApp, fit: BoxFit.fill),
              ),
            ),
            // const SliverToBoxAdapter(
            //   child: SizedBox(
            //     height: 20,
            //     child: Center(
            //       child: Text('Pengobatan'),
            //     ),
            //   ),
            // ),
            // SliverList(
            //     delegate: SliverChildBuilderDelegate(
            //   (_, int index) {
            //     return ListTile(
            //       leading: Container(
            //         padding: const EdgeInsets.all(8),
            //         width: 100,
            //         child: const Placeholder(),
            //       ),
            //       title: const Text("Apa mbuh kie"),
            //     );
            //   },
            //   childCount: 20,
            // ))
          ];
        },
        body: const Center(child: Text("Hello")),
      ),
    );
  }
}
