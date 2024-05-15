import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outlined,
            color: AppColors.grey,
            size: 50,
          ),
          AppStyles.height10,
          Text(
            'sorry, something went wrong.',
            style: TextStyle(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
