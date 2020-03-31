#import "BIMBaolengDetailModel.h"
@implementation BIMBaolengDetailModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"body" : @"body" ,
             @"list" : @"list" ,
             };
}
+ (NSValueTransformer *)bodyJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMBaolengDTModel class]];
}
+ (NSValueTransformer *)listJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMBaolengMatchModel class]];
}
@end
