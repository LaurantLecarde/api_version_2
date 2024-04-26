import 'package:api_version_2/screens/top_anime.dart';
import 'package:api_version_2/view_model/anime_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animations/animations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late AnimeViewModel _viewModel;
  bool _isFirstTime = false;

  @override
  void initState() {
    _isFirstTime = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    if (_isFirstTime) {
      _viewModel = Provider.of<AnimeViewModel>(context);
      _viewModel.getAnimes();
      _isFirstTime = false;
    }

    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade50),
          elevation: MaterialStateProperty.all(0),
          hintText: "Search....",
          onChanged: (query)=> _viewModel.searchAnime(query),
        ),
      ),

      body: _viewModel.loading ? const Center(
        child: CupertinoActivityIndicator(radius: 30,color: Colors.indigoAccent),
      ) : _getAnimes(),
    );
  }
  _getAnimes(){
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _viewModel.animeList.isNotEmpty ? _buildCarusel() : Center(child: Text("SEARCH NO FOUND")),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>RandomAnimes()));
          }, child: Text("Random ANIMES"))
        ],
      ),
    );
  }
  _buildCarusel(){
    return SizedBox(
      height: 600,
      width: 350,
      child: CarouselSlider.builder(
        options: CarouselOptions(
            height: 400, viewportFraction: 0.7, enlargeCenterPage: true),
        itemCount: _viewModel.animeList.length,
        itemBuilder: (context, index, pageIndex) => OpenContainer(
          closedElevation: 0,
          closedBuilder: (context, invoke) {
            final anime = _viewModel.animeList[index];
            return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network("${anime.images?.jpg?.largeImageUrl}",fit: BoxFit.cover)));
          },
          openBuilder: (context, invoke){return const SizedBox();},
        ),
      ),
    );
  }
}


