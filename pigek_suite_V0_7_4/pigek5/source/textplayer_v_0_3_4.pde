     int bildx;
String[] linesr;
String[] linesg;
String[] linesb;
String[] linesbw;

int lx1=1;
int ly1=0;
int ly2=1;


int li1=0;

int done=0;

int end=0;
int big=0;

 

void setup() { 
  



  background(255);
  size(1024, 850);
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


int play=0;
void draw() {


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
  

  
  
  
  
  
  
  

  
  if (((mousePressed && mouseoverx>=170&&mouseoverx<=270)&&(mouseovery>=0&&mouseovery<=30))||play==1) {   

    if   (mousePressed && (mouseButton == LEFT)&&play==0) {
       fill(255);

      rect(0,30, 850, 850);
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
 
  if ((linesbw.length-1)==li1) {done=1; feld=818/(ly1); }

  else  {
  
if (ggg.equals(linesbw[li1]) == true ) {
 
  ly1++;
  
 
  lx1=0;


}


 bytr = int(linesr[li1]);
 bytg = int(linesg[li1]);
 bytb = int(linesb[li1]);
 bytbw= int (linesbw[li1]);

//fill(bytr,bytg,bytb);



//rect(lx+600,ly+630,1,1);

fill(bytr,bytg,bytb);

      rect(lx1*feld-feld, ly1*feld+30, feld, feld);
//fill(bytbw);
//rect(lx+601,ly+631,1,1);



 println("yess");
   lx1++;
  li1++;

}   
}    
      
  }  

  
} 
   
    
 





  
