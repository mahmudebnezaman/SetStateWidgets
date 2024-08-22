import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.share_rounded,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.more_vert_rounded,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/user.jpg',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
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
                style: bodyHeaderText(
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
              const SizedBox(
                height: 5,
              ),
              Text(
                'Tesla has canceled the long-promised inexpensive car that investors have been counting on to drive its growth into a mass-market automaker, according to three sources familiar with the matter and company messages seen by Reuters.\n\nThe automaker will continue developing self-driving robotaxis on the same small - vehicle platform, the sources said. \n\n The decision represents an abandonment of a longstanding goal that Tesla chief Elon Musk has often characterized as its primary mission: affordable electric cars for the masses . His first "master plan" for the company in 2006 called for manufacturing luxury models first, then using the profits to finance a "low cost family car." \n\nMusk has since repeatedly promised such a vehicle to investors and consumers.As recently as January, Musk told investors that Tesla planned to start production of the affordable model at its Texas factory in the second half of 2025, following an exclusive Reuters report detailing those plans.\n\n Tesla\'s cheapest current model, the Model 3 sedan, retails for about \$39,000 in the United States. The now-defunct entry-level vehicle, sometimes described as the Model 2, was expected to start at about \$25,000.\n\n Tesla did not respond to requests for comment.After the story was published, Musk posted on his social media site X that "Reuters is lying (again)." He did not identify any specific inaccuracies.\n\nTesla sharestumbled more than 6 percent following the Reuters\' report but recovered some of the loss after Musk\'s post. The stock was down 3.6 percent at Friday\'s market close.\n\nShortly afterward, Musk posted on X: "Tesla Robotaxi unveil on 8/8," sending shares back upin after-hours trading.\n\nThe stark reversal comes as Tesla faces fierce competition globally from Chinese electric-vehicle makers flooding the market with cars priced as low as \$10,000.The plan for driverless robotaxis, which could take longer to deliver, presents a stiffer engineering challenge and more regulatory risk.',
                style: bodyText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
