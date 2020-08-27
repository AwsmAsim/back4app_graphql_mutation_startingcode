import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'consonents.dart';
import 'app_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(
      uri: 'https://parseapi.back4app.com/graphql',
      headers: {
        'X-Parse-Application-Id' : kParseApplicationId,
        'X-Parse-Client-Key' : kParseClientKey,
        'X-Parse-Master-Key': kParseMasterKey,
        //'X-Parse-REST-API-Key' : kParseRestApiKey,
      },//getheaders()
    );

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
        link: httpLink,
      ),
    );

    return MaterialApp(
      home: GraphQLProvider(
          child: MyHomePage(),
        client: client,
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyApp app;
  String name;
  String saveFormat;
  String objectId;
  String delete='''
  
  ''';

  String addData='''
  
  ''';
  String update='''
  
  ''';
  String statement="""
  
  """;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Parsing data using GraphQL',
          ),
        ),
        body: null,
    ),);
  }
}
