import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/domain/entities/photo.dart';
import 'package:flutter/material.dart';

class PhotoCardWidget extends StatefulWidget {
  final Photo photo;
  const PhotoCardWidget({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  State<PhotoCardWidget> createState() => _PhotoCardWidgetState();
}

class _PhotoCardWidgetState extends State<PhotoCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Container(
            width: double.infinity,
            height: 207,
            color: AppColors.silverSand,
            child: Image.network(
              widget.photo.url,
              fit: BoxFit.cover,
              loadingBuilder: (
                context,
                child,
                loadingProgress,
              ) {
                if (loadingProgress == null) return child;

                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 64,
          decoration: const BoxDecoration(
            color: AppColors.pictonBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Column(
              children: [
                Flexible(
                  child: Text(
                    widget.photo.title,
                    style: AppTypography.smallTextStyle.copyWith(
                      color: AppColors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    widget.photo.id.toString(),
                    style: AppTypography.smallTextStyle.copyWith(
                      color: AppColors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
