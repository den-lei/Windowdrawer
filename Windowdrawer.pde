void setup() {
  size(1920, 1080);
  background(59, 110, 165);
}

void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    //draw the window
    stroke(129, 129, 129);
    fill(195, 195, 195);
    rect(mouseX - 300, mouseY, 600, 300);
    //mouse and text
    stroke(129, 129, 129);
    fill(230, 230, 230);
    rect(mouseX - 50, mouseY +70, 80, 150);
    rect(mouseX - 50, mouseY +70, 80, 50);
    rect(mouseX - 50, mouseY +70, 30, 50);
    rect(mouseX - 20, mouseY +70, 20, 50);
    fill(0);
    textSize(22);
    text("Leftclick = Draw", mouseX - 130, mouseY + 120);
    text("Rightclick = Reset", mouseX + 125, mouseY + 120);
    
    
    
    
    // Draw the gradient for the titlebar
    color startColor = color(1, 0, 129); 
    color endColor = color(16, 132, 208); 
    drawHorizontalGradientRect(mouseX - 300, mouseY, mouseX + 300, mouseY + 38, startColor, endColor);
    
    //titlebar outlines
    stroke(129, 129, 129);
    fill(195, 195, 195);
    rect(mouseX + 265, mouseY + 5, 30, 30);
    
    drawX(mouseX + 280, mouseY + 20, 10, 10);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    background(59, 110, 165);
  }
  
  if (mousePressed && (mouseButton == LEFT)) {
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(25);
    text("Windowdrawer", mouseX - 210, mouseY + 19);
  }
}

void drawHorizontalGradientRect(int x1, int y1, int x2, int y2, color c1, color c2) {
  noStroke();
  for (int i = x1; i <= x2; i++) {
    float inter = map(i, x1, x2, 0, 1);
    color c = lerpColor(c1, c2, inter);
    fill(c);
    rect(i, y1, 1, y2 - y1);
  }
}

void drawX(float x, float y, float w, float h) {
  stroke(0);
  strokeWeight(3);
  line(x - w, y - h, x + w, y + h);
  line(x - w, y + h, x + w, y - h);
}
