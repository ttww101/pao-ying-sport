#import <UIKit/UIKit.h>
@protocol NavigationControllerDelegate <NSObject>
@optional
- (BOOL) shouldPopOnBackButtonPress;
@end
@interface BIMDCNavViewController : UINavigationController
@end
