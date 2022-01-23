import 'package:ecommerce_project/application/API/http/Models/model.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final model = WidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ModelProvider(
            model: model,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                _ReloadButton(),
                _CreateButton(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _PostsWidget(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class _ReloadButton extends StatelessWidget {
  const _ReloadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => ModelProvider.read(context)?.model.reloadPosts(),
      child: const Text('Обновить посты'),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => ModelProvider.read(context)?.model.createPosts(),
      child: const Text('Создать пост'),
    );
  }
}

class _PostsWidget extends StatelessWidget {
  const _PostsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ModelProvider.watch(context)?.model.posts.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return _PostsRowWidget(index: index);
        });
  }
}

class _PostsRowWidget extends StatelessWidget {
  final int index;
  const _PostsRowWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = ModelProvider.read(context)!.model.posts[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(post.id.toString()),
        const SizedBox(height: 10),
        Text(post.title),
      ],

    );
  }
}
