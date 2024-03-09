import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunes_player/models/item_model.dart';

class TuneCategory extends StatelessWidget {
   TuneCategory({super.key,required this.item});
ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          item.playSound();
        },
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
