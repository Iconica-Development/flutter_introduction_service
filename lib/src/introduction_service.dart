import 'package:flutter_introduction_interface/flutter_introduction_interface.dart';

class IntroductionService {
  IntroductionService([this.dataProvider]) {
    _dataProvider = dataProvider ?? LocalIntroductionDataProvider();
  }

  final IntroductionInterface? dataProvider;
  late IntroductionInterface _dataProvider;

  Future<void> onSkip() {
    return _dataProvider.setCompleted(true);
  }

  Future<void> onComplete() {
    return _dataProvider.setCompleted(true);
  }

  Future<bool> shouldShow() {
    return _dataProvider.shouldShow();
  }
}
