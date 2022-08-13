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

public class anicolortrue extends PApplet {

 /*
   MIT License:<br>
<p>&nbsp;</p>
Copyright (c) 2021 Jan Buehring<br>
 <p>&nbsp;</p>
Permission is hereby granted, free of charge, to any person obtaining a copy<br>
of this software and associated documentation files (the "Software"), to deal<br>
in the Software without restriction, including without limitation the rights<br>
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell<br>
copies of the Software, and to permit persons to whom the Software is<br>
furnished to do so, subject to the following conditions:<br>
 <p>&nbsp;</p>
The above copyright notice and this permission notice shall be included in all<br>
copies or substantial portions of the Software.<br>
 <p>&nbsp;</p>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR<br>
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,<br>
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE<br>
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER<br>
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,<br>
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE<br>
SOFTWARE.<br>

  
<p>&nbsp;</p>   
     
     */
     
     
     
     
     
     int bildx;
String[] linesr;
String[] linesg;
String[] linesb;
String[] linesbw;
float hitn=20.0f;
int lx1=1;
int ly1=0;
int ly2=1;


int li1=0;

int done=0;

int end=0;
int big=0;

 

public void setup() { 
  



  background(255);
  
  stroke(0);
  fill(255);
  rect(0, 0, 1200, 30);

  fill(0);
  textSize(30);
  text("Frame", 90, 25);
  fill(0);
  textSize(30);
  text("Play/pause", 290, 25);


    fill(0);
  textSize(30);
  text("Folder: 0", 820, 25);
  noStroke();
  fill(255);
  rect(599, 599, 301, 201);

}

int li=0;


float    mouseovery=0; 
float mouseoverx=0;













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
int point=color(0);
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
int c = color(0, 0, 0);
int cr = color(0, 0, 0);
int cg = color(0, 0, 0);
int cb = color(0, 0, 0);
int cbw = color(0);
int bytbw=0;
int bytr=0;
int bytg=0;
int bytb=0;
int los=0;
int neu=1;


int play=0;
public void draw() {


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
    
    
  
  

  if ((mouseoverx>=290&&mouseoverx<=450)&&(mouseovery>=0&&mouseovery<=30)) {
    if   (mousePressed && (mouseButton == LEFT)) {
        play=1;
fill(0,255,0);
   rect(290,0, 70, 30);
      fill(255);
      rect(380,0, 110, 30);
   
     fill(0);
  textSize(30);
  text("Play/pause", 290, 25);

      }


    
    if (mousePressed && (mouseButton == RIGHT)) {
     play=0;
     fill(255,0,0);
      rect(380,0, 110, 30);
      
      fill(255);
   rect(290,0, 70, 30);
      
        fill(0);
  textSize(30);
  text("Play/pause", 290, 25);



     
      }
    
  }
  

  
  
  
  
    if   (mousePressed && (mouseButton == RIGHT)) {hitn=hitn+0.1f;println(hitn);}

         if   (mousePressed && (mouseButton == LEFT)) {hitn=hitn-0.1f;println(hitn);}
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;
  
  
  

  
  if (((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30))||play==1) {   

    if   (mousePressed && (mouseButton == LEFT)&&play==0) {
       fill(255);

      rect(0,30, 850, 850);
 
      if (iv<1)iv=1;    
      fill(255);
      rect(200, 0, 90, 30);      
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      
      
   
      
    }
    if   ((mousePressed && (mouseButton == RIGHT))||play==1) {

    
    delay(30);
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
    }



 
li1=0;
  ly1=0;
   lx1=1;
      
             String ggg="eol";
  String fff="eof";
   

      
      linesbw = loadStrings("list.txt");if (linesbw==null){end=1; big++;}else end=0;

 linesr = loadStrings("listr.txt");if (linesr==null){end=1; big++;}else end=0;
 linesb = loadStrings("listb.txt");if (linesb==null){end=1; big++;}else end=0;
 linesg = loadStrings("listg.txt");if (linesg==null){end=1; big++;}else end=0;

    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

      rect(0,30, 850, 850);};
lx1=1;
ly1=0;
li1=0;
while (done!=1&&end<=0){
 
  if ((linesbw.length-1)==li1) {done=1; feld=818/(ly1); }

  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {
 
  ly1++;
  
 
  lx1=0;


}


 bytbw= PApplet.parseInt (linesbw[li1]);
 bytr= PApplet.parseInt (linesr[li1]);
  bytb= PApplet.parseInt (linesb[li1]);
  bytg= PApplet.parseInt (linesg[li1]);
 
 
//fill(bytr,bytg,bytb);

int bwdot=0;
float hit1=0;
float hit2=0;
float hit3=0;
float hit11=0;
float hit22=0;
float hit33=0;

float hit=0;
hit=random(0,bytbw);

hit1=random(0,bytr);
hit2=random(0,bytg);
hit3=random(0,bytb);

if(hit1<=hitn)
hit11=0; else hit11=255;
if(hit2<=hitn)
hit22=0;else hit22=255;
if(hit3<=hitn)
hit33=0;else hit33=255;
fill(hit11,hit22,hit33);
      rect(lx1*feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);



      rect(lx1*feld-feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);




   lx1++;
  li1++;

}   
}    
      
  }  

  
} 
   
    
 





  
  public void settings() {  size(1024, 850); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "anicolortrue" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
