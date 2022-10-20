
import 'package:picwerk/constant/image.dart';

class NotifiactionModel{
  final String image;
  final String title;
  final String subcontent;
  final String datetime;
  NotifiactionModel({required this.image,required this.title,required this.subcontent,required this.datetime});

  static List<NotifiactionModel> alllist()
  {
     List<NotifiactionModel> all=[NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),
     NotifiactionModel(image: ImageConstant.profile, title: 'Jane Doe', subcontent: 'Lorem ipsum dolor sit amet. Est quibusdam', datetime: '2 min ago'),     ];

     return all;
  }
}