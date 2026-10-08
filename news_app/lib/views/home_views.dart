import 'package:flutter/material.dart';
import 'package:news_app/widgets/categor_listview.dart';
import 'package:news_app/widgets/new_listview.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("News", style: TextStyle(color: Colors.black)),
              Text("cloud", style: TextStyle(color: Colors.yellow)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: categorylistview()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: newlistview()),
            ],
          ),
          //   child: Column(
          //   children: [
          //   categorylistview(),
          // SizedBox(height: 20),
          //Expanded(child: newlistview()),
          //],
          //),
        ),
      ),
    );
  }
}
