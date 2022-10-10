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
  static const String feedUrl = "https://rss.app/feeds/kQxKFxCD1nkj16wY.xml";
  RssFeed? _feed;

  Future<RssFeed?> loadFeed() async {
    try {
      final client = http.Client();
      final response = await client.get(Uri.parse(feedUrl));
      return RssFeed.parse(response.body);
    } catch (e) {
      //
    }
    return null;
  }

  load() async {
    loadFeed().then((result) {
      if (null == result || result.toString().isEmpty) {
        return;
      }
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
                              child: currentNews?.enclosure?.url == null
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
                                                  "${currentNews?.enclosure?.url}",
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
                                                    currentNews!.title!,
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
