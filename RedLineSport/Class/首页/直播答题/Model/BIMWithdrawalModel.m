#import "BIMWithdrawalModel.h"
@implementation BIMWithdrawalModel
@end
@implementation WithdrawaListModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"items" : NSClassFromString(@"BIMWithdrawalModel") };
}
@end
