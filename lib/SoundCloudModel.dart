class SoundCloudModel {
  int duration;
  Null releaseDay;
  String permalinkUrl;
  String genre;
  String permalink;
  Null purchaseUrl;
  Null releaseMonth;
  String description;
  String uri;
  Null labelName;
  String tagList;
  Null releaseYear;
  int trackCount;
  int userId;
  String lastModified;
  String license;
  List<Tracks> tracks;
  Null playlistType;
  int id;
  Null downloadable;
  String sharing;
  String createdAt;
  Null release;
  String kind;
  String title;
  Null type;
  Null purchaseTitle;
  String artworkUrl;
  Null ean;
  bool streamable;
  User user;
  String embeddableBy;
  Null labelId;

  SoundCloudModel(
      {this.duration,
        this.releaseDay,
        this.permalinkUrl,
        this.genre,
        this.permalink,
        this.purchaseUrl,
        this.releaseMonth,
        this.description,
        this.uri,
        this.labelName,
        this.tagList,
        this.releaseYear,
        this.trackCount,
        this.userId,
        this.lastModified,
        this.license,
        this.tracks,
        this.playlistType,
        this.id,
        this.downloadable,
        this.sharing,
        this.createdAt,
        this.release,
        this.kind,
        this.title,
        this.type,
        this.purchaseTitle,
        this.artworkUrl,
        this.ean,
        this.streamable,
        this.user,
        this.embeddableBy,
        this.labelId});

  SoundCloudModel.fromJson(Map<String, dynamic> json) {
    duration = json['duration'];
    releaseDay = json['release_day'];
    permalinkUrl = json['permalink_url'];
    genre = json['genre'];
    permalink = json['permalink'];
    purchaseUrl = json['purchase_url'];
    releaseMonth = json['release_month'];
    description = json['description'];
    uri = json['uri'];
    labelName = json['label_name'];
    tagList = json['tag_list'];
    releaseYear = json['release_year'];
    trackCount = json['track_count'];
    userId = json['user_id'];
    lastModified = json['last_modified'];
    license = json['license'];
    if (json['tracks'] != null) {
      tracks = new List<Tracks>();
      json['tracks'].forEach((v) {
        tracks.add(new Tracks.fromJson(v));
      });
    }
    playlistType = json['playlist_type'];
    id = json['id'];
    downloadable = json['downloadable'];
    sharing = json['sharing'];
    createdAt = json['created_at'];
    release = json['release'];
    kind = json['kind'];
    title = json['title'];
    type = json['type'];
    purchaseTitle = json['purchase_title'];
    artworkUrl = json['artwork_url'];
    ean = json['ean'];
    streamable = json['streamable'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    embeddableBy = json['embeddable_by'];
    labelId = json['label_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['duration'] = this.duration;
    data['release_day'] = this.releaseDay;
    data['permalink_url'] = this.permalinkUrl;
    data['genre'] = this.genre;
    data['permalink'] = this.permalink;
    data['purchase_url'] = this.purchaseUrl;
    data['release_month'] = this.releaseMonth;
    data['description'] = this.description;
    data['uri'] = this.uri;
    data['label_name'] = this.labelName;
    data['tag_list'] = this.tagList;
    data['release_year'] = this.releaseYear;
    data['track_count'] = this.trackCount;
    data['user_id'] = this.userId;
    data['last_modified'] = this.lastModified;
    data['license'] = this.license;
    if (this.tracks != null) {
      data['tracks'] = this.tracks.map((v) => v.toJson()).toList();
    }
    data['playlist_type'] = this.playlistType;
    data['id'] = this.id;
    data['downloadable'] = this.downloadable;
    data['sharing'] = this.sharing;
    data['created_at'] = this.createdAt;
    data['release'] = this.release;
    data['kind'] = this.kind;
    data['title'] = this.title;
    data['type'] = this.type;
    data['purchase_title'] = this.purchaseTitle;
    data['artwork_url'] = this.artworkUrl;
    data['ean'] = this.ean;
    data['streamable'] = this.streamable;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['embeddable_by'] = this.embeddableBy;
    data['label_id'] = this.labelId;
    return data;
  }
}

class Tracks {
  String kind;
  int id;
  String createdAt;
  int userId;
  int duration;
  bool commentable;
  String state;
  int originalContentSize;
  String lastModified;
  String sharing;
  String tagList;
  String permalink;
  bool streamable;
  String embeddableBy;
  bool downloadable;
  Null purchaseUrl;
  Null labelId;
  Null purchaseTitle;
  String genre;
  String title;
  String description;
  Null labelName;
  Null release;
  Null trackType;
  Null keySignature;
  Null isrc;
  Null videoUrl;
  Null bpm;
  Null releaseYear;
  Null releaseMonth;
  Null releaseDay;
  String originalFormat;
  String license;
  String uri;
  User user;
  String permalinkUrl;
  String artworkUrl;
  String waveformUrl;
  String streamUrl;
  int playbackCount;
  int downloadCount;
  int favoritingsCount;
  int commentCount;
  String downloadUrl;

  Tracks(
      {this.kind,
        this.id,
        this.createdAt,
        this.userId,
        this.duration,
        this.commentable,
        this.state,
        this.originalContentSize,
        this.lastModified,
        this.sharing,
        this.tagList,
        this.permalink,
        this.streamable,
        this.embeddableBy,
        this.downloadable,
        this.purchaseUrl,
        this.labelId,
        this.purchaseTitle,
        this.genre,
        this.title,
        this.description,
        this.labelName,
        this.release,
        this.trackType,
        this.keySignature,
        this.isrc,
        this.videoUrl,
        this.bpm,
        this.releaseYear,
        this.releaseMonth,
        this.releaseDay,
        this.originalFormat,
        this.license,
        this.uri,
        this.user,
        this.permalinkUrl,
        this.artworkUrl,
        this.waveformUrl,
        this.streamUrl,
        this.playbackCount,
        this.downloadCount,
        this.favoritingsCount,
        this.commentCount,
        this.downloadUrl});

  Tracks.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    createdAt = json['created_at'];
    userId = json['user_id'];
    duration = json['duration'];
    commentable = json['commentable'];
    state = json['state'];
    originalContentSize = json['original_content_size'];
    lastModified = json['last_modified'];
    sharing = json['sharing'];
    tagList = json['tag_list'];
    permalink = json['permalink'];
    streamable = json['streamable'];
    embeddableBy = json['embeddable_by'];
    downloadable = json['downloadable'];
    purchaseUrl = json['purchase_url'];
    labelId = json['label_id'];
    purchaseTitle = json['purchase_title'];
    genre = json['genre'];
    title = json['title'];
    description = json['description'];
    labelName = json['label_name'];
    release = json['release'];
    trackType = json['track_type'];
    keySignature = json['key_signature'];
    isrc = json['isrc'];
    videoUrl = json['video_url'];
    bpm = json['bpm'];
    releaseYear = json['release_year'];
    releaseMonth = json['release_month'];
    releaseDay = json['release_day'];
    originalFormat = json['original_format'];
    license = json['license'];
    uri = json['uri'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    permalinkUrl = json['permalink_url'];
    artworkUrl = json['artwork_url'];
    waveformUrl = json['waveform_url'];
    streamUrl = json['stream_url'];
    playbackCount = json['playback_count'];
    downloadCount = json['download_count'];
    favoritingsCount = json['favoritings_count'];
    commentCount = json['comment_count'];
    downloadUrl = json['download_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['user_id'] = this.userId;
    data['duration'] = this.duration;
    data['commentable'] = this.commentable;
    data['state'] = this.state;
    data['original_content_size'] = this.originalContentSize;
    data['last_modified'] = this.lastModified;
    data['sharing'] = this.sharing;
    data['tag_list'] = this.tagList;
    data['permalink'] = this.permalink;
    data['streamable'] = this.streamable;
    data['embeddable_by'] = this.embeddableBy;
    data['downloadable'] = this.downloadable;
    data['purchase_url'] = this.purchaseUrl;
    data['label_id'] = this.labelId;
    data['purchase_title'] = this.purchaseTitle;
    data['genre'] = this.genre;
    data['title'] = this.title;
    data['description'] = this.description;
    data['label_name'] = this.labelName;
    data['release'] = this.release;
    data['track_type'] = this.trackType;
    data['key_signature'] = this.keySignature;
    data['isrc'] = this.isrc;
    data['video_url'] = this.videoUrl;
    data['bpm'] = this.bpm;
    data['release_year'] = this.releaseYear;
    data['release_month'] = this.releaseMonth;
    data['release_day'] = this.releaseDay;
    data['original_format'] = this.originalFormat;
    data['license'] = this.license;
    data['uri'] = this.uri;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['permalink_url'] = this.permalinkUrl;
    data['artwork_url'] = this.artworkUrl;
    data['waveform_url'] = this.waveformUrl;
    data['stream_url'] = this.streamUrl;
    data['playback_count'] = this.playbackCount;
    data['download_count'] = this.downloadCount;
    data['favoritings_count'] = this.favoritingsCount;
    data['comment_count'] = this.commentCount;
    data['download_url'] = this.downloadUrl;
    return data;
  }
}

class User {
  int id;
  String kind;
  String permalink;
  String username;
  String lastModified;
  String uri;
  String permalinkUrl;
  String avatarUrl;

  User(
      {this.id,
        this.kind,
        this.permalink,
        this.username,
        this.lastModified,
        this.uri,
        this.permalinkUrl,
        this.avatarUrl});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kind = json['kind'];
    permalink = json['permalink'];
    username = json['username'];
    lastModified = json['last_modified'];
    uri = json['uri'];
    permalinkUrl = json['permalink_url'];
    avatarUrl = json['avatar_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kind'] = this.kind;
    data['permalink'] = this.permalink;
    data['username'] = this.username;
    data['last_modified'] = this.lastModified;
    data['uri'] = this.uri;
    data['permalink_url'] = this.permalinkUrl;
    data['avatar_url'] = this.avatarUrl;
    return data;
  }
}