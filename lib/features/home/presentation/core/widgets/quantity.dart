import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../domain/entities/cart_item.dart';
import '../cart_bloc/cart_bloc.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({
    super.key,
    required CartItem item,
  }) : _item = item;

  final CartItem _item;

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  late int count;

  @override
  void initState() {
    count = widget._item.quantity;
    super.initState();
  }

  void _onAdd() {
    setState(() {
      count++;
      if (count == 1) {
        context
            .read<CartBloc>()
            .add(CartEvent.addItem(widget._item.product, 1));
      } else {
        context
            .read<CartBloc>()
            .add(CartEvent.updateItem(widget._item.product, count));
      }
    });
  }

  void _onRemove() {
    setState(() {
      count--;
      if (count == 0) {
        context
            .read<CartBloc>()
            .add(CartEvent.deleteItem(widget._item.product.id));
      } else {
        context
            .read<CartBloc>()
            .add(CartEvent.updateItem(widget._item.product, count));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (count == 0) {
      return IconButton(
        onPressed: _onAdd,
        icon: const Icon(
          Icons.add_circle,
          size: 30,
          color: AppColors.darkGreen2,
        ),
      );
    } else {
      return Row(
        children: [
          IconButton(
            visualDensity: VisualDensity.compact,
            onPressed: _onRemove,
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            icon: const Icon(
              Icons.remove_circle_outline,
              color: AppColors.darkGreen2,
            ),
          ),
          Text(count.toString()),
          IconButton(
            visualDensity: VisualDensity.compact,
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: _onAdd,
            icon: const Icon(
              Icons.add_circle,
              color: AppColors.darkGreen2,
            ),
          )
        ],
      );
    }
  }
}
