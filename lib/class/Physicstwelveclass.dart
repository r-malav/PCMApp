class Physicstwelveclass {
  String count;
  String chapter;
  String chapterUrl;

  Physicstwelveclass({this.count, this.chapter, this.chapterUrl});

  Physicstwelveclass.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    chapter = json['Chapter'];
    chapterUrl = json['Chapter url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['Chapter'] = this.chapter;
    data['Chapter url'] = this.chapterUrl;
    return data;
  }
}