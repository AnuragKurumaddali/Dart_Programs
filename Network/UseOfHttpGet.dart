import 'package:http/http.dart' as http; //For Http Package we have to create pubspec.yaml file and add the dependency http
import 'dart:convert';//for Using Json decode

void main() {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users');//https://jsonplaceholder.typicode.com/users ---> Fake response for getting response from any server

  //usingAsyncGetValues(url); //When using "async" and "await" everything waits for the Future/Promises expression to complete the execution.
  usingThenGetValues(url); // When using "Then" the next statements doesn't wait for the Future/Promises expression to complete the next statements are executed in parallel/ in some cases even before the result retrieved from the Then expression

}

void usingAsyncGetValues(var url) async{
  final res = await http.get(url);
  print(jsonDecode(res.body));
}

void usingThenGetValues(var url){
  http.get(url).then((value) => {
      print(jsonDecode(value.body))
  });
}
