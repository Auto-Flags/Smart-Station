import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: TextField(
                cursorColor: AppColors.primaryColor,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 5),
                    hintText: AppStrings.search,
                    prefixIcon: const Icon(Icons.highlight_remove_rounded),
                    fillColor: AppColors.whiteColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none))),
          ),
          const Positioned(
            left: -2,
            top: -5,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.search,
                color: AppColors.whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}