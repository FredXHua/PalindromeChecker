public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String aword = noSpacesnoCaps(onlyLetters(noCapitals(word)));
  String noSnoC = noSpacesnoCaps(onlyLetters(reverse(noCapitals(word))));
  if(noSnoC.equals(aword))
  return true;
  else
  return false;
}
public String reverse(String str)
{
    String sNew = new String("");
    int last = str.length() -1;
    for(int i = str.length() -1; i >= 0; i--)
    sNew = sNew + str.substring(i,i+1);
    return sNew;
}
public String noSpacesnoCaps(String sWord){
  String c = new String("");
  for(int i = 0; i <= sWord.length() - 1; i++){
     if (!sWord.substring(i,i+1).equals(" "))
     c = c + sWord.substring(i , i+1);
  }
  return c;
}
public String onlyLetters(String sString){
  String str = new String("");
  for(int i = 0; i <= sString.length() - 1; i++){
    if(Character.isLetter(sString.charAt(i)) == true)
    str = str + sString.substring(i,i+1);
  }
  return str;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}