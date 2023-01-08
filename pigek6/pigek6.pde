/*
5
*/
/*
output = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/pigek5/pigek5.pde");
outputtxt = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/pigek5/list/list.txt");
output = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/pigek6/pigek6.pde");
outputtxt = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/pigek6/list/list.txt");
*/


PrintWriter output;
PrintWriter outputtxt;
void setup() {
output = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/pigek5/pigek5.pde");
outputtxt = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/pigek5/list/list.txt");

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

  background(255);
  size(1024, 850);
  stroke(0);
  fill(255);
  rect(0, 0, 1200, 30);
  fill(0);
  textSize(30);
  text("Datei", 0, 25);
  fill(0);
  textSize(30);
  text("Frame", 90, 25);
  fill(0);
  textSize(30);
  text("Pixel", 300, 25);
  fill(0);
  textSize(30);
  text("ClearFrame", 400, 25);
  fill(0);
  textSize(30);
  text("Size: +/-", 650, 25);
    fill(0);
  textSize(30);
  text("Folder: 0", 820, 25);
  noStroke();
  fill(255);
  rect(599, 599, 301, 201);
  stroke(0);
  fill(255);
  rect(599, 29, 201, 201);
  fill(255);
  rect(599, 229, 201, 201);
  fill(255);
  rect(799, 229, 201, 201);
  fill(255);
  rect(799, 29, 201, 201);
  fill(255);
  rect(599, 629, 201, 201);
}
  int bildx;
String[] linesr;
String[] linesg;
String[] linesb;
String[] linesbw;
String[] linesr1;
String[] linesg1;
String[] linesb1;
String[] linesbw1;
int lx1=1;
int ly1=0;
int li1=0;
int gone=0;
int done=0;
PrintWriter outputr;
PrintWriter outputg;
PrintWriter outputb;
PrintWriter outputbw;
int end=0;

PrintWriter outputbr;
PrintWriter outputbg;
PrintWriter outputbb;
PrintWriter outputbbw;

   IntList inventory;
int ex=0;
int ey=0;
int big=0;
int play=0;
/*
float blueValue=0;
float greenValue=0;
float redValue=0;
*/
 int grayValue =0;
 int ij=0;

 int ly=0;
 int lx=0;
 int lm=0;
int runde=1;




int lpx=153; int lpy=270; int lpx2=329; int lpy2=444; 



int li=0;
int runs=4;
int px=0;
int py=0;
int px2=0;
int py2=0;




int x0=0;



//x



int y0=0;


//y






int x20=0;



//x2




int y20=0;



//y2


 int  xkarte=0;
  int    ykarte=0;


int got=-1;
int put=0;
int it1=255;
int it2=255;
int it3=255;
int li2=0;

int xi=0;
  int yi=0;
float    mouseovery=0; 
float mouseoverx=0;
color seeCountC=0;

color seeN=0;
color seeC=0;

int x=-1;
int y=0;

int xr=0;
int yr=0;

int xg=0;
int yg=0;

int xb=0;
int yb=0;
  float redValue = 0;  // Get red in 'c'
      float blueValue = 0;  // Get red in 'c'
      float greenValue = 0;
//int cx=0;
//int cy=0;
//int x2n=0;
//int x2n=0;
//int seeCountNum=0;   
//int drawnum=0;
int seeCountNumr=0;   
int drawnumr=0;
int seeCountNumb=0;   
int drawnumb=0;
int seeCountNumg=0;   
int drawnumg=0;

//color  seeX=0;        
//int z=0;
int seer=0;
int seeg=0;
int seeb=0;

//int eof=0;
//int eol=0;




color seebw= color(0);




//color cr=color(0, 0, 0);
//float    mouseovery=0; 
//float mouseoverx=0;
//color seeCountC=0;
//color seeN=0;
//color seeC=0;
//int x=2;
//int y=0;
int cx=0;
int cy=0;
int x2n=0;
int y2n=0;
int seeCountNum=0;   
int drawnum=0;
color  seeX=0; 
color tag=color(0);
int z=0;
int eof=0;
int eol=0;
int vox=0;
int voy=0;
int feld=1;
int num=0;
int sum=0;
int sumg=0;
int sumlx=0;
int sumly=0;
int sumlxg=0;
int sumlyg=0;
int getx=0;
int gety=0;
int dom=0;
int pop=0;
color point=color(0);
int rc=0;
int gc=0;
int bc=0;
int rcb=0;
int gcb=0;
int bcb=0;
int scb=0;
int num1=0;
int iv=1;
int sc=0;
int qc=0;
PImage bild;
PImage bildr;
PImage bildg;
PImage bildb;
PImage bildbw;
int ordner=0;
color c = color(0, 0, 0);
color cr = color(0, 0, 0);
color cg = color(0, 0, 0);
color cb = color(0, 0, 0);
color cbw = color(0);
int bytbw=0;
int bytr=0;
int bytg=0;
int bytb=0;
int los=0;
int neu=1;



