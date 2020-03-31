#import <UIKit/UIKit.h>
@protocol PlycSelectedViewdelegate<NSObject>
@optional
- (void)didselectedPlycSelectedViewWithPlayIndex:(NSInteger)playIndex;
- (void)didselectedPlycSelectedViewWithTimeIndex:(NSInteger)TimeIndex;
- (void)touchPlycSelectedViewBGView;
@end
@interface BIMPlycSelectedView : UIView
@property (nonatomic, weak) id<PlycSelectedViewdelegate> delegate;
@end
