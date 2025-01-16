

class PalindromeNumber {

  bool isPalindrome(int x){

    String reverInt =  x.toString().split('').reversed.join();

    return (reverInt == x.toString()) ? true : false;
 
  }

}