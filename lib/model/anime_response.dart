class AnimeResponse {
  Pagination? pagination;
  List<Data>? data;

  AnimeResponse({this.pagination, this.data});

  AnimeResponse.fromJson(Map<String, dynamic> json) {
    pagination = json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]);
    data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(pagination != null) {
      _data["pagination"] = pagination?.toJson();
    }
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  int? malId;
  String? url;
  Images? images;
  Trailer? trailer;
  bool? approved;
  List<Titles>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<dynamic>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<Producers>? producers;
  List<Licensors>? licensors;
  List<Studios>? studios;
  List<Genres>? genres;
  List<dynamic>? explicitGenres;
  List<Themes>? themes;
  List<dynamic>? demographics;

  Data({this.malId, this.url, this.images, this.trailer, this.approved, this.titles, this.title, this.titleEnglish, this.titleJapanese, this.titleSynonyms, this.type, this.source, this.episodes, this.status, this.airing, this.aired, this.duration, this.rating, this.score, this.scoredBy, this.rank, this.popularity, this.members, this.favorites, this.synopsis, this.background, this.season, this.year, this.broadcast, this.producers, this.licensors, this.studios, this.genres, this.explicitGenres, this.themes, this.demographics});

  Data.fromJson(Map<String, dynamic> json) {
    malId = json["mal_id"];
    url = json["url"];
    images = json["images"] == null ? null : Images.fromJson(json["images"]);
    trailer = json["trailer"] == null ? null : Trailer.fromJson(json["trailer"]);
    approved = json["approved"];
    titles = json["titles"] == null ? null : (json["titles"] as List).map((e) => Titles.fromJson(e)).toList();
    title = json["title"];
    titleEnglish = json["title_english"];
    titleJapanese = json["title_japanese"];
    titleSynonyms = json["title_synonyms"] ?? [];
    type = json["type"];
    source = json["source"];
    episodes = json["episodes"];
    status = json["status"];
    airing = json["airing"];
    aired = json["aired"] == null ? null : Aired.fromJson(json["aired"]);
    duration = json["duration"];
    rating = json["rating"];
    score = json["score"];
    scoredBy = json["scored_by"];
    rank = json["rank"];
    popularity = json["popularity"];
    members = json["members"];
    favorites = json["favorites"];
    synopsis = json["synopsis"];
    background = json["background"];
    season = json["season"];
    year = json["year"];
    broadcast = json["broadcast"] == null ? null : Broadcast.fromJson(json["broadcast"]);
    producers = json["producers"] == null ? null : (json["producers"] as List).map((e) => Producers.fromJson(e)).toList();
    licensors = json["licensors"] == null ? null : (json["licensors"] as List).map((e) => Licensors.fromJson(e)).toList();
    studios = json["studios"] == null ? null : (json["studios"] as List).map((e) => Studios.fromJson(e)).toList();
    genres = json["genres"] == null ? null : (json["genres"] as List).map((e) => Genres.fromJson(e)).toList();
    explicitGenres = json["explicit_genres"] ?? [];
    themes = json["themes"] == null ? null : (json["themes"] as List).map((e) => Themes.fromJson(e)).toList();
    demographics = json["demographics"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mal_id"] = malId;
    _data["url"] = url;
    if(images != null) {
      _data["images"] = images?.toJson();
    }
    if(trailer != null) {
      _data["trailer"] = trailer?.toJson();
    }
    _data["approved"] = approved;
    if(titles != null) {
      _data["titles"] = titles?.map((e) => e.toJson()).toList();
    }
    _data["title"] = title;
    _data["title_english"] = titleEnglish;
    _data["title_japanese"] = titleJapanese;
    if(titleSynonyms != null) {
      _data["title_synonyms"] = titleSynonyms;
    }
    _data["type"] = type;
    _data["source"] = source;
    _data["episodes"] = episodes;
    _data["status"] = status;
    _data["airing"] = airing;
    if(aired != null) {
      _data["aired"] = aired?.toJson();
    }
    _data["duration"] = duration;
    _data["rating"] = rating;
    _data["score"] = score;
    _data["scored_by"] = scoredBy;
    _data["rank"] = rank;
    _data["popularity"] = popularity;
    _data["members"] = members;
    _data["favorites"] = favorites;
    _data["synopsis"] = synopsis;
    _data["background"] = background;
    _data["season"] = season;
    _data["year"] = year;
    if(broadcast != null) {
      _data["broadcast"] = broadcast?.toJson();
    }
    if(producers != null) {
      _data["producers"] = producers?.map((e) => e.toJson()).toList();
    }
    if(licensors != null) {
      _data["licensors"] = licensors?.map((e) => e.toJson()).toList();
    }
    if(studios != null) {
      _data["studios"] = studios?.map((e) => e.toJson()).toList();
    }
    if(genres != null) {
      _data["genres"] = genres?.map((e) => e.toJson()).toList();
    }
    if(explicitGenres != null) {
      _data["explicit_genres"] = explicitGenres;
    }
    if(themes != null) {
      _data["themes"] = themes?.map((e) => e.toJson()).toList();
    }
    if(demographics != null) {
      _data["demographics"] = demographics;
    }
    return _data;
  }
}

