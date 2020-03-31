#import <Foundation/Foundation.h>
@interface BIMUMStatisticsMgr : NSObject
INTERFACE_SINGLETON(BIMUMStatisticsMgr)
- (void)viewStaticsBeginWithMarkStr:(NSString *)markStr;
- (void)viewStaticsEndWithMarkStr:(NSString *)markStr;
@end
