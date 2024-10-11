
class SliderModel{
  String? image;
  String? title;
  String? description;

  SliderModel({this.image, this.title, this.description});

  void setImage(String getImage){
    image = getImage;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDescription(String getDescription){
    description = getDescription;
  }

  //getters
  String? getImage(){
    return image ?? "";
  }

  String? getTitle(){
    return title ?? "";
  }

  String? getDescription(){
    return description ?? "";
  }


}