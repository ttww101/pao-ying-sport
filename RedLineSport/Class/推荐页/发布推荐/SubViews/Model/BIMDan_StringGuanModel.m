#import "BIMDan_StringGuanModel.h"
@implementation BIMDan_StringGuanModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"count" : @"count",
             @"index" : @"index",
             @"matchs":@"matchs",
             };
}
+ (NSValueTransformer *)matchsJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMDan_StringMatchsModel class]];
}
@end
