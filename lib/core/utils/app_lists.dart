import 'package:balanced_meal/core/models/food_model.dart';

abstract class AppLists {
  static List<FoodModel> kVegetablesList = [
    FoodModel(
      count: 0,
      text: "Broccoli",
      imagelink:
          "https://cdn.britannica.com/25/78225-050-1781F6B7/broccoli-florets.jpg",
      calories: 55,
    ),
    FoodModel(
      count: 0,
      text: "Spinach",
      imagelink:
          "https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=650%2Cq=40%2Csharpen=1%2Cwidth=956/wp-content/uploads/fresh-spinach-day.jpg",
      calories: 23,
    ),
    FoodModel(
      count: 0,
      text: "Carrot",
      imagelink:
          "https://cdn11.bigcommerce.com/s-kc25pb94dz/images/stencil/1280x1280/products/271/762/Carrot__40927.1634584458.jpg?c=2",
      calories: 41,
    ),
    FoodModel(
      count: 0,
      text: "Bell Pepper",
      imagelink:
          "https://i5.walmartimages.com/asr/5d3ca3f5-69fa-436a-8a73-ac05713d3c2c.7b334b05a184b1eafbda57c08c6b8ccf.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF",
      calories: 31,
    ),
  ];

  static List<FoodModel> kCarbList = [
    FoodModel(
      count: 0,
      text: "Brown Rice",
      imagelink: "https://assets-jpcust.jwpsrv.com/thumbnails/k98gi2ri-720.jpg",
      calories: 111,
    ),
    FoodModel(
      count: 0,
      text: "Oats",
      imagelink:
          "https://media.post.rvohealth.io/wp-content/uploads/2020/03/oats-oatmeal-732x549-thumbnail.jpg",
      calories: 389,
    ),
    FoodModel(
      count: 0,
      text: "Sweet Corn",
      imagelink:
          "https://m.media-amazon.com/images/I/41F62-VbHSL._AC_UF1000,1000_QL80_.jpg",
      calories: 86,
    ),
    FoodModel(
      count: 0,
      text: "Black Beans",
      imagelink:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwxSM9Ib-aDXTUIATZlRPQ6qABkkJ0sJwDmA&usqp=CAU",
      calories: 132,
    ),
  ];

  static List<FoodModel> kMeatList = [
    FoodModel(
      count: 0,
      text: "Chicken Breast",
      calories: 165,
      imagelink:
          "https://www.savorynothings.com/wp-content/uploads/2021/02/airy-fryer-chicken-breast-image-8.jpg",
    ),
    FoodModel(
      count: 0,
      text: "Salmon",
      calories: 206,
      imagelink:
          "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2F2023-04-baked-salmon-how-to%2Fbaked-salmon-step6-4792",
    ),
    FoodModel(
      count: 0,
      text: "Lean Beef",
      calories: 250,
      imagelink:
          "https://www.mashed.com/img/gallery/the-truth-about-lean-beef/l-intro-1621886574.jpg",
    ),
    FoodModel(
      count: 0,
      text: "Turkey",
      calories: 135,
      imagelink:
          "https://fox59.com/wp-content/uploads/sites/21/2022/11/white-meat.jpg?w=2560&h=1440&crop=1",
    )
  ];
}
