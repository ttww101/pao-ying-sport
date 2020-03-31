#import <UIKit/UIKit.h>
#import "BIMHSTabBarContentView.h"
@protocol SelecterDTitleViewDelegate <NSObject>
- (void)tabBarContentView:(BIMHSTabBarContentView *)tabBarContentView didSelectItemAtIndex:(NSInteger)index;
@end
@interface BIMSelectedDTitleView : UIView
@property (nonatomic, weak) id<SelecterDTitleViewDelegate>      delegate;
@end
