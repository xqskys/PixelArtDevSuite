PrintWriter outputbr;
PrintWriter outputbg;
PrintWriter outputbb;
PrintWriter outputbbw;
int los=0;
int mouseoverx=0;
int mouseovery=0;
   PImage bild;
  int   neu=0;
PrintWriter outputr;
PrintWriter outputg;
PrintWriter outputb;
PrintWriter outputbw;
      int grayValue =0;
int li=0;
 int ly=0;
  int lx=1;
int gone=0;   
int rc=0;
int gc=0;
int bc=0;
int xi=0;
int iv=0;
int yi=0;
int end=0;
int num=0;

int bytr = 0;
int bytg = 0;
int bytb = 0;
int bytbw= 0;
int feld=0;
  float redValue = 0;  // Get red in 'c'
      float blueValue = 0;  // Get red in 'c'
      float greenValue = 0;

color cr = color(0, 0, 0);

color point=color(0);

   int ex=0;
          int ey=0;
  
void setup() { 
  



  background(255);
  size(1920, 1080);
  stroke(0);
  fill(255);
  rect(0, 0, 1920, 1080);
 PImage bild;
  


 
   
        bild = loadImage("bild.png");
       if (bild != null) {
          image(bild, 0, 0);
         // saveFrame("bild.png");
              ex=bild.width;
         ey=bild.height;
    
        }
        else
        {fill(0);
        text("error",0,0);
      }






}
void draw() {
    if (los==0){
    outputbg = createWriter("listg.txt"); 
outputbb = createWriter("listb.txt"); 
outputbr = createWriter("listr.txt"); 
outputbbw = createWriter("list.txt"); 
los=1;  
}
  
  
  

  if (neu==0){
    outputbg = createWriter("listg.txt"); 
outputbb = createWriter("listb.txt"); 
outputbr = createWriter("listr.txt"); 
outputbbw = createWriter("list.txt"); 
neu=1;  xi=0;yi=0;li=0;lx=0;ly=0; iv++;  end++;
}  
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      

      
 //----------------------------------------------------------------------------------------------------------
     
        outputg = createWriter("listg.txt");

 
          outputr = createWriter("listr.txt");

     
          

           outputb = createWriter("listb.txt");
       
      

           outputbw = createWriter("list.txt");
    


  while (yi<ey+1) { 
      if (xi<=ex)
      {
        fill(255);
        stroke(0);
        
    
         
  //   fill(0,244,0);
    // rect(xi-1,yi,1,1);
      point = get(xi,yi);
     
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
         
         
       
        if(yi==ey){
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
 
   fill(0);
  rect(0, 0, 1920, 1080);
 exit();
 
               }xi=0;
        yi++;
  }  
      }
   
  

  
       
       
       
       

       
   
  
   





}

    
