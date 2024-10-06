import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';
import 'package:home_decor/widgets/custom_divider.dart';

class Assistant extends StatelessWidget {
  const Assistant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svgs/customer_service.svg'),
            const SizedBox(width: 5),
            const Text(
              'Assistant',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.mainColor,
              ),
            ),
            const CustomDivider(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'I\'m here to assist you',
                style: TextStyle(fontSize: 17, color: AppColors.secondColor),
              ),
              const SizedBox(height: 5),
              const CustomDivider(),
              Column(
                children: [
                  const CustomChatItem(msg: 'Hello!', time: '14:00'),
                  const CustomChatItem(
                      msg: 'How can I help you today?',
                      time: '14:00',
                      isMe: false),
                  const CustomChatItem(
                      msg:
                          'I\'m looking for a sofa for my living room. Can you recommend something comfortable yet modern?',
                      time: '14:01'),
                  const CustomChatItem(
                      msg:
                          'of course, we can find the perfect safa for you. do you have aparticular style in mind or any color preferences?',
                      time: '14:01',
                      isMe: false),
                  const CustomChatItem(
                      msg:
                          'I\'d like something in neutral tones, perhaps dark gray, and with a minimalist design.',
                      time: '14:02'),
                  const CustomChatItem(
                      msg:
                          'We have serval options that could fit what you\'r looking for ...',
                      time: '14:02',
                      isMe: false),
                  // Spacer(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 5),
                        CustomIcon(icon: 'assets/images/camera.png'),
                        SizedBox(width: 5),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Write here',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(width: 5),
                        CustomIcon(icon: 'assets/images/camera.png'),
                        SizedBox(width: 5),
                        CustomIcon(icon: 'assets/images/send.png'),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String icon;
  const CustomIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(icon));
  }
}

class CustomChatItem extends StatelessWidget {
  final String msg;
  final String time;
  final bool isMe;
  const CustomChatItem({
    super.key,
    required this.msg,
    required this.time,
    this.isMe = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          isMe ? const Spacer() : const SizedBox(),
          Column(
            crossAxisAlignment: isMe == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                  color: isMe == false
                      ? AppColors.mainColor.withOpacity(0.8)
                      : AppColors.mainColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    msg,
                    textAlign: isMe ? TextAlign.right : TextAlign.left,
                    style: const TextStyle(
                      color: AppColors.secondColor,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  isMe == false ? const SizedBox(width: 10) : const SizedBox(),
                  Text(time),
                  isMe == true ? const SizedBox(width: 10) : const SizedBox(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
