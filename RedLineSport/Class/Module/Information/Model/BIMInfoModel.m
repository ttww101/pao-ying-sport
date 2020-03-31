#import "BIMInfoModel.h"
@implementation BIMInfoModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"data" : NSClassFromString(@"InfoGroupModel") };
}
@end
@implementation InfoGroupModel
@end
