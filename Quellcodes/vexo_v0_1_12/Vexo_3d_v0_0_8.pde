/*
  MIT License
Copyright (c) 2021 Jan Bühring
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
import processing.net.*; 

Client myClient01; 


Server myServer01;

Client myClient0r; 


Server myServer0r;

Client myClient0g; 


Server myServer0g;

Client myClient0b; 


Server myServer0b;


Client myClient0x; 


Server myServer0x;

Client myClient0y; 


Server myServer0y;

        Table table;
IntList tag1;
IntList home1;
IntList home2;
IntList home3;

 float hitn=20;
     
   

     
 

     
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

int end=0;

PrintWriter outputbr;
PrintWriter outputbg;
PrintWriter outputbb;
PrintWriter outputbbw;


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
 
 
 
 
 
 
void setup() { 
  
 myServer01 = new Server(this, 5201);
 
  
      myClient01= new Client(this, "127.0.0.1", 5207); 

 myServer0r = new Server(this, 5307);
 
  
      myClient0r= new Client(this, "127.0.0.1", 5301); 

 myServer0g = new Server(this, 5302);
 
  
      myClient0g= new Client(this, "127.0.0.1", 5308); 

 myServer0b = new Server(this, 5303);
 
  
      myClient0b= new Client(this, "127.0.0.1", 5309); 
 myServer0x = new Server(this, 5317);
 
  
      myClient0x= new Client(this, "127.0.0.1", 5311); 

 myServer0y = new Server(this, 5327);
 
  
      myClient0y= new Client(this, "127.0.0.1", 5321); 







 tag1 = new IntList();
  home1 = new IntList();
  home2= new IntList();
   home3= new IntList();
  // webImg = loadImage("http://www.Rechenkraft.net/wiki/images/7/7f/RKNev.png");
    table = new Table();
  

  table.addColumn("page0", Table.INT);
   
                   table.addColumn("page1", Table.STRING);
         table.addColumn("page2", Table.STRING);
         
         
   table.addRow();
  table.addRow();
   table.addRow();
     table.addRow();
     table.addRow();

  background(255);
  size(1600, 1000, P3D);
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
  
    fill(0);
  textSize(30);
  text("Level: 0", 1020, 25);
  
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
 

    fill(255);
  rect(599, 529, 201, 101);

  fill(255);
  rect(799, 429, 201, 101);
    fill(255);
  rect(799, 529, 201, 101);
 
    
    fill(255);
  rect(599, 429, 201, 101);
    fill(0);
  textSize(30);
  text("PNG Modus", 610, 501);
  
  fill(255);
  rect(799, 429, 200, 100);
    fill(0);
  textSize(30);
  
  text("Play", 810, 501);  
  
  fill(255);
  rect(799, 629, 200, 100);
    fill(0);
  textSize(30);
  
  text("gray>1b bw", 810, 601);  
    
  fill(255);
  rect(799, 729, 200, 100);
    fill(0);
  textSize(30);
  
  text("gray>1b rgb", 810, 701); 


fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text("rgb>1b rgb", 610, 601); 



}

int ci=0;
int di=0;
int karte=1;
int feldx=12;  //3,4,5,6       
int xkarte=0;
int ykarte=0;
int zkarte=0;
int mapfeld=1;

int mapaim4=0;
int stone1=0;
int stone2=0;
int food3=0;

int act=0;
int food4=0;
int speeds1=0;
int speeds2=0;
int speeds3=1;
int stone3=0;
int maphead=0;
int beta=0;
int qxkarte=5;
int qykarte=5;
int qzkarte=5;
int axkarte=2;
int aykarte=2;
int azkarte=2;
int bxkarte=2;
int bykarte=2;
int bzkarte=2;
int mapaim3=0;
int look=0;
int here=0;
int once=0;
int aim=0;
int up=0;
int down=0;
int left=0;
float right=0;

int load=0;
int save=0;
int ini=0;
int rg=0;
int cre=0;
int chan=0;
int typ1=0;
int typ2=0;
int typ3=0;
int aimp=0;








int li=0;


float    mouseovery=0; 
float mouseoverx=0;













//int cx=0;
//int cy=0;
//int x2=0;
//int y2=0;
//int seeCountNum=0;   
//int drawnum=0;


//color  seeX=0;        
//int z=0;

//int eof=0;
//int eol=0;



int bytbw1=0;
int bytr1=0;
int bytg1=0;
int bytb1=0;
int bytbw=0;
int bytr=0;
int bytg=0;
int bytb=0;
int los=0;
int neu=1;








int xi=0;
  int yi=0;

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
int x2=0;
int y2=0;
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
color point=color(0);
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
color c = color(0, 0, 0);
color cr = color(0, 0, 0);
color cg = color(0, 0, 0);
color cb = color(0, 0, 0);
color cbw = color(0);
int app=2;
int getty=0;
int level=0;
int giv=150;
int dot=2;
int rri=0;
int rgi=0;
int rbi=0;
void draw() {
  
mouseovery = mouseY;
  mouseoverx = mouseX;






myServer0r.write(rc);
myServer0b.write(bc);
myServer0g.write(gc);










if   (mousePressed && (mouseButton == LEFT)){




myServer0x.write(mouseX/3);
myServer0y.write(mouseY/3);



myServer01.write(1);


}else{myServer01.write(0);mouseovery = mouseY;
  mouseoverx = mouseX;}








 if (myClient01.available() >= 1) { 
      dot=myClient01.read();
 }
   if (myClient0r.available() >= 1) { 
      rri=myClient0r.read();
       rgi=myClient0g.read();
        rbi=myClient0b.read();
  fill(rri,rgi,rbi);
    rect(500,700,50,50);   
   }

 if (myClient0x.available() >= 1) { 
      mouseoverx=3*myClient0x.read();
       mouseovery=3*myClient0y.read();

       
       
 }noStroke();
            fill(255);
            rect(1050,700,180,70);
            
            fill(0);      
  textSize(30);
  text("2x"+mouseoverx, 1050, 755);  
    text("2y"+mouseovery, 1050, 775);  
     text("dot"+dot, 1050, 795);
    

  
if ((mouseoverx>=1000&&mouseoverx<=1200)&&(mouseovery>=0&&mouseovery<=30)) {
    if   (mousePressed && (mouseButton == LEFT)) {
       level++;
  
      
   fill(255);
  rect(1000, 0, 300, 30);
    fill(0);
  textSize(30);
  text("Level "+level, 1020, 25);    
if(level>=num-1)level=num-1;  delay(150);
      }


    
    if (mousePressed && (mouseButton == RIGHT)) {
     {

          level--;
 ;
    
if(level<=0)level=0;      
   fill(255);
  rect(1000, 0, 300, 30);
    fill(0);
  textSize(30);
  text("Level "+level, 1020, 25);   delay(150);

      }
      }
  }
    if ((mouseoverx>=300&&mouseoverx<=500)&&(mouseovery>=0&&mouseovery<=29)) {
    if   (mousePressed && (mouseButton == LEFT)) {
       
    
  app=7;dom=1;
      }


    
    if (mousePressed && (mouseButton == RIGHT)) {
     {

stroke(0);
  fill(255);
  rect(0, 0, 1600, 30);
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
 

    fill(255);
  rect(599, 529, 201, 101);

  fill(255);
  rect(799, 429, 201, 101);
    fill(255);
  rect(799, 529, 201, 101);
 
    
    fill(255);
  rect(599, 429, 201, 101);
    fill(0);
  textSize(30);
  text("PNG Modus", 610, 501);
  
  fill(255);
  rect(799, 429, 200, 100);
    fill(0);
  textSize(30);
  
  text("Play", 810, 501);  
  
  fill(255);
  rect(799, 629, 200, 100);
    fill(0);
  textSize(30);
  
  text("gray>1b bw", 810, 601);  
    
  fill(255);
  rect(799, 729, 200, 100);
    fill(0);
  textSize(30);
  
  text("gray>1b rgb", 810, 701); 


fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text("rgb>1b rgb", 610, 601); 
  dom=0;
  bcb=0; gcb=0;rcb=0; scb=0;
  app=1;
      }
      }
  }
  
if(app==2){
outputg = createWriter("work/"+level+"listg.txt"); 
outputb = createWriter("work/"+level+"listb.txt"); 
outputr = createWriter("work/"+level+"listr.txt"); 
outputbw = createWriter("work/"+level+"list.txt"); 
 app=0;
 }
  // mouseovery = mouseY;
 // mouseoverx = mouseX;

  if ((mouseoverx>=598&&mouseoverx<=800)&&(mouseovery>=429&&mouseovery<=530)) {
    if   (mousePressed && (mouseButton == LEFT)) {
       
    delay(150);
      
   fill(255);
  rect(600, 430, 200, 100);
    fill(0);
  textSize(30);
  text("PNG Modus", 610, 501);    outputg = createWriter("work/"+level+"listg.txt"); 
outputb = createWriter("work/"+level+"listb.txt"); 
outputr = createWriter("work/"+level+"listr.txt"); 
outputbw = createWriter("work/"+level+"list.txt"); 
  app=0;
      }


    
    if (mousePressed && (mouseButton == RIGHT)) {
     {

 fill(255);
  rect(600, 430, 200, 100);
    fill(0);
  textSize(30);
  text("TXT Modus", 610, 501);    outputg = createWriter("work/"+level+"listg.txt"); 
outputb = createWriter("work/"+level+"listb.txt"); 
outputr = createWriter("work/"+level+"listr.txt"); 
outputbw = createWriter("work/"+level+"list.txt"); 
  
  app=1;
      }
      }
  }
  
  
  
  if ((mouseoverx>=800&&mouseoverx<=1000)&&(mouseovery>=429&&mouseovery<=530)) {
    if   (mousePressed && (mouseButton == LEFT)) {
       

      play=1;
   fill(255);
  rect(800, 430, 200, 100);
    fill(0);
  textSize(30);
  text("Play", 810, 501);   
  app=3;
      }


    
    if (mousePressed && (mouseButton == RIGHT)) {
     {
play=0;
     fill(255);
  rect(799, 629, 200, 100);
    fill(0);
  textSize(30);
  
  text("Normal", 810, 701); 
   fill(255);
  rect(800, 430, 200, 100);
    fill(0);
  textSize(30);
  text("Stop", 810, 501);   
  app=1;los=0;
      }
      }
  }
  
  
  
  
  
  
   if ((mouseoverx>=800&&mouseoverx<=900)&&(mouseovery>=629&&mouseovery<=730)) {
    if   (mousePressed && (mouseButton == LEFT)) {
    
   
      play=1;
  


  fill(255);
  rect(599, 529, 200, 100);

  
  
app=4;
      }
   
  if (mousePressed && (mouseButton == RIGHT)) {app=0;
  
  app=1;los=0;
 
 }
   }
   
   
  
   if ((mouseoverx>=800&&mouseoverx<=900)&&(mouseovery>=529&&mouseovery<=630)) {
    if   (mousePressed && (mouseButton == LEFT)) {
    
   
      play=1;
  


  fill(255);
  rect(599, 529, 200, 100);

  
   
app=5;
      }
   
  if (mousePressed && (mouseButton == RIGHT)) {app=0;
  
  app=1;los=0;
 
 }
   }
   
   
     
  
   if ((mouseoverx>=600&&mouseoverx<=700)&&(mouseovery>=529&&mouseovery<=630)) {
    if   (mousePressed && (mouseButton == LEFT)) {
    
   
      play=1;
  

fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text("rgb>1b rgb", 610, 601); 
   
app=6;
      }
   
  if (mousePressed && (mouseButton == RIGHT)) {app=0;
  
 fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text("rgb>1b rgb", 610, 601);
  app=1;los=0;
 }
   }
   
   
   
   
  if(app==0){
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

 // mouseovery = mouseY;
 // mouseoverx = mouseX;

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
      if (num>100)num=100; if (num<2)num=1;
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
    dom=0;noStroke();
    fill(255);
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

  if (((mouseoverx>=0&&mouseoverx<=feld*(num1+1)-1)&&(mouseovery>=30&&mouseovery<=feld*(num1+1)+30-1))||((mouseoverx>=500&&mouseoverx<=550)&&(mouseovery>=700&&mouseovery<=750))) {
    if   (mousePressed && (mouseButton == RIGHT)) {
      gety= (int)mouseovery; 
      getx=(int)mouseoverx ;  
      sumlx=floor(getx/feld);
      sumly=floor(gety/feld);
     
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
   if   (mousePressed && (mouseButton == LEFT)||dot==1) {    
  
    
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
      bild = loadImage("work/"+level+"bild.png");
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
      bildr = loadImage("work/"+level+"bildr.png");
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
      bildg = loadImage("work/"+level+"bildg.png");
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
      bildb = loadImage("work/"+level+"bildb.png");
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
      bildbw = loadImage("work/"+level+"bildbw.png");
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
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bild.save("work"+ordner+"/SavesMovie/"+level+"Movie"+iv+".png");
        bild.save("work/"+level+"bild.png");
      
    


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
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildr.save("work"+ordner+"/rSavesMovie/"+level+"rMovie"+iv+".png");


        bildr.save("work/"+level+"bildr.png");
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
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildg.save("work"+ordner+"/gSavesMovie/"+level+"gMovie"+iv+".png");

        bildg.save("work/"+level+"bildg.png");
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
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildb.save("work"+ordner+"/bSavesMovie/"+level+"bMovie"+iv+".png");

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


    //   bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bild = loadImage("work"+ordner+"/SavesMovie/"+level+"Movie"+iv+".png");

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


    bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie"+iv+".png");



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


    bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie"+iv+".png");



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

    // bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie"+iv+".png");



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


    bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie000000"+iv+".png");

    if (iv>=0&&iv<=9)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildbw = loadImage("work"+ordner+"/bwSavesMovie/"+level+"bwMovie"+iv+".png");



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
    }





    if   (mousePressed && (mouseButton == RIGHT)) {
      noStroke();
      fill(rc, gc, bc);    
      rect(0, 30, feld*(num1+1), feld*(num1+1));
      fill(rc, 0, 0);  
      rect(600, 30, num1+1, num1+1); 
      fill(0, gc, 0);  
      rect(800, 30, num1+1, num1+1);
      fill(0, 0, bc);  
      rect(600, 230, num1+1, num1+1);
      qc=(rc+gc+bc)/3; 
      fill(qc); 
      rect(800, 230, num1+1, num1+1); 
      fill(rc, gc, bc);
      rect(600, 630, num1+1, num1+1);
    }
  }
  
  
  
  
  
  
  }
  
  
  
  
  
  
  
  if(app==1){
  
  
  if (los==0){
    outputbg = createWriter("work/"+level+"listg.txt"); 
outputbb = createWriter("work/"+level+"listb.txt"); 
outputbr = createWriter("work/"+level+"listr.txt"); 
outputbbw = createWriter("work/"+level+"list.txt"); 
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

 // mouseovery = mouseY;
 // mouseoverx = mouseX;

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
      if (num>100)num=100;delay(50);
      sumly=0; 
      num1=num;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
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
    if   (mousePressed && (mouseButton == LEFT)) {   
      
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
    if   (mousePressed && (mouseButton == LEFT)) {
      rc++;if(rc>255)rc=255;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
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
      
     neu=0;
    los=1;
     
li=0;
  ly=0;
   lx=1;
      
             String ggg="eol";
  String fff="eof";
   

     
      String[] linesbr = loadStrings("work/"+level+"listr.txt");
String[] linesbg = loadStrings("work/"+level+"listg.txt");
String[] linesbb = loadStrings("work/"+level+"listb.txt");
String[] linesbbw = loadStrings("work/"+level+"list.txt");
if (linesbbw.length>=1){
println("there are " + linesbbw.length + " lines");
lx=1;
ly=0;
li=0;
while (gone!=1){
 
  if ((linesbbw.length-1)==li) {gone=1;}
  
  else  {
  
if (ggg.equals(linesbbw[li]) == true ) {

  ly++;
  lx=0;


}


 bytr = int(linesbr[li]);
 bytg = int(linesbg[li]);
 bytb = int(linesbb[li]);
 bytbw= int (linesbbw[li]);

fill(bytr,bytg,bytb);



rect(lx+600,ly+630,1,1);

fill(bytr,bytg,bytb);

      rect(lx*feld-feld, ly*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);


 fill(bytr, bytg, bytb);
      rect(lx1+600, ly1+631, 1, 1);
      fill(bytr, 0, 0);
      rect(lx1+600, ly1+31, 1, 1);
      fill(0, bytg, 0);
      rect(lx1+800, ly1+31, 1, 1);
      fill(0, 0, bytb);
      rect(lx1+600, ly1+231, 1, 1);
      qc=(int)(bytr+bytg+bytb)/3;
      fill(qc);
      rect(lx1+800, ly1+231, 1, 1);


 println("yess");
   lx++;
  li++;

}   
}    

      
      
      fill(255);
      rect(200, 0, 90, 30);  
      fill(0);
      textSize(30);
      text(iv, 200, 25);
     bild = loadImage("work/"+level+"bild.png");
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
      bildr = loadImage("work/"+level+"bildr.png");
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
      bildg = loadImage("work/"+level+"bildg.png");
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
      bildb = loadImage("work/"+level+"bildb.png");
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
      bildbw = loadImage("work/"+level+"bildbw.png");
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

    if (mousePressed && (mouseButton == RIGHT)) {
  if (neu==0){
    outputbg = createWriter("work/"+level+"listg.txt"); 
outputbb = createWriter("work/"+level+"listb.txt"); 
outputbr = createWriter("work/"+level+"listr.txt"); 
outputbbw = createWriter("work/"+level+"list.txt"); 
neu=1;  xi=0;yi=0;li=0;lx=0;ly=0; iv++;  end++;
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
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bild.save("/work"+ordner+"/SavesMovie/"+level+"Movie"+iv+".png");
        bild.save("/work/bild.png");
      
    //----------------------------------------------------------------------------------------------------------
     
      if (iv>=1&&iv<=9)
         outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie000000"+iv+".txt");

        if (iv>=10&&iv<=99)
          outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
         outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
            outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
          outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
        outputg = createWriter("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie"+iv+".txt");
       
          
          if (iv>=1&&iv<=9)
               outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie000000"+iv+".txt");
        if (iv>=10&&iv<=99)
          outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
        outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
            outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
          outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
        outputr = createWriter("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie"+iv+".txt");
   
          
          if (iv>=1&&iv<=9)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie000000"+iv+".txt");
        if (iv>=10&&iv<=99)
        outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
           outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
         outputb = createWriter("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie"+iv+".txt");
  
      
          if (iv>=1&&iv<=9)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie000000"+iv+".txt");
        if (iv>=10&&iv<=99)
        outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie00000"+iv+".txt");
        if (iv>=100&&iv<=999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie0000"+iv+".txt");
        if (iv>=1000&&iv<=9999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie000"+iv+".txt");
        if (iv>=10000&&iv<=99999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie00"+iv+".txt");
        if (iv>=100000&&iv<=999999)
           outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie0"+iv+".txt");
        if (iv>=1000000&&iv<=9999999)
         outputbw = createWriter("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie"+iv+".txt");
   
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
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildr.save("/work"+ordner+"/rSavesMovie/"+level+"rMovie"+iv+".png");


        bildr.save("work/"+level+"bildr.png");
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
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildg.save("/work"+ordner+"/gSavesMovie/"+level+"gMovie"+iv+".png");

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
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildb.save("/work"+ordner+"/bSavesMovie/"+level+"bMovie"+iv+".png");

        bildb.save("work/"+level+"bildb.png");
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
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie000000"+iv+".png");
        if (iv>=10&&iv<=99)
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie00000"+iv+".png");
        if (iv>=100&&iv<=999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie0000"+iv+".png");
        if (iv>=1000&&iv<=9999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie000"+iv+".png");
        if (iv>=10000&&iv<=99999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie00"+iv+".png");
        if (iv>=100000&&iv<=999999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie0"+iv+".png");
        if (iv>=1000000&&iv<=9999999)
          bildbw.save("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie"+iv+".png");

        bildbw.save("work/bildbw.png");
      }

     
    }
  }

  
  if ((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30)) {   

    if   (mousePressed && (mouseButton == LEFT)) {
      iv--;
        delay(50);
      if (iv<1)iv=1;    
      fill(255);
      rect(200, 0, 90, 30);      
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      
      
   
      
    }
    if   (mousePressed && (mouseButton == RIGHT)) {
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

           {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie000000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=10&&iv<=99)
           {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie00000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
       {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie0000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie00"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie0"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
      
      
            if (iv>=1&&iv<=9)
    {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie000000"+iv+".txt");if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=10&&iv<=99)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie00000"+iv+".txt");if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie0000"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie000"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
   {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie00"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie0"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
      
      
      
            if (iv>=1&&iv<=9)
        {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie000000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
            if (iv>=10&&iv<=99)
        {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie00000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
          {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie0000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
     {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
          {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie00"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
      {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie0"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
     {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
      
      
      
          if (iv>=1&&iv<=9)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie000000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
   if (iv>=10&&iv<=99)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie00000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
                   {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/"+level+"bwSavestxt/bwMovie0000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie000"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie00"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie0"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}

    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

    //  rect(0,30, 850, 850);
    };
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
if (fff.equals(linesbw[li1]) == true ) {  ly1=0;
  lx1=0;}


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


 fill(bytr, bytg, bytb);
      rect(lx1+600, ly1+631, 1, 1);
      fill(bytr, 0, 0);
      rect(lx1+600, ly1+31, 1, 1);
      fill(0, bytg, 0);
      rect(lx1+800, ly1+31, 1, 1);
      fill(0, 0, bytb);
      rect(lx1+600, ly1+231, 1, 1);
      qc=(int)(bytr+bytg+bytb)/3;
      fill(qc);
      rect(lx1+800, ly1+231, 1, 1);


 println("yess");
   lx1++;
  li1++;

}   
}    
      
        
    
    
    
    
    
    if (iv>=1&&iv<=9)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bild = loadImage("/work"+ordner+"/SavesMovie/"+level+"Movie"+iv+".png");

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


   // bildr = loadImage("work"+ordner+"/rSavesMovie/"+level+"rMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildr = loadImage("/work"+ordner+"/rSavesMovie/"+level+"rMovie"+iv+".png");



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


  //  bildg = loadImage("work"+ordner+"/gSavesMovie/"+level+"gMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildg = loadImage("/work"+ordner+"/gSavesMovie/"+level+"gMovie"+iv+".png");



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

    // bildb = loadImage("work"+ordner+"/bSavesMovie/"+level+"bMovie000000"+iv+".png");

    if (iv>=1&&iv<=9)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildb = loadImage("/work"+ordner+"/bSavesMovie/"+level+"bMovie"+iv+".png");



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
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie000000"+iv+".png");
    if (iv>=10&&iv<=99)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie00000"+iv+".png");
    if (iv>=100&&iv<=999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie0000"+iv+".png");
    if (iv>=1000&&iv<=9999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie000"+iv+".png");
    if (iv>=10000&&iv<=99999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie00"+iv+".png");
    if (iv>=100000&&iv<=999999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie0"+iv+".png");
    if (iv>=1000000&&iv<=9999999)
      bildbw = loadImage("/work"+ordner+"/bwSavesMovie/"+level+"bwMovie"+iv+".png");



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
    if   (mousePressed && (mouseButton == LEFT)) {
      noStroke();
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
    }





    if   (mousePressed && (mouseButton == RIGHT)) {
      noStroke();
      fill(rc, gc, bc);    
      rect(0, 30, feld*(num1+1), feld*(num1+1));
      fill(rc, 0, 0);  
      rect(600, 30, num1+1, num1+1); 
      fill(0, gc, 0);  
      rect(800, 30, num1+1, num1+1);
      fill(0, 0, bc);  
      rect(600, 230, num1+1, num1+1);
      qc=(rc+gc+bc)/3; 
      fill(qc); 
      rect(800, 230, num1+1, num1+1); 
      fill(rc, gc, bc);
      rect(600, 630, num1+1, num1+1);
    }
  }
  
  
  
  
  }
  
  
  
  //--------------------------------------------------------------------------------------------
  
  if(app==3){


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
    
    
  
  

  if ((app==3)) {
   
    
  
  

  
  
  
  
  
  
  

  
  if (((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30))||play==1) {   

    if   (mousePressed && (mouseButton == LEFT)&&play==0) {
       fill(255);

    //  rect(0,30, 850, 850);
      iv--;
      if (iv<1)iv=1;    
      fill(255);
      rect(200, 0, 90, 30);      
      fill(0);
      textSize(30);
      text(iv, 200, 25);
      
      
   
      
    }
    if   ((mousePressed && (mouseButton == RIGHT))||play==1) {

      iv++;
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
   

        if (iv>=1&&iv<=9)

           {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie000000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=10&&iv<=99)
           {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie00000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
       {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie0000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie000"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie00"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie0"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
   {  linesr = loadStrings("Film_Ordner_"+ordner+"/rWtxt"+ordner+"/rSavestxt/"+level+"rMovie"+iv+".txt");if (linesr==null){end=1; big++;}else end=0;}
      
      
            if (iv>=1&&iv<=9)
    {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie000000"+iv+".txt");if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=10&&iv<=99)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie00000"+iv+".txt");if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie0000"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie000"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
   {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie00"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie0"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
 {  linesg = loadStrings("Film_Ordner_"+ordner+"/gWtxt"+ordner+"/gSavestxt/"+level+"gMovie"+iv+".txt");;if (linesg==null){end=1; big++;}else end=0;}
      
      
      
            if (iv>=1&&iv<=9)
        {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie000000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
            if (iv>=10&&iv<=99)
        {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie00000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
          {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie0000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
     {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
          {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie00"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
      {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie0"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
     {  linesb = loadStrings("Film_Ordner_"+ordner+"/bWtxt"+ordner+"/bSavestxt/"+level+"bMovie"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
      
      
      
          if (iv>=1&&iv<=9)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie000000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
   if (iv>=10&&iv<=99)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie00000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100&&iv<=999)
                   {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/"+level+"bwSavestxt/bwMovie0000"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000&&iv<=9999)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie000"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=10000&&iv<=99999)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie00"+iv+".txt");if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=100000&&iv<=999999)
              {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie0"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}
        if (iv>=1000000&&iv<=9999999)
            {  linesbw = loadStrings("Film_Ordner_"+ordner+"/bwWtxt"+ordner+"/bwSavestxt/"+level+"bwMovie"+iv+".txt");;if (linesb==null){end=1; big++;}else end=0;}

    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

   //   rect(0,30, 850, 850);
    };
lx1=1;
ly1=0;
li1=0;
while (done!=1&&end<=0){
 
 

 
  
if (ggg.equals(linesbw[li1]) == true ) {
 
  ly1++;
  
 
  lx1=0;


}if (fff.equals(linesbw[li1]) == true ) {  ly1=0;
  
 
  lx1=0;}


 //  rect(0,30, 850, 850);
 };
lx1=1;
ly1=0;
li1=0;

  if ((linesbw.length-1)==li1) {done=1; }
  
  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {

  ly1++;
  lx1=0;


}if (fff.equals(linesbw[li1]) == true ) {  ly1=0;
  
 
  lx1=0;}



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


 fill(bytr, bytg, bytb);
      rect(lx1+600, ly1+631, 1, 1);
      fill(bytr, 0, 0);
      rect(lx1+600, ly1+31, 1, 1);
      fill(0, bytg, 0);
      rect(lx1+800, ly1+31, 1, 1);
      fill(0, 0, bytb);
      rect(lx1+600, ly1+231, 1, 1);
      qc=(int)(bytr+bytg+bytb)/3;
      fill(qc);
      rect(lx1+800, ly1+231, 1, 1);

 println("yess");
   lx1++;
  li1++;

  
}   
  }  
}}
  
  
  
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  if(app==5){
  
  
   if ((mouseoverx>=900&&mouseoverx<=1000)&&(mouseovery>=529&&mouseovery<=630)) {
   
    
     if   (mousePressed && (mouseButton == LEFT)) {
    
   
   fill(255);
  rect(799, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text((int)hitn, 910, 601);  
    
 

   hitn++;
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;

      }
   
  if (mousePressed && (mouseButton == RIGHT)) {
 fill(255);
  rect(799, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text((int)hitn, 910, 601);  

     hitn--;
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;
 
 
 
 }
   }
 
  
  

  
  if (((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30))||play==1) {   

    if   (mousePressed && (mouseButton == LEFT)&&play==0) {
       fill(255);

    //  rect(0,30, 850, 850);
 
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
   

      
      linesbw = loadStrings("work/"+level+"list.txt");if (linesbw==null){end=1; big++;}else end=0;


    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

    //  rect(0,30, 850, 850);
  };
lx1=1;
ly1=0;
li1=0;
while (done!=1&&end<=0){
 
  if ((linesbw.length-1)==li1) {done=1; /*feld=818/(ly1);*/ }

  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {
 
  ly1++;
  
 
  lx1=0;


}


 bytbw= int (linesbw[li1]);

