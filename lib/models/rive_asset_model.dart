
import 'package:rive/rive.dart';

class RiveAssetModel{
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAssetModel(this.src,{
    required this.artboard,
    required this.stateMachineName,
    required this.title,
    this.input});

  set setInput(SMIBool status){
    input = status;
  }
}

List<RiveAssetModel> bottomNavs = [
  RiveAssetModel("assets/RiveAssets/icons.riv", artboard: "HOME", stateMachineName: "CHAT_Interactivity", title: "Chat"),
  RiveAssetModel("assets/RiveAssets/icons.riv", artboard: "SEARCH", stateMachineName: "SEARCH_Interactivity", title: "Search"),
  RiveAssetModel("assets/RiveAssets/icons.riv", artboard: "TIMER", stateMachineName: "TIMER_Interactivity", title: "Timer"),
  RiveAssetModel("assets/RiveAssets/icons.riv", artboard: "BELL", stateMachineName: "BELL_Interactivity", title: "Notifications"),
  RiveAssetModel("assets/RiveAssets/icons.riv", artboard: "USER", stateMachineName: "USER_Interactivity", title: "Profile"),
];