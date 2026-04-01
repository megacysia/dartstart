import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}





// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:command_runner/command_runner.dart';

// void main(List<String> arguments) async {
//   if (arguments.isEmpty || arguments.first == 'help') {
//     printUsage();
//   } else if (arguments.first == 'version') {
//     print('Dartpedia CLI version $version');
//   } else if (arguments.first == 'wikipedia') {
//     final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
//     searchWikipedia(inputArgs);
//   } else {
//     printUsage();
//   }
// }

// void searchWikipedia(List<String>? arguments) async {
//   final String articleTitle;
//   if (arguments == null || arguments.isEmpty) {
//     print('Please provide an article title.');
//     final inputFromStdin = stdin.readLineSync();
//     if (inputFromStdin == null || inputFromStdin.isEmpty) {
//       print('No article title provided. Exiting.');
//       return;
//     }
//     articleTitle = inputFromStdin;
//   } else {
//     articleTitle = arguments.join(' ');
//   }

//   print('Looking up articles about "$articleTitle". Please wait.');

//   // Call the API and await the result
//   var articleContent = await getWikipediaArticle(articleTitle);
//   print(articleContent); // Print the full article response (raw JSON for now)
// }

// void printUsage() { // Add this new function
//   print(
//     "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
//   );
// }

// Future<String> getWikipediaArticle(String articleTitle) async {
//   final url = Uri.https(
//     'en.wikipedia.org',
//     '/api/rest_v1/page/summary/$articleTitle',
//   );
//   final response = await http.get(url); // Make the HTTP request

//   if (response.statusCode == 200) {
//     return response.body; // Return the response body if successful
//   }

//   // Return an error message if the request failed
//   return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
// }

