BufferedReader reader;
String line;
 
void setup() {
  reader = createReader("../../data/sample.txt"); 
}
 
void draw() {
  try {
    line = reader.readLine();
  }
  catch (IOException e) {
    line = null;
  }
 
  if(line == null) {
    noLoop();
    exit();
  }
  else {
    println("debug:" + line);
    String[] str = split(line, ',');
    if (str.length==2) {
      int x = int(str[0]);
      int y = int(str[1]);
      println(x + " " + y);
    }
  }
}
 
