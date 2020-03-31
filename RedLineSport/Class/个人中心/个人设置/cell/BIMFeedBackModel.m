#import "BIMFeedBackModel.h"
@implementation BIMFeedBackModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"time" : @"time",
             @"title" : @"title",
             @"content" : @"content",
             @"reply" : @"reply",
             };
}
@end
