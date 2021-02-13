void drawAxisX()
{
  // acell
  noFill();
  stroke(255, 0, 0); // red
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_accel_x.length; i++)
    if (buf_accel_x[i] >= 0) vertex(i, buf_accel_x[i]);
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_accel_x.length; i++)
    buf_accel_x[i-1] = buf_accel_x[i];   

  noFill();
  stroke(0, 255, 0); // green
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_accel_y.length; i++)
    if (buf_accel_y[i] >= 0) vertex(i, buf_accel_y[i]);
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_accel_y.length; i++)
    buf_accel_y[i-1] = buf_accel_y[i];   

  noFill();
  stroke(0, 0, 255); // blue
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_accel_z.length; i++)
    if (buf_accel_z[i] >= 0) vertex(i, buf_accel_z[i]);  
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_accel_z.length; i++)
    buf_accel_z[i-1] = buf_accel_z[i];   

  // ---

  noFill();
  stroke(255, 0, 0); // red
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_gyro_x.length; i++)
    if (buf_gyro_x[i] >= 0) vertex(i, buf_gyro_x[i]);
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_gyro_x.length; i++)
    buf_gyro_x[i-1] = buf_gyro_x[i];  

  noFill();
  stroke(0, 255, 0);//green
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_gyro_y.length; i++)
    if (buf_gyro_y[i] >= 0) vertex(i, buf_gyro_y[i]);  
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_gyro_y.length; i++)
    buf_gyro_y[i-1] = buf_gyro_y[i];

  noFill();
  stroke(0, 0, 255);//blue
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_gyro_z.length; i++)
    if (buf_gyro_z[i] >= 0) vertex(i, buf_gyro_z[i]);  
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_gyro_y.length; i++)
    buf_gyro_z[i-1] = buf_gyro_z[i];

  // ---

  noFill();
  stroke(255, 0, 0); // red
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_yaw.length; i++)
    if (buf_yaw[i] >= 0) vertex(i, buf_yaw[i]);
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_yaw.length; i++)
    buf_yaw[i-1] = buf_yaw[i];  

  noFill();
  stroke(0, 255, 0);//green
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_pitch.length; i++)
    if (buf_pitch[i] >= 0) vertex(i, buf_pitch[i]);  
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_pitch.length; i++)
    buf_pitch[i-1] = buf_pitch[i];

  noFill();
  stroke(0, 0, 255);//red
  // redraw everything
  beginShape();
  for (int i = 0; i<buf_roll.length; i++)
    if (buf_roll[i] >= 0) vertex(i, buf_roll[i]);  
  endShape();
  // put all data one array back
  for (int i = 1; i<buf_roll.length; i++)
    buf_roll[i-1] = buf_roll[i];
}


//void drawAxisY() {
//  /* draw gyro y-axis */
//  noFill();
//  stroke(0,0,255); // blue
//  // redraw everything
//  beginShape();
//  for(int i = 0; i<gyroY.length;i++)
//    vertex(i,gyroY[i]);
//  endShape();
//  // put all data one array back
//  for(int i = 1; i<gyroY.length;i++)
//   gyroY[i-1] = gyroY[i];
//   
//  /* draw acceleromter y-axis */
//  noFill();
//  stroke(0,255,0); // green
//  // redraw everything
//  beginShape();
//  for(int i = 0; i<accY.length;i++)
//    vertex(i,accY[i]);
//  endShape();
//  // put all data one array back
//  for(int i = 1; i<accY.length;i++)
//    accY[i-1] = accY[i];
//   
//  /* draw complementary filter y-axis */
//  noFill();
//  stroke(255,255,0); // yellow
//  // redraw everything
//  beginShape();
//  for(int i = 0; i<compY.length;i++)
//    vertex(i,compY[i]);
//  endShape();
//  // put all data one array back
//  for(int i = 1; i<compY.length;i++)
//    compY[i-1] = compY[i];
//  
//  /* draw kalman filter y-axis */
//  noFill();
//  stroke(255,0,0); // red
//  // redraw everything
//  beginShape();
//  for(int i = 0; i<kalmanY.length;i++)
//    vertex(i,kalmanY[i]);
//  endShape();
//  //put all data one array back
//  for(int i = 1; i<kalmanY.length;i++)
//    kalmanY[i-1] = kalmanY[i];
//}    

