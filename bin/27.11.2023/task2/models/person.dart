class Product{
  late String productId;
  late String productName;
  late double price;
  late bool inStock;
  late Details details;

  Product.fromJson(Map<String, dynamic> json) {
    productId = json["productId"];
    productName = json["productName"];
    price = json["price"];
    inStock = json["inStock"];
    details = Details.fromJson(json["details"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "productId": productId,
      "productName": productName,
      "price": price,
      "inStock": inStock,
      "details": details
    };
    return map;
  }


  @override
  String toString() {
    return 'Product{productId: $productId, productName: $productName, price: $price, inStock: $inStock, details: $details}';
  }
}

class Details{
  late String brand;
  late String model;
  late Specs specs;

  Details.fromJson(Map<String, dynamic> json) {
    brand = json["brand"];
    model = json["model"];
    specs = Specs.fromJson(json["specs"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "brand": brand,
      "model": model,
      "specs": specs
    };
    return map;
  }


  @override
  String toString() {
    return 'Product{brand: $brand, model: $model, specs: $specs}';
  }
}

class Specs{
  late double screenSize;
  // late String cameraResolution;
  late String storageCapacity;
  late String ram;

  Specs.fromJson(Map<String, dynamic> json) {
    screenSize = json["screenSize"];
    // cameraResolution = json["cameraResolution"];
    storageCapacity = json["storageCapacity"];
    ram = json["ram"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "screenSize": screenSize,
      // "cameraResolution": cameraResolution,
      "storageCapacity": storageCapacity,
      "ram": ram
    };
    return map;
  }


  @override
  String toString() {
    return 'Product{brand: $screenSize, specs: $storageCapacity, ram: $ram}';
  }
}