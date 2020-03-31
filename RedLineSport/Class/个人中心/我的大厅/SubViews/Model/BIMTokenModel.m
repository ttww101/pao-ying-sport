#import "BIMTokenModel.h"
@implementation BIMTokenModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"refreshToken" : @"refreshToken",
             @"token" : @"token",
             };
}
@end
