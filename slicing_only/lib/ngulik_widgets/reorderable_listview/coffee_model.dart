class Coffee {
  final String name;
  final String imageUrl;
  final String price;
  bool isFavorite = false;

  Coffee(this.name, this.imageUrl, this.price, this.isFavorite);

  static List<Coffee> coffeeList = [
    Coffee(
        'Espresso',
        'https://drishop.co.id/wp-content/uploads/2024/02/kopi-espresso.jpg',
        'Rp 20.000',
        false),
    Coffee(
        'Americano',
        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-54187613/freshly_baked_by_origin_bakery_americano_full02_kd07blpv.jpg',
        'Rp 25.000',
        false),
    Coffee(
        'Cappuccino',
        'https://kurio-img.kurioapps.com/19/05/28/50de339f-7e20-4738-b9a4-a2ba49991add.jpg',
        'Rp 30.000',
        false),
    Coffee(
        'Latte',
        'https://nucleuscoffee.com/cdn/shop/articles/Latte-recipe.jpg',
        'Rp 30.000',
        false),
    Coffee(
        'Mocha',
        'https://images.immediate.co.uk/production/volatile/sites/2/2021/11/Mocha-1fc71f7.png?quality=90&resize=556,505',
        'Rp 35.000',
        false),
    Coffee(
        'Affogato',
        'https://cdn11.bigcommerce.com/s-cjh14ahqln/product_images/uploaded_images/affogato-web-1.jpg',
        'Rp 40.000',
        false),
    Coffee(
        'Macchiato',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Macchiato_%287199366530%29.jpg/640px-Macchiato_%287199366530%29.jpg',
        'Rp 35.000',
        false),
    Coffee(
        'Flat White',
        'https://methodicalcoffee.com/cdn/shop/articles/Flat_white_sitting_on_a_table_1024x.jpg?v=1695740372',
        'Rp 35.000',
        false),
    Coffee(
        'Piccolo',
        'https://asset.kompas.com/crops/69-NeytaGhgl9c4CCp_bYKAP7Ww=/0x72:800x605/750x500/data/photo/2023/04/06/642ea01d15db8.jpg',
        'Rp 35.000',
        false),
    Coffee(
        'Ristretto',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmnzgv-aH-uGn0KS3elyp06JNQ7mIe0KNViA&s',
        'Rp 25.000',
        false),
    Coffee(
        'Long Black',
        'https://img.kurio.network/YdgTO-MwI7hrXWVvDYlTGiUe5mo=/1200x1200/filters:quality(80)/https://kurio-img.kurioapps.com/19/07/17/b97f0419-f6f3-4c75-9522-db1196e2a3d7.jpg',
        'Rp 25.000',
        false),
    Coffee(
        'Irish Coffee',
        'https://espressocoffeeguide.com/wp-content/uploads/2022/08/baileys-irish-coffee.jpg',
        'Rp 40.000',
        false),
    Coffee(
        'Turkish Coffee',
        'https://www.thebossykitchen.com/wp-content/uploads/2018/02/Turkish-Coffee-square-picture0-e1693058128803.jpg',
        'Rp 30.000',
        false),
    Coffee(
        'Vienna Coffee',
        'https://cdn.shopify.com/s/files/1/0716/5417/9134/files/unnamed-8.jpg',
        'Rp 35.000',
        false),
    Coffee(
        'Cortado',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmhaOjoBiRqQ0K7Q5nmQyz-SZbnEI5cp8Dog&s',
        'Rp 35.000',
        false),
    Coffee(
        'Café au Lait',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpXvXkJLVh9qZStL9FA3JVhJiVoD1wi-x-Nw&s',
        'Rp 30.000',
        false),
  ];
}
