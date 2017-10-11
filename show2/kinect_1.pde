
import ddf.minim.*;
cell c = new cell();
int cols = 50;
int rows = 40;
int k = 1;
float [][] myArray = new float[cols][rows];
float [][] dubey = new float[cols][rows];
Minim m;
AudioPlayer a;
int k1;

//void setup () {
//   // size(1920,1080,P3D);
//    fullScreen(P3D);
//    background (0);
//colorMode(HSB,800);
//  dubey [3][3]=1000;
//frameRate=300;
//m = new Minim(this);
//a= m.loadFile("pop1.wav", 700);
//}
    



//void draw () 
//  {
//    //lights();
//    for (int i = 0; i < cols; i++) 
//    {
//      for (int j = 0; j < rows; j++) 
//      {
//      myArray[i][j]= dubey[i][j]*1.014;
//      }}
//  clear();
//  c.update();
//  c.substract();
//  c.add();
//  c.sujith();
//  println (frameRate);
//   }


class cell 
  {
  void update()
  {
   

    for (int i = 0; i < cols; i++) 
    {
      for (int j = 0; j < rows; j++) 
      {
      //ellipse((i+1)*30, (j+1)*30, myArray [i] [j]/3, myArray [i] [j]/3);
              pushMatrix();
              translate((i+1)*30, (j+1)*30, 1);
              stroke(0);
              noStroke();
             fill (round(myArray[i][j]),round(myArray[i][j]),round(myArray[i][j]));
           //  rotateZ(myArray[i][j]); 
              box( myArray [i] [j]/5);
              popMatrix();
              
      }
  }
  }

  void substract()
  {
    for (int i = 0; i < cols; i++) 
    {
      for (int j = 0; j < rows; j++) 
      {//println("pololpo");
      dubey[i][j]= .92*myArray[i][j];
      }
  }
  }
  
void add()
  { 
    for (int i = 1;   i < (cols-2);   i++) 
    {
      for (int j = 1;   j < (rows-2);   j++) 
      {
        
        for (int m = (i-1);   m<=(i+1);    m++)
          {
            //println("popo");
            for (int n = (j-1);    n <= (j+1);    n++)
            { if (m==i && n==j)
              {break;}
              else
              {dubey [m][n] = dubey [m][n] + .0099* myArray [i][j];}
              
            }
          }
      }
    }
    
     
  
  }

void sujithr(KJoint joint)
{
    for (int i = 0; i < cols; i++) 
    {
      for (int j = 0; j < rows; j++) 
      {
          noStroke();
           int k = handState(joint.getState());                          
         if (  joint.getX()*2 > ((i+1)*30-(myArray[i][j]/4)) && joint.getX()*2 < ((i+1)*30+(myArray[i][j]/4)) &&  joint.getY()*2> ((j+1)*30-myArray[i][j]/4) && joint.getY()*2 < ((j+1)*30+(myArray[i][j]/4)) ) 
        { if(  k== 1) 
      {dubey [i][j]=300;}
        else if ( k == 0)
      dubey [i][j]=400;
        //a.play();
        //a.rewind();
        //println(dubey[i][j]);
        }
      }
  }
  }
  void sujithl(KJoint joint)
{
    for (int i = 0; i < cols; i++) 
    {
      for (int j = 0; j < rows; j++) 
      {
          noStroke();
           int k = handState(joint.getState());                          
         if (  joint.getX()*2 > ((i+1)*30-(myArray[i][j]/4)) && joint.getX()*2 < ((i+1)*30+(myArray[i][j]/4)) &&  joint.getY()*2> ((j+1)*30-myArray[i][j]/4) && joint.getY()*2 < ((j+1)*30+(myArray[i][j]/4)) ) 
        { if(  k== 1) 
      {dubey [i][j]=10;}
        else if ( k == 0)
      dubey [i][j]=10;
        a.play();
        a.rewind();
        //println(dubey[i][j]);
        }
      }
  }
  }


  }