class Themes {
  int? malId;
  String? type;
  String? name;
  String? url;

  Themes({this.malId, this.type, this.name, this.url});

  Themes.fromJson(Map<String, dynamic> json) {
    malId = json["mal_id"];
    type = json["type"];
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mal_id"] = malId;
    _data["type"] = type;
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Genres {
  int? malId;
  String? type;
  String? name;
  String? url;

  Genres({this.malId, this.type, this.name, this.url});

  Genres.fromJson(Map<String, dynamic> json) {
    malId = json["mal_id"];
    type = json["type"];
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mal_id"] = malId;
    _data["type"] = type;
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Studios {
  int? malId;
  String? type;
  String? name;
  String? url;

  Studios({this.malId, this.type, this.name, this.url});

  Studios.fromJson(Map<String, dynamic> json) {
    malId = json["mal_id"];
    type = json["type"];
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mal_id"] = malId;
    _data["type"] = type;
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Licensors {
  int? malId;
  String? type;
  String? name;
  String? url;

  Licensors({this.malId, this.type, this.name, this.url});

  Licensors.fromJson(Map<String, dynamic> json) {
    malId = json["mal_id"];
    type = json["type"];
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mal_id"] = malId;
    _data["type"] = type;
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Producers {
  int? malId;
  String? type;
  String? name;
  String? url;

  Producers({this.malId, this.type, this.name, this.url});

  Producers.fromJson(Map<String, dynamic> json) {
    malId = json["mal_id"];
    type = json["type"];
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mal_id"] = malId;
    _data["type"] = type;
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Broadcast {
  String? day;
  String? time;
  String? timezone;
  String? string;

  Broadcast({this.day, this.time, this.timezone, this.string});

  Broadcast.fromJson(Map<String, dynamic> json) {
    day = json["day"];
    time = json["time"];
    timezone = json["timezone"];
    string = json["string"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["day"] = day;
    _data["time"] = time;
    _data["timezone"] = timezone;
    _data["string"] = string;
    return _data;
  }
}

class Aired {
  String? from;
  String? to;
  Prop? prop;
  String? string;

  Aired({this.from, this.to, this.prop, this.string});

  Aired.fromJson(Map<String, dynamic> json) {
    from = json["from"];
    to = json["to"];
    prop = json["prop"] == null ? null : Prop.fromJson(json["prop"]);
    string = json["string"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from"] = from;
    _data["to"] = to;
    if(prop != null) {
      _data["prop"] = prop?.toJson();
    }
    _data["string"] = string;
    return _data;
  }
}

class Prop {
  From? from;
  To? to;

  Prop({this.from, this.to});

  Prop.fromJson(Map<String, dynamic> json) {
    from = json["from"] == null ? null : From.fromJson(json["from"]);
    to = json["to"] == null ? null : To.fromJson(json["to"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(from != null) {
      _data["from"] = from?.toJson();
    }
    if(to != null) {
      _data["to"] = to?.toJson();
    }
    return _data;
  }
}

class To {
  int? day;
  int? month;
  int? year;

  To({this.day, this.month, this.year});

  To.fromJson(Map<String, dynamic> json) {
    day = json["day"];
    month = json["month"];
    year = json["year"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["day"] = day;
    _data["month"] = month;
    _data["year"] = year;
    return _data;
  }
}

class From {
  int? day;
  int? month;
  int? year;

  From({this.day, this.month, this.year});

  From.fromJson(Map<String, dynamic> json) {
    day = json["day"];
    month = json["month"];
    year = json["year"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["day"] = day;
    _data["month"] = month;
    _data["year"] = year;
    return _data;
  }
}

class Titles {
  String? type;
  String? title;

  Titles({this.type, this.title});

  Titles.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["title"] = title;
    return _data;
  }
}

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;
  Images1? images;

  Trailer({this.youtubeId, this.url, this.embedUrl, this.images});

  Trailer.fromJson(Map<String, dynamic> json) {
    youtubeId = json["youtube_id"];
    url = json["url"];
    embedUrl = json["embed_url"];
    images = json["images"] == null ? null : Images1.fromJson(json["images"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["youtube_id"] = youtubeId;
    _data["url"] = url;
    _data["embed_url"] = embedUrl;
    if(images != null) {
      _data["images"] = images?.toJson();
    }
    return _data;
  }
}

class Images1 {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  Images1({this.imageUrl, this.smallImageUrl, this.mediumImageUrl, this.largeImageUrl, this.maximumImageUrl});

  Images1.fromJson(Map<String, dynamic> json) {
    imageUrl = json["image_url"];
    smallImageUrl = json["small_image_url"];
    mediumImageUrl = json["medium_image_url"];
    largeImageUrl = json["large_image_url"];
    maximumImageUrl = json["maximum_image_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["image_url"] = imageUrl;
    _data["small_image_url"] = smallImageUrl;
    _data["medium_image_url"] = mediumImageUrl;
    _data["large_image_url"] = largeImageUrl;
    _data["maximum_image_url"] = maximumImageUrl;
    return _data;
  }
}

class Images {
  Jpg? jpg;
  Webp? webp;

  Images({this.jpg, this.webp});

  Images.fromJson(Map<String, dynamic> json) {
    jpg = json["jpg"] == null ? null : Jpg.fromJson(json["jpg"]);
    webp = json["webp"] == null ? null : Webp.fromJson(json["webp"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(jpg != null) {
      _data["jpg"] = jpg?.toJson();
    }
    if(webp != null) {
      _data["webp"] = webp?.toJson();
    }
    return _data;
  }
}

class Webp {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Webp({this.imageUrl, this.smallImageUrl, this.largeImageUrl});

  Webp.fromJson(Map<String, dynamic> json) {
    imageUrl = json["image_url"];
    smallImageUrl = json["small_image_url"];
    largeImageUrl = json["large_image_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["image_url"] = imageUrl;
    _data["small_image_url"] = smallImageUrl;
    _data["large_image_url"] = largeImageUrl;
    return _data;
  }
}

class Jpg {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Jpg({this.imageUrl, this.smallImageUrl, this.largeImageUrl});

  Jpg.fromJson(Map<String, dynamic> json) {
    imageUrl = json["image_url"];
    smallImageUrl = json["small_image_url"];
    largeImageUrl = json["large_image_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["image_url"] = imageUrl;
    _data["small_image_url"] = smallImageUrl;
    _data["large_image_url"] = largeImageUrl;
    return _data;
  }
}

class Pagination {
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  Items? items;

  Pagination({this.lastVisiblePage, this.hasNextPage, this.currentPage, this.items});

  Pagination.fromJson(Map<String, dynamic> json) {
    lastVisiblePage = json["last_visible_page"];
    hasNextPage = json["has_next_page"];
    currentPage = json["current_page"];
    items = json["items"] == null ? null : Items.fromJson(json["items"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["last_visible_page"] = lastVisiblePage;
    _data["has_next_page"] = hasNextPage;
    _data["current_page"] = currentPage;
    if(items != null) {
      _data["items"] = items?.toJson();
    }
    return _data;
  }
}

class Items {
  int? count;
  int? total;
  int? perPage;

  Items({this.count, this.total, this.perPage});

  Items.fromJson(Map<String, dynamic> json) {
    count = json["count"];
    total = json["total"];
    perPage = json["per_page"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    _data["total"] = total;
    _data["per_page"] = perPage;
    return _data;
  }
}