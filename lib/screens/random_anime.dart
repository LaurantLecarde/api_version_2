import 'package:api_version_2/screens/main_page.dart';
import 'package:api_version_2/view_model/anime_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animations/animations.dart';

class TopAnimes extends StatefulWidget {
  const TopAnimes({super.key});

  @override
  State<TopAnimes> createState() => _MainPageState();
}

class _MainPageState extends State<TopAnimes> {
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
      _viewModel.getTopAnimes();
      _isFirstTime = false;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Random ANIMEs"),
      ),
      body: _viewModel.loading ? const Center(
        child: CupertinoActivityIndicator(radius: 30,color: Colors.indigoAccent),
      ) : _getAnimes(),
    );
  }
  _getAnimes(){
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCarusel(),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>MainPage()));
          }, child: Text("ALL ANIMES"))
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
        itemCount: _viewModel.randomAnimeList.length,
        itemBuilder: (context, index, pageIndex) => OpenContainer(
          closedElevation: 0,
          closedBuilder: (context, invoke) {
            final anime = _viewModel.randomAnimeList[index];
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