//fill(bytr,bytg,bytb);

int bwdot=0;
float hit=0;
hit=random(0,bytbw);
if(hit<=hitn)
qc=0;else qc=255;


     // rect(lx1*feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);


fill(qc);
    rect(lx1*feld-feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);

 fill(qc);
      rect(lx1+600, ly1+631, 1, 1);
      fill(qc, 0, 0);
      rect(lx1+600, ly1+31, 1, 1);
      fill(0, qc, 0);
      rect(lx1+800, ly1+31, 1, 1);
      fill(0, 0, qc);
      rect(lx1+600, ly1+231, 1, 1);
      qc=qc;
      fill(qc);
      rect(lx1+800, ly1+231, 1, 1);


   lx1++;
  li1++;

}   
} 
  
  }
  
  
  }
  
  //-----------------------------++++++++++++++++++++++
  
  
  
  
   if(app==4){

  if ((mouseoverx>=900&&mouseoverx<=1000)&&(mouseovery>=629&&mouseovery<=730)) {
   
    
     if   (mousePressed && (mouseButton == LEFT)) {
    
   
   fill(255);
  rect(799, 629, 200, 100);
    fill(0);
  textSize(30);
  
  text((int)hitn, 910, 701);  
    
 

   hitn++;
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;

      }
   
  if (mousePressed && (mouseButton == RIGHT)) {
 fill(255);
  rect(799, 629, 200, 100);
    fill(0);
  textSize(30);
  
  text((int)hitn, 910, 701);  

     hitn--;
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;
 
 
 
 }
   }
li1=0;
  ly1=0;
   lx1=1;
      
             String ggg="eol";
  String fff="eof";
   

      
      linesbw = loadStrings("work/"+level+"list.txt");if (linesbw==null){end=1; big++;}else end=0;


    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

   //   rect(0,30, 850, 850);};
lx1=1;
ly1=0;
li1=0;
while (done!=1&&end<=0){
 
  if ((linesbw.length-1)==li1) {done=1; /*feld=818/(ly1);*/ }

  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {
 
  ly1++;
  
 
  lx1=0;


}if (fff.equals(linesbw[li1]) == true ) {  ly1=0;
  
 
  lx1=0;}



 bytbw= int (linesbw[li1]);

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

hit1=random(0,bytbw);
hit2=random(0,bytbw);
hit3=random(0,bytbw);

if(hit1<=hitn)
hit11=0; else hit11=255;
if(hit2<=hitn)
hit22=0;else hit22=255;
if(hit3<=hitn)
hit33=0;else hit33=255;
fill(hit11,hit22,hit33);
    //  rect(lx1*feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);



      rect(lx1*feld-feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);

 fill(hit11, hit22, hit33);
      rect(lx1+600, ly1+631, 1, 1);
      fill(hit11, 0, 0);
      rect(lx1+600, ly1+31, 1, 1);
      fill(0, hit22, 0);
      rect(lx1+800, ly1+31, 1, 1);
      fill(0, 0, hit33);
      rect(lx1+600, ly1+231, 1, 1);
      qc=(int)(hit11+hit22+hit33)/3;
      fill(qc);
      rect(lx1+800, ly1+231, 1, 1);


   lx1++;
  li1++;

}   
} }



}
   if(app==6){

  if ((mouseoverx>=700&&mouseoverx<=800)&&(mouseovery>=529&&mouseovery<=630)) {
   
    
     if   (mousePressed && (mouseButton == LEFT)) {
    
   
   fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text((int)hitn, 710, 601);  
    
 

   hitn++;
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;

      }
   
  if (mousePressed && (mouseButton == RIGHT)) {
 fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text((int)hitn, 710, 601);  

     hitn--;
         if(hitn<=0)hitn=0;if(hitn>=255)hitn=255;
 
 
 
 }
 
 
 }
 
li1=0;
  ly1=0;
   lx1=1;
      
             String ggg="eol";
  String fff="eof";
   

      
      linesbw = loadStrings("work/"+level+"list.txt");if (linesbw==null){end=1; big++;}else end=0;

 linesr = loadStrings("work/"+level+"listr.txt");if (linesr==null){end=1; big++;}else end=0;
 linesb = loadStrings("work/"+level+"listb.txt");if (linesb==null){end=1; big++;}else end=0;
 linesg = loadStrings("work/"+level+"listg.txt");if (linesg==null){end=1; big++;}else end=0;

    if(big==100){iv=1;big=0;}
     done=0;
  if(play==1){   fill(255);

     // rect(0,30, 850, 850);
    };
lx1=0;
ly1=0;
li1=0;
while (done!=1&&end<=0){
 
  if ((linesbw.length-1)==li1) {done=1; /*feld=818/(ly1);*/ }

  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {
 
  ly1++;
  
 
  lx1=0;


}if (fff.equals(linesbw[li1]) == true ) {  ly1=0;
  
 
  lx1=0;}



 bytbw= int (linesbw[li1]);
 bytr= int (linesr[li1]);
  bytb= int (linesb[li1]);
  bytg= int (linesg[li1]);
 
 
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
   //   rect(lx1*feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);



      rect(lx1*feld-feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);

 fill(hit11, hit22, hit33);
      rect(lx1+600, ly1+631, 1, 1);
      fill(hit11, 0, 0);
      rect(lx1+600, ly1+31, 1, 1);
      fill(0, hit22, 0);
      rect(lx1+800, ly1+31, 1, 1);
      fill(0, 0, hit33);
      rect(lx1+600, ly1+231, 1, 1);
      qc=(int)(hit11+hit22+hit33)/3;
      fill(qc);
      rect(lx1+800, ly1+231, 1, 1);


   lx1++;
  li1++;

}   
}
 
 
 
 
 
 
   
 
 
 
 
 }
 noStroke();
  fill(255);
  rect(799, 629, 200, 100);
    fill(0);
  textSize(30);
  
  text("gray>1b bw", 810, 601);  
    
  fill(255);
  rect(799, 729, 200, 100);
    fill(0);
  textSize(30);
  
  text("gray>1b rgb", 810, 701); 


