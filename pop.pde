class pop
{
  word wordarr[];
  word newWordarr[];
  float fitnessSum=0,fitnessMax=0; 
  word fittest;
  pop(int popL)
  {
    wordarr=new word[popL];
    newWordarr=new word[popL];
    for(int i=0; i<popL; i++){wordarr[i]=new word();wordarr[i].randomw();wordarr[i].fitness=wordarr[i].calFit();}
  }
  
  
  void calFit()
  {
    fitnessSum=0;fitnessMax=0;
    for(int i=0; i<popL; i++)
    {
      fitnessSum+=wordarr[i].calFit();
      if(wordarr[i].calFit()>=fitnessMax){fitnessMax=wordarr[i].calFit();fittest=wordarr[i];}
    }
    wordarr[0]=fittest;//first is the fittest
  }
  
  void newPop()
  {
    for(int i=1; i<popL; i++)
    {
      newWordarr[i]=new word();
      word baby=selectParent();
      newWordarr[i].mutate(baby.w);
    }
    
    for(int i=1; i<popL; i++)
    {
      wordarr[i]=newWordarr[i];
    }
    
  }
  
  void printPop()
  {
    for(int i=0; i<popL; i++)
    {
      printw(wordarr[i]);
    }
  }
  
  
  
  word selectParent()
  {
    float rdm=random(fitnessSum);
    float runningSum=0;
    for(int i=0; i<popL; i++)
    {
      runningSum+=wordarr[i].calFit();
      if(runningSum>rdm)
      {return wordarr[i];}
    }
    return null;
  }
  
}
