#import "BIMCommentModel.h"
#import "BIMCommentChildModel.h"
@implementation BIMCommentModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"content" : @"content",
             @"Idid" : @"id",
             @"news_id" : @"news_id",
             @"nickname" : @"nickname",
             @"status" : @"status",
             @"createtime" : @"createtime",
             @"userid" : @"userid",
             @"userpic" : @"userpic",
             @"child" : @"child",
             @"likeCount" : @"likeCount",
             @"ilike" : @"ilike",
             };
}
+ (NSValueTransformer *)childJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[BIMCommentChildModel class]];
}
@end

@implementation DetailGroupModel

@end

