import 'package:flutter/widgets.dart';

import 'api_end_points.dart';
import 'app_colors.dart';

sealed class MediaProvider {
  static String getMedia(String link) => '${ApiEndPoints.media}$link';

  static Widget mediaPlaceholder(BuildContext _, String __) => const Center(
        child: Text(
          'loading ...',
          style: TextStyle(color: AppColors.grey),
        ),
      );

  static Widget mediaErrorWidget(BuildContext _, String __, Object ___) =>
      const Center(
        child: Text(
          'something went wrong !',
          softWrap: true,
          style: TextStyle(color: AppColors.grey),
        ),
      );
}
