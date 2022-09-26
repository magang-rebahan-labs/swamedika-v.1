// import 'package:flutter/material.dart';
// import 'package:webfeed/webfeed.dart';
// import 'package:http/http.dart' as http;
// import 'package:url_launcher/url_launcher.dart';
// // import 'package:cached_network_image/cached_network_image.dart';

// class RSSDemo extends StatefulWidget {
//   //
//   const RSSDemo({super.key});

//   final String title = 'RSS Feed Demo';

//   @override
//   RSSDemoState createState() => RSSDemoState();
// }

// class RSSDemoState extends State<RSSDemo> {
//   //
//   static String FEED_URL =
//       'https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss';
//   RssFeed? _feed;
//   String? _title;
//   static const String loadingFeedMsg = 'Loading Feed...';
//   static const String feedLoadErrorMsg = 'Error Loading Feed.';
//   static const String feedOpenErrorMsg = 'Error Opening Feed.';
//   // static const String placeholderImg = 'images/no_image.png';
//   GlobalKey<RefreshIndicatorState>? _refreshKey;

//   updateTitle(title) {
//     setState(() {
//       _title = title;
//     });
//   }

//   updateFeed(feed) {
//     setState(() {
//       _feed = feed;
//     });
//   }

//   Future<void> openFeed(String _url) async {
//     Uri url = Uri.parse(_url);
//     if (await canLaunchUrl(url)) {
//       await launchUrl(
//         url,
//         // forceSafariVC: true,
//         // forceWebView: false,
//       );
//       return;
//     }
//     updateTitle(feedOpenErrorMsg);
//   }

//   load() async {
//     updateTitle(loadingFeedMsg);
//     loadFeed().then((result) {
//       if (null == result || result.toString().isEmpty) {
//         updateTitle(feedLoadErrorMsg);
//         return;
//       }
//       updateFeed(result);
//       updateTitle(_feed!.title);
//     });
//   }

//   Future<RssFeed?> loadFeed() async {
//     try {
//       final client = http.Client();
//       final response = await client.get(Uri.parse(FEED_URL));
//       return RssFeed.parse(response.body);
//     } catch (e) {
//       //
//       print("whuhuhuhuhu : $e");
//     }
//     return null;
//   }

//   @override
//   void initState() {
//     super.initState();
//     _refreshKey = GlobalKey<RefreshIndicatorState>();
//     updateTitle(widget.title);
//     load();
//   }

//   title(title) {
//     return Text(
//       title,
//       style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
//       maxLines: 2,
//       overflow: TextOverflow.ellipsis,
//     );
//   }

//   subtitle(subTitle) {
//     return Text(
//       subTitle,
//       style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
//       maxLines: 1,
//       overflow: TextOverflow.ellipsis,
//     );
//   }

//   // thumbnail(imageUrl) {
//   //   return Padding(
//   //     padding: EdgeInsets.only(left: 15.0),
//   //     child: CachedNetworkImage(
//   //       placeholder: (context, url) => Image.asset(placeholderImg),
//   //       imageUrl: imageUrl,
//   //       height: 50,
//   //       width: 70,
//   //       alignment: Alignment.center,
//   //       fit: BoxFit.fill,
//   //     ),
//   //   );
//   // }

//   rightIcon() {
//     return Icon(
//       Icons.keyboard_arrow_right,
//       color: Colors.grey,
//       size: 30.0,
//     );
//   }

//   list() {
//     return ListView.builder(
//       itemCount: _feed!.items!.length,
//       itemBuilder: (BuildContext context, int index) {
//         final item = _feed?.items![index];
//         print("Objek cuy : ${item?.title}");
//         return ListTile(
//           title: title(item?.title),
//           subtitle: subtitle(item?.pubDate),
//           // leading: thumbnail(item!.enclosure.url),
//           trailing: rightIcon(),
//           contentPadding: EdgeInsets.all(5.0),
//           onTap: () => openFeed("${item?.link}"),
//         );
//       },
//     );
//   }

//   isFeedEmpty() {
//     return null == _feed || null == _feed?.items;
//   }

//   body() {
//     print("Kampererere: $_refreshKey");
//     return isFeedEmpty()
//         ? Center(
//             child: CircularProgressIndicator(),
//           )
//         : RefreshIndicator(
//             key: _refreshKey,
//             child: list(),
//             onRefresh: () => load(),
//           );
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Hellooo");
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text(_title!),
//       // ),
//       body: body(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/webfeed.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  static String FEED_URL = "https://rss.app/feeds/Fdy6pfEC6ugYLJj4.xml";
  RssFeed? _feed;

  Future<RssFeed?> loadFeed() async {
    try {
      final client = http.Client();
      final response = await client.get(Uri.parse(FEED_URL));
      return RssFeed.parse(response.body);
    } catch (e) {
      //
    }
    return null;
  }

  load() async {
    loadFeed().then((result) {
      if (null == result || result.toString().isEmpty) {
        print("feedLoadErrorMsg");
        return;
      }
      print("result: $result");
      updateFeed(result);
    });
  }

  updateFeed(feed) {
    setState(() {
      _feed = feed;
    });
  }

  @override
  void initState() {
    super.initState();
    // _refreshKey = GlobalKey<RefreshIndicatorState>();
    load();
  }

  title() {}

  @override
  Widget build(BuildContext context) {
    print("object : $_feed");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: null == _feed || null == _feed?.items
              ? const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _feed?.items?.length,
                      itemBuilder: (context, index) {
                        // Variable
                        final currentNews = _feed?.items![index];
                        DateTime parseDate =
                            // DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
                            DateFormat("yyyy-MM-dd HH:mm:ss")
                                .parse("${currentNews?.pubDate}");
                        var inputDate = DateTime.parse(parseDate.toString());
                        var outputFormat = DateFormat('dd MMMM yyyy');
                        var outputDate = outputFormat.format(inputDate);
                        print("object : ${currentNews!.enclosure?.url}");

                        // Konten
                        return Container(
                          margin:
                              const EdgeInsets.only(right: 8.0, bottom: 21.41),
                          child: GestureDetector(
                            onTap: () async {
                              Uri uri = Uri.parse(currentNews!.link!);
                              try {
                                (await canLaunchUrl(uri))
                                    ? launchUrl(uri,
                                        mode: LaunchMode.externalApplication)
                                    : debugPrint('tidak berhasil');
                              } catch (e) {
                                debugPrint('error');
                              }
                            },
                            child: Container(
                              child: currentNews.enclosure?.url == null
                                  ? Container()
                                  : Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8.12,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8.12, // Setting tingginya

                                          // Box gambarnya
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Colors.white38,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "${currentNews.enclosure?.url}",
                                                  scale: 1),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            // height: 300,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                              ),
                                              color: Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    // "Kasus Positif Covid-19 Mingguan naik lebih dari 15 kali lipat selama 2 bulan",
                                                    currentNews.title!,
                                                    style: kNewsTitle,
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              73.81),
                                                  Text(
                                                    // currentNews.pubDate
                                                    //     .toString(),
                                                    outputDate,
                                                    style: kNewsDate,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
        )
      ],
    );
  }
}
