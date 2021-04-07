class NewsCategory{
  String name,articles,imageUrl,title;
  NewsCategory({this.name,this.articles="6",this.imageUrl,this.title});
}
List<NewsCategory> newsCateList=[
  NewsCategory(name: "Technology",imageUrl: "images/news1.jpg",title: "Coronavirus- Common questions, How it spreads"),
  NewsCategory(name: "Travel",imageUrl: "images/news2.jpg",title: "Coronavirus- Common questions, How it spreads"),
  NewsCategory(name: "Startup",imageUrl: "images/news3.jpg",title: "Coronavirus- Common questions, How it spreads"),
  NewsCategory(name: "Education",imageUrl: "images/news4.jpg",title: "Coronavirus- Common questions, How it spreads"),
  
];