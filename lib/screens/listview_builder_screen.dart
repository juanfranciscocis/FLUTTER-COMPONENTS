import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget{
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener((){
      print('${_scrollController.position.pixels}, ${_scrollController.position.maxScrollExtent}');//imprime la posicion del scroll
      if((_scrollController.position.pixels + 500) >= _scrollController.position.maxScrollExtent){
        print('Hemos llegado al final');
        add10();
      }
    });
  }

  void add10(){
    final lastId = imagesIds.last;
    setState(() {
      imagesIds.addAll(List.generate(10, (i) => lastId + i + 1));
    });
  }




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          controller: _scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: AssetImage('assets/jar-loading.gif') ,
                image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'),
              );

        }),
      ),
    );
  }
}