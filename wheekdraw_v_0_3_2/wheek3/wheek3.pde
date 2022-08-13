/*
4
*/
/*
output = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/wheek3/wheek3.pde");
outputtxt = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/wheek3/list/list.txt");
output = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/wheek4/wheek4.pde");
outputtxt = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/wheek4/list/list.txt");
*/


PrintWriter output;
PrintWriter outputtxt;
void setup() { size(1000,1000);
output = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/wheek4/wheek4.pde");
outputtxt = createWriter("C:/Users/Jan Bühring/Desktop/processing-3.5.4/wheek4/list/list.txt");
rect(0,0,1000,1000);
}

/*

*/

int lpx=153; int lpy=270; int lpx2=329; int lpy2=444; 



int li=0;
int runs=4;
int px=0;
int py=0;
int px2=0;
int py2=0;



int got=0;
int put=0;
int  mouseoverx=(int)mouseX;
int mouseovery=(int)mouseY;
void draw(){
 mouseoverx=(int)mouseX;
mouseovery=(int)mouseY;
  
  
  
  if(got==0){
  
    



//qwert
    
    
    
    got=1;
  
  }
  
//trewq
  
  if (mousePressed && (mouseButton == LEFT)&&got==1){
  px=(int)mouseX;
  py=(int)mouseY;
  
  
  got=2;
  }
 if (mousePressed != (mouseButton == LEFT)&&got==2){
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
  text("check",10,10);
 // got=0;
 
 String[] lines = loadStrings("list/list.txt");
  String ggg="//eof";
 String xxx="4";
 String yyy="//qwert";
  String zzz="//trewq";
if (xxx.equals(lines[li]) == true&&li==1 ){outputtxt.println(5);output.println(5);runs=4;li++;}
if (xxx.equals(lines[li]) == false&&li==1 ){outputtxt.println(4);output.println(4);runs=5;li++;}
/*if(li>10)if (yyy.equals(lines[li-3]) == false&&li==23 ){outputtxt.println("int lpx="+px+"; "+"int lpy="+py+"; "+"int lpx2="+px2+"; "+"int lpy2="+py2+"; ");
output.println("int lpx="+px+"; "+"int lpy="+py+"; "+"int lpx2="+px2+"; "+"int lpy2="+py2+"; ");li++;}
else if (li==23&&runs==5 ){outputtxt.println("int lpx="+lpx2+"; "+"int lpy="+lpy2+"; "+"int lpx2="+lpx+"; "+"int lpy2="+lpy+"; ");
output.println("int lpx="+lpx2+"; "+"int lpy="+lpy2+"; "+"int lpx2="+lpx+"; "+"int lpy2="+lpy+"; ");li++;}*/
if (yyy.equals(lines[li]) == true ){outputtxt.println("fill(0);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");");
output.println("fill(0);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");");}
if ((zzz.equals(lines[li]) == true)&&(  (key == 'l' ) )){
outputtxt.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");  if   (mousePressed && (mouseButton == LEFT)) {fill(100);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");}}");
output.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+"); if   (mousePressed && (mouseButton == LEFT)) {fill(100);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");}}");}
if ((zzz.equals(lines[li]) == true)&&(  (key == 'r' ) )){
outputtxt.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");  if   (mousePressed && (mouseButton == RIGHT)) {fill(100);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");}}");
output.println("if ((mouseoverx>="+lpx2+"&&mouseoverx<("+(lpx2+lpx)+")&&(mouseovery>="+lpy2+"&&mouseovery<=("+(lpy2+lpy)+")))) {fill(200);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+"); if   (mousePressed && (mouseButton == RIGHT)) {fill(100);rect(" +lpx2 +","+lpy2+","+lpx+","+lpy+");}}");}

//if (yyy.equals(lines[li]) == true&&li==20  ){outputtxt.println("1");output.println("1");;li++; }
 
if (mousePressed&& (mouseButton == RIGHT)&&ggg.equals(lines[li+1]) == true ){  
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
 if (runs==4){ launch("C:/Users/Jan Bühring/Desktop/processing-3.5.4/start4.bat");delay(200);
 exit();}
 else { launch("C:/Users/Jan Bühring/Desktop/processing-3.5.4/start3.bat");delay(200);
 exit();


}}}}
//eof
