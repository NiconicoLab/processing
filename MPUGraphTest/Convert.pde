//convert all axis

void convert()
{   
  buf_accel_x[buf_accel_x.length-1] = map(accel_x, 2000, -2000, 0, height/3);
  buf_accel_y[buf_accel_y.length-1] = map(accel_y, 2000, -2000, 0, height/3);
  buf_accel_z[buf_accel_z.length-1] = map(accel_z, 2000, -2000, 0, height/3);

  buf_gyro_x[buf_gyro_x.length-1] = map(gyro_x, 500, -500, height/3, height/3*2);
  buf_gyro_y[buf_gyro_y.length-1] = map(gyro_y, 500, -500, height/3, height/3*2);
  buf_gyro_z[buf_gyro_z.length-1] = map(gyro_z, 500, -500, height/3, height/3*2);

  buf_yaw[buf_yaw.length-1] = map(yaw, 180, -180, height/3*2, height);
  buf_pitch[buf_pitch.length-1] = map(pitch, 180, -180, height/3*2, height);
  buf_roll[buf_roll.length-1] = map(roll, 180, -180, height/3*2, height);
}
