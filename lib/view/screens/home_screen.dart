import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunes_player/models/item_model.dart';
import 'package:tunes_player/view/widgets/tune_categorey.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<ItemModel> tuneItems = const [
    ItemModel(Color(0xffEE2B3C), 'note1.wav'),
    ItemModel(Color(0xffF49431), 'note2.wav'),
    ItemModel(Color(0xffFBF25E), 'note3.wav'),
    ItemModel(Color(0xff3DC15B), 'note4.wav'),
    ItemModel(Color(0xff0DA588), 'note5.wav'),
    ItemModel(Color(0xff0EA0E8), 'note6.wav'),
    ItemModel(Color(0xff9A10A8), 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Flutter Tune',
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff26313A),
        ),
        body: Column(
          children: tuneItems.map((e) => TuneCategory(item: e)).toList(),
        ));
  }
}
