
class TileModel {
  String imageAssetPath;
  bool isSelected;

  TileModel({this.imageAssetPath, this.isSelected});

  void setImageAssetPath(String path){
    this.imageAssetPath = path;
  }

  void setIsSelected(bool isSelected){
    this.isSelected = isSelected;
  }

  String getImageAssetPath(){
    return this.imageAssetPath;
  }

  bool getIsSelected(){
    return this.isSelected;
  }
}