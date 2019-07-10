int Pwidth =477;
int Phight = 650;
int mainC=0;
int interspace=-5;

int col=6;
int row=3;

PImage card;

int number_of_cards=1;
void settings() {
  size(Pwidth*col + interspace*(col-1) ,Phight*row + interspace*(row-1));
}

void setup(){
  imageMode(CORNER);
}

void draw(){
  background(255);
  if(number_of_cards>0){
    for(int i=0;i<col;++i){
      for(int ii=0;ii<row;++ii){
        card = loadImage("005Samson.png", "png");
        image(card,(Pwidth+interspace)*i , (Phight+interspace)*ii,Pwidth,Phight);
      }
    }
    saveFrame("out"+mainC+".png");
    number_of_cards-=col*row;
    mainC++;
  }
  else exit();
}
