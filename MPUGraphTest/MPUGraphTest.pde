import processing.serial.*; 

Serial myPort;    // The serial port
String inString;  // Input string from serial port

float[] buf_accel_x = new float[600];
float[] buf_accel_y = new float[600];
float[] buf_accel_z = new float[600];

float[] buf_gyro_x = new float[600];
float[] buf_gyro_y = new float[600];
float[] buf_gyro_z = new float[600];

float[] buf_yaw = new float[600];
float[] buf_pitch = new float[600];
float[] buf_roll = new float[600];

float accel_x = 0;
float accel_y = 0;
float accel_z = 0;

float gyro_x = 0;
float gyro_y = 0;
float gyro_z = 0;

float yaw = 0;
float pitch = 0;
float roll = 0;

void setup() {  
  size(600, 400);

  println(Serial.list()); 
  myPort = new Serial(this, "/dev/tty.usbmodem1421", 38400); 
  //myPort = new Serial(this, "/dev/tty.usbserial-DA013PKB", 38400); 
  //myPort = new Serial(this, Serial.list()[9], 38400);
  myPort.bufferUntil('\r'); 

  for (int i=0;i<600;i++) { // center all variables    
    buf_accel_x[i] = -1;
    buf_accel_y[i] = -1;
    buf_accel_z[i] = -1;

    buf_gyro_x[i] = -1;
    buf_gyro_y[i] = -1;
    buf_gyro_z[i] = -1;

    buf_yaw[i] = -1;
    buf_pitch[i] = -1;
    buf_roll[i] = -1;

  }
  
  frameRate(30);
}

void draw()
{ 
  // Draw graphPaper
  background(255); // white
  
  strokeWeight(1);
  for (int i = 0 ;i<=width/10;i++) {      
    stroke(200); // gray
    line((-frameCount%10)+i*10, 0, (-frameCount%10)+i*10, height);
    line(0, i*10, width, i*10);
  }

  stroke(0); // black
  for (int i = 1; i <= 2; i++)
    line(0, height/3*i, width, height/3*i);

  convert();
  strokeWeight(3);
  drawAxisX();
  
  fill(50);
  text("accel", 10, 20);

  fill(50);
  text("gyro", 10, 20+height/3);

  fill(50);
  text("yaw/pitch/roll", 10, 20+height/3*2);

}

void serialEvent(Serial p) { 
  inString = p.readString(); 
  //println(inString);
  
  String[] q = splitTokens(inString, " ,");

  switch(int(q[0]))
  {  
    case 19: //motion
      // accel
      accel_x = float(q[1]);
      accel_y = float(q[2]);
      println("accel_x = " + float(q[1]) + "\t" + "accel_y = " + float(q[2]));
      break;
   }
} 
