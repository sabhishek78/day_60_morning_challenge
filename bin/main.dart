 String removeFirstAndLast(String input){
   var token=input[0];
   int i=0;
   int count=0;

   while( i<input.length && input[i]==token ){
     count++;
     i++;
   }
  if(count==input.length){
     return "";
   }
   input=input.substring(count,input.length);
   i=input.length-1;
   count=0;
   while(input[i]==token && i>0){
     count++;
     i--;
   }
   input=input.substring(0,input.length-count);
   return input;
 }
int countLayers(List<String> inputList){

  int layerCount=0;
  while(inputList.length>0 ){
    for(int i=0;i<inputList.length;i++){
      inputList[i]=removeFirstAndLast(inputList[i]);
    }
    for(int i=0;i<inputList.length;i++){
      if(inputList[i].isEmpty){
        inputList.removeAt(i);
      }
    }
    layerCount++;
   // print(inputList);
  }

  return layerCount;
}
void main() {
// print(removeFirstAndLast("ABBA"));
//  print(removeFirstAndLast("AA"));
 // print(removeFirstAndLast("ABBABBBAAAA"));
  print(countLayers([ "AAAA","ABBA", "AAAA"]));
 print(countLayers([ "AAAAAAAAA","ABBBBBBBA", "ABBAAABBA","ABBBBBBBA","AAAAAAAAA"]));
 print(countLayers(["AAAAAAAAAAA","AABBBBBBBAA", "AABCCCCCBAA","AABCAAACBAA","AABCADACBAA",
    "AABCAAACBAA","AABCCCCCBAA", "AABBBBBBBAA",]));
}
