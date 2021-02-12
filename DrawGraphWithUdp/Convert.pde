//convert all axis
int minAngle = 0;
int maxAngle = 360;

void convert()
{   
  buf[buf.length-1] = map(value, -1, 1, height/3, height/3*2);
}
