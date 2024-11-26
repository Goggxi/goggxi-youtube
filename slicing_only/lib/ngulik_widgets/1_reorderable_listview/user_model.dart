class User {
  final String name;
  final String username;
  final String imageUrl;
  bool isFollowedByMe = false;

  User(this.name, this.username, this.imageUrl, this.isFollowedByMe);
}
