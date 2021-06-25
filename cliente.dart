
import 'dart:io';



void main()async {
  WebSocket socket;
  bool open = false;
  socket =await WebSocket.connect('ws://localhost:5600');
  
  socket.listen((_) => open = true);
}

void socketMessage( event){
  print('I recived: ${event.data}');
}

