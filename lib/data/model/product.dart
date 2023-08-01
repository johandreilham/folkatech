class Product {
    int? id;
    String? name;
    String? cover;
    String? desc;
    int? price;

    Product({
        this.id,
        this.name,
        this.cover,
        this.desc,
        this.price,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        cover: json["cover"],
        desc: json["desc"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "cover": cover,
        "desc": desc,
        "price": price,
    };
}