#import <XCTest/XCTest.h>
#import "Challenge.h"

@interface RomanNumeralsTests : XCTestCase
@property (nonatomic, strong) Challenge *codingChallenge;
@end

@implementation RomanNumeralsTests

- (void)setUp {
    [super setUp];
    self.codingChallenge = [[Challenge alloc] init];
}

- (void)testArabicToRoman {
    NSDictionary *numberToRomanMap = @{
        @1 : @"I",
        @2 : @"II",
        @3 : @"III",
        @4 : @"IV",
        @5 : @"V",
        @6 : @"VI",
        @7 : @"VII",
        @8 : @"VIII",
        @9 : @"IX",
        @10 : @"X",
        @11 : @"XI",
        @30 : @"XXX",
        @40 : @"XL",
        @50 : @"L",
        @60 : @"LX",
        @80 : @"LXXX",
        @90 : @"XC",
        @100 : @"C",
        @110 : @"CX",
        @300 : @"CCC",
        @400 : @"CD",
        @500 : @"D",
        @600 : @"DC",
        @800 : @"DCCC",
        @900 : @"CM",
        @1000 : @"M",
        @1100 : @"MC",
        @1666 : @"MDCLXVI",
        @1990 : @"MCMXC",
        @528 : @"DXXVIII",
        @42 : @"XLII",
        @3999 : @"MMMCMXCIX"
    };
    
    for (NSNumber *number in numberToRomanMap) {
        NSError *error;
        NSString *actual = [self.codingChallenge convertArabicToRomanNumerals:number.integerValue];
        NSString *expected = numberToRomanMap[number];
        XCTAssertEqualObjects(actual, expected, @"Unexpected output for number: %@", number);
    }
}

- (void)testOutOfBounds {
    NSArray *outOfBoundsNumbers = @[@-5, @0, @4000];
    
    for (NSNumber *number in outOfBoundsNumbers) {
        NSError *error;
        NSString *result = [self.codingChallenge convertArabicToRomanNumerals:number.integerValue];
        XCTAssertNil(result, @"Should not have returned a result for out-of-bounds number: %@", number);
        XCTAssertNotNil(error, @"Should have produced an error for out-of-bounds number: %@", number);
        XCTAssertEqualObjects(error.localizedDescription, @"Number outside of range.", @"Unexpected error description for number: %@", number);
    }
}

@end

