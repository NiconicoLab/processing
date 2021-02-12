import hypermedia.net.*;
UDP udp;
final String IP = "localhost";

final int port = 12345; // constant, cannot be modified

final String header = "10 "; // header value
String msg = "test_messege";   // transfer buffer
int num;

void setup() {
  size(600, 400);
  udp = new UDP( this, 10 ); // up to 10byte
  num = 0;
}

void draw() {
  background(200);
  UDP_Msg();
  delay(10); // 10ms
}

void UDP_Msg(){
  float value = sin(num*PI/180);
  msg = header + str(value);
  // println("snd:" + msg);
  udp.send(msg, IP, port); // send message
  if(num == 359) {
    num = 0;
  }
  else {
    num++;
  }
}