void draw(){
 mouseoverx=(int)mouseX;
mouseovery=(int)mouseY;
  noStroke();

//s;
   if (los==0){
    outputbg = createWriter("work/listg.txt"); 
outputbb = createWriter("work/listb.txt"); 
outputbr = createWriter("work/listr.txt"); 
outputbbw = createWriter("work/list.txt"); 
los=1;  
}
  noStroke();
  if (scb<=254) {
    scb++;
    fill(scb);
    rect(scb, 800, 255-scb, 25);
    sc=128;
  }
  if (rcb<=254) {
    rcb++;
    fill(rcb, 0, 0);
    rect(rcb, 680, 255-rcb, 25);
  }
  if (gcb<=254) {
    gcb++;
    fill(0, gcb, 0);
    rect(gcb, 710, 255-gcb, 25);
  }
  if (bcb<=254) {
    bcb++;
    fill(0, 0, bcb);
    rect(bcb, 740, 255-bcb, 25);
  }
  if (scb<=254) {

    fill(rcb, gcb, bcb);
    rect(scb, 770, 255-scb, 25);
  }

  mouseovery = mouseY;
  mouseoverx = mouseX;

  if ((mouseoverx>=920&&mouseoverx<=970)&&(mouseovery>=0&&mouseovery<=30)) {
    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
         ordner++;
         
         noStroke();
           fill(255);
   rect(920,1,70,28);
  
    if (ordner>20)ordner=20;    fill(0);
   
   //if (bild == null) { iv--; if (iv<0)iv=0;}
    delay(150);
      
      textSize(30);
  text("Folder: "+ordner, 820, 25);

  
      }


    
    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
     {
      ordner--;
          fill(255);
   rect(920,1,70,28);
      
      if (ordner<0)ordner=0;}

     // if (bild == null) { iv--; if (iv<0)iv=0;}
      delay(150);
  fill(0);
      textSize(30);
  text("Folder: "+ordner, 820, 25);
  
  
      }
      }
    
    
  
  
  
    if ((mouseoverx>=730&&mouseoverx<=780)&&(mouseovery>=0&&mouseovery<=30)) {
    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      num++;
      dom=1;  
      sumlx=0;
      if (num>100)num=100;delay(50);
      sumly=0; 
      num1=num;
    }
    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      num--;
      dom=1;  
      sumlx=0;
      if (num<2)num=1;delay(50);
      sumly=0;
      num1=num;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  

  if (dom==1) {
    dom=0;
    fill(200);
    rect(0, 30, 600, 600);
    feld=600/(num+1);

    while (sumly<num+1) { 
      if (sumlx<=num)
      {
        fill(255);
        stroke(0);
        rect(feld*sumlx, 30+feld*sumly, feld, feld);
        sumg++; 
        sumlx++;
      } else {
        sumlx=0;
        sumly++;
      }
    }
  }

  if ((mouseoverx>=0&&mouseoverx<=feld*(num1+1)-1)&&(mouseovery>=30&&mouseovery<=feld*(num1+1)+30-1)) {
    if   (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      gety= (int)mouseovery; 
      getx=(int)mouseoverx ;  
      sumlx=floor(getx/feld);
      sumly=floor(gety/feld);
      println("x"+sumlx);
      println("y"+sumly);
      point = get((int)mouseoverx, (int)mouseovery);
      pop=1;
      cr = color(point);
       redValue = red(cr);  // Get red in 'c'
       blueValue = blue(cr);  // Get red in 'c'
       greenValue = green(cr);  // Get red in 'c'
      rc=(int)redValue;
      gc=(int)greenValue;
      bc=(int)blueValue;
      fill(rc, gc, bc);
      rect(0, 770, 255, 25); 
      fill(200);
      rect(260, 680, 70, 30); 
      fill(255);
      rect(0, 676, 255, 4);
      noStroke();
      fill(0);
      rect(rc, 676, 1, 4);
      noStroke();
      fill(0);
      textSize(25);
      text(rc, 260, 700);
      fill(200);
      rect(260, 710, 70, 30); 
      fill(255);
      rect(0, 706, 255, 4);
      noStroke();
      fill(0);
      rect(gc, 706, 1, 4);
      noStroke();
      fill(0);
      textSize(25);
      text(gc, 260, 730);
      fill(200);
      rect(260, 740, 70, 30); 
      fill(255);
      rect(0, 736, 255, 4);
      noStroke();
      fill(0);
      rect(bc, 736, 1, 4);
      noStroke();
      fill(0);
      textSize(25);
      text(bc, 260, 760);
    }
    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {   
      
      los=1;
      gety= (int)mouseovery-30; 
      getx=(int)mouseoverx ;  
      sumlx=floor(getx/feld);
      sumly=floor(gety/feld);
   //   println("x"+sumlx);
 //     println("y"+sumly);
      //    point = get(sumlx*feld+1,sumly*feld+1);
      pop=1;
      fill(rc, gc, bc);
      rect(sumlx*feld, sumly*feld+30, feld, feld);
      fill(rc, gc, bc);
      rect(sumlx+601, sumly+631, 1, 1);
      fill(rc, 0, 0);
      rect(sumlx+601, sumly+31, 1, 1);
      fill(0, gc, 0);
      rect(sumlx+801, sumly+31, 1, 1);
      fill(0, 0, bc);
      rect(sumlx+601, sumly+231, 1, 1);
      qc=(rc+gc+bc)/3;
      fill(qc);
      rect(sumlx+801, sumly+231, 1, 1);
    
  }
  } 

  if ((mouseoverx>=0&&mouseoverx<=255)&&(mouseovery>=680&&mouseovery<=710)) {
    if (mousePressed) { 
      rc=(int)mouseoverx ;  
      fill(rc, gc, bc);
      rect(0, 770, 255, 25); 
      fill(200);
      rect(260, 680, 70, 30); 
      fill(255);
      rect(0, 676, 255, 4);
      noStroke();
      fill(0);
      rect(rc, 676, 1, 4);
      noStroke();
      fill(0);
      textSize(25);
      text(rc, 260, 700);
    }
  }

  if ((mouseoverx>=0&&mouseoverx<=255)&&(mouseovery>=710&&mouseovery<=740)) {   
    if (mousePressed) { 
      gc=(int)mouseoverx ;  
      fill(rc, gc, bc);
      rect(0, 770, 255, 25); 
      fill(200);
      rect(260, 710, 70, 30); 
      fill(255);
      rect(0, 706, 255, 4);
      noStroke();
      fill(0);
      rect(gc, 706, 1, 4);
      noStroke();
      fill(0);
      textSize(25);
      text(gc, 260, 730);
    }
  }
  if ((mouseoverx>=0&&mouseoverx<=255)&&(mouseovery>=740&&mouseovery<=800)) {   
    if (mousePressed) { 
      bc=(int)mouseoverx ;  
      fill(rc, gc, bc);
      rect(0, 770, 255, 25); 
      fill(200);
      rect(260, 740, 70, 30); 
      fill(255);
      rect(0, 736, 255, 4);
      noStroke();
      fill(0);
      rect(bc, 736, 1, 4);
      noStroke();
      fill(0);
      textSize(25);
      text(bc, 260, 760);
    }
  }

  if ((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=680&&mouseovery<=710)) {
    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      rc++;if(rc>255)rc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      rc--;if(rc<0)rc=0;
    } 

    fill(rc, gc, bc);
    rect(0, 770, 255, 25); 
    fill(200);
    rect(260, 680, 70, 30); 
    fill(255);
    rect(0, 676, 255, 4);
    noStroke();
    fill(0);
    rect(rc, 676, 1, 4);
    noStroke();
    fill(0);
    textSize(25);
    text(rc, 260, 700);
  }

  if ((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=710&&mouseovery<=740)) {   
   if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      gc++;if(gc>255)gc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      gc--;if(gc<0)gc=0;
    }           
    fill(rc, gc, bc);
    rect(0, 770, 255, 25); 
    fill(200);
    rect(260, 710, 70, 30); 
    fill(255);
    rect(0, 706, 255, 4);
    noStroke();
    fill(0);
    rect(gc, 706, 1, 4);
    noStroke();
    fill(0);
    textSize(25);
    text(gc, 260, 730);
  }

  if ((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=740&&mouseovery<=770)) {   
   if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      bc++;if(bc>255)bc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      bc--;if(bc<0)bc=0;
    }  
    fill(rc, gc, bc);
    rect(0, 770, 255, 25); 
    fill(200);
    rect(260, 740, 70, 30); 
    fill(255);
    rect(0, 736, 255, 4);
    noStroke();
    fill(0);
    rect(bc, 736, 1, 4);
    noStroke();
    fill(0);
    textSize(25);
    text(bc, 260, 760);
  }
  if ((mouseoverx>=260&&mouseoverx<=300)&&(mouseovery>=800&&mouseovery<=830)) {   
    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      rc++;
      gc++;
      bc++;
      if (rc>255)rc=255;
      if (gc>255)gc=255;
      if (bc>255)bc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {

      rc--;
      gc--;
      bc--; 
      if (rc<1)rc=0;
      if (gc<1)gc=0;
      if (bc<1)bc=0;
    }  



    fill(rc, gc, bc);
    rect(0, 770, 255, 25); 

    fill(200);
    rect(260, 740, 70, 30); 

    fill(255);
    rect(0, 736, 255, 4);


    noStroke();
    fill(0);
    rect(bc, 736, 1, 4);


    noStroke();
    fill(0);
    textSize(25);
    text(bc, 260, 760);
    fill(200);
    rect(260, 710, 70, 30); 

    fill(255);
    rect(0, 706, 255, 4);


    noStroke();
    fill(0);
    rect(gc, 706, 1, 4);


    noStroke();
    fill(0);
    textSize(25);
    text(gc, 260, 730);

    fill(200);
    rect(260, 680, 70, 30); 

    fill(255);
    rect(0, 676, 255, 4);


    noStroke();
    fill(0);
    rect(rc, 676, 1, 4);


    noStroke();
    fill(0);
    textSize(25);
    text(rc, 260, 700);


    fill(0);
    textSize(25);
    text(sc, 260, 790);
  }






  fill(200);
  rect(260, 770, 200, 30);
  fill(0);
  textSize(25);
  text(+rc+" "+gc+" "+bc+" ", 260, 790);
  sc=floor((rc+gc+bc)/3);  
  fill(sc);
  rect(0, 800, 255, 25); 

  fill(200);
  rect(260, 800, 70, 30); 
  fill(0);
  textSize(25);
  text(sc, 260, 820);

  if ((mouseoverx>=0&&mouseoverx<=70)&&(mouseovery>=0&&mouseovery<=30)) {   

    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      
     neu=0;
    los=1;
     
li2=0;
  ly=0;
   lx=1;
      
             String ggg="eol";
  String fff="eof";
   

     
      String[] linesbr = loadStrings("work/listr.txt");
String[] linesbg = loadStrings("work/listg.txt");
String[] linesbb = loadStrings("work/listb.txt");
String[] linesbbw = loadStrings("work/list.txt");
if (linesbbw.length>=1){
println("there are " + linesbbw.length + " lines");
lx=1;
ly=0;
li2=0;
while (gone!=1){
 
  if ((linesbbw.length-1)==li2) {gone=1;}
  
  else  {
  
if (ggg.equals(linesbbw[li2]) == true ) {

  ly++;
  lx=0;


}


 bytr = int(linesbr[li2]);
 bytg = int(linesbg[li2]);
 bytb = int(linesbb[li2]);
 bytbw= int (linesbbw[li2]);

fill(bytr,bytg,bytb);



rect(lx+600,ly+630,1,1);

fill(bytr,bytg,bytb);

      rect(lx*feld-feld, ly*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);



 println("yess");
   lx++;
  li2++;

}   
}    

      
      
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
     bild = loadImage("work/bild.png");
      if (bild != null) {
      //  image(bild, 601, 631);
       // image(bild, 0, 30, feld*(num1+1), feld*(num1+1));
        // saveFrame("bild.png");

        ex=bild.width;
        ey=bild.height;
        num=ex;
        dom=0;
      }


      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      bildr = loadImage("work/bildr.png");
      if (bildr != null) {
        // image(bildr, 601, 31);
        //  image(bild,0,30, 600, 600);
        // saveFrame("bild.png");

        ex=bildr.width;
        ey=bildr.height;
        num=ex;
        dom=0;
      }


      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      bildg = loadImage("work/bildg.png");
      if (bildg != null) {
        // image(bildg, 801, 31);
        //  image(bild,0,30, 600, 600);
        // saveFrame("bild.png");

        ex=bildg.width;
        ey=bildg.height;
        num=ex;
        dom=0;
      }


      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      bildb = loadImage("work/bildb.png");
      if (bildb != null) {
        // image(bildb, 601, 231);
        //  image(bild,0,30, 600, 600);
        // saveFrame("bild.png");

        ex=bildb.width;
        ey=bildb.height;
        num=ex;
        dom=0;
      }


      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      bildbw = loadImage("work/bildbw.png");
      if (bildbw != null) {
        // image(bildbw, 801, 231);
        //  image(bild,0,30, 600, 600);
        // saveFrame("bild.png");

        ex=bildbw.width;
        ey=bildbw.height;
        num=ex;
        dom=0;
      }
      
    }       
 
    }

    if (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
  if (neu==0){
    outputbg = createWriter("work/listg.txt"); 
outputbb = createWriter("work/listb.txt"); 
outputbr = createWriter("work/listr.txt"); 
outputbbw = createWriter("work/list.txt"); 
neu=1;  xi=0;yi=0;li2=0;lx=0;ly=0; iv++;  end++;
}
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);

      delay(30);

      bild= get(601, 631, num1+1, num1+1);
      
      
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      

      
      if (bild != null) {


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        if (iv>=1&&iv<=9)
          bild.save("/work"+ordner+"/SavesMovie/Movie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bild.save("/work"+ordner+"/SavesMovie/Movie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bild.save("/work"+ordner+"/SavesMovie/Movie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bild.save("/work"+ordner+"/SavesMovie/Movie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bild.save("/work"+ordner+"/SavesMovie/Movie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bild.save("/work"+ordner+"/SavesMovie/Movie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bild.save("/work"+ordner+"/SavesMovie/Movie"+iv+".png");
        bild.save("/work/bild.png");
      
    //----------------------------------------------------------------------------------------------------------
     
      if (iv>=1&&iv<=9)
         outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie000000"+iv+".txt");

        if (iv>=10&&iv<=99)
          outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
         outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
            outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
          outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
        outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie"+iv+".txt");
       
          
          if (iv>=1&&iv<=9)
               outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie000000"+iv+".txt");
        if (iv>=10&&iv<=99)
          outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
        outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
            outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
          outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
        outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie"+iv+".txt");
   
          
          if (iv>=1&&iv<=9)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie000000"+iv+".txt");
        if (iv>=10&&iv<=99)
        outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
         outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie"+iv+".txt");
  
      
          if (iv>=1&&iv<=9)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie000000"+iv+".txt");
        if (iv>=10&&iv<=99)
        outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
         outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie"+iv+".txt");
   
  // while(ij!=1){


  while (yi<num+1) { 
      if (xi<=num)
      {
        fill(255);
        stroke(0);
        
    
         
     
      point = get(1+xi*feld+feld/3, 31+yi*feld+feld/3);
     
      cr = color(point);
       redValue = red(cr);  // Get red in 'c'
       blueValue = blue(cr);  // Get red in 'c'
       greenValue = green(cr);  // Get red in 'c'
      
      rc=(int)redValue;
      gc=(int)greenValue;
      bc=(int)blueValue;
      
      grayValue = ((rc+bc+gc)/3);
  
 
outputr.println(redValue);
outputg.println(greenValue);
outputb.println(blueValue);
outputbw.println(grayValue);
    outputbr.println(redValue);
outputbg.println(greenValue);
outputbb.println(blueValue);
outputbbw.println(grayValue); 
        
        xi++;
        
                  

  
      } else {
      
         outputr.println("eol"); outputg.println("eol");outputb.println("eol"); outputbw.println("eol");   
         outputbr.println("eol"); outputbg.println("eol");outputbb.println("eol"); outputbbw.println("eol");   
         
         
       
        if(yi==num){
  outputg.println("eof");  outputb.println("eof");  outputbw.println("eof"); outputr.println("eof");  
        outputr.println("eof"); 
    outputr.flush();  // Writes the remaining data to the file
  outputr.close();
      outputg.flush();  // Writes the remaining data to the file
  outputg.close();
      outputb.flush();  // Writes the remaining data to the file
  outputb.close();
        outputbw.flush();  // Writes the remaining data to the file
 outputbw.close();
 
   outputbg.println("eof");  outputbb.println("eof");  outputbbw.println("eof"); outputbr.println("eof");  
        outputr.println("eof"); 
    outputbr.flush();  // Writes the remaining data to the file
  outputbr.close();
      outputbg.flush();  // Writes the remaining data to the file
  outputbg.close();
      outputbb.flush();  // Writes the remaining data to the file
  outputbb.close();
        outputbw.flush();  // Writes the remaining data to the file
 outputbbw.close();
 

 
 neu=0;
 
 
 
 
               }xi=0;
        yi++;
  }  
      }
   
  


       
       
       
       

       
   
  
   





}




      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);

      delay(30);

      bildr= get(601, 31, num1+1, num1+1);
      if (bildr != null) {

        // saveFrame("bild.png");


        if (iv>=1&&iv<=9)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildr.save("/work"+ordner+"/rSavesMovie/rMovie"+iv+".png");


        bildr.save("work/bildr.png");
      }
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);

      delay(30);

      bildg= get(801, 31, num1+1, num1+1);
      if (bildg != null) {

        // saveFrame("work"+ordner+"/bild.png");


        if (iv>=1&&iv<=9)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildg.save("/work"+ordner+"/gSavesMovie/gMovie"+iv+".png");

        bildg.save("work/bildg.png");
      }
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);

      delay(30);

      bildb= get(601, 231, num1+1, num1+1);
      if (bildb != null) {

        // saveFrame("work"+ordner+"/bild.png");


        if (iv>=1&&iv<=9)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildb.save("/work"+ordner+"/bSavesMovie/bMovie"+iv+".png");

        bildb.save("work/bildb.png");
      }

      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);

      delay(30);

      bildbw= get(801, 231, num1+1, num1+1);
      if (bildbw != null) {

        // saveFrame("work"+ordner+"/bild.png");


        if (iv>=1&&iv<=9)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/bwMovie"+iv+".png");

        bildbw.save("work/bildbw.png");
      }

     
    }
  }

  
  if ((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30)) {   

    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      iv--;
        delay(50);
      if (iv<1)iv=1;    
      fill(255);
      rect(200, 0, 90, 30);      
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      
      
   
      
    }
    if   (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      iv++;
        delay(50);
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
    }


    //   bild = loadImage("work"+ordner+"/SavesMovie/Movie000000"+iv+".png");
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
   
    //  int gone=0;
