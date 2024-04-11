import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

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
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    Image.asset(
                      'assets/images/search.png',
                      height: 30,
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
                    physics: BouncingScrollPhysics(),

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
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
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
                Image.asset('assets/images/user.jpg'),
                Image.asset('assets/images/user.jpg'),
                Image.asset('assets/images/user.jpg'),
                Image.asset('assets/images/user.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}