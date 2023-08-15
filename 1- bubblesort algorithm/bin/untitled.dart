import 'package:untitled/untitled.dart' as untitled;

void main(List<String> arguments) {
  List <int> numbers = [9, 5, 6, 5, 3, 7, 3, 6, 2, 7, 3, 7, 9, 2, 0];

  int temp;
  for(int i =0; i<numbers.length-1; i++){
    for(int j = 0; j<numbers.length-i-1; j++){
      if(numbers[j] > numbers[j+1]){
        temp = numbers[j+1];
        numbers[j+1] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  print(numbers);


}
