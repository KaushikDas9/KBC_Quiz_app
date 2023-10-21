import 'package:flutter/widgets.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class internet  { 

  Future<void>  internateCheak() async { 
    bool result = await InternetConnectionChecker().hasConnection;
    if(result == true) { 
      showSimpleNotification(Text("Ache re"));
      debugPrint("Internet ache NO chap");
    }else{ 
      showSimpleNotification(Text("Nai re"));
      debugPrint("Internet nai re chap e chap");
    }
 
  }

}