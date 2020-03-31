#import "BIMLiveListModel.h"
@implementation BIMLiveListModel
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"ID" : @"id"
             };
}
@end
@implementation LiveListArrayModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"data" : NSClassFromString(@"BIMLiveListModel") };
}
@end
