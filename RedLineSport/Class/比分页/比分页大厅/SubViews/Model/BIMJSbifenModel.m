#import "BIMJSbifenModel.h"
@implementation BIMJSbifenModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"time" : @"time",
             @"data" : @"items",
             @"label" : @"label"
             };
}
+ (NSValueTransformer *)dataJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMLiveScoreModel class]];
}
@end
