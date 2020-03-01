import 'package:flutter/material.dart';
import 'package:mikack/models.dart' as models;
import '../widgets/comics_view.dart';

class BooksView extends StatelessWidget {
  BooksView(this.comics);

  final List<models.Comic> comics;

  @override
  Widget build(BuildContext context) {
    if (comics.length == 0)
      return Center(
        child: Text('书架空空如也',
            style: TextStyle(fontSize: 18, color: Colors.grey[400])),
      );
    return Scrollbar(
      child: ComicsView(comics),
    );
  }
}

class MainView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<models.Comic> _comics = [];

  @override
  void initState() {
    // TODO: 读取并更新书架
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BooksView(_comics);
  }
}

class BookshelfFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainView();
  }
}