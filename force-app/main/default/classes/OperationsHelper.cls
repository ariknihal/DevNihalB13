public class OperationsHelper {
    public void largestOutOfTwoNumbers(Decimal x, Decimal y){
        if (x > y) {
            System.debug(x + ' largest');
        } else {
            System.debug(y + ' largest');
        }
    }

    /*public decimal largestOutOfTwoNumbers(decimal x, decimal y){
        if (x > y) {
            return x;
        } else {
            return y;
        }
    }
    */

    public decimal smallestOutOfThreeNumbers(Decimal x, Decimal y, Decimal z){
        if (x < y && x < z ) {
            return x;
        } else if (x > z) {
            return y;
        } 
        return z;
    }

    public integer sumofPositiveIntegers(integer n){
        integer sum;
        if (n < 0) {
            system.debug('We are not calculating the sum for negative numbers');
            sum = null;
        } else {
            sum = 0;
            for (integer i = 0; i < n; i++){
                sum += i;
                system.debug(sum);
            }
        }
        return sum;
    }


}