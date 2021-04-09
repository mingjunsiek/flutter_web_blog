import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Social extends StatelessWidget {
  const Social({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset('assets/icons/behance-alt.svg'),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: SvgPicture.asset('assets/icons/feather_dribbble.svg'),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset('assets/icons/feather_twitter.svg'),
        SizedBox(
          width: kDefaultPadding,
        ),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: Text("Let's Talk"),
        ),
      ],
    );
  }
}