li1=0;
  ly1=0;
   lx1=1;
      
             String ggg="eol";
  String fff="eof";
   
   

        if (iv>=1&&iv<=9)

           {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie000000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=10&&iv<=99)
           {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie00000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
       {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie0000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie00"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie0"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/rMovie"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
      
      
            if (iv>=1&&iv<=9)
    {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie000000"+iv+".txt");if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=10&&iv<=99)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie00000"+iv+".txt");if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie0000"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie000"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
   {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie00"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie0"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/gMovie"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
      
      
      
            if (iv>=1&&iv<=9)
        {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie000000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
            if (iv>=10&&iv<=99)
        {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie00000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
          {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie0000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
     {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
          {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie00"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
      {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie0"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
     {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/bMovie"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
      
      
      
          if (iv>=1&&iv<=9)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie000000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
   if (iv>=10&&iv<=99)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie00000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
                   {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie0000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie000"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie00"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie0"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/bwMovie"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}

    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

      rect(0,30, 850, 850);};
lx1=1;
ly1=0;
li1=0;
while (done!=1&&end<=0){
  if ((linesbw.length-1)==li1) {done=1; }
  
  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {

  ly1++;
  lx1=0;


}


 bytr = int(linesr[li1]);
 bytg = int(linesg[li1]);
 bytb = int(linesb[li1]);
 bytbw= int (linesbw[li1]);

fill(bytr,bytg,bytb);



rect(lx+600,ly+630,1,1);

fill(bytr,bytg,bytb);

      rect(lx1*feld-feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);



 println("yess");
   lx1++;
  li1++;

}   
}    
      
        
    
    
    
    
    
    if (iv>=1&&iv<=9)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bild = loadImage("/work"+ordner+"/SavesMovie/Movie"+iv+".png");

//if (bild == null) { iv--; if (iv<0)iv=0;}

    if (bild != null) {
      // image(bild, 601, 631, num1+1, num1+1);
     // image(bild, 0, 30, feld*(num1+1), feld*(num1+1));
      // saveFrame("work"+ordner+"/bild.png");

      ex=bild.width;
      ey=bild.height;
      num=ex;
      dom=0;

   
      
   
  noStroke();
   
   fill(255,255,0);
   rect(x,y,1,1);
   
       
         
       
      }
      
     else {  noStroke();
      fill(255);   
      rect(0, 30, feld*(num1+1), feld*(num1+1));
      fill(255);  
      rect(600, 30, num1+1, num1+1); 
      fill(255); 
      rect(800, 30, num1+1, num1+1);
      fill(255);  
      rect(600, 230, num1+1, num1+1);
      fill(255);  
      rect(800, 230, num1+1, num1+1); 
      fill(255);  
      rect(600, 630, num1+1, num1+1);
     // iv-- ;
      if (iv<1)iv=1;
    };


   // bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/rMovie"+iv+".png");



    if (bildr != null) {
      // image(bildr, 601, 31, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("/work"+ordner+"/bild.png");

      ex=bildr.width;
      ey=bildr.height;
      num=ex;
      dom=0;
    } else {
    //  iv-- ;
      if (iv<1)iv=1;
    };


  //  bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/gMovie"+iv+".png");



    if (bildg != null) {
      // image(bildg, 801, 31, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("work"+ordner+"/bild.png");

      ex=bildg.width;
      ey=bildg.height;
      num=ex;
      dom=0;
    } else {
    //  iv-- ;
      if (iv<1)iv=1;
    };

    // bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/bMovie"+iv+".png");



    if (bildb != null) {
      // image(bildb, 601, 231, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("work"+ordner+"/bild.png");

      ex=bildb.width;
      ey=bildb.height;
      num=ex;
      dom=0;
    } else {  noStroke();
      fill(255);   
      rect(0, 30, feld*(num1+1), feld*(num1+1));
      fill(255);  
      rect(600, 30, num1+1, num1+1); 
      fill(255); 
      rect(800, 30, num1+1, num1+1);
      fill(255);  
      rect(600, 230, num1+1, num1+1);
      fill(255);  
      rect(800, 230, num1+1, num1+1); 
      fill(255);  
      rect(600, 630, num1+1, num1+1);
    //  iv-- ;
      if (iv<1)iv=1;
    };


  //  bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/bwMovie"+iv+".png");



    if (bildbw != null) {
      // image(bildbw, 801, 231, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("work"+ordner+"/bild.png");

      ex=bildbw.width;
      ey=bildbw.height;
      num=ex;
      dom=0;
    } else {
   ///   iv-- ;
      if (iv<1)iv=1;
    };
  }

  if ((mousePressed && mouseoverx>=400&&mouseoverx<=570)&&(mouseovery>=0&&mouseovery<=30)) {   
    stroke(0);
    if   (mousePressed && (mouseButton == LEFT)&&keyPressed == false) {
      noStroke();
      fill(255);   
      rect(0, 30, feld*(num1+1)+1, feld*(num1+1)+1);
      fill(255);  
      rect(600, 30, num1+1+1, num1+1+1); 
      fill(255); 
      rect(800, 30, num1+1+1, num1+1+1);
      fill(255);  
      rect(600, 230, num1+1+1, num1+1+1);
      fill(255);  
      rect(800, 230, num1+1+1, num1+1+1); 
      fill(255);  
      rect(600, 630, num1+1+1, num1+1+1);
    }





    if   (mousePressed && (mouseButton == RIGHT)&&keyPressed == false) {
      noStroke();
      fill(rc, gc, bc); 
      it1=rc;
      it2=gc;
      it3=bc;
      rect(0, 30, feld*(num1+1)+1, feld*(num1+1)+1);
      fill(rc, 0, 0);  
      rect(600, 30, num1+1+1, num1+1+1); 
      fill(0, gc, 0);  
      rect(800, 30, num1+1+1, num1+1+1);
      fill(0, 0, bc);  
      rect(600, 230, num1+1+1, num1+1+1);
      qc=(rc+gc+bc)/3; 
      fill(qc); 
      rect(800, 230, num1+1+1, num1+1+1); 
      fill(rc, gc, bc);
      rect(600, 630, num1+1+1, num1+1+1);
    }
  }
  
   stroke(0);
  fill(255);
  rect(0, 0, 1200, 30);
  fill(0);
  textSize(30);
  text("Datei", 0, 25);
  fill(0);
  textSize(30);
  text("Frame", 90, 25);
  fill(0);
  textSize(30);
  text("Pixel", 300, 25);
  fill(0);
  textSize(30);
  text("ClearFrame", 400, 25);
  fill(0);
  textSize(30);
  text("Size: +/-", 650, 25);
    fill(0);
  textSize(30);
  text("Folder: 0", 820, 25);
  noStroke();
  fill(255);
  rect(599, 599, 301, 201);
  stroke(0);
  fill(255);
  rect(599, 29, 201, 201);
  fill(255);
  rect(599, 229, 201, 201);
  fill(255);
  rect(799, 229, 201, 201);
  fill(255);
  rect(799, 29, 201, 201);
  fill(255);
  rect(599, 629, 201, 201);
 
 
     if (keyPressed&&mouseButton == RIGHT) {
    if (key == 'c' ) {

 rc=(int)random(0,255);
 bc=(int)random(0,255);
 gc=(int)random(0,255);

     


}

}

 
 if(got==-1){
  
    
 rc=(int)random(0,255);
 bc=(int)random(0,255);
 gc=(int)random(0,255);







//z
got=0;
   }

if(got==0){



//p




    
    
    
    got=1;
   text("check "+runde,10,10);
  }


  if (mousePressed && (mouseButton == LEFT)&&got==1&&keyPressed == true){
  px=(int)mouseX;
  py=(int)mouseY;
  
  
  got=2;
  }
  
    
    if (keyPressed&&mouseButton == LEFT) {
    if (key == 'm' ) {



 xkarte= (int)mouseX-x0+xkarte;
  ykarte= (int)mouseY-y0+ykarte;
 
 


}
   
  
    
  }
  
  
    if (keyPressed&&mouseButton == RIGHT) {
    if (key == 'm' ) {


 xkarte= (int)mouseX-x0+xkarte;
  ykarte= (int)mouseY-y0+ykarte;

     




}
   
  
    
  }
  noStroke();

//trewq

//qwert


//p


//q
 if (mousePressed != (mouseButton == LEFT)&&got==2&&keyPressed == true&&key != 'm'){
 px2=(int)mouseX;
  py2=(int)mouseY;


  
  if(px2<px&&py2<py){
   fill(100);
 rect( px2,py2,abs(px-px2),abs(py-py2));got=3; 
lpx2=px2;lpy2=py2;lpx=abs(px-px2);lpy=abs(py-py2);

}else
  
     if(px2<px&&py2>py){
   fill(100);
  rect( px2,py,abs(px-px2),abs(py2-py));got=3;
  lpx2=px2;lpy2=py;lpx=abs(px-px2);lpy=abs(py2-py);
}else
   
   if(px2>px&&py2<py){
   fill(100);
  rect( px,py2,abs(px2-px),abs(py-py2));got=3;
lpx2=px;lpy2=py2;lpx=abs(px2-px);lpy=abs(py-py2);
}else

if(px2>px&&py2>py){
{
  fill(100);
  rect( px,py,abs(px2-px),abs(py2-py));got=3;
lpx2=px;lpy2=py;lpx=abs(px2-px);lpy=abs(py2-py);

  }
  
 got=3; 
  
}}
if(got==3){

  
  fill(100);
  text("check "+runde,10,10);
 // got=0;
 
 String[] lines = loadStrings("list/list.txt");
  String ggg="//eof";
 String xxx="4";
 String bbb="//x";
  String ccc="//y";
   String ddd="//x2";
  String eee="//y2";
  String aaa="//z";
 String yyy="//qwert";
  String zzz="//trewq";
  String ppp="//p";
 String qqq="//q";
  String sss="//s";
  String nnn="//n";
   mouseoverx=(int)mouseX;
mouseovery=(int)mouseY;
if (xxx.equals(lines[li]) == true&&li==1 ){outputtxt.println(5);output.println(5);runs=4;li++;}
if (aaa.equals(lines[li]) == true ){outputtxt.println("runde++;");output.println("runde++;");}

if (bbb.equals(lines[li]) == true ){outputtxt.println("int x"+runde+"=" +lpx2 +";");output.println("int x"+runde+"=" +lpx2 +";");}
if (ccc.equals(lines[li]) == true ){outputtxt.println("int y"+runde+"=" +lpy2 +";");output.println("int y"+runde+"=" +lpy2 +";");}
if (ddd.equals(lines[li]) == true ){outputtxt.println("int x2"+runde+"=" +lpx +";");output.println("int x2"+runde+"=" +lpx +";");}
if (eee.equals(lines[li]) == true ){outputtxt.println("int y2"+runde+"=" +lpy +";");output.println("int y2"+runde+"=" +lpy +";");}
if (xxx.equals(lines[li]) == false&&li==1 ){outputtxt.println(4);output.println(4);runs=5;li++;}
if (sss.equals(lines[li]) == true){outputtxt.println("int num="+num+";");output.println("int num="+num+";");li++;}
if (yyy.equals(lines[li]) == true ){
  String[]  mex = loadStrings("http://jan-buehring.de/counter.txt");
  String[]  mexf = loadStrings("http://jan-buehring.de/counterx.txt");



  
  output.println( "fill(255);rect(x"+runde+",y"+runde+",x2"+runde+",y2"+runde+");y"+runde+"=y"+runde+"+(int)random(-"+runde+"-"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2),"+runde+"+"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2));x"+runde+"=x"+runde+"+(int)random(-"+runde+"-"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2),"+runde+"+"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2));fill("+rc+","+bc+","+gc+");rect(x"+runde+",y"+runde+",x2"+runde+",y2"+runde+");//counter: "+mex[0]+"counterx: "+mexf[0]);

  //1"fill(rc, gc, bc);rect(x"+runde+",y"+runde+",x2"+runde+","+"y2"+runde+");//"+runde);
outputtxt.println( "fill(255);rect(x"+runde+",y"+runde+",x2"+runde+",y2"+runde+");y"+runde+"=y"+runde+"+(int)random(-"+runde+"-"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2),"+runde+"+"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2));x"+runde+"=x"+runde+"+(int)random(-"+runde+"-"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2),"+runde+"+"+runde+"/(float)(((y"+runde+"-mouseovery+y2"+runde+"/2)+(x"+runde+"-mouseoverx+x2"+runde+"/2))/2));fill("+rc+","+bc+","+gc+");rect(x"+runde+",y"+runde+",x2"+runde+",y2"+runde+");//counter: "+mex[0]+"counterx: "+mexf[0]);}

if ((zzz.equals(lines[li]) == true)&&(  (key == 'l' )&&key != 'm' )){
outputtxt.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");  if   (mousePressed && (mouseButton == LEFT)&&keyPressed == true) {fill(rc, gc, bc);rect(x"+runde+",y"+runde+",x2"+runde+",y2"+runde+");}}"+"//"+runde);
output.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+"); if   (mousePressed && (mouseButton == LEFT)&&keyPressed == true) {fill(rc, gc, bc);rect(x"+runde+",y"+runde+",x2"+runde+",y2"+runde+");}}"+"//"+runde);}
if ((zzz.equals(lines[li]) == true)&&(  (key == 'r' )&&key != 'm' )){
outputtxt.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");  if   (mousePressed && (mouseButton == RIGHT)&&keyPressed == true) {fill(rc, gc, bc);rect(x"+runde+"=" +lpx2 +",y"+runde+"="+lpy2+",x2"+runde+"="+lpx+",y2"+runde+"="+lpy+");}}"+"//"+runde);
output.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+"); if   (mousePressed && (mouseButton == RIGHT)&&keyPressed == true) {fill(rc, gc, bc);rect(x"+runde+"=" +lpx2 +",y"+runde+"="+lpy2+",x2"+runde+"="+lpx+",y2"+runde+"="+lpy+");}}"+"//"+runde);}


if ((ppp.equals(lines[li]) == true)&&(  (key == 'p' )&&key != 'm' )){
outputtxt.println("fill(rc, gc, bc);rect(x0=" +lpx2 +"+xkarte,y0="+lpy2+"+ykarte,x20="+lpx+",y20="+lpy+");"+"//"+runde);
output.println("fill(rc, gc, bc);rect(x0=" +lpx2 +"+xkarte,y0="+lpy2+"+ykarte,x20="+lpx+",y20="+lpy+");"+"//"+runde);
}
  
    




if ((qqq.equals(lines[li]) == true)&&(  (key == 'p'&&key != 'm' ) )){
outputtxt.println("fill(255);rect(x0=" +lpx2 +"+xkarte,y0="+lpy2+"+ykarte,x20="+lpx+",y20="+lpy+");"+"//"+runde);
output.println("fill(255);rect(x0=" +lpx2 +"+xkarte,y0="+lpy2+"+ykarte,x20="+lpx+",y20="+lpy+");"+"//"+runde);
}

//if (yyy.equals(lines[li]) == true&&li==20  ){outputtxt.println("1");output.println("1");;li++; }
 
if (mousePressed&& (mouseButton == RIGHT&&keyPressed == true)&&ggg.equals(lines[li+1]) == true&&key != 'm' ){  
output.println(lines[li]);outputtxt.println(lines[li]);
output.println(lines[li+1]);outputtxt.println(lines[li+1]);
 
        output.flush();  // Writes the remaining data to the file
 output.close();
 
        outputtxt.flush();  // Writes the remaining data to the file
 outputtxt.close();
 exit();
}
      
fill(0);

if (ggg.equals(lines[li]) == false ) {
if(runs==4&&li==14){output.println(lines[li-10]);outputtxt.println(lines[li-10]);li++;}else
if(runs==5&&li==14){output.println(lines[li-8]);outputtxt.println(lines[li-8]);li++;}else
if(runs==4&&li==15){outputtxt.println(lines[li-10]);output.println(lines[li-10]);li++;}else
if(runs==5&&li==15){outputtxt.println(lines[li-8]);output.println(lines[li-8]);li++;}else 
{output.println(lines[li]);outputtxt.println(lines[li]);li++;}}
else { 


output.println(lines[li]);outputtxt.println(lines[li]);
 
        output.flush();  // Writes the remaining data to the file
 output.close();
 
        outputtxt.flush();  // Writes the remaining data to the file
 outputtxt.close();

li=0; delay(100);fill(255);
rect(0,0,1000,1000);
 if (runs==4){runde++; launch("C:/Users/Jan Bühring/Desktop/processing-3.5.4/start6.bat");delay(200);
 exit();}
 else {runde++; launch("C:/Users/Jan Bühring/Desktop/processing-3.5.4/start5.bat");delay(200);
 exit();




}}}}
//eof
