import '../../domain/entities/customer.dart';
import '../model/customer_model.dart';

mixin CustomerMapper {
  Customer toCustomerEntity(CustomerModel model) {
    return Customer(
      id: model.id!,
      name: model.name ?? '',
      mobile: model.mobileNumber ?? '',
      street: model.street ?? '',
      city: model.city ?? '',
      state: model.state ?? '',
      image: model.profilePic ?? '',
    );
  }
}
