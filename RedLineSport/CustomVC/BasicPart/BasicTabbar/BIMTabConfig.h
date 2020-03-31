#import <Foundation/Foundation.h>
#import "BIMDCTabBarController.h"
@interface BIMTabConfig : NSObject
@property (nonatomic, readonly, strong) BIMDCTabBarController *tabBarController;
@property (nonatomic, copy) NSString *currentPage;
@end
