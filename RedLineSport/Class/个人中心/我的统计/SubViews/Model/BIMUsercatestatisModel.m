#import "BIMUsercatestatisModel.h"
@implementation BIMUsercatestatisModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"avgweeknum" : @"avgweeknum",
             @"userinfo" : @"userinfo",
             @"goodplay" : @"goodplay",
             @"goodsclass" : @"goodsclass",
             @"totalrate" : @"totalrate",
             @"nearten" : @"nearten",
             @"sclassStatis" : @"sclassStatis",
             @"playStatis0" : @"playAllStatis",
             @"playStatis1" : @"playOuStatis",
             @"playStatis2" : @"playYaStatis",
             @"playStatis3" : @"playDxStatis",
             @"yaPanStatis" : @"yaPanStatis",
             @"ouPanStatis" : @"ouPanStatis",
             @"dxPanStatis" : @"dxPanStatis",
             @"timeStatis" : @"timeStatis",
             @"monthGroup" : @"groupTimeMonthStatis",
             @"weekGroup" : @"groupTimeWeekStatis",
             };
}
+ (NSValueTransformer *)userinfoJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMStatisticsModel class]];
}
+ (NSValueTransformer *)goodplayJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMGoodPlayModel class]];
}
+ (NSValueTransformer *)goodsclassJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMGoodsclassModel class]];
}
+ (NSValueTransformer *)totalrateJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMTotalrateModel class]];
}
+ (NSValueTransformer *)sclassStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)playStatis0JSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)playStatis1JSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)playStatis2JSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)playStatis3JSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)yaPanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)ouPanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)dxPanStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)timeStatisJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)monthGroupJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
+ (NSValueTransformer *)weekGroupJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMStatisticsSectionTwoModel class]];
}
@end
