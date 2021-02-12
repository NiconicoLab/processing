import hypermedia.net.*;
UDP udp;
final int port = 12345; // Constant, cannot be modified

final int header = 10; // header value
String inString;

float[] buf = new float[600];

float value;

void setup() {
  size(600, 400);
  udp = new UDP(this, port);
  udp.listen(true);
  for (int i=0;i<600;i++) { // center all variables    
    buf[i] = -1;
  }
  
  frameRate(30);
}
 
void draw() {
  // Draw graphPaper
  background(255); // white
  
  strokeWeight(1);
  for (int i = 0 ;i<=width/10;i++) {      
    stroke(200); // gray
    line((-frameCount%10)+i*10, 0, (-frameCount%10)+i*10, height);
    line(0, i*10, width, i*10);
  }

  stroke(0); // black
  line(0, height, width, height);

  convert();
  strokeWeight(3);
  drawAxisX();
  
  fill(50);
}

void receive(byte[] data) {
  inString =  new String(data);
  // println("rcv:" + inString); // sentence via udp
  String[] q = splitTokens(inString, " ");

  switch(int(q[0])) {
    case header: // header check
      value = float(q[1]);
      break;
    default:
      break;
  }  
}
