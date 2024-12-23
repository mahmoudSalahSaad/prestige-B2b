class CategoryModel {
  final String name;
  final String? image, svgSrc;
  final List<CategoryModel>? subCategories;

  CategoryModel({
    required this.name,
    this.image,
    this.svgSrc,
    this.subCategories,
  });
}

final List<CategoryModel> demoCategoriesWithImage = [
  CategoryModel(name: "Woman’s", image: "https://i.imgur.com/5M89G2P.png"),
  CategoryModel(name: "Man’s", image: "https://i.imgur.com/UM3GdWg.png"),
  CategoryModel(name: "Kid’s", image: "https://i.imgur.com/Lp0D6k5.png"),
  CategoryModel(name: "Accessories", image: "https://i.imgur.com/3mSE5sN.png"),
];

final List<CategoryModel> demoCategories = [
  CategoryModel(
    name: "On sale",
    svgSrc: "assets/icons/Sale.svg",
    subCategories: [
      CategoryModel(name: "All Clothing"),
      CategoryModel(name: "New In"),
      CategoryModel(name: "Coats & Jackets"),
      CategoryModel(name: "Dresses"),
      CategoryModel(name: "Jeans"),
    ],
  ),
  CategoryModel(
    name: "Man’s & Woman’s",
    svgSrc: "assets/icons/Man&Woman.svg",
    subCategories: [
      CategoryModel(name: "All Clothing"),
      CategoryModel(name: "New In"),
      CategoryModel(name: "Coats & Jackets"),
    ],
  ),
  CategoryModel(
    name: "Kids",
    svgSrc: "assets/icons/Child.svg",
    subCategories: [
      CategoryModel(name: "All Clothing"),
      CategoryModel(name: "New In"),
      CategoryModel(name: "Coats & Jackets"),
    ],
  ),
  CategoryModel(
    name: "Accessories",
    svgSrc: "assets/icons/Accessories.svg",
    subCategories: [
      CategoryModel(name: "All Clothing"),
      CategoryModel(name: "New In"),
    ],
  ),
];
