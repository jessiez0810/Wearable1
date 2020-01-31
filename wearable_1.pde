import apsync.*;
import processing.serial.*;
String serialPort = "COM14";
public float sensor;
AP_Sync readVals;
float Threshold=1021;
float Diameter; 
float x;
float y;

void setup(){
  background(0);
size(1920,1080);
readVals=new AP_Sync(this, serialPort, 9600);
}

void draw(){
textSize(50);
if(sensor >Threshold){
  //Diameter=map(sensor, 0, 1000, 0, 500);
//ellipse(width/2, height/2, Diameter, Diameter);
x= millis()*1920/86400;
y=300;
line(x, 1080, x, y);
stroke(120,30,230);
}
else if (sensor<Threshold)
{
 x= millis()*1920/86400;
  y=900;
line(x, 0, x, y);
stroke(255,225,0);

}
}
