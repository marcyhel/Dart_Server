import 'dart:io';

void main()async{
	WebSocket.connect('ws.//192.169.60.122:8000').then((WebSocket sock){
		var socket =sock;
		socket.listen((item) {
    		WebSocket.send("hello world");
    	});
	});
}