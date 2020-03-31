#import "BIMCouponModel.h"
@implementation BIMCouponModel
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"couponID" : @"id"
             };
}
@end
@implementation CouponListModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"data" : NSClassFromString(@"BIMCouponModel") };
}
@end
