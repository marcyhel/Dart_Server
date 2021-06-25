

import 'dart:io';

void main()async{
  print("marcy");  
  HttpServer.bind('localhost',5600).then((HttpServer socket){
    socket.listen((HttpRequest request){
      WebSocketTransformer.upgrade(request).then((WebSocket client){
        print("conectou ${client}");
      });
    });
  });
}
