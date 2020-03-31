#import "BIMUserTongjiAllModel.h"
@implementation BIMUserTongjiAllModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"month" : @"month",
             @"all" : @"all",
             @"week" : @"week",
             @"recent" : @"recent",
             };
}
+ (NSValueTransformer *)monthJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMUserTongjiModel class]];
}
+ (NSValueTransformer *)allJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMUserTongjiModel class]];
}
+ (NSValueTransformer *)weekJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMUserTongjiModel class]];
}
@end
