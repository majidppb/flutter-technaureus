class ProductModel {
  const ProductModel({
    this.id,
    this.name,
    this.image,
    this.price,
    this.createdDate,
    this.createdTime,
    this.modifiedDate,
    this.modifiedTime,
    this.flag,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        price: json['price'] as int?,
        createdDate: json['created_date'] as String?,
        createdTime: json['created_time'] as String?,
        modifiedDate: json['modified_date'] as String?,
        modifiedTime: json['modified_time'] as String?,
        flag: json['flag'] as bool?,
      );

  final String? createdDate;
  final String? createdTime;
  final bool? flag;
  final int? id;
  final String? image;
  final String? modifiedDate;
  final String? modifiedTime;
  final String? name;
  final int? price;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'price': price,
        'created_date': createdDate,
        'created_time': createdTime,
        'modified_date': modifiedDate,
        'modified_time': modifiedTime,
        'flag': flag,
      };
}
