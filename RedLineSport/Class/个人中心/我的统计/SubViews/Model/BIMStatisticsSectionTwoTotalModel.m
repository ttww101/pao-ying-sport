#import "BIMStatisticsSectionTwoTotalModel.h"
@implementation BIMStatisticsSectionTwoTotalModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"arrdxPanStatis" : @"dxPanStatis",
             @"arrouPanStatis" : @"ouPanStatis",
             @"arrplayStatis" : @"playStatis",
             @"arrsclassStatis" : @"sclassStatis",
             @"arrtimeStatis" : @"timeStatis",
             @"arryaPanStatis" : @"yaPanStatis",
             @"arryaChuanGuanStatis" : @"chuanGuanStatis",
             };
}
+ (NSValueTransformer *)arrdxPanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)arrouPanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)arrplayStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)arrsclassStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)arrtimeStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)arryaPanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)arryaChuanGuanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
@end
