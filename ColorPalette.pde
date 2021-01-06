class ColorPalette
{
  
  Square[] coloredSquares;
  color[] colors;
  int numOfColors;
  int xStart, yStart;
  
  ColorPalette(int xStart_, int yStart_, int numOfColors_, color[] colors_)
  {
    this.xStart = xStart_;
    this.yStart = yStart_;
    this.numOfColors = numOfColors_;
    this.colors = colors_;
    
    this.coloredSquares = new Square[this.numOfColors];
    
    for (int i = 0; i < this.numOfColors; i++)
      this.coloredSquares[i] = new Square(this.xStart, this.yStart + i * squareSize, this.colors[i]);
    
  }
  
  void setPaletteColors(color[] colors_)
  {
    this.colors = colors_;
    
    for (int i = 0; i < this.numOfColors; i++)
      this.coloredSquares[i] = new Square(this.xStart, this.yStart + i * squareSize, this.colors[i]);
  }
  
  color getColorAt(int index)
  {
    return this.colors[index];
  }
  
}
