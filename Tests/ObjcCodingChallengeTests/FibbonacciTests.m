#import <XCTest/XCTest.h>
#import "Challenge.h"

@interface FibbonacciTests : XCTestCase
@property (nonatomic, strong) Challenge *codingChallenge;
@end

@implementation FibbonacciTests

- (void)setUp {
    [super setUp];
    self.codingChallenge = [[Challenge alloc] init];
}

- (void)testNegativeInput {
    NSInteger input = -1;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(-1, actual);
}

- (void)testZeroInput {
    NSInteger input = 0;
    NSInteger expected = 0;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(expected, actual);
}

- (void)testFirstElement {
    NSInteger input = 1;
    NSInteger expected = 1;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(expected, actual);
}

- (void)testSecondElement {
    NSInteger input = 2;
    NSInteger expected = 1;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(expected, actual);
}

- (void)testThirdElement {
    NSInteger input = 3;
    NSInteger expected = 2;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(expected, actual);
}

- (void)testFifteenthElement {
    NSInteger input = 15;
    NSInteger expected = 610;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(expected, actual);
}

- (void)testFortyFifthElement {
    NSInteger input = 45;
    NSInteger expected = 1134903170;
    NSInteger actual = [self.codingChallenge fibbonacci:input];
    XCTAssertEqual(expected, actual);
}

@end
