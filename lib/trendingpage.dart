import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/widgets/newscard.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Trending', style: bodyHeaderText(),),
        actions: const [
          Icon(Icons.more_vert_rounded),
        ],
      ),
      body: ListView(
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return trending(context);
            },
          ),
        ],
      ),
    );
  }
}
