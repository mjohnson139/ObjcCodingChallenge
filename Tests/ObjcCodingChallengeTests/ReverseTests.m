#import <XCTest/XCTest.h>
#import "Challenge.h"

@interface ReverseTests : XCTestCase
@property (nonatomic, strong) Challenge *codingChallenge;
@end

@implementation ReverseTests

- (void)setUp {
    [super setUp];
    self.codingChallenge = [[Challenge alloc] init];
}

- (void)testEmptyString {
    NSString *actual = [self.codingChallenge reverse:@""];
    XCTAssertEqualObjects(@"", actual);
}

- (void)testSingleCharString {
    NSString *testStr = @"a";
    NSString *actual = [self.codingChallenge reverse:testStr];
    XCTAssertEqualObjects(testStr, actual);
}

- (void)testSimpleString {
    NSString *testStr = @"abc";
    NSString *actual = [self.codingChallenge reverse:testStr];
    NSString *expected = @"cba";
    XCTAssertEqualObjects(expected, actual);
}

- (void)testLongString {
    NSString *testStr = @"A quantum computer is a computer that exploits quantum mechanical phenomena";
    NSString *actual = [self.codingChallenge reverse:testStr];
    NSString *expected = @"anemonehp lacinahcem mutnauq stiolpxe taht retupmoc a si retupmoc mutnauq A";
    XCTAssertEqualObjects(expected, actual);
}

@end
