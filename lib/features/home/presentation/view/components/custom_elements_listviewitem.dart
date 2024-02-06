import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/home/data/model/elements_model.dart';
import 'package:smart_station/features/home/presentation/view/components/custom_element_image.dart';

class CustomElementsListViewItem extends StatelessWidget {
  const CustomElementsListViewItem({
    super.key,
    required this.model,
  });
  final ElementsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomElementImage(model: model),
          const SizedBox(
            height: 10,
          ),
          Text(
            model.title,
            style: Styles.changaBold16,
          ),
        ],
      ),
    );
  }
}

