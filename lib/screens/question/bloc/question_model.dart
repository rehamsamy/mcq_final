/// response_code : 0
/// results : [{"category":"Entertainment: Film","type":"multiple","difficulty":"easy","question":"Which movie released in 2016 features Superman and Batman fighting?","correct_answer":"Batman v Superman: Dawn of Justice","incorrect_answers":["Batman v Superman: Superapocalypse","Batman v Superman: Black of Knight","Batman v Superman: Knightfall"]},{"category":"Entertainment: Film","type":"boolean","difficulty":"medium","question":"There aren&#039;t any live-action clones in &quot;Star Wars: Episode III - Revenge of the Sith&quot;.","correct_answer":"True","incorrect_answers":["False"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"easy","question":"Which of these actors/actresses is NOT a part of the cast for the 2016 movie &quot;Suicide Squad&quot;?","correct_answer":"Scarlett Johansson","incorrect_answers":["Jared Leto","Will Smith","Margot Robbie"]},{"category":"Entertainment: Film","type":"boolean","difficulty":"medium","question":"The Xenomorph from the science fiction film &quot;Alien&quot; has acidic blood.","correct_answer":"True","incorrect_answers":["False"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"easy","question":"In the movie &quot;Cast Away&quot; the main protagonist&#039;s best friend while on the island is named","correct_answer":"Wilson","incorrect_answers":["Carson","Jackson","Willy"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"medium","question":"In which movie does Robin Williams&#039; character have to disguise themselves into a woman?","correct_answer":"Mrs. Doubtfire","incorrect_answers":["Old Dogs","Jumanji","Awakenings"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"medium","question":"What is the name of the queen&#039;s pet in A Bug&#039;s Life?","correct_answer":"Aphie","incorrect_answers":["Flik","Hopper","Dot"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"medium","question":"In the film &quot;Requiem for a Dream&quot;, what drug does Jared Leto&#039;s character get addicted to?","correct_answer":"Heroin","incorrect_answers":["Cocaine","Marijuana","Oxycodone"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"hard","question":"What was the wifi password given to Stephen Strange in Doctor Strange?","correct_answer":"Shambala","incorrect_answers":["Peace","Ancient","Chakra"]},{"category":"Entertainment: Film","type":"multiple","difficulty":"medium","question":"In Star Wars, what&#039;s the name of the new Government created after the defeat of the Galactic Empire?","correct_answer":"The New Republic","incorrect_answers":["The Rebel Alliance","The Crimson Dawn","The First Order"]}]

class QuestionModel {
  QuestionModel({
      num? responseCode, 
      List<Results>? results,}){
    _responseCode = responseCode;
    _results = results;
}

  QuestionModel.fromJson(dynamic json) {
    _responseCode = json['response_code'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }
  num? _responseCode;
  List<Results>? _results;
QuestionModel copyWith({  num? responseCode,
  List<Results>? results,
}) => QuestionModel(  responseCode: responseCode ?? _responseCode,
  results: results ?? _results,
);
  num? get responseCode => _responseCode;
  List<Results>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_code'] = _responseCode;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// category : "Entertainment: Film"
/// type : "multiple"
/// difficulty : "easy"
/// question : "Which movie released in 2016 features Superman and Batman fighting?"
/// correct_answer : "Batman v Superman: Dawn of Justice"
/// incorrect_answers : ["Batman v Superman: Superapocalypse","Batman v Superman: Black of Knight","Batman v Superman: Knightfall"]

class Results {
  Results({
      String? category, 
      String? type, 
      String? difficulty, 
      String? question, 
      String? correctAnswer, 
      List<String>? incorrectAnswers,}){
    _category = category;
    _type = type;
    _difficulty = difficulty;
    _question = question;
    _correctAnswer = correctAnswer;
    _incorrectAnswers = incorrectAnswers;
}

  Results.fromJson(dynamic json) {
    _category = json['category'];
    _type = json['type'];
    _difficulty = json['difficulty'];
    _question = json['question'];
    _correctAnswer = json['correct_answer'];
    _incorrectAnswers = json['incorrect_answers'] != null ? json['incorrect_answers'].cast<String>() : [];
  }
  String? _category;
  String? _type;
  String? _difficulty;
  String? _question;
  String? _correctAnswer;
  List<String>? _incorrectAnswers;
Results copyWith({  String? category,
  String? type,
  String? difficulty,
  String? question,
  String? correctAnswer,
  List<String>? incorrectAnswers,
}) => Results(  category: category ?? _category,
  type: type ?? _type,
  difficulty: difficulty ?? _difficulty,
  question: question ?? _question,
  correctAnswer: correctAnswer ?? _correctAnswer,
  incorrectAnswers: incorrectAnswers ?? _incorrectAnswers,
);
  String? get category => _category;
  String? get type => _type;
  String? get difficulty => _difficulty;
  String? get question => _question;
  String? get correctAnswer => _correctAnswer;
  List<String>? get incorrectAnswers => _incorrectAnswers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = _category;
    map['type'] = _type;
    map['difficulty'] = _difficulty;
    map['question'] = _question;
    map['correct_answer'] = _correctAnswer;
    map['incorrect_answers'] = _incorrectAnswers;
    return map;
  }

}