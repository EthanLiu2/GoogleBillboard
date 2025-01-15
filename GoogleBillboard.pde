public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{      

  String digits = e.substring(2, 12);

  Double dNum = Double.parseDouble(digits);
  for (int i=2; i<e.length()-9; i+=1) {
    if (isPrime(Double.parseDouble(e.substring(i, i+10)))==true) {

      System.out.println(e.substring(i, i+10));
      break;
    }
  }
}

public boolean isPrime(double dNum)  
{   
  if (dNum<2) {
    return false;
  }
  for (int i=2; i<=Math.sqrt(dNum); i++) {
    if (dNum%i==0) {
      return false;
    }
  } 
  return true;
} 
