
#import "Challenge.h"

@implementation Challenge

- (NSString *)reverse:(NSString *)str {
    // Return a reversed string of the passed in string.
    // If "abc" is passed in, then this should return "cba."
    // If an empty string is passed in, return the empty string.
    // If a single character string is passed in, return that same string (i.e.: "a" reversed is "a").
    // Every other string should be a reverse of the string passed in.
    // You cannot use str.reversed -- an algorithm to reverse the string should be implemented here.
    return @"unimplemented";
}

- (NSInteger)fibonacci:(NSInteger)n {
    // Fill out logic in this function to return the nth number of the Fibbonacci sequence.
    // Negative number results in returning -1
    // f(0) = 0
    // f(1) = 1
    // f(n) = associated fibbonacci number (for our testing, we won't do anything greater than 45).
    return -1;
}

- (NSDictionary<NSNumber *, NSString *> *)fizzBuzz {
    // Create and return a dictionary with keys 1-100
    // If the number is divisible by 3, then the associated string will be "Fizz"
    // If the number is divisible by 5, then the associated string will be "Buzz"
    // If the number is divisible by both 3 and 5, then the associated string will be "FizzBuzz"
    // If the number is divisible by neither then the string the associated string will be empty ("")
    //
    // For example, the dictionary returned will have the following:
    // result[2] = ""
    // result[3] = "Fizz"
    // result[5] = "Buzz"
    // result[15] = "FizzBuzz"
    return @{};
}

- (NSString *)convertArabicToRomanNumerals:(NSInteger)n {
    // Convert the integer to a roman numeral (Roman Numerals must be returned in all capitals -- i.e.: "v" is not valid, but "V" is).
    // The accepted input is 1 to 3999 inclusive.
    // If the number falls outside of that range, return "Number outside of range."
    // Roman Numerals:
    // I = 1
    // V = 5
    // X = 10
    // L = 50
    // C = 100
    // D = 500
    // M = 1,000
    // Note, there are never more than 3 identical numerals in a row (i.e.: you'll never see IIII or VVVV).

    // The pattern is as follows:
    // I, II, III, IV, V, VI, VII, VIII, IX, X, XI, XII, XIII, XIV (1 - 14)
    // X, XX, XXX, XL, L, LX, LXX, LXXX, XC, C (10 - 100 -- counting by 10s)

    // A couple more examples:
    // 1666 = MDCLXVI -> M = 1000, D = 500, C = 100, L = 50, X = 10, V = 5, I = 1
    //      => 1000 + 500 + 100 + 50 + 10 + 5 + 1 = 1666
    // 1990 = MCMXC -> M = 1000, CM = 900, XC = 90

    // Take special note of 4, 9, 40, 90, 400, and 900 -- these use a smaller symbol on the left to subtract from
    //  the bigger symbol on the right.
    // 4 = IV, 9 = IX, 40 = XL, 90 = XC, 400 = CD, 900 = CM. In the case of 4 = IV, V = 5, and I = 1, we subtract
    //  1 from 5 to get 4. In the case of 400 = CD, we have C = 100 and D = 500, and we subtract 100 from 500 to get
    //  400.

    // Implement other parts of conversion here.
    return @"";
}

@end
