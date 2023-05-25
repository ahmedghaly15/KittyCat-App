import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kitty_cat/core/widgets/arrow_back_button.dart';

import '../../../../core/widgets/fexible_space_container.dart';

class AllBlog extends StatelessWidget {
  const AllBlog({
    Key? key,
    required this.title,
    required this.details,
  }) : super(key: key);

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(title),
            leading: const ArrowBackButton(),
            flexibleSpace: const FexibleSpaceContainer(),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: FadeInUp(
                from: 20,
                duration: const Duration(milliseconds: 750),
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Text(
                    details,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
