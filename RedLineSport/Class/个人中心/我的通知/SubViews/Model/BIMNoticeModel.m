#import "BIMNoticeModel.h"
@implementation BIMNoticeModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"mid" : @"mid",
             @"title" : @"title",
             @"content" : @"content",
             @"iread" : @"iread",
             @"time" : @"time",
             };
}
@end
