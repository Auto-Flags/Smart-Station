import 'package:smart_station/core/utils/assets.dart';

class ElementsModel
{
  final String imagePath;
  final String title;

  ElementsModel({required this.imagePath, required this.title});
}

List<ElementsModel> primaryElements = [
  ElementsModel(imagePath: Assets.imagesHesabAlmesahat, title: "حساب المساحات"),
  ElementsModel(imagePath: Assets.imagesHesabAlmasfat, title: "حساب المسافات"),
  ElementsModel(imagePath: Assets.imagesAlhogom, title: "الحجوم"),
  ElementsModel(imagePath: Assets.imagesTahwealAlwahdat, title: "تحويل الوحدات"),
  ElementsModel(imagePath: Assets.imagesTotal, title: "التوتال"),
];

List<ElementsModel> subElements = [
  ElementsModel(imagePath: Assets.imagesAlposla, title: "البوصله"),
];