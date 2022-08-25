import 'package:flutter/material.dart';
import 'package:swamedika/model/recomendation_data.dart';
import 'package:swamedika/views/constants/colors.dart';

class NewNewsSection extends StatefulWidget {
  const NewNewsSection({super.key});

  @override
  State<NewNewsSection> createState() => _NewNewsSectionState();
}

class _NewNewsSectionState extends State<NewNewsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 5.0,
              left: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              'Berita Terkini Covid-19',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recomendationdataContents.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            recomendationdataContents[index].image,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Kasus Positif Covid-19",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: AppColors.mainBlackColor,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Mingguan naik lebih dari 15 \nkali lipat selama 2 bulan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: AppColors.mainBlackColor,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "4 Agustus 2022",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
