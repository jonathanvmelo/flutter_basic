
import 'package:flutter/material.dart';
import 'package:flutter_project/views/home_screen.dart';
import 'package:rive/rive.dart';
import '../../constants.dart';
import '../../models/rive_asset_model.dart';
import '../../utils/rive_util.dart';
import 'animated_bar.dart';


class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  RiveAsset selectedBottomNav = bottomNavs.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
            color: backgroundColor2.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(bottomNavs.length, (index) => GestureDetector(
              onTap: () {
                bottomNavs[index].input!.change(true);
                if(bottomNavs[index] != selectedBottomNav){
                  setState(() {
                    selectedBottomNav = bottomNavs[index];
                  });
                }
                Future.delayed(const Duration(seconds: 1), (){
                  bottomNavs[index].input!.change(false);
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedBar(isActive: bottomNavs[index] == selectedBottomNav,),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: Opacity(
                      opacity: bottomNavs[index] == selectedBottomNav ? 1 : 0.5,
                      child: RiveAnimation.asset(bottomNavs.first.src,
                        artboard: bottomNavs[index].artboard,
                        onInit: (artboard) {
                          StateMachineController controller = RiveUtil.getRiveController(artboard,
                              stateMachineName: bottomNavs[index].stateMachineName);
                          bottomNavs[index].input = controller.findSMI("active") as SMIBool;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}




