class QuestionInputData {
  num? categoryId;
  QuestionInputData(this.categoryId);
  Map<String, dynamic> toJson() {
    return {
      "category": categoryId,
      'amount':10,
      "type":"multiple"
    };
  }
}

