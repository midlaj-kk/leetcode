class Solution {
 int reverse(int x) {
   int sign = x < 0 ? -1 : 1;
   x = x.abs(); 
   int rev = 0;

   while (x != 0) {
     int pop = x % 10;
     x ~/= 10;

     if (rev > 214748364 || (rev == 214748364 && pop > 7)) return 0;
     rev = rev * 10 + pop;
   }

   rev *= sign;
   if (rev < -2147483648 || rev > 2147483647) return 0;
   return rev;
 }
}