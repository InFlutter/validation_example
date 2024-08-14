library validtion_example;


// bosh bolmasligi kerak
String? requiredValidation({required String value,}){
  if(value == null || value.isEmpty){
    return "Bosh bullishi mumkin emas";
  }
  return null;
}
//email tekshirish
String? emailValidation({required String value,}){
  RegExp emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  if(!emailRegex.hasMatch(value)){
    return "Email formatida xato bo'ladi. example@gmail.com";
  }
  return null;
}
// password tekshirish
String? passwordValidation({required String value,}){
  if(value == null || value.isEmpty){
    return "Password bush bulishi mumkin emas'";
  }else if(!RegExp(r'[A-Z]').hasMatch(value)){
    return "Password bitta katta harf qatnashsin";
  }else if(!RegExp(r'[a-z]').hasMatch(value)){
    return "Password bitta kichik harf qatnashsin";
  }else if(!RegExp(r'[0-9]').hasMatch(value)){
    return "Password bitta raqam harf qatnashsin";
  }
  return null;
}


