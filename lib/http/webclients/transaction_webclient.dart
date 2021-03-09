import 'dart:convert';

import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';
import 'package:bytebank/http/webclient.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response =
        await client.get(urlBase).timeout(Duration(seconds: 15));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction> save(Transaction transaction, String password) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response = await client.post(urlBase,
        headers: {
          'Content-Type': 'application/json',
          'password': password,
        },
        body: transactionJson);

    if(response.statusCode == 400){
      throw Exception('sem valor');
    }

    if(response.statusCode == 401){
      throw Exception('senha invalida');
    }

    return Transaction.fromJson(jsonDecode(response.body));
  }
}
