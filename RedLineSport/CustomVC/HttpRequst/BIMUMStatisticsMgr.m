#import "BIMUMStatisticsMgr.h"
@implementation BIMUMStatisticsMgr
IMPLEMENTATION_SINGLETON(BIMUMStatisticsMgr)
#pragma mark - ViewStatics -
- (void)viewStaticsBeginWithMarkStr:(NSString *)markStr {
    [MobClick beginLogPageView:markStr];
}
- (void)viewStaticsEndWithMarkStr:(NSString *)markStr {
    [MobClick endLogPageView:markStr];
}
#pragma mark - ClickEvent -
@end
