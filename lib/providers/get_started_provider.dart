import 'package:flutter/cupertino.dart';

class GetStartedProvider extends ChangeNotifier {
  /// Page controller for onboarding pages
  PageController pageController = PageController();

  /// Current page index
  int _currentPage = 0;

  int get currentPage => _currentPage;

  /// Set the current page index and notify listeners
  void setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  /// Move to the next page
  void nextPage({Duration duration = const Duration(milliseconds: 300), Curve curve = Curves.easeInOut}) {
    pageController.nextPage(duration: duration, curve: curve);
    _currentPage = pageController.page?.toInt() ?? 0; // Update currentPage based on the PageController
    notifyListeners();
  }

  /// Dispose the controller when provider is disposed
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
