import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/features/home/data/model/elements_model.dart';
import 'package:smart_station/features/home/presentation/view/components/custom_elements_listviewitem.dart';
import 'package:smart_station/features/home/presentation/view/components/custom_header_elements.dart';

class CustomElementsSection extends StatelessWidget {
  const CustomElementsSection(
      {super.key, required this.title, required this.dataList});
  final String title;
  final List<ElementsModel> dataList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElementsHeader(
          title: title,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 25.h,
          width: 100.w,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: dataList.length,
              itemBuilder: ((context, index) {
                return CustomElementsListViewItem(
                  model: dataList[index],
                );
              })),
        )
      ],
    );
  }
}