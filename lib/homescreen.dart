import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/trendingpage.dart';
import 'package:landing_page_ui_setstate/widgets/newscard.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

import 'article.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> newsCategories = [
    'National',
    'International',
    'Sports',
    'Business',
    'Entertainment',
    'Job',
    'Weather',
    'Health',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.lightGreenAccent,
                                offset: Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 2.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                360,
                              ),
                            ),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            'assets/images/user.jpg',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning,',
                              style: bodyText(),
                            ),
                            Text(
                              'John D User',
                              style: bodyHeaderText(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/search.png',
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  // width: 100,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: newsCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 20,
                        margin: const EdgeInsets.only(right: 4.0),
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                              blurRadius: 0.5,
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            newsCategories[index],
                            style: bodyText(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    // padding: const EdgeInsets.all(8),
                    itemCount: newsCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return newsCard(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Recommended ',
                          style: bodyHeaderText(),
                        ),
                        Image.asset(
                          'assets/images/star.png',
                          height: 20,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TrendingPage(),
                        ),
                      ),
                      child: Text(
                        'View all',
                        style: bodySmallText(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    // padding: const EdgeInsets.all(8),
                    itemCount: newsCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return recommendedCard(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Trending ',
                          style: bodyHeaderText(),
                        ),
                        Image.asset(
                          'assets/images/trending.png',
                          height: 20,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TrendingPage(),
                        ),
                      ),
                      child: Text(
                        'View all',
                        style: bodySmallText(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  // padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  primary: false,
                  itemCount: newsCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ArticlePage(),
                        ),
                      ),
                      child: Card(
                        child: ListTile(
                          leading: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/teslanews.jpg',
                              width: 80,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            'Tesla scraps low-cost car plans amid fierce Chinese EV competition',
                            style: bodyText(
                              textcolor: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          subtitle: Row(
                            children: [
                              const Icon(
                                Icons.watch_later_outlined,
                                size: 14,
                                color: Colors.black54,
                              ),
                              Text(
                                '  4 hours',
                                style: bodySmallText(
                                  textcolor: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    );
                  },
                  //   separatorBuilder: (BuildContext context, int index) =>
                  //       const Divider(
                  //     thickness: 2,
                  //   ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
