#import "BIMUsermarkModel.h"
#import "BIMMedalsModel.h"
#import "BIMStatisticsModel.h"
@implementation BIMStatisticsModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"avgweeknum" : @"avgweeknum",
             @"focus_count" : @"focus_count",
             @"follower_count" : @"follower_count",
             @"gonum" : @"gonum",
             @"idId" : @"id",
             @"level_id" : @"level_id",
             @"losenum" : @"losenum",
             @"recommend_count" : @"recommend_count",
             @"role_id" : @"role_id",
             @"winnum" : @"winnum",
             @"profit_rate" : @"profit_rate",
             @"win_rate" : @"win_rate",
             @"goodPlay" : @"goodplay",
             @"goodsclass" : @"goodsclass",
             @"Recoommandmodel" : @"news",
             @"arrNearten" : @"nearten",
             @"arrTotalrate" : @"totalrate",
             @"nickname" : @"nickname",
             @"pic" : @"pic",
             @"userinfo" : @"userinfo",
             @"usertitle" : @"usertitle",
             @"arrUsertitle" : @"usertitle",
             @"medals" : @"medals",
             };
}
+ (NSValueTransformer *)goodPlayJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMGoodPlayModel class]];
}
+ (NSValueTransformer *)goodsclassJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMGoodsclassModel class]];
}
+ (NSValueTransformer *)RecoommandmodelJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BIMTuijiandatingModel class]];
}
+ (NSValueTransformer *)arrTotalrateJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMTotalrateModel class]];
}
+ (NSValueTransformer *)arrUsertitleJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMUsermarkModel class]];
}
+ (NSValueTransformer *)medalsJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMMedalsModel class]];
}
@end
