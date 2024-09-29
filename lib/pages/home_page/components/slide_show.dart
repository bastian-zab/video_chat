import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../models/user_model.dart';

import '../../../services/split_names.dart';
import '../../shared_components/profile_picture.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator(
      {super.key,
      this.autoplay = true,
      this.showUserInfo = true,
      required this.widgetsToSlideShow,
      required this.userToDisplay
      });
  final MyUser userToDisplay;
  final List<Widget> widgetsToSlideShow;
  final bool autoplay;
  final bool showUserInfo;
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         if(widget.showUserInfo) ...[Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: UserInfo(currentUser: widget.userToDisplay),
            ),
          ),],
          Expanded(
            child: CarouselSlider(
              items: widget.widgetsToSlideShow,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: widget.autoplay,
                  enlargeCenterPage: true,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  widget.widgetsToSlideShow.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends ConsumerWidget {
  const UserInfo({
    super.key,
    required this.currentUser,
  });
  final MyUser currentUser;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: ProfilePicture(
        url: currentUser.avatar,
        radius: 20,
      ),
      title: Text(
        splitName(currentUser.name),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Age: ${currentUser.age}",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