fill(255);
  rect(599, 529, 200, 100);
    fill(0);
  textSize(30);
  
  text("rgb>1b rgb", 610, 601); 
 
 
 
 
 
  fill(255);
  rect(800, 730, 200, 100);
    fill(0);
  textSize(30);
  text("x "+(sumlx+1)+"y "+(sumly+1), 810, 801); 
  
if(app==7){
  
  directionalLight(126, 126, 126, 0, 0, -1);
ambientLight(102, 102, 102);
  feldx=num+1;
 // mouseovery = mouseY;
 // mouseoverx = mouseX;
  int[] x= new int[feldx+1];
  int[] y= new int[feldx+1];
  int[] z= new int[feldx+1];
    
  karte=320/feldx;
 
  fill(0);
  rect(0, 30, 600, 600);
   fill(200);
  rect(1200, 30, 400, 800); 
  textSize(26);
  fill(0);
  text("Menue",1220,40);
   fill(0);text("y =internet aktiv",1220,300);
     fill(0);text("q =internet inaktiv",1220,350);
      fill(0);text("g =internet stein setzen",1220,400); 
      fill(0);text("w/a/s/d/e/c =steuern",1220,450); 
      fill(0);text("8/5/2 =nebel",1220,500); 
  fill(0);text("+/- =Zellen Anzahl",1220,500); 
  fill(255);
  textSize(26);
  
  
   table.setString(1, "page1", "xqkys.de");
      text(table.getString(1, "page1"),20,500);
   fill(255);
  textSize(26);
     table.setString(2, "page1", "GitHub");
      text(table.getString(2, "page1"),570,500);
    
    fill(255);
  textSize(26);
    table.setString(3, "page1", "SouceForge");
      text(table.getString(3, "page1"),270,500);
    
  
   table.setString(3, "page2", ("https://sourceforge.net/u/xqskys/profile/"));


     table.setString(2, "page2", ("https://github.com/XQSkys"));
 
   
    table.setString(1, "page2", ("https://xqkys.de/"));

    
  
   
       fill(220);
    rect(1210,60,120,40);
    textSize(20);
    fill(0);
    text("Load",1220,90);
    if(mouseoverx>1210&&mouseoverx<=1330&&mouseovery>=60&&mouseovery<=100&&load==0){  
    stroke(255);
    rect(1210,60,120,40);
    textSize(20);
    fill(255);
    text("Load",1220,90);if (mousePressed) {load=1;}}
    
    if (load==1) { textSize(20);
      stroke(220);
      fill(220);
    rect(1210,60,120,40);
    
    fill(0);text("Fertig!",1220,90);}
     if (load==1) {
         ;
  table= loadTable( "data/new.csv", "header");
  }
  
      fill(220);
    rect(1210,130,120,40);
    textSize(20);
    fill(0);
    text("Save",1220,160);
    if(mouseoverx>1210&&mouseoverx<=1330&&mouseovery>=130&&mouseovery<=170){  
    stroke(255);
    rect(1210,130,120,40);
    textSize(20);
    fill(255);
    text("Save",1220,160);if (mousePressed) {load=0;save=1;}}
    
    if (save==1) { textSize(20);
      stroke(220);
      fill(220);
    rect(1210,130,120,40);
    
    fill(0);text("Fertig!",1220,160);}
    
       if (rg==0){fill(255,0,0); circle(1570, 30, 45);
       fill(0);text("Link",1550,38);if (chan==0&&cre==0&&rg==0){
     fill(255,0,0);  circle(1600, 30, 45);
  cre=0;chan=0;
    fill(0);
      text("Add",1480,38);}} if (rg==1){
     
      fill(0,255,0); circle(1570, 30, 45);fill(0);text("Aktiv",1550,38);if (chan==0&&cre==0&&rg==1){
     fill(255,0,0);  circle(1500, 30, 45);
  cre=0;chan=0;
    fill(0);
      text("Add",1480,38);}}
      if (rg==2){
     
     fill(255,255,0); circle(1570, 30, 45);fill(0);text("doing",1550,38); }
      
   if (cre==1&&rg==2){
      fill(255,255,0);circle(1500, 30, 45); 
     fill(0);
      text("new",1480,38); chan=0;act=0;
  }
      else if (chan==1&&rg==2){
     
      fill(0,0,255);
 circle(1500, 30, 45);
cre=0;
 fill(0);
      text("Edit",1480,38);
 }else if (chan==0&&cre==0&&rg==0){
     fill(255,0,0);  circle(1500, 30, 45);
  cre=0;chan=0;
    fill(0);
      text("Add",1480,38);}
  rotateX(4+mouseoverx/1200*PI);

  
  
  rotateY(1+mouseovery/1200*PI);
 if (mousePressed) {
  right=mouseoverx;
 
 }
  rotateZ(2+right/1200*PI);
  
   
 if(ini==0){
    xkarte=0;
      ykarte=0;
      zkarte=0;
     
     if (keyPressed) {
 
    if (key == 'y') {
      act = 1;rg=1;
   
    
    } else if (key == 'q') {
   chan=0; cre=0;
      act=0;rg=0; }
    
  else if (key == 'b') {
   
      act=0;rg=2;}
    else if (key == 't') {
   
      act=0;rg=2;chan=1;}
  else if (key == 'g') {
        
   
      act=0;rg=2;cre=1;}


} 
      
 
 if (keyPressed) {
    if (key == 'c' ) {
      xkarte=-1;
      ykarte=0;
      zkarte=0;
    }
    if (key == 'e' ) {
      xkarte=1;
      ykarte=0;
      zkarte=0;
    }
    if (key == 's' ) {
      xkarte=0;
      ykarte=-1;
      zkarte=0;
    }
    if (key == 'w' ) {
      xkarte=0;
      ykarte=1;
      zkarte=0;
    }
    if (key == 'a' ) {
      xkarte=0;
      ykarte=0;
      zkarte=1;
    }
    if (key == 'd' ) {
      xkarte=0;
      ykarte=0;
      zkarte=-1;
   }
  
     if (key == '+') {
     stone3++;
     
     num++;
      if (num>100)num=100; if (num<2)num=1;
     
   }
   
      if (key == '-' ) {
      stone3--;
  
      num--;
       if (num>100)num=100; if (num<2)num=1;
   }
     if (key == '8' ) {
      giv++;
  
    
       if (giv>=255)giv=255; 
       if (giv<=0)giv=0;}
     if (key == '2' ) {
       
       giv--;
      if (giv>=255)giv=255; 
       if (giv<=0)giv=0;
   }
      if (key == '5' ) {
      giv=255;
  
  
   }
  
   
   
   
   
   
   
   
   
   
   
  }
    
  qxkarte=qxkarte+xkarte;  
  qykarte=qykarte+ykarte;  
  qzkarte=qzkarte+zkarte;
  if (qxkarte<=-1)qxkarte=feldx; 
  if
    (qxkarte>=feldx+1)qxkarte=0;
  if (qykarte<=-1)qykarte=feldx;
 if 
    (qykarte>=feldx+1)qykarte=0;
  if (qzkarte<=-1)qzkarte=feldx;
  if (qzkarte>=feldx+1)qzkarte=0;
    
  x[qxkarte]=1;
  y[qykarte]=1;
  z[qzkarte]=1;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
     neu=0;
    los=1;
     
li=0;
  ly=0;
   lx=1;
      li1=0;
             String ggg="eol";
  String fff="eof";
   

     

  while (axkarte!=feldx&&aykarte!=feldx&&azkarte!=feldx) {
    axkarte++;
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
   pushMatrix();   
  






      
      
    
    
    translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );
    stroke(255, 100, 255, 30);
     noFill();//fill(bytr, bytg, bytb);
    box(karte); 
    
    
    
    
    
    
    popMatrix();
    
     
    
    
    
  }
  
  
// table= loadTable( "data/new.csv");
  // if(loadTable( "data/new.csv"!=null)){
   
  bzkarte=0;
  bxkarte=0;
  bykarte=0;
  while (bxkarte!=feldx&&bykarte!=feldx&&bzkarte!=feldx) {
    bxkarte++;
    mapaim3++;
    if (bxkarte==feldx) {
      bxkarte=0;
      bykarte++;
    }
    if (bykarte==feldx) {
      bykarte=0;
      bxkarte=0;
      bzkarte++;
    }
    if (x[bxkarte]!=0&&y[bykarte]!=0&&z[bzkarte]!=0 ) {  
      tag1.append(mapaim3);
      if (tag1.size()==5+food4)
        tag1.remove(0);
    
      
  
      
      
      
      
      
    }
  }
  mapaim3=feldx*feldx*feldx;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (mapaim3!=0) {
    mapaim3--;
    if ( tag1.hasValue(mapaim3)==false) {
      axkarte++;
      if (axkarte==feldx) {
        axkarte=0;
        aykarte++;
      }
      if (aykarte==feldx) {
        aykarte=0;
        axkarte=0;
        azkarte++;
      }
    } else {
     
      aimp =aim  = mapaim3 ;
      pushMatrix();  
      axkarte++;
      if (axkarte==feldx) {
        axkarte=0;
        aykarte++;
      }
      if (aykarte==feldx) {
        aykarte=0;
        axkarte=0;
        azkarte++;
      }
      translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );
      if ( home3.hasValue(aim)==true&&act==1) {
      // home3.remove(0);
     //   food4++;
          food3=feldx*feldx*feldx;
 while (food3!=0) {
     food3--;
    axkarte++;
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }

      
      
    if (  food3==table.getInt(3, "page0")) {
      pushMatrix();
      translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );
  //    println( stone.get(0));
    


      
      
   fill(170);
      stroke(170);
      box(karte);
      popMatrix();
       pushMatrix();
       stroke(170);fill(170);
     line(100+karte*axkarte, 310+karte*aykarte, karte*azkarte , 30, 30, 30);
       popMatrix();    
    }
  }; azkarte=0;
  axkarte=-1;
  aykarte=0;
   food3=feldx*feldx*feldx;
 while (food3!=0) {
     food3--;
    axkarte++;
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }

      
      
    if (  food3==table.getInt(4, "page0")) {
      pushMatrix();
      translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );
  //    println( stone.get(0));
    


      
      
   fill(170);
      stroke(170);
      box(karte);
      popMatrix();
       pushMatrix();
       stroke(170);fill(170);
     line(100+karte*axkarte, 310+karte*aykarte, karte*azkarte , 30, 30, 30);
       popMatrix();    
    }
  };
  
   
 
        
