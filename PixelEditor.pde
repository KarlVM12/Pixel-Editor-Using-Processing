Square[] squares = new Square[100];

color red = color(255, 204, 203);
color orange = color(256, 216, 177);
color yellow = color(255, 255, 210);
color green = color(144, 238, 144);
color blue = color(173, 216, 230);
color purple = color(120, 81, 169);
color black = 0;
color white = 255;
color[] colorArray = {red, orange, yellow, green, blue, purple, black, white};
ColorPalette palette;

color currentColor = black;

int squareSize = width/20; 

void setup()
{
  size(400, 400);
  squareSize = width/20;
  
  // initialize grid of squares
  for (int k = 0; k < 10; k++){
    for (int i = 0; i < 10; i++){
      squares[i+k*10] = new Square(100 + i * squareSize, 100 + k * squareSize);
    }
  }
  
  // initialize palette of colors
  palette = new ColorPalette(0, 0, colorArray.length, colorArray);
  
}
    
       
void draw()
{ 
  // checks if a different color is picked
  paletteClicked(palette);
  
  // checks if a square is picked to be colored
  squareClicked(squares);
}

// if a different color is picked, it changes the global var currentColor
void paletteClicked(ColorPalette palette)
{  
  for (int i = 0; i < palette.numOfColors; i++)
    if (mousePressed && mouseX > palette.coloredSquares[i].x && mouseX < palette.coloredSquares[i].x + squareSize && mouseY > palette.coloredSquares[i].y && mouseY < palette.coloredSquares[i].y +squareSize)
      currentColor = palette.colors[i];
      
}

// if a square is clicked it changes color
void squareClicked(Square[] squares)
{       
   for (int k = 0; k < 10; k++)
     for (int i = 0; i < 10; i++)
       if (mousePressed && mouseX > 100 + i * squareSize && mouseX < (100+squareSize) + i * squareSize && mouseY > 100 + k * squareSize && mouseY < (100+squareSize) + k * squareSize)
         squares[i+k*10] = new Square(100 + i * squareSize, 100 + k * squareSize, currentColor);
}
