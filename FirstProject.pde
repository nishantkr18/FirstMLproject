pop test;int pos=0;float mutateRate=0.02;int gen=1;
String target="machinelearningisawesome";int n=target.length();int popL=1000;
void setup()
{
  size(800,800);
  test=new pop(popL);
  
}
void draw()
{
  background(255);
  test.calFit();
  test.newPop();
  gen++;
  
  fill(0,255,0);
  textSize(20);
  text("Generation: "+gen,600,50);
  //test.printPop();
  println("MaxFitness is : "+test.fitnessMax);
  printw(test.fittest);
  if(test.fittest.w.equals(target))
  {}
  else
  {fill(0,255,0);
  ellipse(400, 700, 10, 10);}
  
  
  
}

void printw(word wrd)
  {
    fill(0);
    textSize(30);pos+=1;if(pos>=height)pos=0;
    text(wrd.w,50,400);
    
    println("Word is: "+wrd.w);
    
  }
  
