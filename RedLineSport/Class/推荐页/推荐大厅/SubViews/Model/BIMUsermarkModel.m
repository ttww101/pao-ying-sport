#import "BIMUsermarkModel.h"
@implementation BIMUsermarkModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"createTime" : @"createTime",
             @"remark" : @"remark",
             @"type" : @"type",
             @"userId" : @"userId",
             @"isvalid" : @"isvalid",
             };
}
@end
