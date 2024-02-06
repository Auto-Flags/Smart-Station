import 'package:smart_station/core/utils/assets.dart';

class ElementsModel
{
  final String imagePath;
  final String title;

  ElementsModel({required this.imagePath, required this.title});
}

List<ElementsModel> primaryElements = [
  ElementsModel(imagePath: Assets.imagesHasabAlmashat, title: "حساب المساحات"),
  ElementsModel(imagePath: Assets.imagesHasabAlmasfat, title: "حساب المسافات"),
  ElementsModel(imagePath: Assets.imagesAlhgom, title: "الحجوم"),
  ElementsModel(imagePath: Assets.imagesTahwealAlwahdat, title: "تحويل الوحدات"),
  ElementsModel(imagePath: Assets.imagesTatal, title: "التوتال"),
];

List<ElementsModel> subElements = [
  ElementsModel(imagePath: Assets.imagesAlpasla, title: "البوصله"),
];