if(act==1){
    link(  table.getString(3, "page2"));act=0;}
    
      
  
        

      }
      if ( home2.hasValue(aim)==true&&act==1) {
       home2.remove(0);
      //  stone3++;
          

 link(table.getString(1, "page2"));

    
  
      }
        if ( home1.hasValue(aim)==true&&act==1) {
        home1.remove(0);
       // speeds3++;
       
      


 
   
    
    link(table.getString(2, "page2"));
    
    
   

    
      }
      
       if ( cre==1&&act==0) {
      //   home3.remove(0);
       // speeds3++;
       typ3++;
     // table.addRow();
   //    table.setString(4, "page1", "Weebly");
    //  text(table.getString(4, "page1"),20,20);
  
   
   
    table.setString(4, "page1", "Google"); fill(0);
  textSize(26);
      text(table.getString(4, "page1"),870,220);
    
  
 
    table.setString(4, "page2", ("https://google.com/"));
table.setInt(4,"page0",aimp);
    println(table.getInt(4, "page0")+table.getInt(4, "page1")+table.getInt(4, "page2"));
     
      home3.append(aimp);
    
     println(table.getInt(4, "page0"));
    
    cre=0;
   
 
   
    

    
    
   

    
      }
 
      
      
      
      stroke(255, 0, 100, 255);
      fill(255, 0, 100);
      box(karte); 
      popMatrix();
    }
  }
  stone1=feldx*feldx*feldx;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (stone1!=0) {
    stone1--;
    axkarte++;
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
    if (home2.size()<=typ2)
      home2.append((int)random(0, feldx*feldx*feldx));
      
      
    if (stone1==home2.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );
  //    println( stone.get(0));
    


      
      
   fill(170);
      stroke(170);
      box(karte);
      popMatrix();
       pushMatrix();
       stroke(170);fill(170);
       
            float winkel;
      float laenge; 
         float dx;  
      float dy; 
      float dz; 
      stroke(255, 200);  
      strokeWeight(2);  
      smooth(); 
  int i=0;
  

       popMatrix();    
    }
  }
     
  
  food3=feldx*feldx*feldx;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (food3!=0) {
    food3--;
    axkarte++;
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
  
    if (food3==table.getInt(3, "page0")) {
      pushMatrix();
      translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );

          fill(255, 100, 100 ,255);
      stroke(255, 100, 100 ,255);
      box(karte); 
      popMatrix();/*pushMatrix();      stroke(255, 100, 100 ,255);fill(255, 100, 100 ,255);
      line(100+karte*axkarte, 310+karte*aykarte, karte*azkarte , 30, 30, 280);
       popMatrix();*/
   
    }
  }
     food3=feldx*feldx*feldx;
  azkarte=0;
  axkarte=-1;
  aykarte=0;
  while (food3!=0) {
    food3--;
    axkarte++;
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    }
  
    
    
      if (food3==table.getInt(4, "page0")) {
      pushMatrix();
      translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );

          fill(255, 100, 100 ,255);
      stroke(255, 100, 100 ,255);
      box(karte); 
      popMatrix();pushMatrix();      stroke(255, 100, 100 ,255);fill(255, 100, 100 ,255);
      line(100+karte*axkarte, 310+karte*aykarte, karte*azkarte , 30, 30, 280);
       popMatrix();
   
    }
    
    
    
    
  }
  
   
       

     
      

 speeds1=feldx*feldx*feldx;
  azkarte=0;
  axkarte=-1;
  aykarte=0;li1=-1;
  while (speeds1!=0) {
    speeds1--;
    axkarte++;li1++;
     if(li1>=feldx*feldx)li1=0;





 


  

  
 





 //  rect(0,30, 850, 850);
 ;
  
    
    if (axkarte==feldx) {
      axkarte=0;
      aykarte++;
    }
    if (aykarte==feldx) {
      aykarte=0;
      axkarte=0;
      azkarte++;
    

}
    
  if (home1.size()<=typ1)
      home1.append((int)random(0, feld*feld*feld));
    if (speeds1==home1.get(0)) {
      pushMatrix();
      translate(100+karte*axkarte, 250+karte*aykarte, karte*azkarte );
    //  println( speed.get(0));
      

      
      
      stroke(255,0,255,255);
      fill(255,0,255,255);
      box(karte); 
      popMatrix();
      
       
    }
    
    
    
    
    
   
      println(li1);
      

     
  linesbw = loadStrings("work/"+level+"list.txt");if (linesbw==null){level--;linesbw = loadStrings("work/"+level+"list.txt");li1=0;}

  linesr = loadStrings("work/"+level+"listr.txt");if (linesr==null){level--; linesr = loadStrings("work/"+level+"listr.txt");li1=0;}
 linesb = loadStrings("work/"+level+"listb.txt");if (linesb==null){level--;linesb = loadStrings("work/"+level+"listb.txt");;li1=0;}
  linesg = loadStrings("work/"+level+"listg.txt");if (linesg==null){level--; linesg = loadStrings("work/"+level+"listg.txt");li1=0;}

          if (ggg.equals(linesbw[li1]) == true ) {
li1++;
   

}         if (fff.equals(linesbw[li1]) == true ) {level++;li=0;}
bytr =int(linesr[li1]);
 bytg =int(linesg[li1]);
 bytb =int(linesb[li1]);
 bytbw=int(linesbw[li1]);
 
 

     pushMatrix();

    
    translate(100+karte*axkarte, 310+karte*aykarte, karte*azkarte );
    stroke(255, 100, 255, 30);
     fill(bytr,bytg,bytb,giv);;//fill(bytr, bytg, bytb);
    box(karte); 
      
        popMatrix(); 
     
      
      /*
         pushMatrix();
      stroke(255,0,255 ,255);fill(255,0,255,255);
      line(100+karte*axkarte, 310+karte*aykarte, karte*azkarte , 30, 30, 530);popMatrix();
    */
  } 
  
   }
 if(save==1){
   table.setInt(0, "page0", stone3);
 saveTable(table, "data/new.csv");
        println(table.getInt(0, "page0"));
 table.setInt(2, "page0", home2.get(0));
saveTable(table, "data/new.csv");
        println(table.getInt(2, "page0"));
 table.setInt(3, "page0", home3.get(0));
saveTable(table, "data/new.csv");
       println(table.getInt(3, "page0"));
table.setInt(1, "page0", home1.get(0));
 saveTable(table, "data/new.csv");
        println(table.getInt(1, "page0"));
        
   table.setInt(4, "page0", aimp);
 saveTable(table, "data/new.csv");     
         println(table.getInt(4, "page0"));
        
        
    
save=0;
   }
 
 if(load==1){
stone3=table.getInt(0, "page0");
home2.set(0,table.getInt(2, "page0"));
home3.set(0,table.getInt(3, "page0"));
home1.set(0,table.getInt(1, "page0"));
home3.set(0,table.getInt(4, "page0"));
 
        println(table.getInt(0, "page0"));
 
 println(table.getInt(1, "page0"));
 

       println(table.getInt(2, "page0"));


        println(table.getInt(3, "page0"));
println(table.getInt(4, "page0"));
  load=0;
   }
 

 }
 
 


}
  
