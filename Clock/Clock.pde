PrintWriter output;

int init_ms = 0;

// time[0]:year,   time[1]:month,  time[2]:day, time[3]:hour, 
// time[4]:minute, time[5]:second, time[6]:ms
int[] time = new int[7];
int[] temp = new int[2];

void setup() {
  size(600, 400);
 
  set_ms();

  String filename = str(year()) + "_"  + (nf(month(),2)) 
                    + (nf(day(),2)) + "_"  + (nf(hour(),2)) 
                    + (nf(minute(),2)) + "_" + (nf(second(),2)) 
                    + ".csv";
  output = createWriter(filename);
  output.flush();

  frameRate(30);
}

void draw() {
  background(255);
  
  get_time();
  
  println(str(time[0]) + "," + (nf(time[1],2)) + (nf(time[2],2)) + ","  
          + (nf(time[3],2)) + ":" + (nf(time[4],2)) + ":"  
          + (nf(time[5],2)) + "." + (nf(time[6],3)));
            
  output.println(str(time[0]) + "," + (nf(time[1],2)) + (nf(time[2],2)) + ","  
                 + (nf(time[3],2)) + ":" + (nf(time[4],2)) + ":"  
                 + (nf(time[5],2)) + "." + (nf(time[6],3)));
  output.flush();
  
  fill(50);
  textSize(25);
  text((nf(time[3],2)) + ":" + (nf(time[4],2)) + ":" 
        + (nf(time[5],2)) + "." + (nf(time[6],3)), 0, 20);
}

void set_ms() {
  int init_sec = second();
  //println(init_sec);
  boolean clock = true;
  while(clock) {
    if(init_sec != second()) {
      //println(second());
      init_ms = millis() % 1000;
      clock = false;
    }
  }
  
  temp[0] = second();
  temp[1] = millis() % 1000 - init_ms;
  if(temp[1] < 0)
    temp[1] += 1000;
}

void get_time() {
  time[0] = year();
  time[1] = month();
  time[2] = day();
  time[3] = hour();
  time[4] = minute();
  time[5] = second();
  time[6] = millis() % 1000 - init_ms;
  if(time[6] < 0)
    time[6] += 1000;
  if(((time[5] > temp[0]) || (time[5] == 0 && temp[0] == 59)) && (time[6] > temp[1])) {
    if(time[5] == 0) time[5] = 59;
    else             time[5]--;
  println("debug");
  }
  temp[0] = time[5];
  temp[1] = time[6];
}
