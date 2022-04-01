import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:vortex/shared/Auth/auth_controller.dart';
import 'package:vortex/shared/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // video controller
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(AppImages.splashvideo)
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    //add delay till video is complite
    await Future.delayed(const Duration(seconds: 4));

    // navigating to home Page
    Navigator.pushNamed(context, '/LoginController');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              )
            : Container(),
      ),
    );
  }
}

// class SplashPage extends StatelessWidget {
//   const SplashPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //   final authController = AuthController();
//     //   authController.currentUser(context);
//     return Scaffold(
//       //   backgroundColor: AppColors.primary,
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF6F58FF), Color(0xFF9F54FC)],
//           ),
//         ),
//         child: Center(
//           child: SvgPicture.asset(
//             AppImages.logoFull,
//             height: 320,
//             width: 320,
//           ),
//         ),
//       ),
//     );
//   }
// }
