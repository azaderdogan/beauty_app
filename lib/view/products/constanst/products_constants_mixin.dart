import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../product/utils/image_constants.dart';
import '../../../product/utils/svg_constants.dart';
import '../model/product.dart';
import '../model/product_category.dart';

mixin ProductsConstants {
  final String products = 'products'.tr;
  final String mostPopular = 'mostPopular'.tr;
  final String moisturizer = 'moisturizer'.tr;
  final String cleanser = 'cleanser'.tr;
  final String lipCare = 'lipCare'.tr;
  final String masker = 'masker'.tr;
  final String powder = 'powder'.tr;
  final String seeAll = 'seeAll'.tr;

  List<ProductCategory> categories = <ProductCategory>[
    ProductCategory(
      categoryId: 0,
      categoryName: 'moisturizer'.tr,
      categoryIconPath: SvgConstants.instance.moisturizer,
    ),
    ProductCategory(
      categoryId: 0,
      categoryName: 'cleanser'.tr,
      categoryIconPath: SvgConstants.instance.cleanset,
    ),
    ProductCategory(
      categoryId: 0,
      categoryName: 'lipCare'.tr,
      categoryIconPath: SvgConstants.instance.skincare,
    ),
    ProductCategory(
      categoryId: 0,
      categoryName: 'masker'.tr,
      categoryIconPath: SvgConstants.instance.mask,
    ),
    ProductCategory(
      categoryId: 0,
      categoryName: 'powder'.tr,
      categoryIconPath: SvgConstants.instance.makeUp,
    ),
  ];
  List<Product> productList = <Product>[
    Product(
        title: 'Lorem iprsum title lorem ipsum title',
        imagePath: ImageConstants.instance.image5,
        price: 20.4,
        isFavorite: true,
        categoryId: 1),
    Product(
        title: 'Lorem iprsum tsdisadtle lorem ipsum title',
        imagePath: ImageConstants.instance.image7,
        price: 7.4,
        isFavorite: false,
        categoryId: 1),
    Product(
        title: 'Lorem iprsum title lasdasorem ipsum title',
        imagePath: ImageConstants.instance.yellowImage,
        price: 4,
        isFavorite: true,
        categoryId: 2),
    Product(
        title: 'Lorem iprsum title lasdasorem ipsum title',
        imagePath: ImageConstants.instance.yellowImage,
        price: 4,
        isFavorite: true,
        categoryId: 0),
    Product(
        title: 'Lorem iprsum title lasdasorem ipsum title',
        imagePath: ImageConstants.instance.yellowImage,
        price: 4,
        isFavorite: true,
        categoryId: 3),
    Product(
        title: 'Lorem iprsum title lasdasorem ipsum title',
        imagePath: ImageConstants.instance.yellowImage,
        price: 4,
        isFavorite: true,
        categoryId: 4),
    Product(
      title: 'Lorem iprsum title lasdasorem ipsum title',
      imagePath: ImageConstants.instance.yellowImage,
      price: 4,
      isFavorite: true,
      categoryId: 5,
    ),
  ];
}
