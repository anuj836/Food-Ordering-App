import '../models/product.dart';
import '../constants.dart';

class ApiService {
  static List<Product> getFeaturedProducts() {
    return [
      Product(
        id: '1',
        name: 'Classic Burger',
        description: 'Juicy beef patty with lettuce, tomato, and special sauce',
        price: 8.99,
        imageUrl: kBurgerImages[0],
        category: 'Burgers',
      ),
      Product(
        id: '2',
        name: 'Pepperoni Pizza',
        description: 'Classic pizza with mozzarella and pepperoni',
        price: 12.99,
        imageUrl: kPizzaImages[0],
        category: 'Pizzas',
      ),
      Product(
        id: '3',
        name: 'California Roll',
        description: 'Fresh sushi with crab, avocado and cucumber',
        price: 9.99,
        imageUrl: 'https://images.pexels.com/photos/2098085/pexels-photo-2098085.jpeg',
        category: 'Sushi',
      ),
      Product(
        id: '4',
        name: 'Chocolate Lava Cake',
        description: 'Warm chocolate cake with molten center',
        price: 6.99,
        imageUrl: 'https://images.pexels.com/photos/2067396/pexels-photo-2067396.jpeg',
        category: 'Desserts',
      ),
    ];
  }

  static List<Product> getProductsByCategory(String category) {
    return getFeaturedProducts().where((p) => p.category == category).toList();
  }

  static List<String> getCategories() {
    return ['Burgers', 'Pizzas', 'Sushi', 'Desserts'];
  }

  static String getCategoryImage(String category) {
    switch (category) {
      case 'Burgers':
        return kBurgerCategoryImage;
      case 'Pizzas':
        return kPizzaCategoryImage;
      case 'Sushi':
        return kSushiCategoryImage;
      case 'Desserts':
        return kDessertCategoryImage;
      default:
        return kHeroImageUrl;
    }
  }

  static Product getProductById(String id) {
    return getFeaturedProducts().firstWhere((p) => p.id == id);
  }
}