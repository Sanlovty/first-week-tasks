import 'dart:async';

import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/domain/entities/photo.dart';
import 'package:first_week/features/common/domain/interactors/photo/photo_interactor.dart';
import 'package:first_week/features/common/screens/async_request/widgets/photo_card_widget.dart';
import 'package:flutter/material.dart';

/// Async request screen
class AsyncRequestScreen extends StatefulWidget {
  final PhotoInteractor photoInteractor;

  const AsyncRequestScreen({
    Key? key,
    required this.photoInteractor,
  }) : super(key: key);

  @override
  State<AsyncRequestScreen> createState() => _AsyncRequestScreenState();
}

class _AsyncRequestScreenState extends State<AsyncRequestScreen> {
  late StreamController<List<Photo>> streamPhotos =
      StreamController<List<Photo>>();

  @override
  void initState() {
    _initStreamPhotos();
    super.initState();
  }

  @override
  void dispose() {
    streamPhotos.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 28,
          width: 220,
          child: Text(
            AppStrings.asyncRequestScreenAppBarTitle,
            style: AppTypography.headerTextStyle.copyWith(
              color: AppColors.eerieBlack,
            ),
          ),
        ),
        backgroundColor: AppColors.pictonBlue,
        toolbarHeight: 69,
      ),
      body: StreamBuilder<List<Photo>>(
        stream: streamPhotos.stream,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: PhotoCardWidget(
                          photo: snapshot.data![index],
                        ),
                      );
                    },
                  ),
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 45),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () async {
            final response = await _fetchPhotos();
            setState(() {
              streamPhotos.add(response);
            });
          },
          child: const Icon(
            Icons.edit,
            color: AppColors.deepViolet,
          ),
        ),
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          color: AppColors.pictonBlue,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  // ignore: unused_element
  Future<Photo> _fetchPhoto(int id) async {
    return widget.photoInteractor.getPhotoById(id);
  }

  Future<List<Photo>> _fetchPhotos() async {
    return widget.photoInteractor.getPhotos();
  }

  Future<void> _initStreamPhotos() async {
    streamPhotos.add(await _fetchPhotos());
  }
}
