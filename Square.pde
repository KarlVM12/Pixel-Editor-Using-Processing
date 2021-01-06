class Square
{
  color sColor = white;
  int x, y;
  int sideLength = squareSize;
  
  Square(int x_, int y_)
  {
    fill(sColor);
    this.x = x_;
    this.y = y_;
    
    drawSquare();
  }
  
  Square(int x_, int y_, int color_)
  {
    fill(color_);
    this.x = x_;
    this.y = y_;
    
    drawSquare();
  }
  
  void drawSquare()
  {
    rect(this.x, this.y, sideLength, sideLength);
  }

}
