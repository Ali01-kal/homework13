class AppValidator {
  static String? emailValidate(String? value){
    if(value == null || value!.trim().isEmpty){
      return "Данное поле пустое";

    }

    if(!value.contains("@")){
      return "Данное поле содержать символ '@'";
    }

    return null;
  }
  static String? passwordValidate(String? value){
    if(value == null || value!.trim().isEmpty){
      return "Данное поле пустое";

    }

    if(value.length < 6){
      return "Минимум 6 символов";
    }

    return null;
  }
}
