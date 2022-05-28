import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color appBarColor;

  const CustomAppBar({
    Key? key,
    this.appBarColor = const Color(0xffF9EFFF),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: appBarColor,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundColor: Colors.orange,
        ),
        SizedBox(
          width: 16.0,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
