import processing.sound.*;

String data;
char keydata = ' ';
Pulse pulse;

void setup() {
  size(600, 700);
  data = "";
  PFont font = loadFont("Monaco-15.vlw");
  textFont(font);
  pulse = new Pulse(this);
    
}

void draw() {
  fill(0);
  stroke(0);
  rect(0 , 0, width, height);
  
  fill(255);
  text(data, 50, 50);
}

void keyPressed() { 
  pulse.play();
  pulse.freq(440);
  if(key == '\u0008') {
    if(data.length() >= 1) data = data.substring(0, data.length()-1);
  } else {
    keydata = key;
    data = data + key;
  }
  delay(30);
  pulse.stop();
}