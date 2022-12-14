// import 'package:flutter/material.dart';
// import 'package:swamedika/model/data_list.dart';
// import 'package:swamedika/views/pages/detail.dart';
// import 'package:swamedika/model/database.dart';

// class SearchPage extends StatefulWidget {
//   const SearchPage({super.key});

//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   final _controller = TextEditingController();
//   List<DataList> displayList = List.from(dataListContent);

//   void updateList(String value) {
//     setState(
//       () {
//         displayList = dataListContent
//             .where(
//               (element) =>
//                   element.title.toLowerCase().contains(value.toLowerCase()),
//             )
//             .toList();
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         foregroundColor: Colors.black,
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Cari Bahan",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 22.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             TextField(
//               autofocus: true,
//               cursorColor: Colors.black,
//               onChanged: (value) => updateList(value),
//               style: const TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//               // onSubmitted: (value) {
//               //    var senData = dataListContent[
//               //    ]
//               //   Navigator.of(context).push(
//               //               MaterialPageRoute(
//               //                 builder: (context) => DetailPage(
//               //                   image: senData.image,
//               //                   title: senData.title,
//               //                   cate: senData.cate,
//               //                   desc: senData.desc,
//               //                   khasiat: senData.khasiat,
//               //                   serve: senData.serve,
//               //                   keamanan: senData.keamanan,
//               //                   peringatan: senData.peringatan,
//               //                 ),
//               //               ),
//               //             );
//               // },
//               controller: _controller,
//               decoration: InputDecoration(
//                 disabledBorder: InputBorder.none,
//                 filled: true,
//                 fillColor: Colors.grey.shade300,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                   borderSide: BorderSide.none,
//                 ),
//                 hintText: "Contoh: Madu",
//                 prefixIcon: IconButton(
//                   onPressed: () {
//                     // Navigator.of(context).push(
//                     //   MaterialPageRoute(
//                     //     builder: (context) => const Test(),
//                     //   ),
//                     // );
//                   },
//                   icon: const IconTheme(
//                     data: IconThemeData(color: Colors.black),
//                     child: Icon(
//                       Icons.search,
//                     ),
//                   ),
//                 ),
//                 suffixIcon: IconButton(
//                   onPressed: _controller.text.isEmpty
//                       ? null
//                       : () {
//                           _controller.clear();
//                           // FocusScope.of(context).unfocus();
//                         },
//                   icon: IconTheme(
//                     data: IconThemeData(
//                       color: _controller.text.isNotEmpty
//                           ? Colors.red
//                           : Colors.black,
//                     ),
//                     child: const Icon(
//                       Icons.close,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: displayList.isEmpty
//                   ? const Center(
//                       child: Text(
//                         "Pencarian Tidak Ditemukan",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     )
//                   : ListView.builder(
//                       itemCount: displayList.length,
//                       itemBuilder: (context, index) => ListTile(
//                         onTap: () {
//                           var senData = herbaldataContents[index];
//                           Navigator.of(context).push(
//                             MaterialPageRoute(
//                                 builder: (context) => const DetailPage(
//                                     // image: senData.image,
//                                     // title: senData.title,
//                                     // cate: senData.cate,
//                                     // desc: senData.desc,
//                                     // khasiat: senData.khasiat,
//                                     // serve: senData.serve,
//                                     // keamanan: senData.keamanan,
//                                     // peringatan: senData.peringatan,
//                                     ),
//                                 settings: RouteSettings(arguments: senData)),
//                           );
//                           _controller.clear();
//                         },
//                         contentPadding: const EdgeInsets.all(8.0),
//                         title: Text(
//                           displayList[index].title,
//                           style: const TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         leading: ConstrainedBox(
//                           constraints: const BoxConstraints(
//                             minWidth: 44,
//                             minHeight: 44,
//                             maxWidth: 64,
//                             maxHeight: 64,
//                           ),
//                           child: Image(
//                             image: AssetImage(
//                               displayList[index].image,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
