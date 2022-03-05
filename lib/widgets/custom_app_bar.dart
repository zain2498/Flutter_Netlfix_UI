
import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({Key key,  this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.red.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(height: 10.0,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                    _AppBarButton(
                    title: 'TV Shows',
                    // onTap:()=> print('TV Shows'),
                    ),
                    _AppBarButton(
                    title: 'TV Shows',
                    // onTap:()=> print('Latest'),
                    ),
                    _AppBarButton(
                    title: 'TV Shows',
                    // onTap:()=> print('My List'),
                    ),
                ],

              )),
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  // final Function onTap;
  const _AppBarButton({Key key, @required this.title, 
  // required this.onTap
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16.0
        ),
      ),
    );
  }
}
