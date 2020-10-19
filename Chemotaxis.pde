  Bacteria[] hello;
 //declare bacteria variables here   
 void setup()   
 {     
   //initialize bacteria variables here 
   size(1000,1000);
   hello = new Bacteria[25];
   for(int i = 0; i<hello.length; i++) {
     hello[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria  
   background(0);
   for(int i = 0; i<hello.length; i++) {
     hello[i].move();
     hello[i].show();
   }
 }  
 class Bacteria    
 {     
   int bx;
   int by;
   int bcolor;
   Bacteria(){
   bx = (int)(Math.random()*1000);
   by = (int)(Math.random()*1000);
   bcolor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   //lots of java!   
   }
   void move() {
     bx = bx + ((int)(Math.random()*11)-5);
     by = by + ((int)(Math.random()*11)-5);
   }
   void show() {
     stroke(bcolor);
     fill(bcolor);
     ellipse(bx, by, 25, 25);
   }
 }    
