import 'package:flutter/material.dart';
import 'package:smart_station/features/home/data/model/elements_model.dart';
import 'package:smart_station/features/home/presentation/view/sections/custom_elements_section.dart';
import 'package:smart_station/features/home/presentation/view/sections/home_view_top_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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




