/*
MIT License

Copyright (c) 2022 Jan Bühring

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


*/

void setup() {
  size(1920, 1080);

  
      
      }
  


float    mouseovery=0; 
float mouseoverx=0;
color seeCountC=0;

color seeN=0;
color seeC=0;
int x=1;
int y=0;
int cx=0;
int cy=0;
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
color  seeX=0;        
int z=0;
int i=0;
int eof=0;
int eol=0;
int vox=0;
int voy=0;
void draw() {

  noStroke();
   
  
  
  

  
  mouseovery = mouseY;
  mouseoverx = mouseX;
         
/*
      PImage bild;
        bild = loadImage("bild.png");
       if (bild != null) {
          image(bild, 0, 0);
         // saveFrame("bild.png");
          */
     
    String ggg="eol";
  String fff="eof";
   
    
      String[] linesr = loadStrings("listr.txt");
String[] linesg = loadStrings("listg.txt");
String[] linesb = loadStrings("listb.txt");


println("there are " + linesr.length + " lines");
while (fff.equals(linesr[i]) != true ) {


println("tog"+x);
// Tests to see if 'str1' is equal to 'str2'
if (ggg.equals(linesr[i]) == true ) {
vox=x-1;
  y++;
  x=0;
println("got"+y);

voy++;
}

i++;
if (fff.equals(linesr[i]) == true ) {
println("end");//saveFrame("bild.png");
PImage bild;
        bild = get(0, 0, vox, voy);
       if (bild != null) {
         
         // saveFrame("bild.png");


  bild.save("bild.png");

exit();


}

}
//String(data, offset, length):
int bytr = int(linesr[i]);
int bytg= int(linesg[i]);
int bytb= int(linesb[i]);
fill(bytr,bytg,bytb);
rect(x,y,1,1);
x++;

}

}
