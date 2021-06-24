

import 'dart:io';

void main()async{
  print("marcy");  
  HttpServer.bind('192.169.60.122',8000).then((HttpServer socket){
    socket.listen((HttpRequest request){
      WebSocketTransformer.upgrade(request).then((WebSocket client){
        print("conectou");
        });
    });
    });
}
