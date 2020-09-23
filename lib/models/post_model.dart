class Post{
  String authorName; //Profilepic of the user who uploaded the data
  String authorImageUrl; // url for the image
  String timeAgo; //time spent after upload
  String imageUrl; //Url for the image

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Shri Ganesh',
    authorImageUrl: 'assets/pic-1.jpg',
    timeAgo: '5 min',
    imageUrl: 'assets/pic-1.jpg'
  ),
  Post(
    authorName: 'ankitKumar',
    authorImageUrl: 'assets/pic-2.jpg',
    timeAgo: '5 min',
    imageUrl: 'assets/pic-2.jpg'
  )
];

final List<String> bets = [
    'assets/pic-1.jpg',
    'assets/pic-2.jpg',
    'assets/pic-3.jpg',
    'assets/pic-4.jpg',
    'assets/pic-5.jpg',
    'assets/pic-6.jpg',
    'assets/pic-7.jpg'
    ];