#import <XCTest/XCTest.h>
#import "Challenge.h"

@interface FizzBuzzTests : XCTestCase
@property (nonatomic, strong) Challenge *codingChallenge;
@end

@implementation FizzBuzzTests

- (void)setUp {
    [super setUp];
    self.codingChallenge = [[Challenge alloc] init];
}

- (void)testSpecificNumbers {
    NSString *fizz = @"Fizz";
    NSString *buzz = @"Buzz";
    NSString *fizzBuzz = [fizz stringByAppendingString:buzz];
    
    NSDictionary<NSNumber *, NSString *> *result = [self.codingChallenge fizzBuzz];
    XCTAssertNotNil(result);
    XCTAssertEqualObjects(result[@3], fizz);
    XCTAssertEqualObjects(result[@5], buzz);
    XCTAssertEqualObjects(result[@9], fizz);
    XCTAssertEqualObjects(result[@10], buzz);
    XCTAssertEqualObjects(result[@15], fizzBuzz);
    XCTAssertEqualObjects(result[@30], fizzBuzz);
}

- (void)testGeneralNumbers {
    NSArray<NSNumber *> *fizzNumbers = @[@3, @6, @9, @12, @18, @21, @24, @27, @33, @36, @39, @42, @48, @51, @54, @57, @63, @66, @69, @72, @78, @81, @84, @87, @93, @99];
    NSArray<NSNumber *> *buzzNumbers = @[@5, @10, @20, @25, @35, @40, @50, @55, @65, @70, @80, @85, @95];
    NSArray<NSNumber *> *fizzBuzzNumbers = @[@15, @30, @45, @60, @75, @90];
    
    NSMutableArray<NSNumber *> *remainingNumbers = [NSMutableArray array];
    for (NSInteger i = 1; i <= 100; i++) {
        if (![fizzNumbers containsObject:@(i)] && ![buzzNumbers containsObject:@(i)] && ![fizzBuzzNumbers containsObject:@(i)]) {
            [remainingNumbers addObject:@(i)];
        }
    }
    
    NSDictionary<NSNumber *, NSString *> *actual = [self.codingChallenge fizzBuzz];
    for (NSNumber *n in fizzNumbers) {
        XCTAssertEqualObjects(actual[n], @"Fizz");
    }
    
    for (NSNumber *n in buzzNumbers) {
        XCTAssertEqualObjects(actual[n], @"Buzz");
    }
    
    for (NSNumber *n in fizzBuzzNumbers) {
        XCTAssertEqualObjects(actual[n], @"FizzBuzz");
    }
    
    for (NSNumber *n in remainingNumbers) {
        XCTAssertEqualObjects(actual[n], @"");
    }
}

@end
