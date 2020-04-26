      
// Created by: Eduardo de Andrade Tristão
// Github: eduardo_and

import processing.sound.*;
SoundFile[] file =  new SoundFile[15];

int[] active = new int[14];

PImage[] imgs = new PImage[14];

PImage img;

void setup() {
  size(912, 640);
  background(0);
  
  img = loadImage("background.jpg");
  image(img, 0, 0);
     
  // Load a soundfile from the /data folder of the sketch and play it back
  file[0] = new SoundFile(this, "back.mp3");
  file[0].amp(0.3);
  file[0].loop();

  for (int i = 1; i < 15; i = i+1){
    file[i] = new SoundFile(this, "Piano"+ i +".wav");
  }
     
  for (int i = 0; i < 14; i = i+1){
    imgs[i] = loadImage("img"+ (i+1) +".png");
  }
     

} 

void zeraArr(int num){
  
  for (int i = 0; i < 14; i = i+1) {
    if(i != num){
    active[i]=0;
    }
  }
}
  

void draw() {
 

 if((mouseX > 0 && mouseX < 59) && mouseY > 454){
      active[0]=1;
      zeraArr(0);
 }
 
  if((mouseX > 60 && mouseX < 136) && mouseY > 362){
      active[1]=1;
      zeraArr(1);
 }
  
   if((mouseX > 137 && mouseX < 228) && mouseY > 386){
      active[2]=1;
      zeraArr(2);
 }
  
    if((mouseX > 229 && mouseX < 326) && mouseY > 363){
      active[3]=1;
      zeraArr(3);
 }
  
    if((mouseX > 327 && mouseX < 394) && mouseY > 473){
      active[4]=1;
      zeraArr(4);
 }
  
    if((mouseX > 354 && mouseX < 437) && (mouseY > 322 && mouseY< 382)){
      active[5]=1;
      zeraArr(5);
 }
 
    if((mouseX > 354 && mouseX < 414) && (mouseY > 342 && mouseY< 472)){
      active[5]=1;
      zeraArr(5);
 }
   
    if((mouseX > 397 && mouseX < 416) && (mouseY > 342 && mouseY< 640)){
      active[5]=1;
      zeraArr(5);
 }
  
    if((mouseX > 418 && mouseX < 500) && mouseY > 385 ){
      active[6]=1;
      zeraArr(6);
 }
  
    if((mouseX > 464 && mouseX < 545) && mouseY > 282 && mouseY<387 ){
   
      active[7]=1;
      zeraArr(7);
 }
 
   if((mouseX > 500 && mouseX < 530) && mouseY > 387 && mouseY<637 ){
      
     active[7]=1;
      zeraArr(7);
 }
 
   if((mouseX > 530 && mouseX < 618) && mouseY > 416 ){
      active[8]=1;
      zeraArr(8);
 }  
 
   if((mouseX > 595 && mouseX < 682) && mouseY > 269 && mouseY < 384 ){
      active[9]=1;
      zeraArr(9);
 }
   if((mouseX > 595 && mouseX < 647) && mouseY > 384 && mouseY < 413 ){
      active[9]=1;
      zeraArr(9);
 }
   if((mouseX > 619 && mouseX < 647) && mouseY > 384 && mouseY < 639 ){
      active[9]=1;
      zeraArr(9);
 }
 
   if((mouseX > 648 && mouseX < 742) && mouseY > 382 ){
      active[10]=1;
      zeraArr(10);
 }  
 
   if((mouseX > 743 && mouseX < 781) && mouseY > 478 ){
      active[11]=1;
      zeraArr(11);
 }  
 
    if((mouseX > 782 && mouseX < 816) && mouseY > 372 ){
      active[12]=1;
      zeraArr(12);
 }  
 
     if((mouseX > 818 && mouseX < 912) && mouseY > 290 ){
      active[13]=1;
      zeraArr(13);
 }  



  
}

void mouseClicked() {
  back();
  for (int i = 0; i < 14; i = i+1) {
    if(active[i]==1){
      //print(i,"  ");
      file[i+1].play();
       image(imgs[i],0,0);
    }
  }
}




void back(){
   image(img, 0, 0);
}

void keyPressed() {
  back();
      char temp = key ;
      if(temp == 'a' || temp =='A'){
          file[1].play();
           image(imgs[0],0,0);
      
   }
   if(temp == 's' || temp =='S'){
          file[2].play();
           image(imgs[1],0,0);
      
   }
   if(temp == 'd' || temp =='D'){
          file[3].play();
           image(imgs[2],0,0);
      
   }
   if(temp == 'f' || temp =='F'){
          file[4].play();
           image(imgs[3],0,0);
      
   }
   if(temp == 'g' || temp =='G'){
          file[5].play();
           image(imgs[4],0,0);
   }
   if(temp == 'h' || temp =='H'){
          file[6].play();
           image(imgs[5],0,0);
      
   }
   if(temp == 'j' || temp =='J'){
          file[7].play();
           image(imgs[6],0,0);
      
   }
   if(temp == 'K' || temp =='k'){
          file[8].play();
           image(imgs[7],0,0);
      
   }
   if(temp == 'l' || temp =='L'){
          file[9].play();
           image(imgs[8],0,0);
         }
         
    if(temp == '4' || temp =='z'){
          file[10].play();
           image(imgs[9],0,0);
      
   }
     if(temp == '5' || temp =='x'){
          file[11].play();
           image(imgs[10],0,0);
      
   }
     if(temp == '6' || temp =='c'){
          file[12].play();
           image(imgs[11],0,0);
      
   }
      if(temp == '7' || temp =='v'){
          file[13].play();
           image(imgs[12],0,0);
      
   }
      if(temp == '8' || temp =='b'){
          file[12].play();
           image(imgs[13],0,0);
      
   }
}
