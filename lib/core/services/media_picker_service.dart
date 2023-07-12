import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

IMediaPickerService getMediaPickerService() => MediaPickerService();

abstract class IMediaPickerService {
  /// Pick image from the given source
  Future<Either<XFile?, String>> pickImage(ImageSource source);

  /// Pick video from the given source
  Future<Either<XFile?, String>> pickVideo(ImageSource source);

  /// Pick multiple image from the gallery
  Future<Either<List<XFile>?, String>> pickMultiImage();
}

class MediaPickerService implements IMediaPickerService {
  final ImagePicker _picker = ImagePicker();
  @override
  Future<Either<XFile?, String>> pickImage(ImageSource source) async {
    try {
      return Left(await _picker.pickImage(source: source));
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<Either<XFile?, String>> pickVideo(ImageSource source) async {
    try {
      return Left(
        await _picker.pickVideo(source: source),
      );
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<Either<List<XFile>?, String>> pickMultiImage() async {
    try {
      return Left(await _picker.pickMultiImage());
    } catch (e) {
      return Right(e.toString());
    }
  }
}
