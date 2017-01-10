int panic;
News n;
String news = "";
void setup(){
 size(1000,1000);
 n = new News();
 n.setNouns();
 n.setVerbs();
 n.setBuzzWords();
}

void draw(){
background(0,255,0);
textSize(32);
text(news,30,60);
}

void keyPressed(){
 if(keyCode == 32){
   news = n.generate();
   
 }
}