#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Challenge : NSObject

- (NSString *)reverse:(NSString *)str;

- (NSInteger)fibonacci:(NSInteger)n;

- (NSDictionary<NSNumber *, NSString *> *)fizzBuzz;

- (NSString *)convertArabicToRomanNumerals:(NSInteger)n;

@end

NS_ASSUME_NONNULL_END
