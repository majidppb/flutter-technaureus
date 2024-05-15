class CustomerModel {
  const CustomerModel({
    this.id,
    this.name,
    this.profilePic,
    this.mobileNumber,
    this.email,
    this.street,
    this.streetTwo,
    this.city,
    this.pincode,
    this.country,
    this.state,
    this.createdDate,
    this.createdTime,
    this.modifiedDate,
    this.modifiedTime,
    this.flag,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        profilePic: json['profile_pic'] as dynamic,
        mobileNumber: json['mobile_number'] as String?,
        email: json['email'] as String?,
        street: json['street'] as String?,
        streetTwo: json['street_two'] as String?,
        city: json['city'] as String?,
        pincode: json['pincode'] as int?,
        country: json['country'] as String?,
        state: json['state'] as String?,
        createdDate: json['created_date'] as String?,
        createdTime: json['created_time'] as String?,
        modifiedDate: json['modified_date'] as String?,
        modifiedTime: json['modified_time'] as String?,
        flag: json['flag'] as bool?,
      );

  final String? city;
  final String? country;
  final String? createdDate;
  final String? createdTime;
  final String? email;
  final bool? flag;
  final int? id;
  final String? mobileNumber;
  final String? modifiedDate;
  final String? modifiedTime;
  final String? name;
  final int? pincode;
  final dynamic profilePic;
  final String? state;
  final String? street;
  final String? streetTwo;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'profile_pic': profilePic,
        'mobile_number': mobileNumber,
        'email': email,
        'street': street,
        'street_two': streetTwo,
        'city': city,
        'pincode': pincode,
        'country': country,
        'state': state,
        'created_date': createdDate,
        'created_time': createdTime,
        'modified_date': modifiedDate,
        'modified_time': modifiedTime,
        'flag': flag,
      };
}
