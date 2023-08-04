
#import "Challenge.h"

@implementation Challenge

/*
 Return a reversed string of the passed in string.
 If "abc" is passed in, then this should return "cba."
 If an empty string is passed in, return the empty string.
 If a single character string is passed in, return that same string (i.e.: "a" reversed is "a").
 Every other string should be a reverse of the string passed in.
 You cannot use str.reversed -- an algorithm to reverse the string should be implemented here.
*/
- (NSString *)reverse:(NSString *)str {
    return @"unimplemented";
}

- (NSInteger)fibbonacci:(NSInteger)n {
    // Implement Fibonacci here.
    if (n < 0) {
        return -1;
    }
    // Implement other parts of Fibonacci here.
    return -1;
}

- (NSDictionary<NSNumber *, NSString *> *)fizzBuzz {
    // Implement FizzBuzz here.
    return @{};
}

- (NSString *)convertArabicToRomanNumerals:(NSInteger)n {
    // Implement conversion here.
    if (n < 1 || n > 3999) {
        return @"Invalid";
    }
    // Implement other parts of conversion here.
    return nil;
}

@end
