class word
{
  float fitness=0;
  String w;
  word()
  {
    w="";
    //randomw();
    //fitness=calFit();
  }
  void randomw()
  {
    for(int i=0; i<n; i++){char ch=(char)((int)(floor(random(26))+'a')); w=w+ch;}    
  }
  
  float calFit()
  {
    int score=0;
     for(int i=0; i<n; i++){if(w.charAt(i)==target.charAt(i))score++;}
     fitness=score/(float)n;
     return fitness;
  }
  
  void mutate(String baby)
  {
    for(int i=0; i<n; i++)
        {
          if(random(1)<mutateRate)
          {w+=(char)((int)(floor(random(26))+'a'));}
          else{char ch=baby.charAt(i);w+=ch;}
        }
  }
  
}
