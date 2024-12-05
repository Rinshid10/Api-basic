import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getdatas/modal/modal.dart';
import 'package:getdatas/services/servi.dart';

class ProviderGet extends ChangeNotifier {
  FetchServices fetchServices = FetchServices();
  List<GetUser> getDetails = [];
  bool isLoading = false;

  Future<void> fetchItems() async {
    isLoading = true;
    notifyListeners();
    try {
      GetUser user = await fetchServices.getUseDetails();
      getDetails = [user];
      log("Data from Provider: ${getDetails.toString()}");
    } catch (e) {
      log('Error: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
