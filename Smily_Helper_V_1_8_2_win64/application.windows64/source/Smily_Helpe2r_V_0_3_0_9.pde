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
void setup() { 
  



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

int li=0;

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
void draw() {
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
   

     
      String[] linesbr = loadStrings("work/listr.txt");
String[] linesbg = loadStrings("work/listg.txt");
String[] linesbb = loadStrings("work/listb.txt");
String[] linesbbw = loadStrings("work/list.txt");
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

    if (mousePressed && (mouseButton == RIGHT)) {
  if (neu==0){
    outputbg = createWriter("work/listg.txt"); 
outputbb = createWriter("work/listb.txt"); 
outputbr = createWriter("work/listr.txt"); 
outputbbw = createWriter("work/list.txt"); 
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
