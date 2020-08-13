import 'package:shared_preferences/shared_preferences.dart';
import 'package:memory_game/model/tilemodel.dart';

String selectedTile = "";
int selectedIndex ;
bool selected = true;
int points = 0;
int totalCorrect=0;
int highscore=0;

addIntToSF(int highscore) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('memorygame_highscorev', highscore);
}

getIntValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int intValue = await prefs.getInt('memorygame_highscorev') ?? 0;
  return intValue;
}

List<TileModel> myPairs = new List<TileModel>();
List<bool> clicked = new List<bool>();

List<bool> getClicked(){

  List<bool> yoClicked = new List<bool>();
  List<TileModel> myairs = new List<TileModel>();
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel>  getPairs(){

  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/bat.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/dinosaur.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/dove.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/dragon.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/fenix.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/hamster.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/pig.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/unicorn.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
}

List<TileModel> getQuestionPairs(){
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel =  new TileModel();
  tileModel.setImageAssetPath("assets/help.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
}