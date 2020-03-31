#import "BIMQiciModel.h"
@implementation BIMQiciModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"iscurrent" : @"iscurrent",
             @"name" : @"name",
             @"date":@"date",
             @"week":@"week",
             @"time":@"time"
             };
}
+ (NSValueTransformer *)createTimeJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithBlock:^id(NSNumber *number) {
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
        return [BIMMethods getDateByStyle:dateStyleFormatter withDate:date];
    }];
    return nil;
}
+ (NSValueTransformer *)updateTimeJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithBlock:^id(NSNumber *nunber) {
        return [BIMMethods getDateByStyle:dateStyleFormatter withDate:[NSDate dateWithTimeIntervalSince1970:[nunber doubleValue]]];
    }];
    return nil;
}
@end
