import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Smily_Helper_V_1_8_2 extends PApplet {

     int bildx;


PrintWriter outputr;
PrintWriter outputg;
PrintWriter outputb;
PrintWriter outputbw;
   IntList inventory;
int ex=0;
int ey=0;

float blueValue=0;
float greenValue=0;
float redValue=0;
 int ij=0;
public void setup() { 
  
    outputg = createWriter("work/listg.txt"); 
outputb = createWriter("work/listb.txt"); 
outputr = createWriter("work/listr.txt"); 
outputbw = createWriter("work/list.txt"); 


  background(255);
  
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



int xi=0;
  int yi=0;
float    mouseovery=0; 
float mouseoverx=0;
int seeCountC=0;

int seeN=0;
int seeC=0;

int x=-1;
int y=0;

int xr=0;
int yr=0;

int xg=0;
int yg=0;

int xb=0;
int yb=0;

//int cx=0;
//int cy=0;
//int x2=0;
//int y2=0;
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




int seebw= color(0);




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
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
int  seeX=0; 
int tag=color(0);
int z=0;
int eof=0;
int eol=0;
int vox=0;
int voy=0;
int feld=1;
int num=30;
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
int point=color(0);
int rc=0;
int gc=0;
int bc=0;
int rcb=0;
int gcb=0;
int bcb=0;
int scb=0;
int num1=30;
int iv=1;
int sc=0;
int qc=0;
PImage bild;
PImage bildr;
PImage bildg;
PImage bildb;
PImage bildbw;
int ordner=0;
int c = color(0, 0, 0);
int cr = color(0, 0, 0);
int cg = color(0, 0, 0);
int cb = color(0, 0, 0);
int cbw = color(0);

int getty=0;

public void draw() {

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
    if   (mousePressed && (mouseButton == LEFT)) {
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


    
    if (mousePressed && (mouseButton == RIGHT)) {
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
    if   (mousePressed && (mouseButton == LEFT)) {
      num++;
      dom=1;  
      sumlx=0;
      if (num>100)num=100;
      sumly=0; 
      num1=num;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
      num--;
      dom=1;  
      sumlx=0;
      if (num<2)num=1;
      sumly=0;
      num1=num;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  

  if (dom==1||getty==0) {
    dom=0;
    fill(200);
    rect(0, 30, 600, 600);
    feld=600/(num+1);
getty=1;
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
    if   (mousePressed && (mouseButton == RIGHT)) {
      gety= (int)mouseovery; 
      getx=(int)mouseoverx ;  
      sumlx=floor(getx/feld);
      sumly=floor(gety/feld);
      println("x"+sumlx);
      println("y"+sumly);
      point = get((int)mouseoverx, (int)mouseovery);
      pop=1;
      cr = color(point);
      float redValue = red(cr);  // Get red in 'c'
      float blueValue = blue(cr);  // Get red in 'c'
      float greenValue = green(cr);  // Get red in 'c'
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
    if   (mousePressed && (mouseButton == LEFT)) {    
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
    if   (mousePressed && (mouseButton == LEFT)) {
      rc++;delay(100);if(rc>255)rc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
      rc--;delay(100);if(rc<0)rc=0;
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
   if   (mousePressed && (mouseButton == LEFT)) {
      gc++;if(gc>255)gc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
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
   if   (mousePressed && (mouseButton == LEFT)) {
      bc++;if(bc>255)bc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
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
    if   (mousePressed && (mouseButton == LEFT)) {
      rc++;
      gc++;
      bc++;
      if (rc>255)rc=255;
      if (gc>255)gc=255;
      if (bc>255)bc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)) {

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

    if   (mousePressed && (mouseButton == LEFT)) {
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      bild = loadImage("work/bild.png");
      if (bild != null) {
        image(bild, 601, 631);
        image(bild, 0, 30, feld*(num1+1), feld*(num1+1));
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
        image(bildr, 601, 31);
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
        image(bildg, 801, 31);
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
        image(bildb, 601, 231);
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
        image(bildbw, 801, 231);
        //  image(bild,0,30, 600, 600);
        // saveFrame("bild.png");

        ex=bildbw.width;
        ey=bildbw.height;
        num=ex;
        dom=0;
      }
    }       



    if (mousePressed && (mouseButton == RIGHT)) {

      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);

      delay(30);

      bild= get(601, 631, num1+1, num1+1);
      if (bild != null) {




        if (iv>=0&&iv<=9)
          bild.save("work"+ordner+"/SavesMovie/Movie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bild.save("work"+ordner+"/SavesMovie/Movie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bild.save("work"+ordner+"/SavesMovie/Movie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bild.save("work"+ordner+"/SavesMovie/Movie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bild.save("work"+ordner+"/SavesMovie/Movie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bild.save("work"+ordner+"/SavesMovie/Movie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bild.save("work"+ordner+"/SavesMovie/Movie"+iv+".png");
        bild.save("work/bild.png");
      
    


  // while(ij!=1){
   


  while (yi<num+1) { 
      if (xi<=num)
      {
        fill(255);
        stroke(0);
        
    
         
     
      point = get(601+xi, 631+yi);
     
      cr = color(point);
      float redValue = red(cr);  // Get red in 'c'
      float blueValue = blue(cr);  // Get red in 'c'
      float greenValue = green(cr);  // Get red in 'c'
      
      rc=(int)redValue;
      gc=(int)greenValue;
      bc=(int)blueValue;
      
     int grayValue = ((rc+bc+gc)/3);
  
 
outputr.println(redValue);
outputg.println(greenValue);
outputb.println(blueValue);
outputbw.println(grayValue);
     
        
        xi++;
        
                  

  
      } else {
      
         outputr.println("eol"); 
         outputg.println("eol");
         outputb.println("eol"); 
         outputbw.println("eol");
         if(yi>=ey){
           outputr.println("eof");  
        ij=1;
        if(yi==num){
  outputg.println("eof");  outputb.println("eof");  outputbw.println("eof");  
        
    outputr.flush();  // Writes the remaining data to the file
  outputr.close();
      outputg.flush();  // Writes the remaining data to the file
  outputg.close();
      outputb.flush();  // Writes the remaining data to the file
  outputb.close();
        outputbw.flush();  // Writes the remaining data to the file
 outputbw.close();
 
 
 
 
 
 
 
 
              } }xi=0;
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


        if (iv>=0&&iv<=9)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildr.save("work"+ordner+"/rSavesMovie/rMovie"+iv+".png");


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


        if (iv>=0&&iv<=9)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildg.save("work"+ordner+"/gSavesMovie/gMovie"+iv+".png");

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


        if (iv>=0&&iv<=9)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildb.save("work"+ordner+"/bSavesMovie/bMovie"+iv+".png");

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


        if (iv>=0&&iv<=9)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildbw.save("work"+ordner+"/bwSavesMovie/bwMovie"+iv+".png");

        bildbw.save("work/bildbw.png");
      }

      iv++;
    }
  }

  
  if ((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30)) {   

    if   (mousePressed && (mouseButton == LEFT)) {
      iv++;   
      fill(255);
      rect(200, 0, 90, 30);      
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      
      
   
      
    }
    if   (mousePressed && (mouseButton == RIGHT)) {
      iv--;
      if (iv<0)iv=0; 
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
    }


    //   bild = loadImage("work"+ordner+"/SavesMovie/Movie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bild = loadImage("work"+ordner+"/SavesMovie/Movie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bild = loadImage("work"+ordner+"/SavesMovie/Movie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bild = loadImage("work"+ordner+"/SavesMovie/Movie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bild = loadImage("work"+ordner+"/SavesMovie/Movie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bild = loadImage("work"+ordner+"/SavesMovie/Movie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bild = loadImage("work"+ordner+"/SavesMovie/rovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bild = loadImage("work"+ordner+"/SavesMovie/Movie"+iv+".png");

//if (bild == null) { iv--; if (iv<0)iv=0;}

    if (bild != null) {
      image(bild, 601, 631, num1+1, num1+1);
      image(bild, 0, 30, feld*(num1+1), feld*(num1+1));
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
      if (iv<0)iv=0;
    };


    bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/rMovie"+iv+".png");



    if (bildr != null) {
      image(bildr, 601, 31, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("work"+ordner+"/bild.png");

      ex=bildr.width;
      ey=bildr.height;
      num=ex;
      dom=0;
    } else {
    //  iv-- ;
      if (iv<0)iv=0;
    };


    bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/gMovie"+iv+".png");



    if (bildg != null) {
      image(bildg, 801, 31, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("work"+ordner+"/bild.png");

      ex=bildg.width;
      ey=bildg.height;
      num=ex;
      dom=0;
    } else {
    //  iv-- ;
      if (iv<0)iv=0;
    };

    // bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/bMovie"+iv+".png");



    if (bildb != null) {
      image(bildb, 601, 231, num1+1, num1+1);
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
      if (iv<0)iv=0;
    };


    bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/bwMovie"+iv+".png");



    if (bildbw != null) {
      image(bildbw, 801, 231, num1+1, num1+1);
      //image(bild,0,30, 600, 800);
      // saveFrame("work"+ordner+"/bild.png");

      ex=bildbw.width;
      ey=bildbw.height;
      num=ex;
      dom=0;
    } else {
   ///   iv-- ;
      if (iv<0)iv=0;
    };
  }

  if ((mousePressed && mouseoverx>=400&&mouseoverx<=570)&&(mouseovery>=0&&mouseovery<=30)) {   
    stroke(0);
    if   (mousePressed && (mouseButton == LEFT)) {
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





    if   (mousePressed && (mouseButton == RIGHT)) {
      noStroke();
      fill(rc, gc, bc);    
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
}     
  public void settings() {  size(1024, 850); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Smily_Helper_V_1_8_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
