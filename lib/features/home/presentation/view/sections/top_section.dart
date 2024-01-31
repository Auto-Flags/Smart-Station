import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_station/core/utils/assets.dart';
import 'package:smart_station/core/utils/color.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 33, vertical: 17),
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      height: 330,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeHeaderPic,
            ),
            fit: BoxFit.cover),
      ),
      child: SizedBox(
        height: 40,
        child: Stack(
          children: [
            TextField(
                decoration: InputDecoration(
                    hintText: "بحث",
                    prefixIcon:
                        const Icon(Icons.highlight_remove_sharp),
                    fillColor: AppColors.whiteColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
            const Positioned(
              left: 0,
              child: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.search,
                  color: AppColors.whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}