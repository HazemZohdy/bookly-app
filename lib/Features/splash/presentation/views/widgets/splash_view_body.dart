import 'package:booklyapp/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/my_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initializeAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 8),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initializeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: kTranstionDuration,
      // );
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
