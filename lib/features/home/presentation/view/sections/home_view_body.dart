import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/home/data/model/elements_model.dart';
import 'package:smart_station/features/home/presentation/view/components/custom_header_elements.dart';
import 'package:smart_station/features/home/presentation/view/sections/home_view_top_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HomeViewTopSection(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
            child: CustomElementsSection(
          title: 'العناصر الرئيسية',
          dataList: primaryElements,
        )),
        SliverToBoxAdapter(
          child: CustomElementsSection(
          title: 'العناصر الفرعية',
          dataList: subElements,
        ),
        )
      ],
    );
  }
}

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

class CustomElementsListViewItem extends StatelessWidget {
  const CustomElementsListViewItem({
    super.key,
    required this.model,
  });
  final ElementsModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          height: 20.h,
          width: 30.w,
          decoration: BoxDecoration(
              color: AppColors.backgroudColor,
              borderRadius: BorderRadius.circular(16)),
              child: Image.asset(model.imagePath, fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          model.title,
          style: Styles.changaBold16,
        ),
      ],
    );
  }
}
