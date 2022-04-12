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
  late final streamPhotos = StreamController<List<Photo>>();

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
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              debugPrint('loading with null data');

              // probably this case is useless for our case
              return const SizedBox();
            case ConnectionState.waiting:
              debugPrint('loading data');

              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
              debugPrint('loading is done. Data is not null');
              if (snapshot.hasError) {
                debugPrint('error inside');

                return const SizedBox();
              } else {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (ctx, index) {
                      return PhotoCardWidget(
                        photo: snapshot.data![index],
                      );
                    },
                  ),
                );
              }
            case ConnectionState.done:
              debugPrint('Snapshot has error');
              // here will be something like snackbars
              return const SizedBox();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 45),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () async {
            final response = await _fetchPhotos();
            if (response != null) {
              setState(() {
                streamPhotos.add(response);
              });
            }
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
  Future<Future<Photo?>> _fetchPhoto(int id) async {
    return widget.photoInteractor.getPhotoById(id);
  }

  Future<List<Photo>?> _fetchPhotos() async {
    final response = await widget.photoInteractor.getPhotos();

    return response;
  }

  Future<void> _initStreamPhotos() async {
    final response = await _fetchPhotos();
    if (response != null) {
      streamPhotos.add(response);
    }
  }
}
