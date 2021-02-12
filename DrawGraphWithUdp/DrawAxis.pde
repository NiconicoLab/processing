void drawAxisX() {
    
  noFill();
  stroke(0, 100, 255); // blue
  // redraw everything
  beginShape();
  for (int i = 0; i < buf.length; i ++)
    if(buf[i] >= 0) vertex(i, buf[i]);
  endShape();
  // put all data one array back
  for (int i = 1; i < buf.length; i ++)
    buf[i-1] = buf[i];   
}
