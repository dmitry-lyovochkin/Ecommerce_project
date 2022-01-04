import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            const _LogoWidget(),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(color:Colors.pink, height: 150),
                Container(color:Colors.cyan, height: 150),
                Container(color:Colors.indigo, height: 150),
                Container(color:Colors.blue, height: 150),
                Container(color:Colors.red, height: 150),
                Container(color:Colors.pink, height: 150),
            ]))
          ],
        ),
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
      ),
    );
  }
}


class _SectionButtonsWidget extends StatelessWidget {
  const _SectionButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}