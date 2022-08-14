import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class ListViewBuilderScreenAsync extends StatefulWidget{
  const ListViewBuilderScreenAsync({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreenAsync> createState() => _ListViewBuilderScreenAsyncState();
}

class _ListViewBuilderScreenAsyncState extends State<ListViewBuilderScreenAsync> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener((){
      print('${_scrollController.position.pixels}, ${_scrollController.position.maxScrollExtent}');//imprime la posicion del scroll
      if((_scrollController.position.pixels + 500) >= _scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }


  Future fetchData() async{

    if(isLoading == true){
      return;
    }

    isLoading = true;
    setState(() {});

    await Future.delayed(Duration(seconds:3));
    add10();
    isLoading = false;
    setState(() {});



    if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
      _scrollController.animateTo(
        _scrollController.position.pixels +120,
        duration: Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
      );
    }


  }



  void add10(){
    final lastId = imagesIds.last;
    setState(() {
      imagesIds.addAll(List.generate(5, (i) => lastId + i + 1));
    });
  }

  onRefresh() async{
    await Future.delayed(Duration(seconds:2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add10();
  }




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack( //STACK SIRVE PARA PONER WIDGETS ENCIMA DE OTROS
          children:[
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: () {
                return onRefresh();
              },
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

            if(isLoading == true)
              Positioned(
                child: _LoadingIcon(),
                bottom: 40, //posicion del icono
                left: size.width/2 - 30, //centrar el icono

              )

        ]),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
      ),
      height: 60,
      width: 60,
      child: Center(
        child: CircularProgressIndicator(
          color: AppTheme.primary,
        ),
      ),
    );
  }
}