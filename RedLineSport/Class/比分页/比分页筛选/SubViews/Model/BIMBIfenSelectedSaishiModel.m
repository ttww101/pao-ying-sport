#import "BIMBIfenSelectedSaishiModel.h"
@implementation BIMBIfenSelectedSaishiModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"count" : @"count",
             @"idId" : @"id",
             @"index" : @"index",
             @"name" : @"name",
             @"order" : @"order",
             @"tag" : @"tag",
             };
}

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"idId" : @"id",
             @"isSelected" : @"selected",
             };
}


@end

@implementation FilterModel

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"hot_items" : NSClassFromString(@"BIMBIfenSelectedSaishiModel"),
             @"other_items" : NSClassFromString(@"BIMBIfenSelectedSaishiModel"),
             @"items" : NSClassFromString(@"BIMBIfenSelectedSaishiModel")
             };
}


@end;

@implementation FilterData

@end;
