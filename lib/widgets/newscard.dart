import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/article.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

Widget NewsCard(BuildContext context) {
  return InkWell(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ArticlePage(),
      ),
    ),
    child: Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: SizedBox(
        // height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width - 80,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              'assets/images/teslanews.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      // height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Tesla scraps low-cost car plans amid fierce Chinese EV competition',
                            style: bodyHeaderText(
                              textcolor: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.watch_later_outlined,
                                size: 14,
                                color: Colors.white54,
                              ),
                              Text(
                                '  4 hours',
                                style: bodySmallText(
                                  textcolor: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget RecommendedCard(BuildContext context) {
  return InkWell(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ArticlePage(),
      ),
    ),
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                child: Image.asset(
                  'assets/images/teslanews.jpg',
                  height: (MediaQuery.of(context).size.height * 0.2) * 0.65,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Tesla scraps low-cost car plans amid fierce Chinese EV competition',
                style: bodyText(
                    // textcolor: Colors.white,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
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
            ],
          ),
        ),
      ),
    ),
  );
}

Widget Trending(BuildContext context) {
  return InkWell(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ArticlePage(),
      ),
    ),
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.32,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                child: Image.asset(
                  'assets/images/teslanews.jpg',
                  height: (MediaQuery.of(context).size.height * 0.2),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Business',
                style: bodyText(
                    // textcolor: Colors.white,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'Tesla scraps low-cost car plans amid fierce Chinese EV competition',
                style: bodyText(
                  textcolor: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'News Desk',
                        style: bodySmallText(
                          textcolor: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
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
                  const Icon(
                    Icons.more_horiz_rounded,
                    size: 17,
                    color: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
