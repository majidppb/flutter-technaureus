part of '../customer.dart';

class _CustomerWidget extends StatelessWidget {
  const _CustomerWidget(this.customer);

  final Customer customer;

  Future<void> _launchPhone() async {
    final url = Uri(
      scheme: 'tel',
      path: customer.mobile,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  Future<void> _launchWhatsApp() async {
    final url =
        Uri.parse('https://api.whatsapp.com/send?phone=${customer.mobile}');

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(CheckoutScreen.path, extra: customer.id),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: AppStyles.padding8,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: AppStyles.borderRadius8,
              ),
              shadows: [
                BoxShadow(
                  color: AppColors.tBlack,
                  blurRadius: 15,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: AppStyles.borderRadius16,
                      child: customer.image.isNotEmpty
                          ? CachedNetworkImage(
                              height: 110,
                              width: 110,
                              fit: BoxFit.cover,
                              imageUrl: MediaProvider.getMedia(customer.image),
                              placeholder: MediaProvider.mediaPlaceholder,
                              errorWidget: MediaProvider.mediaErrorWidget,
                            )
                          : const Icon(Icons.person_rounded),
                    ),
                  ),
                ),

                // Divider
                Container(
                  width: 1.5,
                  height: 110,
                  margin: AppStyles.hPadding10,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.white,
                        AppColors.lightGrey,
                        AppColors.white,
                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        customer.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      AppStyles.height5,
                      Text(
                        'ID : ${customer.id}',
                        style: const TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AppStyles.height5,
                      Text(
                        '${customer.street}, ${customer.city}, ${customer.state}',
                        style: const TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                visualDensity: VisualDensity.compact,
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                icon: Image.asset(
                  AppAssets.phone,
                  height: 20,
                  width: 20,
                ),
                onPressed: _launchPhone,
              ),
              IconButton(
                visualDensity: VisualDensity.compact,
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                icon: Image.asset(
                  AppAssets.whatsapp,
                  height: 28,
                  width: 28,
                ),
                onPressed: _launchWhatsApp,
              )
            ],
          ),
        ],
      ),
    );
  }
}
