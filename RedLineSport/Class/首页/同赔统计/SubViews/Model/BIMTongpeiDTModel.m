#import "BIMTongpeiDTModel.h"
@implementation BIMTongpeiDTModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"same" : @"same",
             @"all" : @"all",
             };
}
+ (NSValueTransformer *)sameJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMTongpeiDetailModel class]];
}
+ (NSValueTransformer *)allJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMTongpeiDetailModel class]];
}
@end
