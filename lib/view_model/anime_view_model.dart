import 'package:api_version_2/repository/anime_repository.dart';
import 'package:flutter/cupertino.dart';

import '../model/anime_response.dart';

class AnimeViewModel extends ChangeNotifier{
  final _repo = AnimeRepository();
  bool loading = false;
  final List<Data> animeList = [];
  final List<Data> topAnimeList = [];
  final List<Data> randomAnimeList = [];

  getAnimes()async {
    loading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    notifyListeners();
    animeList.addAll(await _repo.getAnimes());
    notifyListeners();
  }

  getTopAnimes()async {
    loading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    notifyListeners();
    topAnimeList.addAll(await _repo.getTopAnimes());
    notifyListeners();
  }

  getRandomAnimes()async {
    loading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    notifyListeners();
    randomAnimeList.addAll(await _repo.getRandomAnimes());
    notifyListeners();
  }

  searchAnime(String query) async {
    await Future.delayed(const Duration(seconds: 1));
    if(query.isNotEmpty){
      loading = true;
      notifyListeners();
      animeList.clear();
      animeList.addAll((await _repo.searchAnime(query)));
      loading = false;
      notifyListeners();
    }else{
      animeList.clear();
      animeList.addAll(topAnimeList);
      loading = false;
      notifyListeners();
    }
  }


}